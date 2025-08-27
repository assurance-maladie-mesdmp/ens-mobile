/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/documents/widgets/ens_filter_button.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/parameters/acces_ps_a_mes_donnees/confidentialite_documents/screens/confidentialite_documents_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/redux/mon_histoire_de_sante_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/screens/displayModel/mon_histoire_de_sante_display_model.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/screens/displayModel/mon_histoire_de_sante_vue_mois_display_model.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/screens/mhs_onboarding_helper.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/screens/mon_histoire_de_sante_filter_dialog.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/screens/viewmodels/mon_histoire_de_sante_screen_view_model.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/screens/widgets/mon_histoire_de_sante_vue_jours_list_item.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/screens/widgets/mon_histoire_de_sante_vue_mois_list_item.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/widgets/histoire_sante_episodes_skeleton.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/redux/professionnels_de_sante_redux.dart';
import 'package:fr_cnamts_ens/profils_rattaches/screens/profils_utils.dart';
import 'package:fr_cnamts_ens/tags/pml/tags_histoire_sante.dart';
import 'package:fr_cnamts_ens/traces/domain/ens_send_trace.dart';
import 'package:fr_cnamts_ens/ui/accessibility/accessible_tab_bar.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/error_page.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button_secondary.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_empty_page.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_ink_well.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:fr_cnamts_ens/utils/wordings_extension.dart';

class MonHistoireDeSanteScreen extends StatelessWidget {
  static const routeName = '/medical/profil/mon-histoire-de-sante';

  @override
  Widget build(BuildContext context) {
    return StoreConnector<EnsState, MonHistoireDeSanteScreenViewModel>(
      converter: (store) => MonHistoireDeSanteScreenViewModel.from(store),
      onInitialBuild: (vm) {
        _tagPage(context);
        vm.fetchMonHistoireDeSante();
      },
      onWillChange: (oldVm, vm) {
        if (oldVm?.listStatus != HistoireDeSanteListStatus.SUCCESS &&
            vm.listStatus == HistoireDeSanteListStatus.SUCCESS) {
          _tagPage(context);
        }
        if (oldVm?.shouldDisplayMhsTutorial == false && vm.shouldDisplayMhsTutorial) {
          MhsTutorialHelper.showTutorialDialog(context, isProfilPrincipal: vm.profilType.isProfilPrincipal);
        }
      },
      onDispose: (store) => store.dispatch(UpdateMonHistoireDeSanteFiltersAction([])),
      distinct: true,
      builder: (_, vm) => Scaffold(
        appBar: EnsAppBarSubLevel(title: _getAppBarSubLevel(profilType: vm.profilType)),
        body: _Content(vm),
      ),
    );
  }

  void _tagPage(BuildContext context) {
    context.tagAction(TagsMonMonHistoireDeSante.tag_395_historique_des_soins);
    context.traceAction(EnsTraceType.CONSULT_RUBRIQUE_MHS);
  }
}

class _Content extends StatelessWidget {
  final MonHistoireDeSanteScreenViewModel vm;

  const _Content(this.vm);

  @override
  Widget build(BuildContext context) {
    return switch (vm.listStatus) {
      HistoireDeSanteListStatus.LOADING => _Loading(vm),
      HistoireDeSanteListStatus.ERROR => ErrorPage(reloadFunction: vm.fetchMonHistoireDeSante),
      HistoireDeSanteListStatus.SUCCESS => JourMoisContent(vm: vm),
      HistoireDeSanteListStatus.EMPTY || _ => _Empty(vm),
    };
  }
}

class JourMoisContent extends StatelessWidget {
  const JourMoisContent({
    super.key,
    required this.vm,
  });

  final MonHistoireDeSanteScreenViewModel vm;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: SafeArea(
        child: NestedScrollView(
          headerSliverBuilder: (context, value) => [
            SliverToBoxAdapter(child: _PageHeader(vm)),
            if (vm.vueJoursDisplayModels.isNotEmpty || vm.vueMoisDisplayModels.isNotEmpty) ...[
              SliverAppBar(
                automaticallyImplyLeading: false,
                backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                title: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: EnsFilterButton(
                      padding: EdgeInsets.zero,
                      numberActiveFilters: vm.preSelectedCategories.length,
                      accessibilityButtonText: 'Filtrer les catégories',
                      onTap: () {
                        context.tagAction(
                          TagsMonMonHistoireDeSante.tag_1260_button_historique_filtre,
                        );
                      },
                      filterDialog: MonHistoireDeSanteFilterDialog(
                        availableCategories: vm.availableCategoriesForFilter,
                        preSelectedCategories: vm.preSelectedCategories,
                      ),
                    ),
                  ),
                ),
              ),
              SliverAppBar(
                pinned: true,
                automaticallyImplyLeading: false,
                surfaceTintColor: Colors.transparent,
                bottom: PreferredSize(
                  preferredSize: const Size.fromHeight(8),
                  child: _TabBar(),
                ),
                backgroundColor: Theme.of(context).scaffoldBackgroundColor,
              ),
            ],
          ],
          body: TabBarView(
            children: [
              _VueJoursMonHistoireDeSanteContent(vm),
              _VueMoisMonHistoireDeSanteContent(vm),
            ],
          ),
        ),
      ),
    );
  }
}

class _VueJoursMonHistoireDeSanteContent extends StatelessWidget {
  final MonHistoireDeSanteScreenViewModel vm;

  const _VueJoursMonHistoireDeSanteContent(this.vm);

  @override
  Widget build(BuildContext context) {
    context.tagAction(TagsMonMonHistoireDeSante.tag_584_button_historique_des_soins_jour);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: ListViewWithScrollbar.separated(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
            separatorBuilder: (_, __) => const SizedBox(height: 8),
            scrollDirection: Axis.vertical,
            itemCount: vm.vueJoursDisplayModels.length,
            itemBuilder: (context, index) {
              switch (vm.vueJoursDisplayModels[index]) {
                case MonHistoireDeSanteEpisodeDisplayModel():
                case MonHistoireDeSanteYearDisplayModel():
                case MonHistoireDeSanteDateDisplayModel():
                  final dm = vm.vueJoursDisplayModels[index];
                  return MonHistoireDeSanteVueJoursListItem(
                    displayModel: dm,
                    withTopMargin:
                        index > 0 && vm.vueJoursDisplayModels[index - 1] is MonHistoireDeSanteEpisodeDisplayModel,
                    from: FetchProfessionnelSanteDetailFrom.MHS,
                  );
                case MonHistoireDeSanteDisplayMoreButtonDisplayModel():
                  return DisplayMoreEpisodesButton(vm);
              }
            },
          ),
        ),
      ],
    );
  }
}

class _VueMoisMonHistoireDeSanteContent extends StatelessWidget {
  final MonHistoireDeSanteScreenViewModel vm;

  const _VueMoisMonHistoireDeSanteContent(this.vm);

  @override
  Widget build(BuildContext context) {
    context.tagAction(TagsMonMonHistoireDeSante.tag_583_button_historique_des_soins_mois);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: ListViewWithScrollbar.separated(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
            separatorBuilder: (_, __) => const SizedBox(height: 8),
            scrollDirection: Axis.vertical,
            itemCount: vm.vueMoisDisplayModels.length,
            itemBuilder: (context, index) {
              switch (vm.vueMoisDisplayModels[index]) {
                case MonHistoireDeSanteVueMoisMonthDisplayModel():
                case MonHistoireDeSanteVueMoisCategoryDisplayModel():
                  final dm = vm.vueMoisDisplayModels[index];
                  return MonHistoireDeSanteVueMoisListItem(
                    displayModel: dm,
                    withTopMargin: index > 0 &&
                        vm.vueMoisDisplayModels[index - 1] is MonHistoireDeSanteVueMoisCategoryDisplayModel,
                  );
                case MonHistoireDeSanteVueMoisDisplayMoreButtonDisplayModel():
                  return DisplayMoreEpisodesButton(vm);
              }
            },
          ),
        ),
      ],
    );
  }
}

class DisplayMoreEpisodesButton extends StatelessWidget {
  final MonHistoireDeSanteScreenViewModel vm;

  const DisplayMoreEpisodesButton(this.vm);

  @override
  Widget build(BuildContext context) {
    return EnsButtonSecondary(
      label: 'Afficher plus',
      loading: vm.paginationStatus.isLoading(),
      hasFixedSize: true,
      paddingAround: const EdgeInsets.symmetric(vertical: 16),
      backgroundColor: Colors.transparent,
      onTap: () {
        vm.fetchMonHistoireDeSanteNextPageEpisodes();
      },
    );
  }
}

class _PageHeader extends StatelessWidget {
  final MonHistoireDeSanteScreenViewModel vm;

  const _PageHeader(this.vm);

  @override
  Widget build(BuildContext context) {
    final bool isProfilPrincipal = vm.profilType.isProfilPrincipal;
    final currentMaladiesDisplayModel = vm.currentMaladiesDisplayModel;
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 32, 20, 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            vm.canModifyConfidentiality
                ? vm.isMasked
                    ? 'J\'y retrouve mes évènements de santé marquants, mes consultations et mes délivrances de médicaments. Ces données sont masquées aux professionnels de santé.'
                        .resolveWith(isProfilPrincipal: isProfilPrincipal)
                    : 'J\'y retrouve mes évènements de santé marquants, mes consultations et mes délivrances de médicaments. Ces données sont visibles par les professionnels de santé autorisés à accéder à mes documents.'
                        .resolveWith(
                        isProfilPrincipal: isProfilPrincipal,
                      )
                : 'J\'y retrouve mes évènements de santé marquants, mes consultations et mes délivrances de médicaments.'
                    .resolveWith(isProfilPrincipal: isProfilPrincipal),
            style: EnsTextStyle.text14_w400_normal_body,
          ),
          const SizedBox(height: 4),
          if (vm.canModifyConfidentiality)
            EnsInkWell(
              onTap: () => Navigator.pushNamed(context, ConfidentialiteDocumentsScreen.routeName),
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 4),
                child: Text(
                  'Modifier la confidentialité',
                  style: EnsTextStyle.text14_w700_normal_primary_underline,
                ),
              ),
            ),
          if (vm.listStatus == HistoireDeSanteListStatus.SUCCESS &&
              currentMaladiesDisplayModel != null &&
              currentMaladiesDisplayModel.items.isNotEmpty)
            Padding(
              padding: const EdgeInsets.only(top: 24),
              child: MonHistoireDeSanteVueMoisListItem(
                displayModel: currentMaladiesDisplayModel,
                isMaladieInProgress: true,
              ),
            ),
        ],
      ),
    );
  }
}

class _Loading extends StatelessWidget {
  final MonHistoireDeSanteScreenViewModel vm;

  const _Loading(this.vm);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 12),
        MonHistoireDeSanteEpisodesSkeleton(),
        const SizedBox(height: 12),
        MonHistoireDeSanteEpisodesSkeleton(),
        const SizedBox(height: 12),
        MonHistoireDeSanteEpisodesSkeleton(),
        const SizedBox(height: 12),
      ],
    );
  }
}

class _Empty extends StatelessWidget {
  final MonHistoireDeSanteScreenViewModel vm;

  const _Empty(this.vm);

  @override
  Widget build(BuildContext context) {
    final bool isProfilPrincipal = vm.profilType.isProfilPrincipal;
    return EnsEmptyPage(
      title: _getEmptyPageTitle(profilType: vm.profilType, userName: vm.firstName),
      description:
          'J\'y retrouve mes évènements de santé marquants, mes consultations et mes délivrances de médicaments.'
              .resolveWith(isProfilPrincipal: isProfilPrincipal),
      customImagePath: EnsImages.information,
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
        labels: ['Jour', 'Mois'],
      ),
    );
  }
}

String _getAppBarSubLevel({
  required ProfilType profilType,
}) {
  return switch (profilType) {
    ProfilType.PROFIL_PRINCIPAL => 'Mon histoire de santé',
    ProfilType.AIDE || ProfilType.AYANT_DROIT => 'L\'histoire de santé',
  };
}

String _getEmptyPageTitle({
  required ProfilType profilType,
  required String? userName,
}) {
  return switch (profilType) {
    ProfilType.PROFIL_PRINCIPAL => 'Mon histoire de santé',
    ProfilType.AIDE || ProfilType.AYANT_DROIT => 'L\'histoire de santé de $userName',
  };
}
