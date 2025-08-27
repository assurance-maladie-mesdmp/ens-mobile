/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/bottomsheet_recommander_app/redux/recommander_app_redux.dart';
import 'package:fr_cnamts_ens/bottomsheet_recommander_app/widgets/recommander_app_bottom_sheet.dart';
import 'package:fr_cnamts_ens/infra/injection/ens_module_container.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/tags/tags_surveys.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/confirmation_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/confirmation_bottom_sheet_default_text_content.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/ens_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:fr_cnamts_ens/user/app_rating/redux/app_rating_actions.dart';
import 'package:fr_cnamts_ens/user/survey/widgets/bottom_sheets_container_view_model.dart';
import 'package:fr_cnamts_ens/utils/feature_flags_helper.dart';
import 'package:fr_cnamts_ens/utils/webpage_utils.dart';
import 'package:in_app_review/in_app_review.dart';
import 'package:share_plus/share_plus.dart';

class BottomSheetsContainer extends StatelessWidget {
  final Widget child;

  const BottomSheetsContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return StoreConnector<EnsState, BottomSheetsContainerViewModel>(
      converter: (store) => BottomSheetsContainerViewModel.from(store),
      distinct: true,
      onInit: (store) {
        store.dispatch(ShouldDisplayAppRatingAction());
        store.dispatch(FetchRecommanderAppAction());
      },
      onDidChange: (oldVm, vm) {
        if (!EnsModuleContainer.currentInjector.isGuestMode()) {
          if (oldVm?.shouldDisplayBottomSheetOfType != vm.shouldDisplayBottomSheetOfType) {
            switch (vm.shouldDisplayBottomSheetOfType) {
              case BottomSheetType.APP_RATING:
                vm.setDoNotDisplayRecommanderApp();
                _displayAppRatingBottomSheet(vm);
              case BottomSheetType.RECOMMANDER_APP:
                if (isRecommanderAppEnabled) {
                  _displayRecommanderAppBottomSheet(context, vm);
                }
              case null:
                break;
            }
          }
        }
      },
      builder: (_, __) => child,
    );
  }

  void _displayRecommanderAppBottomSheet(BuildContext context, BottomSheetsContainerViewModel vm) {
    context.tagAction(TagsSurveys.tagPageRecommanderAppExamenReco(vm.actionTriggeredFrom!));
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      isDismissible: true,
      builder: (BuildContext context) {
        //TODO déplacer url dans VM après avoir mock l'injection pour les tests
        final String recommanderAppUrl = EnsModuleContainer.commonInjector!.getUrlsConfig().recommanderAppUrl;

        return RecommanderAppBottomSheet(
          positiveButtonHandler: () async {
            context.tagAction(TagsSurveys.tagClickButtonInviterProche(vm.actionTriggeredFrom!));
            final result = await Share.share(
              'J\'utilise l\'application Mon espace santé pour stocker et partager mes données de santé en toute confidentialité. C\'est super pratique, tu devrais essayer. Voici le lien pour la télécharger : $recommanderAppUrl',
              subject: 'J\'invite un proche à découvrir Mon espace santé',
            );
            if (result.status == ShareResultStatus.success) {
              vm.displaySnackbarRecommanderAppSuccess();
            }
            vm.setRecommanderAppDone();
          },
          negativeButtonHandler: () {
            context.tagAction(TagsSurveys.tagClickButtonRecommanderPlusTard(vm.actionTriggeredFrom!));
            vm.setNextRecommanderAppDate();
          },
        );
      },
    );
  }

  Future<void> _displayAppRatingBottomSheet(BottomSheetsContainerViewModel vm) async {
    await Future.delayed(const Duration(seconds: 1));
    final navigatorKey = EnsModuleContainer.currentInjector.getNavigatorKey();
    if (navigatorKey.currentContext != null) {
      showModalBottomSheet(
        context: navigatorKey.currentContext!,
        isScrollControlled: true,
        builder: (BuildContext context) {
          context.tagAction(TagsSurveys.tag_app_rating_page);
          return EnsIllustrationBottomSheet(
            title: 'Je donne mon avis sur Mon espace santé',
            subtitle: 'Mon avis permet d\'améliorer l\'application Mon espace santé',
            asset: EnsImages.fusee,
            positiveButtonLabel: 'Je suis satisfait de l\'application',
            negativeButtonLabel: 'Je ne suis pas satisfait',
            positiveButtonHandler: () {
              context.tagAction(TagsSurveys.tag_app_rating_yes_click);
              vm.onAppRated();
              _startAppRating();
            },
            negativeButtonHandler: () {
              context.tagAction(TagsSurveys.tag_app_rating_no_click);
              vm.onAppRatingRefused();
              _displayNoRatingBottomSheet(context, vm);
            },
            closeButtonHandler: () {
              vm.onAppRatingRefused();
              context.tagAction(TagsSurveys.tag_app_rating_close_click);
            },
          );
        },
      );
    }
  }

  Future<void> _startAppRating() async {
    final InAppReview inAppReview = InAppReview.instance;
    if (await inAppReview.isAvailable()) {
      inAppReview.requestReview();
    }
  }

  void _displayNoRatingBottomSheet(BuildContext context, BottomSheetsContainerViewModel vm) {
    final ameliorationPage = EnsModuleContainer.currentInjector.getUrlsConfig().ameliorationPage;
    context.tagAction(TagsSurveys.tag_suggestion_page);
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return ConfirmationBottomSheet(
          title: 'Merci pour ce retour',
          content: const ConfirmationBottomSheetDefaultTextContent(
            'Je peux faire une suggestion pour améliorer l\'application Mon espace santé',
          ),
          positiveButtonLabel: 'Participer',
          negativeButtonLabel: 'Plus tard',
          areButtonsOnSameRow: false,
          positiveButtonColor: EnsColors.primary,
          hasExternalLink: true,
          positiveButtonHandler: () {
            context.tagAction(TagsSurveys.tag_suggestion_yes_click);
            launchUrlOnBrowser(ameliorationPage);
          },
          negativeButtonHandler: () {
            context.tagAction(TagsSurveys.tag_suggestion_no_click);
          },
        );
      },
    );
  }
}
