/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/documents/redux/documents_redux.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/interruption_services/domain/interruption_de_service_info.dart';
import 'package:fr_cnamts_ens/interruption_services/redux/interruption_selectors.dart';
import 'package:fr_cnamts_ens/messagerie/widgets/file_attachment_widget.dart';
import 'package:fr_cnamts_ens/profil_medical/domain/ens_profil_medical_date_utils.dart';
import 'package:fr_cnamts_ens/profil_medical/maladies/domain/models/ens_maladie.dart';
import 'package:fr_cnamts_ens/profil_medical/maladies/redux/maladies_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/screens/viewmodels/link_traitement_display_model.dart';
import 'package:fr_cnamts_ens/profils_rattaches/screens/profils_utils.dart';
import 'package:fr_cnamts_ens/ui/widgets/viewmodels/linked_documents_section_display_model.dart';
import 'package:redux/redux.dart';

class MaladieDetailsScreenViewModel extends Equatable {
  final MaladieDetailsScreenDisplayModel displayModel;
  final EnsMaladie? maladie;
  final void Function() loadMaladies;
  final void Function() deleteMaladie;
  final void Function(String docId) deleteDocumentLinkToMaladie;
  final void Function(String traitementId) deleteTraitementLinkToMaladie;
  final void Function() fetchDocuments;
  final ProfilType profilType;

  const MaladieDetailsScreenViewModel._internal({
    this.maladie,
    required this.displayModel,
    required this.loadMaladies,
    required this.deleteMaladie,
    required this.deleteDocumentLinkToMaladie,
    required this.deleteTraitementLinkToMaladie,
    required this.fetchDocuments,
    required this.profilType,
  });

  factory MaladieDetailsScreenViewModel.from(Store<EnsState> store, String maladieId) {
    final maladiesListState = store.state.maladiesState.maladiesListState;
    final documents = store.state.documentsState.documentsListState.documents;

    final profilType = ProfilsUtils.getCurrentProfilType(store.state);

    var displayModel = const MaladieDetailsScreenDisplayModel.loading('');
    EnsMaladie? maladie;

    if (maladiesListState.status.isSuccess()) {
      maladie = store.state.maladiesState.maladiesListState.maladies[maladieId];
      if (maladie == null) {
        displayModel = const MaladieDetailsScreenDisplayModel.error('');
      } else {
        final linkedDocsDisplayModels = maladie.linkedDocumentIds
            .map(
              (documentId) => FileAttachmentDisplayModel(
                documentId: documentId,
                name: documents[documentId]?.title ?? '',
              ),
            )
            .toList();

        final interruptionServiceSnackbarMessage = InterruptionSelectors.getCurrentInterruptionInfos(
          state: store.state,
          domaine: DomaineInterruption.DOCUMENTS,
        )?.messageSnackbar;

        final traitements = store.state.traitementsState.traitementsListState.traitements;
        final linkedTraitementDisplayModels = traitements.getTraitementDisplayModelsLinkToEntity(
          maladie.linkedTraitementIds,
        );
        displayModel = MaladieDetailsScreenDisplayModel.success(
          maladie.name,
          linkedTraitementDisplayModels: linkedTraitementDisplayModels,
          startDate: EnsProfilMedicalDateUtils.formatDateWithPlainTextMonth(maladie.startDate),
          endDate: EnsProfilMedicalDateUtils.formatDateWithPlainTextMonth(maladie.endDate),
          comment: maladie.comment ?? '',
          linkedDocumentsDisplayModel: LinkedDocumentsSectionDisplayModel(
            linkedDocuments: linkedDocsDisplayModels,
            interruptionServiceSnackbarMessage: interruptionServiceSnackbarMessage,
          ),
        );
      }
    } else if (maladiesListState.status.isError()) {
      displayModel = const MaladieDetailsScreenDisplayModel.error('');
    }
    return MaladieDetailsScreenViewModel._internal(
      displayModel: displayModel,
      maladie: maladie,
      loadMaladies: () => _loadMaladies(store),
      deleteMaladie: () => _deleteMaladie(store, maladie!.id),
      deleteDocumentLinkToMaladie: (docId) => _deleteDocumentLinkToMaladie(store, maladie!.id, docId),
      deleteTraitementLinkToMaladie: (traitementId) => _deleteTraitementLinkToMaladie(store, maladie!.id, traitementId),
      fetchDocuments: () => _fetchDocuments(store, maladie?.linkedDocumentIds),
      profilType: profilType,
    );
  }

  static void _loadMaladies(Store<EnsState> store) {
    store.dispatch(const FetchMaladiesAction());
  }

  static void _deleteMaladie(Store<EnsState> store, String maladieId) {
    store.dispatch(DeleteMaladieAction(maladieId));
  }

  static void _deleteDocumentLinkToMaladie(Store<EnsState> store, String maladieId, String documentId) {
    store.dispatch(RemoveDocumentLinkedToMaladieAction(maladieId: maladieId, documentId: documentId));
  }

  static void _deleteTraitementLinkToMaladie(Store<EnsState> store, String maladieId, String traitementId) {
    store.dispatch(RemoveTraitementLinkedToMaladieAction(maladieId: maladieId, traitementId: traitementId));
  }

  static void _fetchDocuments(Store<EnsState> store, List<String>? docIds) {
    store.dispatch(FetchDocumentsAction());
  }

  @override
  List<Object?> get props => [displayModel, maladie, profilType];
}

class MaladieDetailsScreenDisplayModelError extends MaladieDetailsScreenDisplayModel {
  const MaladieDetailsScreenDisplayModelError._internal(super.title) : super._internal();
}

class MaladieDetailsScreenDisplayModelLoading extends MaladieDetailsScreenDisplayModel {
  const MaladieDetailsScreenDisplayModelLoading._internal(super.title) : super._internal();
}

class MaladieDetailsScreenDisplayModelSuccess extends MaladieDetailsScreenDisplayModel {
  final List<LinkedTraitementDisplayModel> linkedTraitementDisplayModels;
  final String startDate;
  final String endDate;
  final String comment;
  final LinkedDocumentsSectionDisplayModel linkedDocumentsDisplayModel;

  const MaladieDetailsScreenDisplayModelSuccess._internal(
    super.title, {
    required this.linkedTraitementDisplayModels,
    required this.startDate,
    required this.endDate,
    required this.comment,
    required this.linkedDocumentsDisplayModel,
  }) : super._internal();

  @override
  List<Object?> get props => [
        ...super.props,
        linkedTraitementDisplayModels,
        startDate,
        endDate,
        comment,
        linkedDocumentsDisplayModel,
      ];
}

abstract class MaladieDetailsScreenDisplayModel extends Equatable {
  final String title;

  const MaladieDetailsScreenDisplayModel._internal(this.title);

  const factory MaladieDetailsScreenDisplayModel.loading(String title) =
      MaladieDetailsScreenDisplayModelLoading._internal;

  const factory MaladieDetailsScreenDisplayModel.error(String title) = MaladieDetailsScreenDisplayModelError._internal;

  const factory MaladieDetailsScreenDisplayModel.success(
    String title, {
    required List<LinkedTraitementDisplayModel> linkedTraitementDisplayModels,
    required String startDate,
    required String endDate,
    required String comment,
    required LinkedDocumentsSectionDisplayModel linkedDocumentsDisplayModel,
  }) = MaladieDetailsScreenDisplayModelSuccess._internal;

  @override
  List<Object?> get props => [title];
}
