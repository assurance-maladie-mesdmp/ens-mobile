/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/bottom_navigation_tabs/bottom_navigation_tabs_screen.dart';
import 'package:fr_cnamts_ens/infra/injection/ens_module_container.dart';
import 'package:fr_cnamts_ens/parameters/screens/parameters_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/vaccinations/screens/vaccinations_screen.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/confirmation_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/confirmation_bottom_sheet_default_text_content.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/multi_action_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_bottom_nav_bar.dart';
import 'package:fr_cnamts_ens/utils/webpage_utils.dart';

class NavigationUtils {
  static Future<bool> onWillPop(
    BuildContext context,
    String title,
    String helpText,
    String positiveButtonTitle, {
    void Function()? positiveButtonHandler,
    void Function()? negativeButtonHandler,
  }) async {
    return (await showModalBottomSheet(
          isScrollControlled: true,
          context: context,
          builder: (BuildContext context) {
            return ConfirmationBottomSheet(
              title: title,
              content: ConfirmationBottomSheetDefaultTextContent(helpText),
              positiveButtonLabel: positiveButtonTitle,
              negativeButtonHandler: negativeButtonHandler,
              shouldPopOnPositiveClick: false,
              positiveButtonHandler: () {
                positiveButtonHandler?.call();
                Navigator.pop(context, true);
              },
            );
          },
        ) as bool?) ??
        false;
  }

  static Future<bool?> showEnsMultiAction(
    BuildContext context,
    String title,
    String helpText,
    List<EnsMultiActionOption> actionOptions,
  ) async {
    return await showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) {
        return MultiActionBottomSheet(
          title: title,
          helpText: helpText,
          actionOptions: actionOptions,
        );
      },
    ) as bool?;
  }
}

void navigateInApp(String routeName, {bool fromDetailArticle = false, Object? arguments}) {
  final navigatorKey = EnsModuleContainer.currentInjector.getNavigatorKey();
  try {
    if (fromDetailArticle) {
      navigatorKey.currentState?.pop();
    }
    switch (routeName) {
      case '/documents':
        (BottomNavigationTabsScreen.keyEnsBottomNavigationBar?.currentWidget as EnsBottomNavigationBar?)?.onTap(1);
      case '/messagerie':
        (BottomNavigationTabsScreen.keyEnsBottomNavigationBar?.currentWidget as EnsBottomNavigationBar?)?.onTap(2);
      case '/medical/profil':
        (BottomNavigationTabsScreen.keyEnsBottomNavigationBar?.currentWidget as EnsBottomNavigationBar?)?.onTap(3);
      case '/mon-compte/informations-de-connexion':
        navigatorKey.currentState?.pushNamed(ParametersScreen.routeName);
      case '/medical/profil/vaccination':
        navigatorKey.currentState?.pushNamed(VaccinationsScreen.routeName);
      default:
        navigatorKey.currentState?.pushNamed(routeName, arguments: arguments);
    }
  } catch (e) {
    launchUrlOnBrowser('https://www.monespacesante.fr$routeName');
  }
}
