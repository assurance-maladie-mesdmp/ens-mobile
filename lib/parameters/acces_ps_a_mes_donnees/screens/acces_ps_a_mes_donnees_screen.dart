/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/parameters/acces_ps_a_mes_donnees/confidentialite_documents/screens/confidentialite_documents_screen.dart';
import 'package:fr_cnamts_ens/parameters/acces_ps_a_mes_donnees/screens/acces_ps_a_mes_donnees_screen_view_model.dart';
import 'package:fr_cnamts_ens/parameters/consentements_ps/screens/consentements_ps_screen.dart';
import 'package:fr_cnamts_ens/parameters/consentements_urgence/screens/consentements_urgence_screen.dart';
import 'package:fr_cnamts_ens/tags/tags_parameters.dart';
import 'package:fr_cnamts_ens/traces/domain/ens_send_trace.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/menu_item.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';

class AccesPsAMesDonneesScreen extends StatelessWidget {
  static const routeName = '/accesPS';

  const AccesPsAMesDonneesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const EnsAppBarSubLevel(
        title: 'Accès des professionnels de santé à mes données',
      ),
      body: StoreConnector<EnsState, AccesPsAMesDonneesScreenViewModel>(
        onInitialBuild: (vm) {
          context.tagAction(TagsParameters.tag_447_compte_acces_PS_donnees);
        },
        converter: (store) => AccesPsAMesDonneesScreenViewModel.from(store),
        distinct: true,
        builder: (_, AccesPsAMesDonneesScreenViewModel vm) => _Content(vm),
      ),
    );
  }
}

class _Content extends StatelessWidget {
  final AccesPsAMesDonneesScreenViewModel vm;

  const _Content(this.vm);

  @override
  Widget build(BuildContext context) {
    return ScrollviewWithScrollbar(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(24, 32, 24, 32),
            child: Text(
              'Je peux donner l’accès à mes professionnels de santé à mes Documents, mes rubriques Vaccinations, Mon histoire de santé, Directives anticipées du Profil médical.    A chaque accès, je recevrai une notification sur l’adresse e-mail ${vm.userMail}.',
              style: EnsTextStyle.text14_w400_normal_body,
            ),
          ),
          MenuItem(
            title: 'Confidentialité des informations',
            destinationPage: ConfidentialiteDocumentsScreen.routeName,
            onTap: () => context.traceAction(EnsTraceType.CONSULT_RUBRIQUE_CONFIDENTIALITE_INFOS),
          ),
          const Divider(color: EnsColors.neutral200, height: 2),
          MenuItem(
            title: 'Gestion des accès des professionnels de santé',
            destinationPage: ConsentementsPsScreen.routeName,
            onTap: () => context.traceAction(EnsTraceType.CONSULT_RUBRIQUE_ACCES_PS),
          ),
          const Divider(color: EnsColors.neutral200, height: 2),
          MenuItem(
            title: 'Accès en cas d’urgence',
            destinationPage: ConsentementsUrgenceScreen.routeName,
            arguments: const ConsentementsUrgenceScreenArguments(isFromOnboarding: false),
            onTap: () => context.traceAction(EnsTraceType.CONSULT_RUBRIQUE_ACCES_URGENCE),
          ),
        ],
      ),
    );
  }
}
