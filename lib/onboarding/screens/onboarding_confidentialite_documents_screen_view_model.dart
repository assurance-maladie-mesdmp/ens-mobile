/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/documents/redux/documents_redux.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/parameters/acces_ps_a_mes_donnees/confidentialite_documents/redux/confidentialite_documents_actions.dart';
import 'package:fr_cnamts_ens/utils/all_purposes_status.dart';
import 'package:redux/redux.dart';

class OnboardingConfidentialiteDocumentsScreenViewModel extends Equatable {
  final AllPurposesStatus updateStatus;
  final void Function(bool) sendConfidentialite;
  final DefaultConfidentiality? initialConfidentiality;

  const OnboardingConfidentialiteDocumentsScreenViewModel._({
    required this.updateStatus,
    required this.sendConfidentialite,
    required this.initialConfidentiality,
  });

  factory OnboardingConfidentialiteDocumentsScreenViewModel.from(Store<EnsState> store) {
    final defaultConfidentialityState = store.state.documentsState.defaultConfidentialityState;

    DefaultConfidentiality? initialConfidentiality;
    if (defaultConfidentialityState.isSuccessWithData) {
      initialConfidentiality = defaultConfidentialityState.defaultConfidentiality;
    }

    return OnboardingConfidentialiteDocumentsScreenViewModel._(
      updateStatus: defaultConfidentialityState.updateStatus,
      sendConfidentialite: (isMasked) => store.dispatch(
        UpdateDefaultConfidentialityForAllDocumentsAction(
          isMasked ? DefaultConfidentiality.MASKED : DefaultConfidentiality.VISIBLE,
        ),
      ),
      initialConfidentiality: initialConfidentiality,
    );
  }

  @override
  List<Object?> get props => [updateStatus, initialConfidentiality];
}
