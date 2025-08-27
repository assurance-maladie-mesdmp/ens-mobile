/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/parameters/historique_activites/screens/historique_activites_screen.dart';
import 'package:fr_cnamts_ens/parameters/screens/viewModels/parameters_screen_view_model.dart';
import 'package:fr_cnamts_ens/parameters/telecharger_mes_donnees/screen/telecharger_mes_donnees_screen.dart';
import 'package:fr_cnamts_ens/traces/domain/ens_send_trace.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/menu_item.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';
import 'package:fr_cnamts_ens/user/redux/user_actions.dart';

class HistoriqueEtDonneesScreen extends StatelessWidget {
  static const routeName = '/historique-et-donnees';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const EnsAppBarSubLevel(
        title: 'Historique et données',
      ),
      body: StoreConnector<EnsState, ParametersScreenViewModel>(
        onInit: (store) => store.dispatch(FetchUserDataAction()),
        converter: (store) => ParametersScreenViewModel.from(store),
        distinct: true,
        builder: (context, vm) => _Content(vm: vm),
      ),
    );
  }
}

class _Content extends StatelessWidget {
  final ParametersScreenViewModel vm;

  const _Content({required this.vm});

  @override
  Widget build(BuildContext context) {
    return ScrollviewWithScrollbar(
      child: Column(
        children: [
          const SizedBox(height: 44),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              'J’ai accès à l’historique de mes activités et à celles de mes professionnels de santé. Je peux aussi télécharger toutes les données.',
              style: EnsTextStyle.text14_w400_normal_body,
            ),
          ),
          const SizedBox(height: 24),
          MenuItem(
            title: 'Historique d\'activité',
            destinationPage: HistoriqueActivitesScreen.routeName,
            onTap: () => context.traceAction(EnsTraceType.CONSULT_RUBRIQUE_HISTORIQUE_ACTIVITE),
          ),
          const Divider(color: EnsColors.neutral200, height: 2),
          MenuItem(
            title: 'Télécharger les données',
            destinationPage: TelechargerDonneesScreen.routeName,
            onTap: () => context.traceAction(EnsTraceType.CONSULT_RUBRIQUE_TELECHARGEMENT_DONNEES),
          ),
        ],
      ),
    );
  }
}
