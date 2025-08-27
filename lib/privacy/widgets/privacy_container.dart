/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_initial_state.dart';
import 'package:fr_cnamts_ens/privacy/widgets/privacy_bottom_sheet.dart';
import 'package:fr_cnamts_ens/privacy/widgets/viewmodels/privacy_container_view_model.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_pop_scope.dart';

class PrivacyContainer extends StatelessWidget {
  final Widget child;

  const PrivacyContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return StoreConnector<EnsInitialState, PrivacyContainerViewModel>(
      converter: (store) => PrivacyContainerViewModel(store),
      distinct: true,
      onInitialBuild: (vm) {
        _showPrivacyBannerIfNeeded(vm, context);
      },
      onWillChange: (_, vm) {
        _showPrivacyBannerIfNeeded(vm, context);
      },
      builder: (_, __) => child,
    );
  }

  void _showPrivacyBannerIfNeeded(
    PrivacyContainerViewModel vm,
    BuildContext context,
  ) {
    if (vm.showPrivacyBanner) {
      vm.markPrivacyBannerShown();
      showModalBottomSheet(
        isDismissible: false,
        isScrollControlled: true,
        enableDrag: false,
        context: context,
        builder: (BuildContext builderContext) {
          return EnsPopScope.shouldNotPop(
            child: EnsPrivacyBottomSheet(
              acceptAllButtonHandler: () {
                vm.acceptAll();
              },
              declineAllButtonHandler: () {
                vm.declineAll();
              },
              openPrivacyCenterButtonHandler: () {
                vm.openPrivacyCenter();
              },
            ),
          );
        },
      );
    }
  }
}
