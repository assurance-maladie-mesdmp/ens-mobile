/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/catalogue_services/domain/models/catalogue_service.dart';
import 'package:fr_cnamts_ens/catalogue_services/redux/catalogue_service_redux.dart';
import 'package:fr_cnamts_ens/catalogue_services/screens/viewmodels/catalogue_services_filter_dialog_view_model.dart';
import 'package:fr_cnamts_ens/infra/injection/ens_module_container.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/tags/tags_catalogue_services.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/count_bubble_indicator.dart';
import 'package:fr_cnamts_ens/ui/widgets/dialogs/category_filter_dialog.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_divider.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_floating_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_ink_well.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';

class CatalogueServiceFilterDialog extends StatelessWidget {
  const CatalogueServiceFilterDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return StoreConnector<EnsState, CatalogueServicesFilterDialogViewModel>(
      converter: (store) => CatalogueServicesFilterDialogViewModel.from(store),
      distinct: true,
      onInitialBuild: (vm) {
        _tagPage(context);
      },
      builder: (context, vm) => Scaffold(
        appBar: EnsAppBar(
          leading: Padding(
            padding: const EdgeInsets.only(left: 8),
            child: IconButton(
              icon: const EnsSvg(EnsImages.ic_close_big, color: EnsColors.title, width: 14, height: 14),
              tooltip: 'Fermer la fenêtre',
              splashRadius: 24,
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ),
          title: 'Filtrer',
          titlePadding: vm.preselectedRegions.isEmpty && vm.preselectedThematics.isEmpty
              ? const EdgeInsets.only(right: 70)
              : const EdgeInsets.only(left: 56),
          action: vm.preselectedRegions.isEmpty && vm.preselectedThematics.isEmpty
              ? null
              : EnsInkWell(
                  onTap: _dispatchUpdatedFiltersReseted,
                  child: const Center(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        'Réinitialiser',
                        style: EnsTextStyle.text14_w700_normal_primary,
                        semanticsLabel: 'Réinitialiser les filtres',
                      ),
                    ),
                  ),
                ),
        ),
        body: Column(
          children: [
            const SizedBox(height: 32),
            _Item(
              itemLabel: 'Régions',
              circleNumber: vm.preselectedRegions.length,
              onTap: () {
                _showFilterDialog(
                  context,
                  CategoryFilterDialog<Region>(
                    availableItems: vm.availableRegions,
                    preSelectedItems: vm.preselectedRegions,
                    title: 'Régions',
                    onPageBuildTag: TagsCatalogueServices.tag_812_catalogue_filtrer_par_regions,
                    onSelectTag: TagsCatalogueServices.tag_809_checkbox_select_regions,
                    onUnselectTag: TagsCatalogueServices.tag_810_checkbox_unselect_regions,
                    onFilterTag: TagsCatalogueServices.tag_811_button_valider_filtrer_par_regions_ou_thematiques,
                    onEmptyFilterTag: TagsCatalogueServices.tag_813_button_voir_toutes_les_regions,
                    onFilterSelected: (List<Region> selectedFilters) {
                      final navigatorKey = EnsModuleContainer.currentInjector.getNavigatorKey();
                      if (navigatorKey.currentContext != null) {
                        StoreProvider.of<EnsState>(navigatorKey.currentContext!).dispatch(
                          UpdateCatalogueServicesRegionFiltersAction(selectedFilters.map((e) => e.id).toList()),
                        );
                      }
                    },
                    displayLabel: (region) => region.label,
                  ),
                );
              },
            ),
            const EnsDivider(),
            _Item(
              itemLabel: 'Thématiques',
              circleNumber: vm.preselectedThematics.length,
              onTap: () {
                _showFilterDialog(
                  context,
                  CategoryFilterDialog(
                    availableItems: vm.availableThematics,
                    preSelectedItems: vm.preselectedThematics,
                    title: 'Thématiques',
                    displayLabel: (thematic) => thematic.label,
                    onSelectTag: TagsCatalogueServices.tag_1299_checkbox_select_thematiques,
                    onUnselectTag: TagsCatalogueServices.tag_1298_checkbox_unselect_thematiques,
                    onFilterTag: TagsCatalogueServices.tag_811_button_valider_filtrer_par_regions_ou_thematiques,
                    onFilterSelected: (List<Thematic> filters) {
                      final navigatorKey = EnsModuleContainer.currentInjector.getNavigatorKey();
                      if (navigatorKey.currentContext != null) {
                        StoreProvider.of<EnsState>(navigatorKey.currentContext!).dispatch(
                          UpdateCatalogueServicesThematicFiltersAction(filters.map((e) => e.id).toList()),
                        );
                      }
                    },
                    onPageBuildTag: TagsCatalogueServices.tag_1297_catalogue_filtrer_par_thematiques,
                  ),
                );
              },
            ),
            const EnsDivider(),
          ],
        ),
        floatingActionButton: EnsFloatingButton(
          buttonLabel: _getFloatingButtonLabel(vm),
          semanticsLabel: _getFloatingButtonLabel(vm),
          onTap: () {
            context.tagAction(TagsCatalogueServices.tag_1296_button_filtrer_par_regions_ou_thematiques_valider);
            Navigator.of(context).pop();
          },
          isDisabled: false,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }

  String _getFloatingButtonLabel(CatalogueServicesFilterDialogViewModel vm) {
    return (vm.preselectedRegions.isEmpty && vm.preselectedThematics.isEmpty)
        ? 'Voir tous les services'
        : 'Filtrer (${vm.preselectedRegions.length + vm.preselectedThematics.length})';
  }

  void _showFilterDialog(BuildContext context, Widget filterDialog) {
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
      pageBuilder: (context, _, __) => filterDialog,
    );
  }

  void _dispatchUpdatedFiltersReseted() {
    final navigatorKey = EnsModuleContainer.currentInjector.getNavigatorKey();
    if (navigatorKey.currentContext != null) {
      StoreProvider.of<EnsState>(navigatorKey.currentContext!).dispatch(ReinitialiseCatalogueServiceFiltersAction());
    }
  }

  void _tagPage(BuildContext context) {
    context.tagAction(TagsCatalogueServices.tag_1295_catalogue_filtrer_par_regions_ou_thematiques);
  }
}

class _Item extends StatelessWidget {
  final String itemLabel;
  final int circleNumber;
  final void Function()? onTap;

  const _Item({
    required this.itemLabel,
    required this.circleNumber,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return EnsInkWell(
      color: EnsColors.light,
      semanticLabel: itemLabel,
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              flex: 50,
              child: Text(
                itemLabel,
                style: EnsTextStyle.text16_w700_normal_title,
              ),
            ),
            const Spacer(),
            if (circleNumber > 0)
              CountBubbleIndicator(
                count: circleNumber,
              ),
            const SizedBox(width: 24),
            const EnsSvg(EnsImages.ic_chevron_right, width: 8, height: 12, color: EnsColors.title),
          ],
        ),
      ),
    );
  }
}
