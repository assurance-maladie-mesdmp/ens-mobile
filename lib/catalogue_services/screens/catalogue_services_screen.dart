/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/catalogue_services/redux/catalogue_service_redux.dart';
import 'package:fr_cnamts_ens/catalogue_services/screens/catalogue_service_filter_dialog.dart';
import 'package:fr_cnamts_ens/catalogue_services/screens/catalogue_services_en_savoir_plus_screen.dart';
import 'package:fr_cnamts_ens/catalogue_services/screens/viewmodels/catalogue_services_screen_view_model.dart';
import 'package:fr_cnamts_ens/catalogue_services/widgets/catalogue_services_item.dart';
import 'package:fr_cnamts_ens/documents/widgets/ens_filter_button.dart';
import 'package:fr_cnamts_ens/infra/injection/ens_module_container.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profils_rattaches/screens/profils_utils.dart';
import 'package:fr_cnamts_ens/tags/tags_catalogue_services.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/error_page.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button_secondary.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_link_text.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';
import 'package:fr_cnamts_ens/ui/widgets/skeletons.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:intl/intl.dart';

class CatalogueServicesScreen extends StatelessWidget {
  static const routeName = '/catalogue-de-services';

  @override
  Widget build(BuildContext context) {
    return StoreConnector<EnsState, CatalogueServicesScreenViewModel>(
      converter: (store) => CatalogueServicesScreenViewModel.from(store),
      onInit: (store) {
        store.dispatch(ReinitialiseCatalogueServiceFiltersAction());
        store.dispatch(FetchCatalogueServicesAction());
      },
      onInitialBuild: (vm) => context.tagAction(TagsCatalogueServices.tag_482_catalogue_accueil),
      distinct: true,
      builder: (_, CatalogueServicesScreenViewModel vm) => Scaffold(
        appBar: const EnsAppBarSubLevel(
          title: 'Catalogue de services',
        ),
        body: _Content(vm),
      ),
    );
  }
}

class _Content extends StatelessWidget {
  final CatalogueServicesScreenViewModel vm;

  const _Content(this.vm);

  @override
  Widget build(BuildContext context) {
    final CatalogueServicesScreenDisplayModel displayModel = vm.displayModel;
    switch (displayModel) {
      case CatalogueServicesScreenDisplayModelSuccess _:
        if (displayModel.isNotEmpty) {
          return _Success(
            profilType: vm.profilType,
            mainFirstName: vm.mainFirstName,
            displayModel: displayModel,
          );
        } else {
          return _Empty(
            profilType: vm.profilType,
            mainFirstName: vm.mainFirstName,
            displayModel: displayModel,
          );
        }
      case CatalogueServicesScreenDisplayModelError _:
        return _Error(vm);
      case CatalogueServicesScreenDisplayModelLoading _:
        return _Loading(vm: vm);
    }
  }
}

class _CatalogueServiceViewItem extends StatelessWidget {
  final ProfilType profilType;
  final String mainFirstName;
  final CatalogueServicesViewItem catalogueServicesViewItem;

  const _CatalogueServiceViewItem({
    required this.profilType,
    required this.mainFirstName,
    required this.catalogueServicesViewItem,
  });

  @override
  Widget build(BuildContext context) {
    switch (catalogueServicesViewItem) {
      case final CatalogueServicesViewItemServicesHeader itemHeader:
        return _ScreenHeader(
          profilType: profilType,
          mainFirstName: mainFirstName,
          header: itemHeader,
        );
      case final CatalogueServicesViewItemService itemService:
        return CatalogueServiceItem(service: itemService.catalogueService);
      default:
        return const SizedBox();
    }
  }
}

class _ScreenHeader extends StatelessWidget {
  final ProfilType profilType;
  final String mainFirstName;
  final CatalogueServicesViewItemServicesHeader header;

  const _ScreenHeader({
    required this.profilType,
    required this.mainFirstName,
    required this.header,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, bottom: 12, top: 32, right: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            profilType.isAd
                ? 'Je découvre des services numériques de confiance, pour m\'accompagner dans le suivi de la santé de $mainFirstName en toute sécurité.'
                : 'Je découvre des services numériques de confiance, pour m\'accompagner dans le suivi de ma santé en toute sécurité.',
            style: EnsTextStyle.text14_w400_normal_body,
          ),
          EnsLinkText(
            label: 'En savoir plus sur la confidentialité de ces données',
            textPadding: const EdgeInsets.symmetric(vertical: 16),
            onTap: () {
              final navigatorKey = EnsModuleContainer.currentInjector.getNavigatorKey();
              navigatorKey.currentState?.pushNamed(CatalogueServicesEnSavoirPlusScreen.routeName);
            },
          ),
          const SizedBox(height: 8),
          const Text(
            'Tous les services référencés',
            style: EnsTextStyle.text20_w400_normal_title,
          ),
          EnsFilterButton(
            numberActiveFilters: header.preselectedRegions.length + header.preselectedThematics.length,
            accessibilityButtonText: 'Filtrer les régions et les thématiques',
            padding: const EdgeInsets.symmetric(vertical: 16),
            onTap: () {
              context.tagAction(TagsCatalogueServices.tag_808_button_filtrer_par_regions_ou_thematiques);
            },
            filterDialog: const CatalogueServiceFilterDialog(),
          ),
          if (header.servicesCount > 0)
            Text(
              Intl.plural(
                header.servicesCount,
                one: '${header.servicesCount} service',
                other: '${header.servicesCount} services',
              ),
              style: EnsTextStyle.text14_w600_normal_body,
            ),
        ],
      ),
    );
  }
}

class _Success extends StatelessWidget {
  final ProfilType profilType;
  final String mainFirstName;
  final CatalogueServicesScreenDisplayModelSuccess displayModel;

  const _Success({required this.profilType, required this.mainFirstName, required this.displayModel});

  @override
  Widget build(BuildContext context) {
    return ListViewWithScrollbar.separated(
      separatorBuilder: (context, index) => const Divider(
        height: 2,
        color: EnsColors.light,
      ),
      scrollDirection: Axis.vertical,
      padding: const EdgeInsets.only(bottom: 76),
      itemCount: displayModel.catalogueServicesViewItems.length,
      itemBuilder: (_, index) => _CatalogueServiceViewItem(
        profilType: profilType,
        mainFirstName: mainFirstName,
        catalogueServicesViewItem: displayModel.catalogueServicesViewItems[index],
      ),
    );
  }
}

class _Error extends StatelessWidget {
  final CatalogueServicesScreenViewModel vm;

  const _Error(this.vm);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          ErrorPage(reloadFunction: vm.refreshCatalogueServices),
        ],
      ),
    );
  }
}

class _Empty extends StatelessWidget {
  final ProfilType profilType;
  final String mainFirstName;
  final CatalogueServicesScreenDisplayModelSuccess displayModel;

  const _Empty({required this.profilType, required this.mainFirstName, required this.displayModel});

  @override
  Widget build(BuildContext context) {
    return ScrollviewWithScrollbar(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            _ScreenHeader(
              profilType: profilType,
              mainFirstName: mainFirstName,
              header:
                  displayModel.catalogueServicesViewItems.whereType<CatalogueServicesViewItemServicesHeader>().first,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 24, right: 24, top: 16, bottom: 32),
              child: EnsSvg(EnsImages.information, width: 160, height: 160),
            ),
            const Text(
              'Aucun service trouvé',
              style: EnsTextStyle.text16_w400_normal_body,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 32),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: EnsButton(
                label: 'Modifier les filtres',
                onTap: () {
                  context.tagAction(TagsCatalogueServices.tag_1300_button_filtres_modifier);
                  showFilterDialog(context, const CatalogueServiceFilterDialog());
                },
              ),
            ),
            const SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: EnsButtonSecondary(
                label: 'Voir tous les services',
                onTap: () {
                  context.tagAction(TagsCatalogueServices.tag_1301_button_catalogue_voir_services);
                  StoreProvider.of<EnsState>(context).dispatch(ReinitialiseCatalogueServiceFiltersAction());
                },
              ),
            ),
            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}

class _Loading extends StatelessWidget {
  final CatalogueServicesScreenViewModel vm;

  const _Loading({required this.vm});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _ScreenHeader(
          profilType: vm.profilType,
          mainFirstName: vm.mainFirstName,
          header: CatalogueServicesViewItemServicesHeader(
            servicesCount: 0,
            preselectedRegions: const [],
            availableRegions: const [],
            preselectedThematics: const [],
            availableThematics: const [],
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: ListViewWithScrollbar.separated(
              separatorBuilder: (_, index) => const Divider(
                height: 2,
                color: EnsColors.illustrative02,
              ),
              scrollDirection: Axis.vertical,
              itemCount: 3,
              shrinkWrap: true,
              itemBuilder: (_, index) => CatalogueServiceItemSkeleton(),
            ),
          ),
        ),
      ],
    );
  }
}
