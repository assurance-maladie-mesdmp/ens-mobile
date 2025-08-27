/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/aide/nous_contacter/screens/nous_contacter_screen.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/catalogue_services/domain/models/catalogue_service_detail.dart';
import 'package:fr_cnamts_ens/catalogue_services/domain/models/donnee_partagee.dart';
import 'package:fr_cnamts_ens/catalogue_services/domain/models/service_image.dart';
import 'package:fr_cnamts_ens/catalogue_services/redux/catalogue_service_redux.dart';
import 'package:fr_cnamts_ens/catalogue_services/screens/catalogue_services_signaler_screen.dart';
import 'package:fr_cnamts_ens/catalogue_services/screens/viewmodels/catalogue_services_detail_screen_view_model.dart';
import 'package:fr_cnamts_ens/catalogue_services/screens/viewmodels/service_details_display_model.dart';
import 'package:fr_cnamts_ens/catalogue_services/widgets/catalogue_carousel_widget.dart';
import 'package:fr_cnamts_ens/catalogue_services/widgets/download_service_app_button.dart';
import 'package:fr_cnamts_ens/guestmode/guest_mode_helper.dart';
import 'package:fr_cnamts_ens/guestmode/widgets/bottom_sheet_guest_mode.dart';
import 'package:fr_cnamts_ens/helpdesk/domain/signalement_type.dart';
import 'package:fr_cnamts_ens/helpdesk/redux/helpdesk_redux.dart';
import 'package:fr_cnamts_ens/helpdesk/screens/signalement_helper.dart';
import 'package:fr_cnamts_ens/helpdesk/screens/viewmodel/signalement_information_view_model.dart';
import 'package:fr_cnamts_ens/home/widgets/carousel_skeleton.dart';
import 'package:fr_cnamts_ens/infra/injection/ens_module_container.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/parameters/services_synchronises/screens/service_synchronise_consentements_screen.dart';
import 'package:fr_cnamts_ens/parameters/services_synchronises/screens/service_synchronise_update_consentements_screen.dart';
import 'package:fr_cnamts_ens/tags/tags_catalogue_services.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/error_page.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_bullet_point.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button_secondary.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_carousel_item.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_divider.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_external_link.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_ink_well.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_link_text.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_persistent_info_box.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_rich_text.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';
import 'package:fr_cnamts_ens/ui/widgets/skeletons.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:fr_cnamts_ens/utils/extensions/string_extensions.dart';
import 'package:fr_cnamts_ens/utils/feature_flags_helper.dart';
import 'package:fr_cnamts_ens/utils/screen_status.dart';
import 'package:fr_cnamts_ens/utils/webpage_utils.dart';

class CatalogueServicesDetailScreen extends StatelessWidget {
  static const routeName = '/detail-solution';

  @override
  Widget build(BuildContext context) {
    final serviceId = ModalRoute.of(context)!.settings.arguments! as String;
    return StoreConnector<EnsState, CatalogueServicesDetailScreenViewModel>(
      distinct: true,
      converter: (store) => CatalogueServicesDetailScreenViewModel.from(store, serviceId),
      onInit: (store) {
        store.dispatch(FetchCatalogueServicesDetailAction(serviceId));
      },
      onInitialBuild: (vm) {
        context.tagAction(
          TagsCatalogueServices.tag483CataloguePageApp(vm.serviceDisplayModel.nom, vm.serviceDisplayModel.id),
        );
      },
      builder: (context, vm) => Scaffold(
        appBar: EnsAppBarSubLevel(title: vm.serviceDisplayModel.nom),
        body: _Content(vm),
      ),
    );
  }
}

class _SynchronizationInfoBlock extends StatelessWidget {
  final ServiceDetailsDisplayModel serviceDisplayModel;

  const _SynchronizationInfoBlock({required this.serviceDisplayModel});

  @override
  Widget build(BuildContext context) => Column(
        children: [
          const Divider(thickness: 1, color: EnsColors.neutral200),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
            child: Column(
              children: [
                Text(
                  'Synchroniser Mon espace santé avec ${serviceDisplayModel.nom}',
                  style: EnsTextStyle.text24_w400_normal_body,
                ),
                const SizedBox(height: 16),
                if (serviceDisplayModel.synchroDetails!.cguUrl != null)
                  Padding(
                    padding: const EdgeInsets.only(bottom: 36),
                    child: EnsRichText(
                      text: TextSpan(
                        text:
                            'Vous pouvez permettre à Mon espace santé d\'échanger les informations de santé de votre choix avec ${serviceDisplayModel.nom}. Pour toute information complémentaire sur le fonctionnement et le traitement des données, vous pouvez consulter les ',
                        style: EnsTextStyle.text14_w400_normal_body,
                        children: [
                          WidgetSpan(
                            child: EnsExternalLink.withRedirection(
                              linkUrl: serviceDisplayModel.synchroDetails!.cguUrl!,
                              linkText: 'conditions générales d\'utilisation de ${serviceDisplayModel.editeur}.',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ...serviceDisplayModel.synchroDetails!.donneesPartagees
                    .map((donneePartagee) => _DonneePartageeItem(donneePartagee: donneePartagee))
                    .expand((element) => [element, const SizedBox(height: 24)]),
              ],
            ),
          ),
          const Divider(thickness: 1, color: EnsColors.neutral200),
        ],
      );
}

class _DonneePartageeItem extends StatelessWidget {
  final DonneePartagee donneePartagee;

  const _DonneePartageeItem({required this.donneePartagee});

  @override
  Widget build(BuildContext context) {
    return MergeSemantics(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          EnsSvg(donneePartagee.iconPath, height: 64, width: 64),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(donneePartagee.label, style: EnsTextStyle.text16_w600_title),
                const SizedBox(height: 4),
                Text(donneePartagee.finalite, style: EnsTextStyle.text14_w400_normal_body),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _CatalogueServicesLoading extends StatelessWidget {
  final ServiceDetailsDisplayModel serviceDisplayModel;

  const _CatalogueServicesLoading(this.serviceDisplayModel);

  @override
  Widget build(BuildContext context) => ScrollviewWithScrollbar(
        padding: const EdgeInsets.fromLTRB(24, 24, 24, 64),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _AlreadyLoadedInfo(serviceDisplayModel),
            const Align(alignment: Alignment.center, child: SkeletonBox(width: 220, height: 32, radius: 16)),
            const SizedBox(height: 24),
            if (serviceDisplayModel.description != null)
              Padding(
                padding: const EdgeInsets.only(bottom: 24),
                child: Text(serviceDisplayModel.description!, style: EnsTextStyle.text16_w400_normal_body),
              ),
            const Row(
              children: [
                Expanded(child: SkeletonBox(width: 312, height: 56, radius: 72)),
              ],
            ),
            const SizedBox(height: 24),
            const CarouselSkeleton(isScreenshotsCarousel: true),
            const SizedBox(height: 28),
            const SkeletonBox(width: 220),
            const SizedBox(height: 8),
            const SkeletonBox(width: 260),
            const SizedBox(height: 32),
            const SkeletonBox(width: 280),
            const SizedBox(height: 8),
            const SkeletonBox(width: 280),
            const SizedBox(height: 8),
            const SkeletonBox(width: 260),
          ],
        ),
      );
}

class _AlreadyLoadedInfo extends StatelessWidget {
  final ServiceDetailsDisplayModel serviceDiplayModel;

  const _AlreadyLoadedInfo(this.serviceDiplayModel);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _LogoOrSquare(serviceDiplayModel.logo),
        const SizedBox(height: 20),
        Text(serviceDiplayModel.nom, style: EnsTextStyle.text24_w400_normal_title),
        const SizedBox(height: 4),
        Text(
          'Par ${serviceDiplayModel.editeur}',
          style: EnsTextStyle.text14_w600_normal_body,
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}

class _LogoOrSquare extends StatelessWidget {
  final EnsServiceImage? image;

  const _LogoOrSquare(this.image);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: image != null
          ? DecoratedBox(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
              child: Image.memory(base64Decode(image!.file), width: 120, height: 120),
            )
          : Container(
              height: 120,
              width: 120,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(16), color: EnsColors.neutral200),
            ),
    );
  }
}

class _CatalogueServicesDetails extends StatelessWidget {
  final CatalogueServicesDetailScreenViewModel vm;

  const _CatalogueServicesDetails({required this.vm});

  @override
  Widget build(BuildContext context) {
    final serviceDetail = vm.serviceDisplayModel.synchroDetails!;
    final areDonneesPartageesNotEmpty =
        serviceDetail.donneesPartagees.isNotEmpty && vm.isCatalogueDeServicesSynchroEnabled;
    final serviceDisplayModel = vm.serviceDisplayModel;

    return ScrollviewWithScrollbar(
      padding: const EdgeInsets.symmetric(vertical: 24),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (serviceDetail.status == ServiceStatus.SUSPENDUE)
              Padding(
                padding: const EdgeInsets.only(top: 8, left: 24, right: 24, bottom: 24),
                child: EnsPersistentInfoBox.text(
                  serviceDisplayModel.isSynchronised
                      ? 'Ce service est temporairement indisponible. Il ne peut plus consulter ou ajouter des données à votre profil. Vous pouvez tout de même le désynchroniser si vous le souhaitez.'
                      : 'Ce service est temporairement indisponible. Il ne peut pas être synchronisé à votre profil Mon espace santé.',
                ),
              ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  if (vm.isCatalogueDeServicesSynchroEnabled &&
                      vm.serviceDisplayModel.shouldUpdateAutorisationAfterVersioning) ...[
                    _UpdateAutorisationsAfterVersioningInfoBox(service: serviceDisplayModel),
                    const SizedBox(height: 36),
                  ] else if (vm.isCatalogueDeServicesSynchroEnabled &&
                      vm.serviceDisplayModel.shouldUpdateAutorisationAfterMajorite) ...[
                    _UpdateAutorisationsAfterMajoriteInfoBox(service: serviceDisplayModel),
                    const SizedBox(height: 36),
                  ],
                  _AlreadyLoadedInfo(serviceDisplayModel),
                  if (serviceDetail.webUrl != null)
                    EnsExternalLink.withRedirection(
                      linkUrl: serviceDetail.webUrl!,
                      linkText: 'Visiter le site web',
                      linkTextStyle: EnsTextStyle.text16_w700_primary_underline,
                      mainAxisAlignment: MainAxisAlignment.center,
                      onTap: () {
                        context.tagAction(
                          TagsCatalogueServices.tag485ButtonVisiterSiteApp(
                            serviceDisplayModel.nom,
                            serviceDisplayModel.id,
                          ),
                        );
                      },
                    ),
                  const SizedBox(height: 16),
                  if (serviceDisplayModel.description != null)
                    Text(serviceDisplayModel.description!, style: EnsTextStyle.text16_w400_normal_body),
                  if (vm.isCatalogueDeServicesSynchroEnabled && serviceDisplayModel.isSynchronised)
                    _ServiceSynchroniseSection(serviceDisplayModel),
                  if (serviceDetail.urlSynchronisation != null &&
                      vm.isCatalogueDeServicesSynchroEnabled &&
                      !serviceDisplayModel.isSynchronised &&
                      serviceDetail.status != ServiceStatus.PRESERIE &&
                      serviceDetail.status != ServiceStatus.SUSPENDUE)
                    Padding(
                      padding: const EdgeInsets.only(top: 32, bottom: 12),
                      child: EnsButton(
                        label: 'Synchroniser avec Mon espace santé',
                        hasExternalLink: true,
                        onTap: () => _handleTap(context, serviceDetail.urlSynchronisation!),
                      ),
                    ),
                  if (serviceDetail.canOpen && serviceDetail.status != ServiceStatus.SUSPENDUE)
                    Padding(
                      padding: EdgeInsets.only(
                        top: areDonneesPartageesNotEmpty ? 0 : 28,
                      ),
                      child: DownloadServiceAppButton(
                        appName: serviceDisplayModel.nom,
                        appId: serviceDisplayModel.id,
                        androidPackageName: serviceDetail.androidPackageName,
                        iOsAppId: serviceDetail.iOsAppId,
                        iOsUrlScheme: null,
                        withSecondaryStyle: areDonneesPartageesNotEmpty,
                      ),
                    ),
                  const SizedBox(height: 24),
                ],
              ),
            ),
            if (areDonneesPartageesNotEmpty && serviceDetail.status != ServiceStatus.PRESERIE)
              _SynchronizationInfoBlock(serviceDisplayModel: serviceDisplayModel),
            if (serviceDetail.screenshots.isNotEmpty)
              Padding(
                padding: const EdgeInsets.only(top: 36),
                child: CatalogueCarouselWidget(
                  items: serviceDetail.screenshots
                      .map((serviceImage) => EnsCarouselItemImage(Image.memory(base64Decode(serviceImage.file))))
                      .toList(),
                ),
              ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (serviceDetail.modelEconomique != null)
                    Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: EnsBulletPoint(
                        text: serviceDetail.modelEconomique!.capitalize(),
                        textStyle: EnsTextStyle.text14_w600_normal_body,
                        margin: 0,
                      ),
                    ),
                  if (serviceDetail.isDispositifGrandPublic)
                    const Padding(
                      padding: EdgeInsets.only(top: 8),
                      child: EnsBulletPoint(
                        text: 'Dispositif grand public',
                        textStyle: EnsTextStyle.text14_w600_normal_body,
                        margin: 0,
                      ),
                    ),
                  if (serviceDetail.isDispositifMedical)
                    const Padding(
                      padding: EdgeInsets.only(top: 8),
                      child: EnsBulletPoint(
                        text: 'Dispositif médical',
                        textStyle: EnsTextStyle.text14_w600_normal_body,
                        margin: 0,
                      ),
                    ),
                  if (serviceDetail.descriptionLongue != null)
                    Padding(
                      padding: const EdgeInsets.only(top: 24),
                      child: Text(serviceDetail.descriptionLongue!, style: EnsTextStyle.text16_w400_normal_body),
                    ),
                ],
              ),
            ),
            _SignalementSection(serviceId: serviceDisplayModel.id, serviceName: serviceDisplayModel.nom),
          ],
        ),
      ),
    );
  }

  void _handleTap(BuildContext context, String url) {
    if (EnsModuleContainer.currentInjector.isGuestMode()) {
      displayGuestModeBottomSheet(context);
    } else {
      launchUrlOnBrowser(url);
    }
  }
}

class _UpdateAutorisationsAfterVersioningInfoBox extends StatelessWidget {
  final ServiceDetailsDisplayModel service;

  const _UpdateAutorisationsAfterVersioningInfoBox({required this.service});

  @override
  Widget build(BuildContext context) {
    return EnsPersistentInfoBox.custom(
      onTap: () {
        context.tagAction(TagsCatalogueServices.tag_2326_button_gerer_autorisations);
        if (service.shouldUpdateAutorisationAfterMajorite) {
          Navigator.pushNamed(
            context,
            ServiceSynchroniseUpdateConsentementsScreen.routeName,
            arguments: ServiceSynchroniseUpdateConsentementsScreenArguments(
              serviceOid: service.oid!,
              serviceName: service.nom,
              dateLimiteAutorisation: service.dateLimiteAutorisation,
              cguUrl: service.synchroDetails?.cguUrl,
              shouldUpdateAutorisationAfterVersioning: true,
            ),
          );
        } else {
          Navigator.pushNamed(
            context,
            ServiceSynchroniseConsentementsScreen.routeName,
            arguments: ServiceSynchroniseConsentementsScreenArgument(
              serviceName: service.nom,
              serviceOid: service.oid!,
              isAvailable: service.isAvailable,
              shouldUpdateAutorisationAfterVersioning: true,
              from: ServiceSynchroniseConsentementsFrom.CATALOGUE_SERVICE,
            ),
          );
        }
      },
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'La mise à jour des autorisations pour ce service est nécessaire. Je peux consulter ces évolutions en me rendant dans la rubrique',
            style: EnsTextStyle.text14_w600_normal_body,
          ),
          EnsLinkText(
            label: 'Gérer les autorisations.',
            textStyle: EnsTextStyle.text14_w600_normal_primary_underline,
            splashColor: EnsColors.neutral300,
            highlightColor: EnsColors.neutral300,
            textPadding: EdgeInsets.zero,
          ),
        ],
      ),
    );
  }
}

class _UpdateAutorisationsAfterMajoriteInfoBox extends StatelessWidget {
  const _UpdateAutorisationsAfterMajoriteInfoBox({
    required this.service,
  });

  final ServiceDetailsDisplayModel service;

  @override
  Widget build(BuildContext context) {
    return EnsPersistentInfoBox.custom(
      onTap: () {
        context.tagAction(TagsCatalogueServices.tag_2326_button_gerer_autorisations);
        Navigator.pushNamed(
          context,
          ServiceSynchroniseUpdateConsentementsScreen.routeName,
          arguments: ServiceSynchroniseUpdateConsentementsScreenArguments(
            serviceOid: service.oid!,
            serviceName: service.nom,
            dateLimiteAutorisation: service.dateLimiteAutorisation,
            cguUrl: service.synchroDetails?.cguUrl,
            shouldUpdateAutorisationAfterVersioning: false,
          ),
        );
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'La mise à jour des autorisations pour ce service est nécessaire avant le ${service.dateLimiteAutorisation} pour conserver sa synchronisation.',
            style: EnsTextStyle.text14_w600_normal_body,
          ),
          const EnsLinkText(
            label: 'Gérer les autorisations.',
            textStyle: EnsTextStyle.text14_w600_normal_primary_underline,
            splashColor: EnsColors.neutral300,
            highlightColor: EnsColors.neutral300,
            textPadding: EdgeInsets.zero,
          ),
        ],
      ),
    );
  }
}

class _SignalementSection extends StatelessWidget {
  final String serviceId;
  final String serviceName;

  const _SignalementSection({required this.serviceId, required this.serviceName});

  @override
  Widget build(BuildContext context) {
    return StoreConnector<EnsState, SignalementInformationViewModel>(
      distinct: true,
      converter: (store) => SignalementInformationViewModel.from(store),
      onInit: (store) {
        if (isSignalementEnabled) {
          store.dispatch(
            FetchSignalementInformationAction(
              signalementType: SignalementType.CATALOGUE_DE_SERIVCE,
              idToSignal: serviceId,
            ),
          );
        }
      },
      builder: (context, vm) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const EnsDivider(paddingTop: 24, paddingBottom: 24),
            const Text('Signaler ce service', style: EnsTextStyle.text16_w600_title),
            const SizedBox(height: 4),
            const Text(
              'Ce signalement doit porter sur la non-conformité du service aux exigences du référencement et permettre d\'identifier un manquement de la part de l\'éditeur.',
              style: EnsTextStyle.text16_w400_normal_body,
            ),
            const SizedBox(height: 16),
            if (isSignalementEnabled && vm.formattedLastReportDate != null) ...[
              EnsPersistentInfoBox.custom(
                onTap: () => Navigator.pushNamed(context, NousContacterScreen.routeName),
                child: EnsRichText(
                  text: TextSpan(
                    text:
                        'J\'ai signalé ce service le ${vm.formattedLastReportDate}. Je peux retrouver mon signalement dans la rubrique ',
                    style: EnsTextStyle.text14_w400_normal_body,
                    children: const [
                      TextSpan(
                        text: 'nous contacter',
                        style: EnsTextStyle.text14_w600_normal_primary_underline,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 24),
            ],
            Row(
              children: [
                EnsButtonSecondary(
                  label: 'Je signale ce service',
                  backgroundColor: EnsColors.neutral100,
                  verticalPadding: 10,
                  onTap: () {
                    context.tagAction(TagsCatalogueServices.tag_2330_button_catalogue_signaler_service);
                    GuestModeHelper.showUnavailableSnackbarIfGuestMode(
                      context: context,
                      onAuthenticatedMode: () {
                        SignalementHelper.showSnackbarOnLimitExceeded(
                          context,
                          isLimitExceeded: vm.isReportLimitExceeded,
                          onLimitNotExceeded: () {
                            Navigator.pushNamed(
                              context,
                              CatalogueServicesSignalerScreen.routeName,
                              arguments: CatalogueServicesSignalerScreenArguments(
                                serviceId: serviceId,
                                serviceName: serviceName,
                              ),
                            );
                          },
                        );
                      },
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _ServiceSynchroniseSection extends StatelessWidget {
  final ServiceDetailsDisplayModel service;

  const _ServiceSynchroniseSection(this.service);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 28),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              EnsSvg(EnsImages.ic_circle_check),
              SizedBox(width: 8),
              Text('Synchronisé', style: EnsTextStyle.text14_w600_normal_success),
              SizedBox(width: 8),
            ],
          ),
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: EnsInkWell(
              onTap: () {
                context.tagAction(TagsCatalogueServices.tag694LinkCatalogueGererService(service.nom, service.oid!));
                if (service.shouldUpdateAutorisationAfterMajorite) {
                  Navigator.pushNamed(
                    context,
                    ServiceSynchroniseUpdateConsentementsScreen.routeName,
                    arguments: ServiceSynchroniseUpdateConsentementsScreenArguments(
                      serviceName: service.nom,
                      serviceOid: service.oid!,
                      dateLimiteAutorisation: service.dateLimiteAutorisation,
                      cguUrl: service.synchroDetails?.cguUrl,
                      shouldUpdateAutorisationAfterVersioning: service.shouldUpdateAutorisationAfterVersioning,
                    ),
                  );
                } else {
                  Navigator.pushNamed(
                    context,
                    ServiceSynchroniseConsentementsScreen.routeName,
                    arguments: ServiceSynchroniseConsentementsScreenArgument(
                      serviceName: service.nom,
                      serviceOid: service.oid!,
                      isAvailable: service.isAvailable,
                      shouldUpdateAutorisationAfterVersioning: service.shouldUpdateAutorisationAfterVersioning,
                      from: ServiceSynchroniseConsentementsFrom.CATALOGUE_SERVICE,
                    ),
                  );
                }
              },
              child: const Text(
                'Gérer les autorisations',
                style: EnsTextStyle.text14_w700_normal_primary_underline,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _Content extends StatelessWidget {
  final CatalogueServicesDetailScreenViewModel vm;

  const _Content(this.vm);

  @override
  Widget build(BuildContext context) {
    switch (vm.screenStatus) {
      case ScreenStatus.ERROR:
        return ErrorPage(
          reloadFunction: () {
            vm.loadDetailService(vm.serviceDisplayModel.id);
          },
        );
      case ScreenStatus.LOADING:
        return _CatalogueServicesLoading(vm.serviceDisplayModel);
      case ScreenStatus.SUCCESS:
        return _CatalogueServicesDetails(vm: vm);
    }
  }
}
