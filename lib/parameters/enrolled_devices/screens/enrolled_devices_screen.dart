/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/guestmode/guest_mode_helper.dart';
import 'package:fr_cnamts_ens/infra/injection/ens_module_container.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/parameters/enrolled_devices/redux/enrolled_devices_redux.dart';
import 'package:fr_cnamts_ens/parameters/enrolled_devices/screens/enrolled_devices_view_model.dart';
import 'package:fr_cnamts_ens/tags/tags_parameters_enrolled_devices.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/error_page.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/confirmation_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/confirmation_bottom_sheet_default_text_content.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button_secondary.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_external_link.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';
import 'package:fr_cnamts_ens/ui/widgets/skeletons.dart';
import 'package:fr_cnamts_ens/utils/all_purposes_status.dart';
import 'package:intl/intl.dart';

class EnrolledDevicesScreen extends StatelessWidget {
  static const routeName = '/mon-compte/appareils-associes';

  @override
  Widget build(BuildContext context) {
    return StoreConnector<EnsState, EnrolledDevicesViewModel>(
      distinct: true,
      converter: (store) => EnrolledDevicesViewModel.from(store),
      onInit: (store) {
        store.dispatch(FetchEnrolledDevicesAction());
      },
      onInitialBuild: (vm) {
        context.tagAction(TagsParametersEnrolledDevices.tag_671_connexion_appareils);
      },
      onDidChange: (_, vm) {
        context.tagAction(TagsParametersEnrolledDevices.tag_671_connexion_appareils);
      },
      builder: (context, vm) => _Content(vm: vm),
    );
  }
}

class _Content extends StatelessWidget {
  final EnrolledDevicesViewModel vm;

  const _Content({required this.vm});

  @override
  Widget build(BuildContext context) {
    final biometricHelpUrl = EnsModuleContainer.currentInjector.getUrlsConfig().biometricHelpUrl;
    return Scaffold(
      appBar: const EnsAppBarSubLevel(
        title: 'Appareils associés',
      ),
      body: ScrollviewWithScrollbar(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 32.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Je peux utiliser mon empreinte digitale, la reconnaissance faciale ou un autre moyen pour me connecter. Je peux gérer ici les appareils utilisés lors de mes connexions.',
                  ),
                  const SizedBox(height: 4),
                  EnsExternalLink.withRedirection(
                    linkUrl: biometricHelpUrl,
                    linkText: 'En savoir plus',
                    onTap: () {
                      context.tagAction(TagsParametersEnrolledDevices.tag_672_link_aide_connexion_appareils);
                    },
                  ),
                ],
              ),
            ),
            _EnrolledDevicesContent(vm, biometricHelpUrl),
          ],
        ),
      ),
    );
  }
}

class _EnrolledDevicesContent extends StatelessWidget {
  final EnrolledDevicesViewModel vm;
  final String biometricHelpUrl;

  const _EnrolledDevicesContent(this.vm, this.biometricHelpUrl);

  @override
  Widget build(BuildContext context) {
    switch (vm.status) {
      case AllPurposesWithEmptyStatus.NOT_LOADED:
      case AllPurposesWithEmptyStatus.LOADING:
        return _Loading();
      case AllPurposesWithEmptyStatus.SUCCESS:
        return _Success(vm: vm);
      case AllPurposesWithEmptyStatus.EMPTY:
        return _Empty();
      case AllPurposesWithEmptyStatus.ERROR:
        return ErrorPage(reloadFunction: vm.loadEnrolledDevices);
    }
  }
}

class _Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Material(
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SkeletonBox(),
            SizedBox(height: 16),
            SkeletonBox(),
            SizedBox(height: 16),
            SkeletonBox(),
          ],
        ),
      ),
    );
  }
}

class _Success extends StatelessWidget {
  final EnrolledDevicesViewModel vm;

  const _Success({required this.vm});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Mes appareils associés', style: EnsTextStyle.text16_w600_normal_title),
            const SizedBox(height: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${vm.devicesCount} $_formattedEnrolledDevices pour la connexion sans mot de passe',
                  style: EnsTextStyle.text16_w400_normal_body,
                ),
                const SizedBox(height: 16),
                EnsButtonSecondary(
                  size: EnsButtonSize.SMALL,
                  verticalPadding: 6,
                  label: 'Dissocier mes appareils',
                  isDisabled: vm.updateStatus.isLoading(),
                  onTap: () {
                    context.tagAction(TagsParametersEnrolledDevices.tag_673_button_dissocier_appareils);
                    GuestModeHelper.showUnavailableSnackbarIfGuestMode(
                      context: context,
                      onAuthenticatedMode: () => _showDeleteConfirmationBottomSheet(context, vm),
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

  void _showDeleteConfirmationBottomSheet(BuildContext context, EnrolledDevicesViewModel vm) {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) {
        context.tagAction(TagsParametersEnrolledDevices.tag_674_popin_dissocier_appareils);
        return ConfirmationBottomSheet(
          areButtonsOnSameRow: false,
          positiveButtonColor: EnsColors.primary,
          title: 'Dissocier tous mes appareils ?',
          content: const ConfirmationBottomSheetDefaultTextContent(
            'En dissociant tous mes appareils, lors de ma prochaine connexion, je devrai utiliser mes identifiants ou activer à nouveau la connexion sans mot de passe.',
          ),
          positiveButtonLabel: 'Dissocier mes appareils',
          positiveButtonHandler: () {
            context.tagAction(TagsParametersEnrolledDevices.tag_675_button_dissocier_validation);
            vm.revokeDevices();
          },
          negativeButtonHandler: () {
            context.tagAction(TagsParametersEnrolledDevices.tag_676_button_dissocier_annuler);
          },
        );
      },
    );
  }

  String get _formattedEnrolledDevices => Intl.plural(
        vm.devicesCount,
        one: 'appareil associé',
        other: 'appareils associés',
      );
}

class _Empty extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Material(
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Mes appareils associés', style: EnsTextStyle.text16_w600_normal_title),
            SizedBox(height: 16),
            Text('Aucun appareil associé', style: EnsTextStyle.text16_w400_normal_body),
          ],
        ),
      ),
    );
  }
}
