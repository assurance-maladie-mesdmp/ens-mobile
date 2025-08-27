/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/parameters/acces_ps_a_mes_donnees/confidentialite_documents/redux/confidentialite_documents_actions.dart';
import 'package:fr_cnamts_ens/parameters/consentements_ps/domain/models/ens_consentement_ps.dart';
import 'package:fr_cnamts_ens/parameters/consentements_ps/redux/consentements_ps_redux.dart';
import 'package:fr_cnamts_ens/parameters/consentements_ps/screens/labels/consentement_ps_labels.dart';
import 'package:fr_cnamts_ens/utils/all_purposes_status.dart';
import 'package:redux/redux.dart';

class ConsentementsPsScreenViewModel extends Equatable {
  final AllPurposesStatus status;
  final List<EnsConsentementPs> psAutorises;
  final List<EnsConsentementPs> psBloques;
  final bool isInformationMasked;
  final ConsentementsPsScreenHeaderDisplayModel headerDisplayModel;
  final void Function() load;
  final void Function(bool shouldUnblock, EnsConsentementPs consentementPs) updateConsentementPs;

  const ConsentementsPsScreenViewModel._internal({
    required this.status,
    required this.psAutorises,
    required this.psBloques,
    required this.isInformationMasked,
    required this.headerDisplayModel,
    required this.load,
    required this.updateConsentementPs,
  });

  factory ConsentementsPsScreenViewModel.from(Store<EnsState> store) {
    final consentementsPsListState = store.state.consentementsPsListState;
    final defaultConfidentialityState = store.state.documentsState.defaultConfidentialityState;
    final isInformationMasked = defaultConfidentialityState.getStatus.isSuccess() &&
        defaultConfidentialityState.defaultConfidentiality?.isMasked == true;

    final consentementsPs = consentementsPsListState.consentementsPs;
    final psAutorises = consentementsPs.where((ps) => ps.isAllowed).toList();
    final psBloques = consentementsPs.where((ps) => !ps.isAllowed).toList();
    final displayModel = _buildDisplayModel(store.state);

    return ConsentementsPsScreenViewModel._internal(
      status: consentementsPsListState.status,
      psAutorises: psAutorises,
      psBloques: psBloques,
      isInformationMasked: isInformationMasked,
      headerDisplayModel: displayModel,
      load: () {
        store.dispatch(const FetchConsentementsPsAction());
        store.dispatch(const FetchDefaultConfidentialityAction());
      },
      updateConsentementPs: (shouldUnblock, consentementPs) {
        if (shouldUnblock) {
          store.dispatch(
            UnblockPsAction(
              psIdNat: consentementPs.psId,
              consentementId: consentementPs.consentementId,
            ),
          );
        } else {
          store.dispatch(BlockPsAction(consentementPs.psId));
        }
      },
    );
  }

  String get confidentialCartoucheLabel {
    return isInformationMasked
        ? 'Par défaut, toutes les informations sont masquées aux professionnels de santé. Elles restent visibles par la personne qui les a déposées et par moi-même.\n'
        : 'Par défaut, toutes les informations sont visibles aux professionnels de santé autorisés.\n';
  }

  @override
  List<Object?> get props => [status, psAutorises, psBloques, isInformationMasked, headerDisplayModel];

  static ConsentementsPsScreenHeaderDisplayModel _buildDisplayModel(EnsState state) {
    return ConsentementsPsScreenHeaderDisplayModel(
      labels: state.userState.isMainProfile ? ConsentementPsLabels.POUR_MOI : ConsentementPsLabels.POUR_UN_TIERS,
      notificationEmail: state.userState.mainUserDataState.userData?.mail ?? 'inconnue',
    );
  }
}

class ConsentementsPsScreenHeaderDisplayModel extends Equatable {
  final ConsentementPsLabels labels;
  final String notificationEmail;

  const ConsentementsPsScreenHeaderDisplayModel({
    required this.labels,
    required this.notificationEmail,
  });

  @override
  List<Object?> get props => [labels, notificationEmail];
}
