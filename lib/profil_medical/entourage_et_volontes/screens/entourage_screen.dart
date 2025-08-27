/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/aidants_aides/screens/aidants_aides_utils.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/entourage_et_volontes/domain/entourage_contact.dart';
import 'package:fr_cnamts_ens/profil_medical/entourage_et_volontes/screens/edit_entourage_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/entourage_et_volontes/screens/viewModels/entourage_screen_view_model.dart';
import 'package:fr_cnamts_ens/profil_medical/entourage_et_volontes/widgets/contacts_urgence_block.dart';
import 'package:fr_cnamts_ens/profil_medical/entourage_et_volontes/widgets/personne_de_confiance_block.dart';
import 'package:fr_cnamts_ens/profil_medical/entourage_et_volontes/widgets/proches_aidants_block.dart';
import 'package:fr_cnamts_ens/profil_medical/entourage_et_volontes/widgets/proches_aides_block.dart';
import 'package:fr_cnamts_ens/tags/pml/tags_entourage_et_volontes.dart';
import 'package:fr_cnamts_ens/traces/domain/ens_send_trace.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/error_page.dart';
import 'package:fr_cnamts_ens/ui/utils/pull_to_refresh_utils.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_card.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_divider.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_persistent_info_box.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';
import 'package:fr_cnamts_ens/ui/widgets/skeletons.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:fr_cnamts_ens/utils/screen_status.dart';

class EntourageScreen extends StatelessWidget {
  static const routeName = '/medical/profil/entourage';

  @override
  Widget build(BuildContext context) {
    return StoreConnector<EnsState, EntourageScreenViewModel>(
      converter: (store) => EntourageScreenViewModel.from(store),
      distinct: true,
      onInitialBuild: (vm) {
        vm.fetchEntourageEtVolontes();
        context.traceAction(EnsTraceType.CONSULT_RUBRIQUE_ENTOURAGE);
        if (vm.entourageStatus.isSuccess()) {
          if (vm.contactsDisplayModel?.isEmpty == true) {
            context.tagAction(TagsEntourageEtVolontes.tag_2651_entourage_empty);
          } else {
            context.tagAction(TagsEntourageEtVolontes.tag_710_entourage);
          }
        }
      },
      onWillChange: (oldVm, vm) {
        if (oldVm?.entourageStatus.isNotSuccess() == true && vm.entourageStatus.isSuccess()) {
          if (vm.contactsDisplayModel?.isEmpty == true) {
            context.tagAction(TagsEntourageEtVolontes.tag_2651_entourage_empty);
          } else {
            context.tagAction(TagsEntourageEtVolontes.tag_710_entourage);
          }
        }
      },
      builder: (context, vm) {
        return Scaffold(
          appBar: const EnsAppBarSubLevel(title: 'Entourage'),
          body: _Content(vm),
        );
      },
    );
  }
}

class _Content extends StatelessWidget {
  final EntourageScreenViewModel vm;

  const _Content(this.vm);

  @override
  Widget build(BuildContext context) {
    return switch (vm.entourageStatus) {
      ScreenStatus.LOADING => SafeArea(child: _Loading(vm.profilInfoDisplayModel)),
      ScreenStatus.SUCCESS => SafeArea(
          child: _Success(
            vm.profilInfoDisplayModel,
            vm.contactsDisplayModel!,
            vm.fetchEntourageEtVolontes,
          ),
        ),
      ScreenStatus.ERROR => ErrorPage(reloadFunction: () => vm.fetchEntourageEtVolontes(force: true))
    };
  }
}

class _Success extends StatelessWidget {
  final EntourageProfilInfoDisplayModel displayModel;
  final EntourageContactsDisplayModel peopleDisplayModel;
  final void Function({bool force}) refresh;

  const _Success(this.displayModel, this.peopleDisplayModel, this.refresh);

  @override
  Widget build(BuildContext context) {
    return EnsPullToRefresh(
      onRefresh: () async {
        refresh(force: true);
      },
      child: LayoutBuilder(
        builder: (_, constraints) {
          final personneDeConfianceDisplayModel = peopleDisplayModel.personneDeConfianceDisplayModel;
          final personneAidesDisplayModel = peopleDisplayModel.prochesAidesDisplayModel;
          return ScrollviewWithScrollbar(
            physics: const AlwaysScrollableScrollPhysics(),
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: Column(
                children: [
                  const SizedBox(height: 32),
                  if (displayModel.displayAidantCartouche) ...[
                    Padding(
                      padding: const EdgeInsets.only(left: 24, right: 24, bottom: 24),
                      child: EnsPersistentInfoBox.text(
                        AidantAideUtils.unavailableAsAidant,
                        style: EnsTextStyle.text14_w600_normal_title,
                      ),
                    ),
                  ],
                  ContactsUrgenceBlock(
                    profilDisplayModel: displayModel,
                    contactUrgenceDisplayModel: peopleDisplayModel.contactUrgenceDisplayModel,
                    onAddContact: (contactUrgenceType) {
                      displayModel.profilType.showUnavailableSnackbarIfAide(
                        context,
                        profilFullName: displayModel.nomComplet,
                        onOtherProfil: () {
                          Navigator.pushNamed(
                            context,
                            EditEntourageScreen.routeName,
                            arguments: EditEntourageScreenArguments.add(
                              EntourageContactType.URGENCE,
                              shouldPrefillWithCurrentUserData: contactUrgenceType == ContactUrgenceType.MYSELF,
                            ),
                          );
                          context.tagAction(TagsEntourageEtVolontes.tag_705_button_ajouter_entourage);
                        },
                      );
                    },
                  ),
                  const SizedBox(height: 8),
                  if (personneDeConfianceDisplayModel != null) ...[
                    PersonneDeConfianceBlock(
                      profilDisplayModel: displayModel,
                      personneDeConfianceDisplayModel: personneDeConfianceDisplayModel,
                      onAddContact: () {
                        displayModel.profilType.showUnavailableSnackbarIfAide(
                          context,
                          profilFullName: displayModel.nomComplet,
                          onOtherProfil: () {
                            Navigator.pushNamed(
                              context,
                              EditEntourageScreen.routeName,
                              arguments: EditEntourageScreenArguments.add(EntourageContactType.CONFIANCE),
                            );
                            context.tagAction(TagsEntourageEtVolontes.tag_705_button_ajouter_entourage);
                          },
                        );
                      },
                    ),
                    const SizedBox(height: 24),
                  ],
                  const EnsDivider(color: EnsColors.neutral300),
                  const SizedBox(height: 40),
                  ProchesAidantsBlock(
                    profilDisplayModel: displayModel,
                    prochesDisplayModel: peopleDisplayModel.prochesAidantsDisplayModel,
                    onAddContact: () {
                      Navigator.pushNamed(
                        context,
                        EditEntourageScreen.routeName,
                        arguments: EditEntourageScreenArguments.add(EntourageContactType.AIDANT),
                      );
                      context.tagAction(TagsEntourageEtVolontes.tag_705_button_ajouter_entourage);
                    },
                  ),
                  const SizedBox(height: 8),
                  if (personneAidesDisplayModel != null) ...[
                    ProcheAidesBlock(
                      profilDisplayModel: displayModel,
                      prochesDisplayModel: personneAidesDisplayModel,
                      onAddContact: () {
                        Navigator.pushNamed(
                          context,
                          EditEntourageScreen.routeName,
                          arguments: EditEntourageScreenArguments.add(EntourageContactType.AIDE),
                        );
                        context.tagAction(TagsEntourageEtVolontes.tag_705_button_ajouter_entourage);
                      },
                    ),
                    const SizedBox(height: 60),
                  ],
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class _Loading extends StatelessWidget {
  final EntourageProfilInfoDisplayModel displayModel;

  const _Loading(this.displayModel);

  @override
  Widget build(BuildContext context) {
    return const ScrollviewWithScrollbar(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SkeletonBox(height: 24, width: 500),
                SizedBox(height: 8),
                SkeletonBox(height: 24, width: 500),
              ],
            ),
          ),
          _SkeletonContactItem(),
          EnsDivider(),
          _SkeletonContactItem(),
        ],
      ),
    );
  }
}

class _SkeletonContactItem extends StatelessWidget {
  const _SkeletonContactItem();

  @override
  Widget build(BuildContext context) {
    return const EnsCard(
      backgroundColor: EnsColors.light,
      borderRadius: 0,
      hasBoxShadow: false,
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SkeletonBox(height: 12, width: 100),
                SizedBox(height: 8),
                SkeletonBox(height: 12, width: 100),
                SizedBox(height: 8),
                SkeletonBox(height: 12, width: 152),
                SizedBox(height: 8),
                SkeletonBox(height: 12, width: 160),
                SizedBox(height: 8),
                SkeletonBox(height: 12, width: 172),
                SizedBox(height: 16),
                SkeletonBox(height: 12, width: 152),
                SizedBox(height: 8),
                SkeletonBox(height: 12, width: 160),
                SizedBox(height: 8),
                SkeletonBox(height: 12, width: 172),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(24.0),
            child: EnsSvg(EnsImages.ic_more_vertical, height: 16, width: 4, alignment: Alignment.centerRight),
          ),
        ],
      ),
    );
  }
}
