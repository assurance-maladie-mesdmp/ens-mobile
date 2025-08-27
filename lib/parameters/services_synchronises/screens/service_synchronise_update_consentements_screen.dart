/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/catalogue_services_consentements/widgets/consentement_details_section.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/parameters/services_synchronises/screens/service_synchronise_consentements_screen.dart';
import 'package:fr_cnamts_ens/parameters/services_synchronises/screens/show_desynchronisation_confirmation_bottomsheet.dart';
import 'package:fr_cnamts_ens/parameters/services_synchronises/screens/viewmodels/service_synchronise_update_consentements_view_model.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/error_page.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button_secondary.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_divider.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_etiquette.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_external_link.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_link_text.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_persistent_info_box.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_rich_text.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';
import 'package:fr_cnamts_ens/ui/widgets/skeletons.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:fr_cnamts_ens/utils/screen_status.dart';

class ServiceSynchroniseUpdateConsentementsScreenArguments {
  final String serviceOid;
  final String serviceName;
  final String? dateLimiteAutorisation;
  final String? cguUrl;
  final bool shouldUpdateAutorisationAfterVersioning;

  ServiceSynchroniseUpdateConsentementsScreenArguments({
    required this.serviceName,
    required this.serviceOid,
    required this.dateLimiteAutorisation,
    required this.cguUrl,
    required this.shouldUpdateAutorisationAfterVersioning,
  });
}

class ServiceSynchroniseUpdateConsentementsScreen extends StatelessWidget {
  static const routeName = '/detail-solution/mise-a-jour-consentements';

  const ServiceSynchroniseUpdateConsentementsScreen();

  @override
  Widget build(BuildContext context) {
    final arguments =
        ModalRoute.of(context)!.settings.arguments! as ServiceSynchroniseUpdateConsentementsScreenArguments;

    return StoreConnector<EnsState, ServiceSynchroniseUpdateConsentementsViewModel>(
      converter: (store) => ServiceSynchroniseUpdateConsentementsViewModel.from(
        store,
        shouldUpdateAutorisationAfterVersioning: arguments.shouldUpdateAutorisationAfterVersioning,
      ),
      onInitialBuild: (vm) {
        vm.getServiceConsentements(arguments.serviceOid);
      },
      distinct: true,
      builder: (context, vm) {
        return Scaffold(
          appBar: EnsAppBarSubLevel(title: 'Gérer mes autorisations avec ${arguments.serviceName}'),
          body: SafeArea(
            child: switch (vm.status) {
              ScreenStatusOnEmpty.LOADING => const _Loading(),
              ScreenStatusOnEmpty.SUCCESS => _Success(arguments: arguments, vm: vm),
              ScreenStatusOnEmpty.EMPTY => _Empty(arguments: arguments, vm: vm),
              ScreenStatusOnEmpty.ERROR => ErrorPage(
                  reloadFunction: () => vm.getServiceConsentements(arguments.serviceOid),
                ),
            },
          ),
        );
      },
    );
  }
}

class _Success extends StatelessWidget {
  final ServiceSynchroniseUpdateConsentementsScreenArguments arguments;
  final ServiceSynchroniseUpdateConsentementsViewModel vm;

  const _Success({
    required this.arguments,
    required this.vm,
  });

  @override
  Widget build(BuildContext context) {
    return ScrollviewWithScrollbar(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Les autorisations en cours sont les suivantes :',
                  style: EnsTextStyle.text14_w400_normal_body,
                ),
                const SizedBox(height: 24),
                EnsPersistentInfoBox.text(
                  'La mise à jour des autorisations pour ce service est nécessaire avant le ${arguments.dateLimiteAutorisation} pour conserver la synchronisation.',
                ),
              ],
            ),
          ),
          ...vm.consentements.map(
            (consentement) {
              return Column(
                children: [
                  _ConsentementContent(consentement),
                  const EnsDivider(),
                ],
              );
            },
          ),
          Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                if (arguments.cguUrl != null) _Cgu(cguUrl: arguments.cguUrl!),
                const SizedBox(height: 38),
                EnsButton(
                  label: 'Accepter les autorisations en cours',
                  onTap: () {
                    vm.udpateConsentements(arguments.serviceOid);
                    Navigator.pop(context);
                  },
                ),
                const SizedBox(height: 24),
                EnsButtonSecondary(
                  label: 'Modifier les autorisations',
                  onTap: () {
                    vm.udpateConsentements(arguments.serviceOid);
                    Navigator.pushReplacementNamed(
                      context,
                      ServiceSynchroniseConsentementsScreen.routeName,
                      arguments: ServiceSynchroniseConsentementsScreenArgument(
                        serviceName: arguments.serviceName,
                        serviceOid: arguments.serviceOid,
                        isAvailable: true,
                        shouldUpdateAutorisationAfterVersioning: arguments.shouldUpdateAutorisationAfterVersioning,
                        from: ServiceSynchroniseConsentementsFrom.CATALOGUE_SERVICE,
                      ),
                    );
                  },
                ),
                const SizedBox(height: 8),
                EnsLinkText(
                  label: 'Désynchroniser ${arguments.serviceName}',
                  textStyle: EnsTextStyle.text16_w700_primary_underline,
                  textAlign: TextAlign.center,
                  alignment: AlignmentDirectional.center,
                  onTap: () {
                    showUnsynchronizeConfirmationBottomSheet(
                      context,
                      serviceName: arguments.serviceName,
                      unsynchronizeService: () {
                        vm.unsynchronizeService(
                          serviceName: arguments.serviceName,
                          serviceOid: arguments.serviceOid,
                        );
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _Cgu extends StatelessWidget {
  final String cguUrl;

  const _Cgu({
    required this.cguUrl,
  });

  @override
  Widget build(BuildContext context) {
    return EnsRichText(
      text: TextSpan(
        text:
            'Pour toute information complémentaire sur le fonctionnement et le traitement des données, vous pouvez consulter ',
        style: EnsTextStyle.text14_w400_normal_body,
        children: [
          WidgetSpan(
            child: EnsExternalLink.withRedirection(
              linkUrl: cguUrl,
              linkText: 'les conditions générales d\'utilisation de l\'éditeur.',
              linkTextStyle: EnsTextStyle.text14_w600_normal_primary_underline,
            ),
          ),
        ],
      ),
    );
  }
}

class _ConsentementContent extends StatelessWidget {
  final ConsentementDisplayModel consentement;

  const _ConsentementContent(this.consentement);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: EnsColors.light,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    consentement.titre,
                    style: EnsTextStyle.text14_w600_normal_title,
                  ),
                ),
                const SizedBox(width: 12),
                const EnsEtiquette(
                  label: 'Autorisé',
                  backgroundColor: EnsColors.success,
                  textStyle: EnsTextStyle.text12_w600_normal_light,
                ),
              ],
            ),
            const SizedBox(height: 12),
            Text(
              consentement.description,
              style: EnsTextStyle.text14_w400_normal_body,
            ),
            if (consentement.details.isNotEmpty) ConsentementDetailsSection(details: consentement.details),
          ],
        ),
      ),
    );
  }
}

class _Empty extends StatelessWidget {
  final ServiceSynchroniseUpdateConsentementsScreenArguments arguments;
  final ServiceSynchroniseUpdateConsentementsViewModel vm;

  const _Empty({required this.arguments, required this.vm});

  @override
  Widget build(BuildContext context) {
    return ScrollviewWithScrollbar(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          EnsPersistentInfoBox.text(
            'La mise à jour des autorisations pour ce service est nécessaire avant le ${arguments.dateLimiteAutorisation} pour conserver la synchronisation.',
          ),
          const SizedBox(height: 24),
          const EnsSvg(EnsImages.information, height: 160, width: 160),
          const SizedBox(height: 24),
          const Text(
            'Aucune autorisation en cours suite à une mise à jour du service. ',
            style: EnsTextStyle.text16_w400_normal_body,
            textAlign: TextAlign.center,
          ),
          if (arguments.cguUrl != null) ...[
            const SizedBox(height: 52),
            _Cgu(cguUrl: arguments.cguUrl!),
          ],
          const SizedBox(height: 30),
          EnsButton(
            label: 'Modifier les autorisations',
            onTap: () {
              vm.udpateConsentements(arguments.serviceOid);
              Navigator.pushReplacementNamed(
                context,
                ServiceSynchroniseConsentementsScreen.routeName,
                arguments: ServiceSynchroniseConsentementsScreenArgument(
                  serviceName: arguments.serviceName,
                  serviceOid: arguments.serviceOid,
                  isAvailable: true,
                  shouldUpdateAutorisationAfterVersioning: false,
                  from: ServiceSynchroniseConsentementsFrom.CATALOGUE_SERVICE,
                ),
              );
            },
          ),
          const SizedBox(height: 24),
          EnsButtonSecondary(
            label: 'Désynchroniser ${arguments.serviceName}',
            onTap: () {
              showUnsynchronizeConfirmationBottomSheet(
                context,
                serviceName: arguments.serviceName,
                unsynchronizeService: () {
                  vm.unsynchronizeService(
                    serviceName: arguments.serviceName,
                    serviceOid: arguments.serviceOid,
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}

class _Loading extends StatelessWidget {
  const _Loading();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 24, top: 24),
          child: SkeletonBox(width: MediaQuery.of(context).size.width * 0.8),
        ),
        const SizedBox(height: 8),
        Padding(
          padding: const EdgeInsets.only(left: 24, bottom: 32),
          child: SkeletonBox(width: MediaQuery.of(context).size.width * 0.5),
        ),
        const Divider(height: 1, thickness: 1, color: EnsColors.neutral200),
        const _ItemTileSkeleton(),
        const Divider(height: 1, thickness: 1, color: EnsColors.neutral200),
        const _ItemTileSkeleton(),
        const Divider(height: 1, thickness: 1, color: EnsColors.neutral200),
        const _ItemTileSkeleton(),
        const Divider(height: 1, thickness: 1, color: EnsColors.neutral200),
      ],
    );
  }
}

class _ItemTileSkeleton extends StatelessWidget {
  const _ItemTileSkeleton();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 24, 44, 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SkeletonBox(width: MediaQuery.of(context).size.width * 0.25),
              const SkeletonCircle(radius: 24),
            ],
          ),
          const SizedBox(height: 12),
          SkeletonBox(width: MediaQuery.of(context).size.width * 0.5),
          const SizedBox(height: 8),
          SkeletonBox(width: MediaQuery.of(context).size.width * 0.6),
        ],
      ),
    );
  }
}
