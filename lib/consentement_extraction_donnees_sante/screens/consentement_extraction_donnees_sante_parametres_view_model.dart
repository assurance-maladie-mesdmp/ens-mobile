/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/consentement_extraction_donnees_sante/redux/consentement_extraction_donnees_sante_redux.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profils_rattaches/screens/profils_utils.dart';
import 'package:fr_cnamts_ens/snackbar/redux/snackbar_actions.dart';
import 'package:fr_cnamts_ens/utils/all_purposes_status.dart';
import 'package:redux/redux.dart';

class ConsentementExtractionDonneesSanteViewModel extends Equatable {
  final AllPurposesStatus status;
  final bool hasAccepted;
  final void Function(bool hasAccepted) onConsentementChange;
  final void Function(bool hasAccepted) onConsentementUpdated;
  final ProfilType profilType;

  const ConsentementExtractionDonneesSanteViewModel._({
    required this.status,
    required this.hasAccepted,
    required this.onConsentementChange,
    required this.onConsentementUpdated,
    required this.profilType,
  });

  factory ConsentementExtractionDonneesSanteViewModel.from({required Store<EnsState> store}) {
    final profilType = ProfilsUtils.getCurrentProfilType(store.state);
    return ConsentementExtractionDonneesSanteViewModel._(
      status: store.state.consentementExtractionDonneesSanteState.status,
      hasAccepted: store.state.consentementExtractionDonneesSanteState.hasAcceptedToConsent ?? false,
      onConsentementChange: (value) => store.dispatch(UpdateConsentementExtractionDonneesSanteAction(value)),
      onConsentementUpdated: (value) => store.dispatch(
        DisplaySnackbarAction.success(
          'La récupération automatique est ${value == true ? "activée" : "désactivée"}',
          extraVerticalPadding: 24.0,
        ),
      ),
      profilType: profilType,
    );
  }

  @override
  List<Object?> get props => [status, hasAccepted, profilType];
}
