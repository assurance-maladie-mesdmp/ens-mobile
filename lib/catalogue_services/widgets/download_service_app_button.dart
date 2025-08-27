/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/guestmode/widgets/bottom_sheet_guest_mode.dart';
import 'package:fr_cnamts_ens/infra/injection/ens_module_container.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/tags/tags_catalogue_services.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button_secondary.dart';
import 'package:store_redirect/store_redirect.dart';

class DownloadServiceAppButton extends StatelessWidget {
  final String appName;
  final String appId;
  final String? androidPackageName;
  final String? iOsAppId;
  final String? iOsUrlScheme;
  final bool withSecondaryStyle;

  const DownloadServiceAppButton({
    super.key,
    required this.appName,
    required this.appId,
    this.androidPackageName,
    this.iOsAppId,
    this.iOsUrlScheme,
    this.withSecondaryStyle = false,
  });

  @override
  Widget build(BuildContext context) {
    return StoreConnector<EnsState, AnalyticsViewModel>(
      distinct: true,
      converter: (store) => AnalyticsViewModel(store),
      builder: (context, vm) {
        return _CTA(_storeName, withSecondaryStyle, vm, _handleTap);
      },
    );
  }

  void _handleTap(BuildContext context, AnalyticsViewModel vm) {
    if (EnsModuleContainer.currentInjector.isGuestMode()) {
      displayGuestModeBottomSheet(context);
    } else {
      vm.tagAction(TagsCatalogueServices.tag484ButtonCatalogueTelechargerApp(appName, appId));
      StoreRedirect.redirect(androidAppId: androidPackageName, iOSAppId: iOsAppId);
    }
  }

  String get _storeName {
    if (Platform.isAndroid) {
      return 'le Play Store';
    } else {
      return "l'App Store";
    }
  }
}

class _CTA extends StatelessWidget {
  final String _storeName;
  final bool withSecondaryStyle;
  final AnalyticsViewModel vm;
  final void Function(BuildContext, AnalyticsViewModel) _handleTap;

  const _CTA(this._storeName, this.withSecondaryStyle, this.vm, this._handleTap);

  @override
  Widget build(BuildContext context) {
    final label = 'Consulter sur $_storeName';
    return withSecondaryStyle
        ? EnsButtonSecondary(label: label, onTap: () => _handleTap(context, vm))
        : EnsButton(label: label, onTap: () => _handleTap(context, vm));
  }
}
