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
import 'package:fr_cnamts_ens/profil_medical/domain/ens_profil_medical_date_utils.dart';
import 'package:fr_cnamts_ens/profil_medical/domain/models/ens_date.dart';
import 'package:fr_cnamts_ens/profil_medical/maladies/domain/models/editing_maladie.dart';
import 'package:fr_cnamts_ens/profil_medical/maladies/domain/models/ens_maladie.dart';
import 'package:fr_cnamts_ens/profil_medical/maladies/redux/maladies_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/screens/viewmodels/link_traitement_display_model.dart';
import 'package:fr_cnamts_ens/profil_medical/screens/widgets/form_document_section.dart';
import 'package:fr_cnamts_ens/profil_medical/traitement/domain/models/ens_traitement.dart';
import 'package:fr_cnamts_ens/profil_medical/traitement/domain/models/traitement_temporaire.dart';
import 'package:fr_cnamts_ens/profils_rattaches/screens/profils_utils.dart';
import 'package:fr_cnamts_ens/user/redux/user_selectors.dart';
import 'package:fr_cnamts_ens/utils/all_purposes_status.dart';
import 'package:redux/redux.dart';

class EditMaladieScreenViewModel extends Equatable {
  final AllPurposesStatus editStatus;
  final List<DocumentEditionCreation> linkedDocumentsToCreate;
  final List<LinkedDocumentDisplayModel> linkedDocumentDisplayModels;
  final List<LinkedTraitementDisplayModel> linkedTraitementDisplayModels;
  final EnsMaladie? initialMaladie;
  final bool initialActiveMaladieStatus;
  final bool isUserTraitementsNotEmpty;
  final DateTime? birthDate;
  final void Function() cleanEditState;
  final void Function(DocumentEditionCreation) removeDocument;
  final void Function(EditingMaladie, List<TraitementTemporaire>) editMaladie;
  final String? interruptionServiceSnackbarMessage;
  final ProfilType profilType;

  bool get isEditingMaladie => initialMaladie != null;

  const EditMaladieScreenViewModel._internal({
    required this.editStatus,
    required this.linkedDocumentsToCreate,
    this.birthDate,
    required this.linkedDocumentDisplayModels,
    required this.linkedTraitementDisplayModels,
    required this.initialMaladie,
    required this.initialActiveMaladieStatus,
    required this.isUserTraitementsNotEmpty,
    required this.cleanEditState,
    required this.removeDocument,
    required this.editMaladie,
    required this.interruptionServiceSnackbarMessage,
    required this.profilType,
  });

  factory EditMaladieScreenViewModel.from({
    required Store<EnsState> store,
    String? maladieId,
  }) {
    final maladieEditStatus = store.state.maladiesState.maladieEditStatus;
    final documents = store.state.documentsState.documentsListState.documents;
    final traitementEntities = store.state.traitementsState.traitementsListState.traitements;
    final documentsLink = store.state.documentsState.documentsBeingLinked;

    final maladie = store.state.maladiesState.maladiesListState.maladies[maladieId];
    final bool initialActiveMaladieStatus = maladie?.endDate?.year == null;

    final profilType = ProfilsUtils.getCurrentProfilType(store.state);

    final interruptionServiceSnackbarMessage = InterruptionSelectors.getCurrentInterruptionInfos(
      state: store.state,
      domaine: DomaineInterruption.DOCUMENTS,
    )?.messageSnackbar;

    return EditMaladieScreenViewModel._internal(
      editStatus: maladieEditStatus,
      linkedDocumentsToCreate: documentsLink,
      linkedTraitementDisplayModels: getTraitementDisplayModels(traitementEntities, maladie?.linkedTraitementIds),
      initialMaladie: maladie,
      initialActiveMaladieStatus: initialActiveMaladieStatus,
      linkedDocumentDisplayModels: _getDocumentDisplayModels(documents, maladie?.linkedDocumentIds),
      isUserTraitementsNotEmpty: traitementEntities.isNotEmpty,
      birthDate: UserSelectors.getBirthdate(store.state),
      cleanEditState: () => store.dispatch(CleanDocumentsToCreateAction()),
      removeDocument: (document) {
        store.dispatch(RemoveDocumentAction(document));
      },
      editMaladie: (editMaladie, List<TraitementTemporaire> traitementsToCreateAndLink) {
        final editedMaladie = editMaladie.clone(id: maladie?.id);
        if (maladie != null) {
          store.dispatch(
            UpdateMaladieAction(
              editedMaladie,
              documentsLink,
              traitementsToCreateAndLink,
            ),
          );
        } else {
          store.dispatch(
            AddMaladieAction(
              editedMaladie,
              documentsLink,
              traitementsToCreateAndLink,
            ),
          );
        }
      },
      interruptionServiceSnackbarMessage: interruptionServiceSnackbarMessage,
      profilType: profilType,
    );
  }

  static String editingTraitementDateText(TraitementTemporaire traitement) {
    return EnsProfilMedicalDateUtils.formatTimeInterval(
      EnsDate(day: traitement.startDay, month: traitement.startMonth, year: traitement.startYear),
      EnsDate(
        day: traitement.endDay,
        month: traitement.endMonth,
        year: traitement.endYear,
      ),
    );
  }

  @override
  List<Object?> get props => [
        editStatus,
        linkedDocumentsToCreate,
        linkedDocumentDisplayModels,
        linkedTraitementDisplayModels,
        initialMaladie,
        initialActiveMaladieStatus,
        isUserTraitementsNotEmpty,
        birthDate,
        interruptionServiceSnackbarMessage,
        profilType,
      ];
}

List<LinkedDocumentDisplayModel> _getDocumentDisplayModels(
  Map<String, EnsDocument> documents,
  List<String>? linkedDocumentIds,
) {
  if (linkedDocumentIds == null) return [];
  return linkedDocumentIds
      .map((documentId) {
        final doc = documents[documentId];
        if (doc == null) return null;
        return LinkedDocumentDisplayModel(doc.id, doc.title);
      })
      .nonNulls
      .toList();
}

List<LinkedTraitementDisplayModel> getTraitementDisplayModels(
  List<EnsTraitement> traitements,
  List<String>? linkedTraitementIds,
) {
  if (linkedTraitementIds == null) return [];
  return linkedTraitementIds
      .map((traitementId) {
        final traitement = traitements.firstWhereOrNull((traitement) => traitement.id == traitementId);
        if (traitement == null) return null;
        return LinkedTraitementDisplayModel(
          id: traitement.id,
          nom: traitement.name,
          dureeAffichable: EnsProfilMedicalDateUtils.formatTimeInterval(
            traitement.startDate,
            traitement.endDate,
          ),
        );
      })
      .nonNulls
      .toList();
}

class EditMaladieScreenArguments extends Equatable {
  final bool fromIncitation;
  final String? maladieId;

  const EditMaladieScreenArguments(this.fromIncitation, [this.maladieId]);

  @override
  List<Object?> get props => [fromIncitation, maladieId];
}
