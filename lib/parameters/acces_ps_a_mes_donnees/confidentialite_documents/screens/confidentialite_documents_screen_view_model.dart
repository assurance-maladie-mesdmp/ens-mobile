/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/documents/redux/documents_redux.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/parameters/acces_ps_a_mes_donnees/confidentialite_documents/redux/confidentialite_documents_actions.dart';
import 'package:fr_cnamts_ens/profils_rattaches/screens/profils_utils.dart';
import 'package:fr_cnamts_ens/utils/all_purposes_status.dart';
import 'package:redux/redux.dart';

class ConfidentialiteDocumentsScreenViewModel extends Equatable {
  final AllPurposesStatus getStatus;
  final DefaultConfidentiality? initialConfidentiality;
  final String userMail;
  final AllPurposesStatus updateStatus;
  final Function(bool isVisible) updateDefaultConfidentiality;
  final Function() reload;
  final ProfilType profilType;

  const ConfidentialiteDocumentsScreenViewModel._internal({
    required this.getStatus,
    required this.initialConfidentiality,
    required this.userMail,
    required this.updateStatus,
    required this.updateDefaultConfidentiality,
    required this.reload,
    required this.profilType,
  });

  factory ConfidentialiteDocumentsScreenViewModel.from(Store<EnsState> store) {
    String? userMail;
    final mainUserDataState = store.state.userState.mainUserDataState;
    final profilType = ProfilsUtils.getCurrentProfilType(store.state);

    if (mainUserDataState.isSuccessWithData) {
      userMail = mainUserDataState.userData!.mail;
    }

    final defaultConfidentialityState = store.state.documentsState.defaultConfidentialityState;
    DefaultConfidentiality? initialConfidentiality;
    if (defaultConfidentialityState.isSuccessWithData) {
      initialConfidentiality = defaultConfidentialityState.defaultConfidentiality;
    }

    return ConfidentialiteDocumentsScreenViewModel._internal(
      getStatus: store.state.documentsState.defaultConfidentialityState.getStatus,
      initialConfidentiality: initialConfidentiality,
      userMail: userMail ?? '-',
      updateStatus: store.state.documentsState.defaultConfidentialityState.updateStatus,
      updateDefaultConfidentiality: (isVisible) => store.dispatch(
        UpdateDefaultConfidentialityForAllDocumentsAction(
          isVisible ? DefaultConfidentiality.VISIBLE : DefaultConfidentiality.MASKED,
        ),
      ),
      reload: () => store.dispatch(const FetchDefaultConfidentialityAction(force: true)),
      profilType: profilType,
    );
  }

  @override
  List<Object?> get props => [getStatus, initialConfidentiality, userMail, updateStatus, profilType];
}

enum ConfidentialiteStatus { MASKED, VISIBLE, LOADING, ERROR }
