/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/catalogue_services_consentements/redux/catalogue_services_consentements_redux.dart';
import 'package:fr_cnamts_ens/catalogue_services_consentements/widgets/consentement_item_tile.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/parameters/services_synchronises/screens/show_desynchronisation_confirmation_bottomsheet.dart';
import 'package:fr_cnamts_ens/parameters/services_synchronises/screens/viewmodels/service_synchronise_consentements_screen_view_model.dart';
import 'package:fr_cnamts_ens/tags/tags_catalogue_services.dart';
import 'package:fr_cnamts_ens/tags/tags_services_synchronises.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/error_page.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/ens_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button_secondary.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_persistent_info_box.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';
import 'package:fr_cnamts_ens/ui/widgets/skeletons.dart';
import 'package:fr_cnamts_ens/utils/all_purposes_status.dart';
import 'package:fr_cnamts_ens/utils/feature_flags_helper.dart';

class ServiceSynchroniseConsentementsScreen extends StatelessWidget {
  static const routeName = '/service-synchronise-consentements';

  const ServiceSynchroniseConsentementsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final argument = ModalRoute.of(context)!.settings.arguments! as ServiceSynchroniseConsentementsScreenArgument;
    return Scaffold(
      appBar: EnsAppBarSubLevel(title: argument.serviceName),
      body: StoreConnector<EnsState, ServiceSynchroniseConsentementsScreenViewModel>(
        converter: (store) => ServiceSynchroniseConsentementsScreenViewModel.from(
          store,
          serviceOid: argument.serviceOid,
          serviceName: argument.serviceName,
          shouldUpdateAutorisationAfterVersioning: argument.shouldUpdateAutorisationAfterVersioning,
        ),
        onInit: (store) {
          store.dispatch(FetchServiceConsentementsAction(argument.serviceOid));
        },
        onInitialBuild: (vm) {
          if (isCatalogueDeServiceSynchroEnabled && vm.shouldUpdateAutorisationAfterVersioning) {
            vm.updateAutorisation();
            if (argument.from == ServiceSynchroniseConsentementsFrom.PARAMETERS) {
              _showUpdateAutorisationBottomSheet(context);
            }
          }
          context.tagAction(TagsServicesSynchronises.tag_620_compte_service_synchronises_detail_app);
        },
        distinct: true,
        builder: (context, vm) => _Content(vm: vm, isAvailable: argument.isAvailable),
      ),
    );
  }

  void _showUpdateAutorisationBottomSheet(BuildContext context) {
    context.tagAction(TagsCatalogueServices.tag_2327_popin_mise_a_jour_autorisation);
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return EnsBottomSheet(
          stretch: true,
          content: [
            const Text(
              'Mise à jour de mes autorisations',
              style: EnsTextStyle.text24_w400_normal_title,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            const Text(
              'Je vérifie l’ensemble des autorisations demandées par ce service. En activant ces autorisations, je permets au service d’échanger des données avec mon profil Mon espace santé.',
              style: EnsTextStyle.text16_w400_normal_body,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 32),
            EnsButton(
              label: 'J’accède à mes autorisations',
              onTap: () {
                context.tagAction(TagsCatalogueServices.tag_2328_button_acceder_autorisation);
                Navigator.pop(context);
              },
            ),
            const SizedBox(height: 16),
          ],
        );
      },
    );
  }
}

class _Content extends StatelessWidget {
  final ServiceSynchroniseConsentementsScreenViewModel vm;
  final bool isAvailable;

  const _Content({required this.vm, required this.isAvailable});

  @override
  Widget build(BuildContext context) {
    switch (vm.status) {
      case AllPurposesStatus.NOT_LOADED:
      case AllPurposesStatus.LOADING:
        return const _LoadingScreen();
      case AllPurposesStatus.SUCCESS:
        return _ServiceSynchroniseConsentementsLoaded(vm, isAvailable);
      case AllPurposesStatus.ERROR:
        return ErrorPage(reloadFunction: vm.reloadData);
    }
  }
}

class _ServiceSynchroniseConsentementsLoaded extends StatelessWidget {
  final ServiceSynchroniseConsentementsScreenViewModel vm;
  final bool isAvailable;

  const _ServiceSynchroniseConsentementsLoaded(this.vm, this.isAvailable);

  @override
  Widget build(BuildContext context) {
    return ListViewWithScrollbar.separated(
      padding: const EdgeInsets.only(bottom: 44),
      itemBuilder: (_, index) {
        final item = vm.consentementsDisplayModels[index];
        switch (item) {
          case ServiceSynchroniseConsentementsScreenHeaderDisplayModel _:
            return _Header(vm.serviceName, isAvailable);
          case ServiceSynchroniseConsentementsScreenListItemDisplayModel _:
            final consentementDm = item;
            return ConsentementItemTile(
              consentementDm.consentement,
              consentementDm.consentement.accepted && vm.hasOnlyOneAcceptedConsent(),
              vm,
              isAvailable,
            );
          case ServiceSynchroniseConsentementsScreenUnsynchronizeButtonDisplayModel _:
            return UnsynchronizeServiceButton(
              serviceName: vm.serviceName,
              unsynchronizeService: vm.unsynchronizeService,
            );
          default:
            return const SizedBox();
        }
      },
      separatorBuilder: (_, __) => const Divider(thickness: 1, color: EnsColors.neutral200, height: 1),
      itemCount: vm.consentementsDisplayModels.length,
    );
  }
}

class _Header extends StatelessWidget {
  final String serviceName;
  final bool isAvailable;

  const _Header(this.serviceName, this.isAvailable);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        if (!isAvailable)
          Padding(
            padding: const EdgeInsets.only(top: 32, left: 24, right: 24),
            child: EnsPersistentInfoBox.text(
              'Ce service est temporairement indisponible. Il ne peut plus consulter ou ajouter des données à votre profil. Vous pouvez tout de même le désynchroniser si vous le souhaitez.',
            ),
          ),
        Padding(
          padding: const EdgeInsets.all(24),
          child: Text('J\'autorise $serviceName à effectuer les actions suivantes sur Mon espace santé :'),
        ),
      ],
    );
  }
}

class _LoadingScreen extends StatelessWidget {
  const _LoadingScreen();

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

class UnsynchronizeServiceButton extends StatelessWidget {
  final String serviceName;
  final void Function() unsynchronizeService;

  const UnsynchronizeServiceButton({required this.serviceName, required this.unsynchronizeService});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: EnsButtonSecondary(
        label: 'Désynchroniser $serviceName',
        backgroundColor: EnsColors.neutral100,
        onTap: () {
          context.tagAction(TagsServicesSynchronises.tag_621_button_compte_service_synchronises_desynchroniser);
          showUnsynchronizeConfirmationBottomSheet(
            context,
            serviceName: serviceName,
            unsynchronizeService: unsynchronizeService,
          );
        },
      ),
    );
  }
}

class ServiceSynchroniseConsentementsScreenArgument {
  final String serviceOid;
  final String serviceName;
  final bool isAvailable;
  final bool shouldUpdateAutorisationAfterVersioning;
  final ServiceSynchroniseConsentementsFrom from;

  ServiceSynchroniseConsentementsScreenArgument({
    required this.serviceName,
    required this.serviceOid,
    required this.isAvailable,
    required this.shouldUpdateAutorisationAfterVersioning,
    required this.from,
  });
}

enum ServiceSynchroniseConsentementsFrom {
  PARAMETERS,
  CATALOGUE_SERVICE,
}
