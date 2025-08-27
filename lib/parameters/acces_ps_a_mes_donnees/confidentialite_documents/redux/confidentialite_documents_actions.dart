/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/documents/redux/documents_redux.dart';

class FetchDefaultConfidentialityAction {
  final bool force;

  const FetchDefaultConfidentialityAction({this.force = false});
}

class FetchConfidentialiteBeforeNextAction {
  final void Function(DefaultConfidentiality) onConfidentialityLoaded;

  FetchConfidentialiteBeforeNextAction(this.onConfidentialityLoaded);
}

class ProcessFetchDefaultConfidentialitySuccessAction {
  final DefaultConfidentiality defaultConfidentiality;
  final String patientId;

  ProcessFetchDefaultConfidentialitySuccessAction({required this.defaultConfidentiality, required this.patientId});
}

class ProcessFetchDefaultConfidentialityErrorAction {}

class UpdateDefaultConfidentialityForAllDocumentsAction {
  final DefaultConfidentiality defaultConfidentiality;

  UpdateDefaultConfidentialityForAllDocumentsAction(this.defaultConfidentiality);
}

class ProcessUpdateDefaultConfidentialityForAllDocumentsSuccessAction {
  final DefaultConfidentiality defaultConfidentiality;
  final String patientId;

  ProcessUpdateDefaultConfidentialityForAllDocumentsSuccessAction({
    required this.defaultConfidentiality,
    required this.patientId,
  });
}

class ProcessUpdateDefaultConfidentialityForAllDocumentsErrorAction {}
