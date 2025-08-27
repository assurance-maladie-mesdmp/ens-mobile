/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/catalogue_services/redux/catalogue_service_redux.dart';
import 'package:fr_cnamts_ens/catalogue_services/screens/catalogue_services_screen.dart';
import 'package:fr_cnamts_ens/catalogue_services/widgets/logo_or_square.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/parameters/services_synchronises/screens/service_synchronise_consentements_screen.dart';
import 'package:fr_cnamts_ens/parameters/services_synchronises/screens/service_synchronise_update_consentements_screen.dart';
import 'package:fr_cnamts_ens/parameters/services_synchronises/screens/viewmodels/services_synchronises_screen_view_model.dart';
import 'package:fr_cnamts_ens/profils_rattaches/screens/profils_utils.dart';
import 'package:fr_cnamts_ens/tags/tags_services_synchronises.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/error_page.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_card.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_divider.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_empty_page.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_information_mark_label.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';
import 'package:fr_cnamts_ens/ui/widgets/skeletons.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:fr_cnamts_ens/utils/screen_status.dart';
import 'package:fr_cnamts_ens/utils/wordings_extension.dart';

class ServicesSynchronisesScreen extends StatelessWidget {
  static const routeName = '/mon-compte/services-synchronises';
  static const deeplinkRouteName = '/mon-compte/services-synchronises/redirect';

  const ServicesSynchronisesScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const EnsAppBarSubLevel(title: 'Services synchronisés'),
      body: StoreConnector<EnsState, ServicesSynchronisesScreenViewModel>(
        converter: (store) => ServicesSynchronisesScreenViewModel.from(store),
        onInit: (store) => store.dispatch(FetchCatalogueServicesAction()),
        onInitialBuild: (vm) {},
        onWillChange: (oldVm, vm) {
          if (oldVm?.status != ScreenStatusOnEmpty.SUCCESS && vm.status == ScreenStatusOnEmpty.SUCCESS) {
            context.tagAction(TagsServicesSynchronises.tag_619_compte_service_synchronises_liste);
          }
          if (oldVm?.status != ScreenStatusOnEmpty.EMPTY && vm.status == ScreenStatusOnEmpty.EMPTY) {
            context.tagAction(TagsServicesSynchronises.tag_617_compte_service_synchronises_empty);
          }
        },
        distinct: true,
        builder: (context, vm) => _Content(vm: vm),
      ),
    );
  }
}

class _Content extends StatelessWidget {
  final ServicesSynchronisesScreenViewModel vm;

  const _Content({required this.vm});

  @override
  Widget build(BuildContext context) {
    switch (vm.status) {
      case ScreenStatusOnEmpty.LOADING:
        return const _Loading();
      case ScreenStatusOnEmpty.EMPTY:
        return _Empty(profilType: vm.profilType);
      case ScreenStatusOnEmpty.SUCCESS:
        return _Success(vm: vm);
      case ScreenStatusOnEmpty.ERROR:
        return ErrorPage(reloadFunction: vm.reloadData);
    }
  }
}

class _Empty extends StatelessWidget {
  final ProfilType profilType;

  const _Empty({required this.profilType});

  @override
  Widget build(BuildContext context) {
    return EnsEmptyPage(
      title: 'Je découvre les services synchronisés avec Mon espace santé',
      description: 'Pour centraliser mes données de santé et enrichir mon suivi médical.'
          .resolveWith(isProfilPrincipal: profilType.isProfilPrincipal),
      customImagePath: EnsImages.catalogue_de_services,
      buttonList: EnsEmptyButtonList.withPrimaryButton(
        primaryButtonLabel: 'Découvrir le catalogue de services',
        primaryButtonHandler: () {
          context.tagAction(TagsServicesSynchronises.tag_618_button_compte_service_synchronises_empty_catalogue);
          Navigator.pushNamed(context, CatalogueServicesScreen.routeName);
        },
      ),
    );
  }
}

class _Loading extends StatelessWidget {
  const _Loading();

  @override
  Widget build(BuildContext context) => const Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 80),
          _LoadingItemSkeleton(),
          SizedBox(height: 2),
          _LoadingItemSkeleton(),
        ],
      );
}

class _LoadingItemSkeleton extends StatelessWidget {
  const _LoadingItemSkeleton();

  @override
  Widget build(BuildContext context) {
    return const ColoredBox(
      color: EnsColors.light,
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Row(
          children: [
            SkeletonBox(height: 64, width: 64, radius: 12),
            SizedBox(width: 24),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SkeletonBox(width: 100),
                SizedBox(height: 16),
                SkeletonBox(width: 200),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _Success extends StatelessWidget {
  final ServicesSynchronisesScreenViewModel vm;

  const _Success({required this.vm});

  @override
  Widget build(BuildContext context) {
    return ScrollviewWithScrollbar(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(24),
            child: Text(
              vm.profilType.isAd
                  ? 'Je gère les services synchronisés avec Mon espace santé pour centraliser les données de santé de ${vm.mainFirstName} et enrichir son suivi médical.'
                  : 'Je gère les services synchronisés avec Mon espace santé pour centraliser mes données de santé et enrichir mon suivi médical.',
              style: EnsTextStyle.text14_w400_normal_body,
            ),
          ),
          ListViewWithScrollbar.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: vm.servicesSynchronisesDisplayModels.length,
            separatorBuilder: (_, __) => const Divider(height: 1, thickness: 1, color: EnsColors.neutral200),
            itemBuilder: (_, index) => _ServiceSynchroniseItem(
              serviceDisplayModel: vm.servicesSynchronisesDisplayModels[index],
              shouldHaveDivider: index != vm.servicesSynchronisesDisplayModels.length - 1,
            ),
          ),
        ],
      ),
    );
  }
}

class _ServiceSynchroniseItem extends StatelessWidget {
  final ServiceSynchroniseDisplayModel serviceDisplayModel;
  final bool shouldHaveDivider;

  const _ServiceSynchroniseItem({required this.serviceDisplayModel, required this.shouldHaveDivider});

  @override
  Widget build(BuildContext context) {
    return EnsCard(
      backgroundColor: EnsColors.light,
      borderRadius: 0,
      hasBoxShadow: false,
      onTap: () {
        if (serviceDisplayModel.oid != null) {
          if (serviceDisplayModel.shouldUpdateAutorisationAfterMajorite) {
            Navigator.pushNamed(
              context,
              ServiceSynchroniseUpdateConsentementsScreen.routeName,
              arguments: ServiceSynchroniseUpdateConsentementsScreenArguments(
                serviceName: serviceDisplayModel.nom,
                serviceOid: serviceDisplayModel.oid!,
                dateLimiteAutorisation: serviceDisplayModel.dateLimiteAutorisation,
                cguUrl: serviceDisplayModel.cguUrl,
                shouldUpdateAutorisationAfterVersioning: serviceDisplayModel.shouldUpdateAutorisationAfterVersioning,
              ),
            );
          } else {
            Navigator.pushNamed(
              context,
              ServiceSynchroniseConsentementsScreen.routeName,
              arguments: ServiceSynchroniseConsentementsScreenArgument(
                serviceName: serviceDisplayModel.nom,
                serviceOid: serviceDisplayModel.oid!,
                isAvailable: serviceDisplayModel.isAvailable,
                shouldUpdateAutorisationAfterVersioning: serviceDisplayModel.shouldUpdateAutorisationAfterVersioning,
                from: ServiceSynchroniseConsentementsFrom.PARAMETERS,
              ),
            );
          }
        }
      },
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                LogoOrSquare(logo: serviceDisplayModel.logo),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(serviceDisplayModel.nom, style: EnsTextStyle.text16_w700_normal_title),
                      if (serviceDisplayModel.shouldUpdateAutorisationAfterVersioning ||
                          serviceDisplayModel.shouldUpdateAutorisationAfterMajorite)
                        const EnsInformationMarkLabel(title: 'Mise à jour des autorisations'),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 12, right: 16),
                  child: EnsSvg(EnsImages.ic_chevron_right, height: 12, width: 8, color: EnsColors.body),
                ),
              ],
            ),
          ),
          if (shouldHaveDivider) const EnsDivider(),
        ],
      ),
    );
  }
}
