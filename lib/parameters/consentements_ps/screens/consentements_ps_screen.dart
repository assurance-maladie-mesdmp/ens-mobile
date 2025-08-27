/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/guestmode/guest_mode_helper.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/parameters/acces_ps_a_mes_donnees/confidentialite_documents/screens/confidentialite_documents_screen.dart';
import 'package:fr_cnamts_ens/parameters/consentements_ps/domain/models/ens_consentement_ps.dart';
import 'package:fr_cnamts_ens/parameters/consentements_ps/screens/consentements_ps_en_savoir_plus_screen.dart';
import 'package:fr_cnamts_ens/parameters/consentements_ps/screens/viewModels/consentements_ps_screen_view_model.dart';
import 'package:fr_cnamts_ens/parameters/consentements_ps/widgets/confidentiality_information_card.dart';
import 'package:fr_cnamts_ens/parameters/consentements_ps/widgets/consentement_ps_item.dart';
import 'package:fr_cnamts_ens/parameters/consentements_ps/widgets/consentements_ps_item_skeleton.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/search_ps/screens/recherche_ps_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/search_ps/screens/viewModels/recherche_ps_screen_view_model.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/search_ps/screens/viewModels/recherche_ps_type.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/search_ps/widgets/block_ps_confirmation_bottom_sheet.dart';
import 'package:fr_cnamts_ens/tags/tags_compte.dart';
import 'package:fr_cnamts_ens/tags/tags_parameters.dart';
import 'package:fr_cnamts_ens/traces/domain/ens_send_trace.dart';
import 'package:fr_cnamts_ens/ui/accessibility/accessible_tab_bar.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/error_page.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/confirmation_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/confirmation_bottom_sheet_default_text_content.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_floating_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_rich_text.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:fr_cnamts_ens/utils/all_purposes_status.dart';

class ConsentementsPsScreen extends StatelessWidget {
  static const routeName = '/mon-compte/acces-professionnels-sante';

  const ConsentementsPsScreen();

  @override
  Widget build(BuildContext context) {
    return StoreConnector<EnsState, ConsentementsPsScreenViewModel>(
      converter: (store) => ConsentementsPsScreenViewModel.from(store),
      onInitialBuild: (vm) {
        vm.load();
        context.tagAction(TagsParameters.tag_445_compte_acces_autres_professionels_sante);
      },
      distinct: true,
      builder: (_, vm) {
        return _TabBarContent(vm);
      },
    );
  }
}

class _TabBarContent extends StatelessWidget {
  final ConsentementsPsScreenViewModel vm;

  const _TabBarContent(this.vm);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Builder(
        builder: (context) {
          return Scaffold(
            appBar: const EnsAppBarSubLevel(title: 'Gestion des accès'),
            body: _Content(vm),
            floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
            floatingActionButton: vm.status.isError()
                ? null
                : EnsFloatingButton(
                    buttonLabel: 'Bloquer un professionnel',
                    onTap: () async {
                      context.tagAction(TagsParameters.tag_462_button_recherche_bloquer_professionnels_sante);
                      final tabController = DefaultTabController.of(context);
                      final result = await Navigator.pushNamed(
                        context,
                        RecherchePsScreen.routeName,
                        arguments: RecherchePsScreenArgument(psSearchType: RecherchePSType.BLOQUER_PS),
                      );
                      if (result == BlockPsConfirmationBottomSheet.POP_VALUE) {
                        tabController.index = 1;
                      }
                    },
                  ),
          );
        },
      ),
    );
  }
}

class _EmptyPsTabListView extends StatelessWidget {
  final String label;

  const _EmptyPsTabListView({
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 28),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Spacer(flex: 1),
          const Flexible(
            flex: 5,
            child: FittedBox(
              child: EnsSvg(EnsImages.information, height: 160, width: 160),
            ),
          ),
          const SizedBox(height: 32),
          Text(
            label,
            textAlign: TextAlign.center,
            style: EnsTextStyle.text14_w400_normal_body,
          ),
          const Spacer(flex: 2),
        ],
      ),
    );
  }
}

enum _TabListDisplayOption { PS_AUTHORIZED, PS_BLOCK }

class PsTabListView extends StatelessWidget {
  final ConsentementsPsScreenViewModel vm;
  final _TabListDisplayOption typeOfPsDisplay;

  const PsTabListView({
    super.key,
    required this.vm,
    required this.typeOfPsDisplay,
  });

  @override
  Widget build(BuildContext context) {
    final psList = typeOfPsDisplay == _TabListDisplayOption.PS_BLOCK ? vm.psBloques : vm.psAutorises;
    return ListViewWithScrollbar.separated(
      padding: const EdgeInsets.only(bottom: 100),
      separatorBuilder: (context, index) => const Divider(
        height: 2,
        thickness: 1,
        color: EnsColors.neutral200,
      ),
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: psList.length + 1,
      itemBuilder: (context, index) {
        if (index == 0) {
          return Padding(
            padding: const EdgeInsets.all(24),
            child: ConfidentialityInformationCard(
              isInformationMasked: vm.isInformationMasked,
              label: vm.confidentialCartoucheLabel,
              onTap: () {
                context.tagAction(TagsCompte.tag_677_link_changer_confidentialite_doc);
                Navigator.pushNamed(
                  context,
                  ConfidentialiteDocumentsScreen.routeName,
                );
              },
            ),
          );
        } else {
          final EnsConsentementPs consentementPs = psList[index - 1];
          final shouldUnblock = typeOfPsDisplay == _TabListDisplayOption.PS_BLOCK;
          return ConsentementPsItem(
            consentementPs: consentementPs,
            onButtonClicked: () => _showConfirmationBottomSheet(
              context,
              shouldUnblock: shouldUnblock,
              tapOnPositiveButton: () {
                GuestModeHelper.showUnavailableSnackbarIfGuestMode(
                  context: context,
                  onAuthenticatedMode: () {
                    vm.updateConsentementPs(shouldUnblock, consentementPs);
                    _traceAction(context, consentementPs, shouldUnblock);
                  },
                );
              },
            ),
          );
        }
      },
    );
  }

  void _traceAction(BuildContext context, EnsConsentementPs consentementPs, bool shouldUnblock) {
    final traceParam = {'nomPS': '${consentementPs.firstName} ${consentementPs.lastName}'};
    if (shouldUnblock) {
      context.traceAction(EnsTraceType.ATTRIBUTION_STATUT_MEDECIN_ADMIN, params: traceParam);
    } else {
      context.traceAction(EnsTraceType.RETRAIT_STATUT_MEDECIN_ADMIN, params: traceParam);
    }
  }

  void _showConfirmationBottomSheet(
    BuildContext context, {
    required bool shouldUnblock,
    required Function() tapOnPositiveButton,
  }) {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) => ConfirmationBottomSheet(
        title: shouldUnblock ? 'Débloquer ce professionnel de santé ?' : 'Bloquer ce professionnel de santé ?',
        content: ConfirmationBottomSheetDefaultTextContent(
          shouldUnblock
              ? 'Pour voir à nouveau apparaître le professionnel de santé dans l\'onglet "Autorisé(s)", vous devrez lui donner votre autorisation lors d\'une consultation.'
              : 'Le professionnel de santé ne pourra plus accéder à mes Documents, mes rubriques Vaccinations, Histoire de santé, Entourage et volontés du Profil médical.',
        ),
        areButtonsOnSameRow: false,
        positiveButtonLabel: shouldUnblock ? 'Débloquer ce professionel de santé' : 'Bloquer ce professionel de santé',
        positiveButtonColor: shouldUnblock ? EnsColors.primary : EnsColors.error,
        positiveButtonHandler: tapOnPositiveButton,
      ),
    );
  }
}

class _Content extends StatelessWidget {
  final ConsentementsPsScreenViewModel vm;

  const _Content(this.vm);

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      headerSliverBuilder: (context, value) {
        return [
          SliverToBoxAdapter(child: _InfoHeader(vm.headerDisplayModel)),
          SliverAppBar(
            pinned: true,
            automaticallyImplyLeading: false,
            surfaceTintColor: Colors.transparent,
            bottom: PreferredSize(preferredSize: const Size.fromHeight(0), child: _TabBar()),
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          ),
        ];
      },
      body: _TabsView(vm),
    );
  }
}

class _TabsView extends StatelessWidget {
  final ConsentementsPsScreenViewModel vm;

  const _TabsView(this.vm);

  @override
  Widget build(BuildContext context) {
    switch (vm.status) {
      case AllPurposesStatus.NOT_LOADED:
      case AllPurposesStatus.LOADING:
        return const _Loading();
      case AllPurposesStatus.SUCCESS:
        return _ListTabBarView(vm);
      case AllPurposesStatus.ERROR:
        return ErrorPage(reloadFunction: vm.load);
    }
  }
}

class _InfoHeader extends StatelessWidget {
  final ConsentementsPsScreenHeaderDisplayModel displayModel;

  const _InfoHeader(this.displayModel);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, top: 32, bottom: 8),
      child: Column(
        children: [
          _InfoText(displayModel),
          const SizedBox(height: 24),
        ],
      ),
    );
  }
}

class _InfoText extends StatelessWidget {
  final ConsentementsPsScreenHeaderDisplayModel displayModel;

  const _InfoText(this.displayModel);

  @override
  Widget build(BuildContext context) {
    return MergeSemantics(
      child: Column(
        children: [
          EnsRichText(
            text: TextSpan(
              children: [
                TextSpan(text: '${displayModel.labels.headerBlock1} ', style: EnsTextStyle.text14_w400_normal_body),
                TextSpan(
                  text: 'En savoir plus',
                  style: EnsTextStyle.text14_w700_normal_primary_underline,
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      Navigator.pushNamed(context, ConsentementsPsEnSavoirPlusScreen.routeName);
                    },
                ),
              ],
            ),
          ),
          const SizedBox(height: 28),
          EnsRichText(
            text: TextSpan(
              children: [
                TextSpan(text: '${displayModel.labels.headerBlock2} ', style: EnsTextStyle.text14_w400_normal_body),
                TextSpan(
                  text: '${displayModel.notificationEmail}.',
                  style: EnsTextStyle.text14_w700_normal_body,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _TabBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const DecoratedBox(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: EnsColors.neutral200,
            width: 4,
          ),
        ),
      ),
      child: AccessibleTabBar(
        labels: ['Autorisé(s)', 'Bloqué(s)'],
      ),
    );
  }
}

class _Loading extends StatelessWidget {
  const _Loading();

  @override
  Widget build(BuildContext context) {
    return const TabBarView(
      children: [
        _LoadingSkeletonList(),
        _LoadingSkeletonList(),
      ],
    );
  }
}

class _LoadingSkeletonList extends StatelessWidget {
  const _LoadingSkeletonList();

  @override
  Widget build(BuildContext context) {
    return ListViewWithScrollbar.separated(
      separatorBuilder: (context, index) => const Divider(
        height: 2,
        color: EnsColors.neutral200,
      ),
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: 3,
      itemBuilder: (context, index) => ConsentementPsItemSkeleton(),
    );
  }
}

class _ListTabBarView extends StatelessWidget {
  final ConsentementsPsScreenViewModel vm;

  const _ListTabBarView(this.vm);

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      children: [
        _PsAutorisesTabView(vm),
        _PsBloquesTabView(vm),
      ],
    );
  }
}

class _PsAutorisesTabView extends StatelessWidget {
  final ConsentementsPsScreenViewModel vm;

  const _PsAutorisesTabView(this.vm);

  @override
  Widget build(BuildContext context) {
    if (vm.psAutorises.isEmpty) {
      return const _EmptyPsTabListView(label: 'Aucun professionnel de santé n\'a encore accédé à mes rubriques.');
    } else {
      return PsTabListView(vm: vm, typeOfPsDisplay: _TabListDisplayOption.PS_AUTHORIZED);
    }
  }
}

class _PsBloquesTabView extends StatelessWidget {
  final ConsentementsPsScreenViewModel vm;

  const _PsBloquesTabView(this.vm);

  @override
  Widget build(BuildContext context) {
    if (vm.psBloques.isEmpty) {
      return const _EmptyPsTabListView(label: 'Aucun professionnel de santé n\'est bloqué.');
    } else {
      return PsTabListView(vm: vm, typeOfPsDisplay: _TabListDisplayOption.PS_BLOCK);
    }
  }
}
