/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/auth/screens/login_screen.dart';
import 'package:fr_cnamts_ens/developpeur_outils/screen/developpeur_outils_screen.dart';
import 'package:fr_cnamts_ens/developpeur_outils/screen/historique_analytics_screen.dart';
import 'package:fr_cnamts_ens/enrolement/screens/code_provisoire_error_screen.dart';
import 'package:fr_cnamts_ens/enrolement/screens/compte_existant_screen.dart';
import 'package:fr_cnamts_ens/enrolement/screens/compte_non_activable_screen.dart';
import 'package:fr_cnamts_ens/enrolement/screens/demande_coordonees_screen.dart';
import 'package:fr_cnamts_ens/enrolement/screens/enrolement_choix_france_connect_plus_screen.dart';
import 'package:fr_cnamts_ens/enrolement/screens/enrolement_global_screen.dart';
import 'package:fr_cnamts_ens/enrolement/screens/informations_numero_securite_sociale_screen.dart';
import 'package:fr_cnamts_ens/enrolement/screens/informations_numero_serie_screen.dart';
import 'package:fr_cnamts_ens/enrolement/screens/profil_active_confirmation_screen.dart';
import 'package:fr_cnamts_ens/enrolement/screens/representant_legal_error_screen.dart';
import 'package:fr_cnamts_ens/enrolement/screens/representant_legal_infos_screen.dart';
import 'package:fr_cnamts_ens/enrolement/screens/scanner_carte_vitale_enrolement_screen.dart';
import 'package:fr_cnamts_ens/enrolement/screens/session_expiree_screen.dart';
import 'package:fr_cnamts_ens/enrolement/screens/update_user_contact_email_screen.dart';
import 'package:fr_cnamts_ens/enrolement/screens/update_user_contact_phone_screen.dart';
import 'package:fr_cnamts_ens/enrolement/screens/validate_otp_user_contact_change_screen.dart';
import 'package:fr_cnamts_ens/infra/data/web_deeplink.dart';
import 'package:fr_cnamts_ens/privacy/widgets/privacy_container.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_material_app.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_material_page_route.dart';

class EnsInitialApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return EnsMaterialApp(
      initialRoute: LoginScreen.routeName,
      onGenerateRoute: (RouteSettings settings) {
        final routeName = settings.name;
        if (routeName != null) {
          final routeNameDeepLink = WebDeeplink.fromString(routeName);
          if (routeNameDeepLink != null) {
            return ensMaterialPageRoute(
              child: PrivacyContainer(child: LoginScreen(deeplink: routeNameDeepLink.value)),
              settings: settings,
              isInitialRoute: true,
            );
          } else {
            switch (routeName) {
              case LoginScreen.routeName:
                return ensMaterialPageRoute(
                  child: const PrivacyContainer(child: LoginScreen()),
                  settings: settings,
                  isInitialRoute: true,
                );
              case EnrolementGlobalScreen.routeName:
                return ensMaterialPageRoute(
                  child: const EnrolementGlobalScreen(),
                  settings: settings,
                  isInitialRoute: true,
                );
              case EnrolementChoixFranceConnectPlusScreen.routeName:
                return ensMaterialPageRoute(
                  child: EnrolementChoixFranceConnectPlusScreen(),
                  settings: settings,
                  isInitialRoute: true,
                );
              case CodeProvisoireErrorScreen.routeName:
                return ensMaterialPageRoute(
                  child: CodeProvisoireErrorScreen(),
                  settings: settings,
                  isInitialRoute: true,
                );
              case SessionExpireeScreen.routeName:
                return ensMaterialPageRoute(
                  child: const SessionExpireeScreen(),
                  settings: settings,
                  isInitialRoute: true,
                );
              case DemandeCoordonneesScreen.routeName:
                return ensMaterialPageRoute(
                  child: const DemandeCoordonneesScreen(),
                  settings: settings,
                  isInitialRoute: true,
                );
              case InformationsNumeroSecuriteSocialeScreen.routeName:
                return ensMaterialPageRoute(
                  child: InformationsNumeroSecuriteSocialeScreen(),
                  settings: settings,
                  isInitialRoute: true,
                );
              case InformationsNumeroSerieScreen.routeName:
                return ensMaterialPageRoute(
                  child: InformationsNumeroSerieScreen(),
                  settings: settings,
                  isInitialRoute: true,
                );
              case CompteExistantScreen.routeName:
                return ensMaterialPageRoute(
                  child: const CompteExistantScreen(),
                  settings: settings,
                  isInitialRoute: true,
                );
              case CompteNonActivableScreen.routeName:
                return ensMaterialPageRoute(
                  child: const CompteNonActivableScreen(),
                  settings: settings,
                  isInitialRoute: true,
                );
              case UpdateUserContactEmailScreen.routeName:
                return ensMaterialPageRoute(
                  child: UpdateUserContactEmailScreen(),
                  settings: settings,
                  isInitialRoute: true,
                );
              case UpdateUserContactPhoneScreen.routeName:
                return ensMaterialPageRoute(
                  child: UpdateUserContactPhoneScreen(),
                  settings: settings,
                  isInitialRoute: true,
                );
              case ValidateOtpUserContactChangeScreen.routeName:
                return ensMaterialPageRoute(
                  child: ValidateOtpUserContactChangeScreen(),
                  settings: settings,
                  isInitialRoute: true,
                );
              case ProfilActiveConfirmationScreen.routeName:
                return ensMaterialPageRoute(
                  child: const ProfilActiveConfirmationScreen(),
                  settings: settings,
                  isInitialRoute: true,
                );
              case RepresentantLegalInfosScreen.routeName:
                return ensMaterialPageRoute(
                  child: RepresentantLegalInfosScreen(),
                  settings: settings,
                  isInitialRoute: true,
                );
              case RepresentantLegalErrorScreen.routeName:
                return ensMaterialPageRoute(
                  child: RepresentantLegalErrorScreen(),
                  settings: settings,
                  isInitialRoute: true,
                );
              case ScannerCarteVitaleEnrolementScreen.routeName:
                return ensMaterialPageRoute(
                  child: const ScannerCarteVitaleEnrolementScreen(),
                  settings: settings,
                  isInitialRoute: true,
                );
              case DeveloppeurOutilsScreen.routeName:
                return ensMaterialPageRoute(
                  child: const DeveloppeurOutilsScreen(),
                  settings: settings,
                  isInitialRoute: true,
                );
              case HistoriqueAnalyticsScreen.routeName:
                return ensMaterialPageRoute(
                  child: const HistoriqueAnalyticsScreen(),
                  settings: settings,
                  isInitialRoute: true,
                );
            }
          }
        }
        return null;
      },
    );
  }
}
