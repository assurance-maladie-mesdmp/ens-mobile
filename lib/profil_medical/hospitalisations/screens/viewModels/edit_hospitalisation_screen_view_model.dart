/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:collection/collection.dart';
import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/documents/domain/models/ens_document.dart';
import 'package:fr_cnamts_ens/documents/redux/documents_redux.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/interruption_services/domain/interruption_de_service_info.dart';
import 'package:fr_cnamts_ens/interruption_services/redux/interruption_selectors.dart';
import 'package:fr_cnamts_ens/profil_medical/hospitalisations/domain/models/editing_hospitalisation.dart';
import 'package:fr_cnamts_ens/profil_medical/hospitalisations/domain/models/ens_hospitalisation.dart';
import 'package:fr_cnamts_ens/profil_medical/hospitalisations/redux/hospitalisations_actions.dart';
import 'package:fr_cnamts_ens/profil_medical/screens/widgets/form_document_section.dart';
import 'package:fr_cnamts_ens/profils_rattaches/screens/profils_utils.dart';
import 'package:fr_cnamts_ens/user/redux/user_selectors.dart';
import 'package:fr_cnamts_ens/utils/all_purposes_status.dart';
import 'package:redux/redux.dart';

class EditHospitalisationScreenViewModel extends Equatable {
  final AllPurposesStatus editStatus;
  final EnsHospitalisation? initialHospitalisation;
  final List<DocumentEditionCreation> linkedDocumentsToCreate;
  final List<LinkedDocumentDisplayModel> linkedDocsDisplayModels;
  final DateTime? birthDate;
  final void Function(EditingHospitalisation) editHospitalisation;
  final void Function(DocumentEditionCreation) removeDocument;
  final void Function() cleanDocumentToCreate;
  final String? interruptionServiceSnackbarMessage;
  final ProfilType profilType;

  const EditHospitalisationScreenViewModel._internal({
    required this.editStatus,
    required this.initialHospitalisation,
    required this.linkedDocumentsToCreate,
    required this.linkedDocsDisplayModels,
    required this.birthDate,
    required this.editHospitalisation,
    required this.removeDocument,
    required this.cleanDocumentToCreate,
    required this.interruptionServiceSnackbarMessage,
    required this.profilType,
  });

  factory EditHospitalisationScreenViewModel.from(Store<EnsState> store, {String? hospitalisationId}) {
    final hospitalisationsEditStatus = store.state.hospitalisationsState.hospitalisationsEditStatus;
    final hospitalisationsListState = store.state.hospitalisationsState.hospitalisationsListState;
    final documents = store.state.documentsState.documentsListState.documents;
    final documentsLink = store.state.documentsState.documentsBeingLinked;

    final profilType = ProfilsUtils.getCurrentProfilType(store.state);

    EnsHospitalisation? hospitalisation;
    if (hospitalisationId != null && hospitalisationsListState.status.isSuccess()) {
      hospitalisation =
          hospitalisationsListState.hospitalisations.firstWhereOrNull((element) => element.id == hospitalisationId);
    }

    final interruptionServiceSnackbarMessage = InterruptionSelectors.getCurrentInterruptionInfos(
      state: store.state,
      domaine: DomaineInterruption.DOCUMENTS,
    )?.messageSnackbar;

    return EditHospitalisationScreenViewModel._internal(
      editStatus: hospitalisationsEditStatus,
      initialHospitalisation: hospitalisation,
      linkedDocumentsToCreate: documentsLink,
      birthDate: UserSelectors.getBirthdate(store.state),
      linkedDocsDisplayModels: _getDisplayModels(documents, hospitalisation?.linkedDocumentsIds),
      editHospitalisation: (editedHospitalisation) {
        final editingHospitalisation = editedHospitalisation.clone(id: hospitalisationId);
        if (hospitalisationId != null) {
          store.dispatch(UpdateHospitalisationAction(editingHospitalisation, documentsLink));
        } else {
          store.dispatch(AddHospitalisationAction(editingHospitalisation, documentsLink));
        }
      },
      removeDocument: (document) => store.dispatch(RemoveDocumentAction(document)),
      cleanDocumentToCreate: () => store.dispatch(CleanDocumentsToCreateAction()),
      interruptionServiceSnackbarMessage: interruptionServiceSnackbarMessage,
      profilType: profilType,
    );
  }

  bool get isEditingHospitalisation => initialHospitalisation != null;

  static List<LinkedDocumentDisplayModel> _getDisplayModels(
    Map<String, EnsDocument> documents,
    List<String>? linkedDocumentIds,
  ) {
    if (linkedDocumentIds == null) return [];
    return linkedDocumentIds
        .map((documentIds) {
          final document = documents[documentIds];
          return document == null ? null : LinkedDocumentDisplayModel(document.id, document.title);
        })
        .nonNulls
        .toList();
  }

  @override
  List<Object?> get props => [
        editStatus,
        initialHospitalisation,
        linkedDocumentsToCreate,
        linkedDocsDisplayModels,
        birthDate,
        interruptionServiceSnackbarMessage,
        profilType,
      ];
}
