/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/documents/widgets/ens_filter_button.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/parameters/historique_activites/screens/historique_activites_filter_dialog.dart';
import 'package:fr_cnamts_ens/parameters/historique_activites/screens/viewModels/historique_activites_display_model.dart';
import 'package:fr_cnamts_ens/parameters/historique_activites/screens/viewModels/historique_activites_mes_activites_traces_view_model.dart';
import 'package:fr_cnamts_ens/parameters/historique_activites/screens/viewModels/historique_activites_mes_professionnels_traces_view_model.dart';
import 'package:fr_cnamts_ens/parameters/historique_activites/screens/viewModels/historique_activites_mes_services_synchronises_traces_view_model.dart';
import 'package:fr_cnamts_ens/parameters/historique_activites/screens/viewModels/historique_activites_screen_view_model.dart';
import 'package:fr_cnamts_ens/parameters/historique_activites/screens/viewModels/historique_activites_status.dart';
import 'package:fr_cnamts_ens/parameters/historique_activites/screens/widget/historique_activites_info_button.dart';
import 'package:fr_cnamts_ens/parameters/historique_activites/screens/widget/historique_activites_tab_button.dart';
import 'package:fr_cnamts_ens/profils_rattaches/screens/profils_utils.dart';
import 'package:fr_cnamts_ens/tags/parameters/tags_historique_activites.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/utils/pull_to_refresh_utils.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button_secondary.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_divider.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_external_link.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_rich_text.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';
import 'package:fr_cnamts_ens/ui/widgets/skeletons.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:fr_cnamts_ens/utils/error_helper.dart';

enum HistoriqueActivitesSelectedTab { PROFESSIONNELS_DE_SANTE, MES_ACTIVITES, SERVICES_SYNCHRONISES }

class HistoriqueActivitesScreen extends StatelessWidget {
  static const routeName = '/historique-activite';

  @override
  Widget build(BuildContext context) {
    return StoreConnector<EnsState, HistoriqueActivitesScreenViewModel>(
      converter: (store) => HistoriqueActivitesScreenViewModel.from(store),
      distinct: true,
      onInitialBuild: (_) {
        context.tagAction(TagsHistoriqueActivites.tag_410_compte_historique_activite);
      },
      builder: (context, vm) => Scaffold(
        appBar: const EnsAppBarSubLevel(
          title: 'Historique d\'activité',
          action: HistoriqueActivitesInfoButton(),
        ),
        body: SafeArea(
          child: _Content(vm: vm),
        ),
      ),
    );
  }
}

class _Content extends StatefulWidget {
  final HistoriqueActivitesScreenViewModel vm;

  const _Content({required this.vm});

  @override
  State<_Content> createState() => _ContentState();
}

class _ContentState extends State<_Content> {
  HistoriqueActivitesTab selectedTab = HistoriqueActivitesTab.MES_PROFESSIONNELS;

  @override
  Widget build(BuildContext context) {
    return EnsPullToRefresh(
      onRefresh: () async => widget.vm.refresh(selectedTab),
      child: ScrollviewWithScrollbar(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const _InfoText(),
            _Tabs(
              selectedTab: selectedTab,
              profilType: widget.vm.profilType,
              onTabSelected: (selected) {
                setState(() => selectedTab = selected);
              },
            ),
            _FilterButton(selectedTab: selectedTab, vm: widget.vm),
            const SizedBox(height: 12),
            _Traces(selectedTab: selectedTab),
          ],
        ),
      ),
    );
  }
}

class _InfoText extends StatelessWidget {
  const _InfoText();

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 24, right: 24, top: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          EnsRichText(
            text: TextSpan(
              text:
                  'Je peux retrouver l\'ensemble des actions réalisées sur ce profil par les professionnels de santé et moi-même.\nPour récupérer l\'intégralité de l\'historique d\'activité, rendez-vous dans la rubrique Télécharger les données sur',
              style: EnsTextStyle.text14_w400_normal_body,
              children: [
                WidgetSpan(child: SizedBox(width: 4)),
                WidgetSpan(
                  child: EnsExternalLink.withRedirection(
                    linkUrl: 'https://www.monespacesante.fr',
                    linkText: 'monespacesante.fr',
                    semanticsLabel: 'mon espace santé point fr',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _Tabs extends StatelessWidget {
  final HistoriqueActivitesTab selectedTab;
  final ProfilType profilType;
  final void Function(HistoriqueActivitesTab) onTabSelected;

  const _Tabs({
    required this.selectedTab,
    required this.profilType,
    required this.onTabSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 24, right: 24, top: 24),
          child: Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              HistoriqueActivitesTabButton(
                label: HistoriqueActivitesTab.MES_PROFESSIONNELS.getLabel(profilType),
                isSelected: selectedTab == HistoriqueActivitesTab.MES_PROFESSIONNELS,
                onTap: () {
                  context.tagAction(TagsHistoriqueActivites.tag_787_tab_professionnels_de_sante);
                  onTabSelected(HistoriqueActivitesTab.MES_PROFESSIONNELS);
                },
              ),
              HistoriqueActivitesTabButton(
                label: HistoriqueActivitesTab.MES_ACTIVITES.getLabel(profilType),
                isSelected: selectedTab == HistoriqueActivitesTab.MES_ACTIVITES,
                onTap: () {
                  context.tagAction(TagsHistoriqueActivites.tag_789_tab_activites);
                  onTabSelected(HistoriqueActivitesTab.MES_ACTIVITES);
                },
              ),
              HistoriqueActivitesTabButton(
                label: HistoriqueActivitesTab.MES_SERVICES_SYNCHRONISES.getLabel(profilType),
                isSelected: selectedTab == HistoriqueActivitesTab.MES_SERVICES_SYNCHRONISES,
                onTap: () {
                  context.tagAction(TagsHistoriqueActivites.tag_788_tab_services_synchronises);
                  onTabSelected(HistoriqueActivitesTab.MES_SERVICES_SYNCHRONISES);
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _FilterButton extends StatelessWidget {
  final HistoriqueActivitesTab selectedTab;
  final HistoriqueActivitesScreenViewModel vm;

  const _FilterButton({required this.selectedTab, required this.vm});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, top: 24),
      child: EnsFilterButton(
        padding: EdgeInsets.zero,
        numberActiveFilters: vm.activeFilterCount,
        onTap: () => context.tagAction(TagsHistoriqueActivites.tag_786_button_filtrer_par_auteur),
        filterDialog: HistoriqueActivitesFilterDialog(selectedTab: selectedTab),
      ),
    );
  }
}

class _Traces extends StatelessWidget {
  final HistoriqueActivitesTab selectedTab;

  const _Traces({required this.selectedTab});

  @override
  Widget build(BuildContext context) {
    switch (selectedTab) {
      case HistoriqueActivitesTab.MES_PROFESSIONNELS:
        return _MesProfessionnelsTraces();
      case HistoriqueActivitesTab.MES_ACTIVITES:
        return _MesActivitesTraces();
      case HistoriqueActivitesTab.MES_SERVICES_SYNCHRONISES:
        return _MesServicesSynchronisesTraces();
    }
  }
}

class _MesProfessionnelsTraces extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<EnsState, HistoriqueActivitesMesProfessionnelsTracesViewModel>(
      converter: (store) => HistoriqueActivitesMesProfessionnelsTracesViewModel.from(store),
      distinct: true,
      onInitialBuild: (vm) => vm.load(),
      builder: (context, vm) => _TracesContent(
        status: vm.status,
        selectedTab: HistoriqueActivitesTab.MES_PROFESSIONNELS,
        displayModels: vm.displayModels,
        load: vm.load,
        hasNextPage: vm.hasNextPage,
        loadNextPage: vm.loadNextPage,
        isNextPageLoading: vm.paginationStatus.isLoading(),
        resetTraces: vm.resetTraces,
      ),
    );
  }
}

class _MesActivitesTraces extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<EnsState, HistoriqueActivitesMesActivitesTracesViewModel>(
      converter: (store) => HistoriqueActivitesMesActivitesTracesViewModel.from(store),
      distinct: true,
      onInitialBuild: (vm) => vm.load(),
      builder: (context, vm) => _TracesContent(
        status: vm.status,
        selectedTab: HistoriqueActivitesTab.MES_ACTIVITES,
        displayModels: vm.displayModels,
        load: vm.load,
        resetTraces: vm.resetTraces,
      ),
    );
  }
}

class _MesServicesSynchronisesTraces extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<EnsState, HistoriqueActivitesMesServicesSynchronisesTracesViewModel>(
      converter: (store) => HistoriqueActivitesMesServicesSynchronisesTracesViewModel.from(store),
      distinct: true,
      onInitialBuild: (vm) => vm.load(),
      builder: (context, vm) => _TracesContent(
        status: vm.status,
        selectedTab: HistoriqueActivitesTab.MES_SERVICES_SYNCHRONISES,
        displayModels: vm.displayModels,
        load: vm.load,
        resetTraces: vm.resetTraces,
      ),
    );
  }
}

class _TracesContent extends StatelessWidget {
  final ActivityHistoryStatus status;
  final HistoriqueActivitesTab selectedTab;
  final List<HistoriqueActivitesDisplayModel> displayModels;
  final void Function() load;
  final bool? hasNextPage;
  final void Function()? loadNextPage;
  final bool? isNextPageLoading;
  final void Function() resetTraces;

  const _TracesContent({
    required this.status,
    required this.selectedTab,
    required this.displayModels,
    required this.load,
    this.hasNextPage,
    this.loadNextPage,
    this.isNextPageLoading,
    required this.resetTraces,
  });

  @override
  Widget build(BuildContext context) {
    switch (status) {
      case ActivityHistoryStatus.LOADING:
        return _Loading();
      case ActivityHistoryStatus.EMPTY:
        return _EmptyList(selectedTab: selectedTab);
      case ActivityHistoryStatus.FILTER_EMPTY:
        return _NoResult(selectedTab: selectedTab, resetTraces: resetTraces);
      case ActivityHistoryStatus.ERROR:
        return _Error(reload: load);
      case ActivityHistoryStatus.SUCCESS:
        return _HistoryList(
          displayModels: displayModels,
          hasNextPage: hasNextPage ?? false,
          loadNextPage: loadNextPage,
          isNextPageLoading: isNextPageLoading ?? false,
        );
    }
  }
}

class _Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ListItemSkeleton(),
        Divider(height: 2, color: EnsColors.neutral200),
        ListItemSkeleton(),
        Divider(height: 2, color: EnsColors.neutral200),
        ListItemSkeleton(),
        SizedBox(height: 24),
      ],
    );
  }
}

class _EmptyList extends StatelessWidget {
  final HistoriqueActivitesTab selectedTab;

  const _EmptyList({required this.selectedTab});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const EnsSvg(EnsImages.information, height: 140, width: 140),
          const SizedBox(height: 32),
          Text(
            selectedTab.emptyTraces,
            textAlign: TextAlign.center,
            style: EnsTextStyle.text16_w400_normal_body,
          ),
          const SizedBox(height: 24),
        ],
      ),
    );
  }
}

class _HistoryList extends StatelessWidget {
  final List<HistoriqueActivitesDisplayModel> displayModels;
  final bool hasNextPage;
  final void Function()? loadNextPage;
  final bool isNextPageLoading;

  const _HistoryList({
    required this.displayModels,
    required this.hasNextPage,
    required this.loadNextPage,
    required this.isNextPageLoading,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ...displayModels.map((displayModel) {
              switch (displayModel) {
                case final HistoriqueActivitesDateHeaderDisplayModel dateDisplayModel:
                  return HistoriqueActivitesDateHeaderItem(formattedDate: dateDisplayModel.formattedDate);
                case final HistoriqueActivitesTraceDisplayModel traceDisplayModel:
                  return HistoriqueActivitesTraceItem(traceDisplayModel: traceDisplayModel);
              }
            }),
          ],
        ),
        if (hasNextPage) ...[
          const SizedBox(height: 40),
          EnsButtonSecondary(
            label: 'Afficher plus',
            loading: isNextPageLoading,
            hasFixedSize: true,
            backgroundColor: Colors.transparent,
            onTap: () {
              context.tagAction(TagsHistoriqueActivites.tag_2666_button_afficher_plus);
              loadNextPage?.call();
            },
          ),
        ],
        const SizedBox(height: 24),
      ],
    );
  }
}

class HistoriqueActivitesDateHeaderItem extends StatelessWidget {
  final String formattedDate;

  const HistoriqueActivitesDateHeaderItem({required this.formattedDate});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
      child: Text(formattedDate, style: EnsTextStyle.text24_w400_normal_title),
    );
  }
}

class HistoriqueActivitesTraceItem extends StatelessWidget {
  final HistoriqueActivitesTraceDisplayModel traceDisplayModel;

  const HistoriqueActivitesTraceItem({required this.traceDisplayModel});

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: EnsColors.light,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(traceDisplayModel.label, style: EnsTextStyle.text14_w600_normal_title),
                Text(
                  traceDisplayModel.formattedDate,
                  style: EnsTextStyle.text14_w400_normal_body,
                  semanticsLabel: traceDisplayModel.a11yFormattedDate,
                ),
              ],
            ),
          ),
          const EnsDivider(),
        ],
      ),
    );
  }
}

class _NoResult extends StatelessWidget {
  final HistoriqueActivitesTab selectedTab;
  final void Function() resetTraces;

  const _NoResult({required this.selectedTab, required this.resetTraces});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const EnsSvg(EnsImages.information, height: 140, width: 140),
          Text(
            selectedTab.emptyTraces,
            textAlign: TextAlign.center,
            style: EnsTextStyle.text16_w400_normal_body,
          ),
          const SizedBox(height: 32),
          EnsButton(
            label: 'Modifier les filtres',
            paddingAround: EdgeInsets.zero,
            onTap: () {
              showGeneralDialog(
                context: context,
                barrierDismissible: false,
                transitionDuration: const Duration(milliseconds: 350),
                transitionBuilder: (_, anim1, __, child) {
                  return SlideTransition(
                    position: Tween(begin: const Offset(0, 1), end: Offset.zero).animate(anim1),
                    child: child,
                  );
                },
                pageBuilder: (context, _, __) => HistoriqueActivitesFilterDialog(selectedTab: selectedTab),
              );
            },
          ),
          const SizedBox(height: 24),
          EnsButtonSecondary(
            label: 'Voir toutes les activités',
            paddingAround: EdgeInsets.zero,
            onTap: () => resetTraces(),
          ),
          const SizedBox(height: 24),
        ],
      ),
    );
  }
}

class _Error extends StatelessWidget {
  final void Function() reload;

  const _Error({required this.reload});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const EnsSvg(EnsImages.stethoscope, height: 120, width: 120),
          const SizedBox(height: 12),
          const Text('Oups !', style: EnsTextStyle.text26_w400_normal_title, textAlign: TextAlign.center),
          const SizedBox(height: 16),
          const Text(GENERIC_ERROR_MESSAGE, style: EnsTextStyle.text16_w400_normal_body, textAlign: TextAlign.center),
          const SizedBox(height: 24),
          EnsButton(label: 'Recharger la page', onTap: reload),
          const SizedBox(height: 24),
        ],
      ),
    );
  }
}
