/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/documents/domain/models/ens_document.dart';
import 'package:fr_cnamts_ens/documents/redux/documents_redux.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/utils/all_purposes_status.dart';
import 'package:redux/redux.dart';

class EditDocumentFormViewModel extends Equatable {
  final KindOfConfidentiality defaultConfidentiality;
  final AllPurposesStatus defaultConfidentialityGetStatus;
  final EditDocumentFormStatus editStatus;

  const EditDocumentFormViewModel._internal({
    required this.defaultConfidentiality,
    required this.defaultConfidentialityGetStatus,
    required this.editStatus,
  });

  factory EditDocumentFormViewModel.from(Store<EnsState> store) {
    final defaultConfidentialityState = store.state.documentsState.defaultConfidentialityState;
    final KindOfConfidentiality currentDefaultConfidentiality;

    final editionStatus = store.state.documentsState.editionStatus;
    final editStatus = _getEditStatus(editionStatus);

    switch (defaultConfidentialityState.getStatus) {
      case AllPurposesStatus.NOT_LOADED:
      case AllPurposesStatus.LOADING:
        currentDefaultConfidentiality = KindOfConfidentiality.UNKNOWN;
      case AllPurposesStatus.SUCCESS:
        currentDefaultConfidentiality =
            defaultConfidentialityState.defaultConfidentiality == DefaultConfidentiality.MASKED
                ? KindOfConfidentiality.PATIENT_ONLY
                : KindOfConfidentiality.PATIENT_AND_PS;
      case AllPurposesStatus.ERROR:
        currentDefaultConfidentiality = KindOfConfidentiality.PATIENT_AND_PS;
    }

    return EditDocumentFormViewModel._internal(
      defaultConfidentiality: currentDefaultConfidentiality,
      defaultConfidentialityGetStatus: defaultConfidentialityState.getStatus,
      editStatus: editStatus,
    );
  }

  @override
  List<Object?> get props => [defaultConfidentiality, defaultConfidentialityGetStatus, editStatus];
}

enum EditDocumentFormStatus { LOADING, SUCCESS, ERROR }

EditDocumentFormStatus _getEditStatus(DocumentEditionStatus status) {
  if (status is DocumentEditionInitializationError || status is DocumentEditionUpdateError) {
    return EditDocumentFormStatus.ERROR;
  } else if (status is DocumentEditionInitializationSuccess ||
      status is DocumentEditionUploadSuccess ||
      status is DocumentEditionUpdateSuccess) {
    return EditDocumentFormStatus.SUCCESS;
  }
  return EditDocumentFormStatus.LOADING;
}
