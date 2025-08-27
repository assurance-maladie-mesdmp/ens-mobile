/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:collection/collection.dart';
import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/interruption_services/domain/interruption_de_service_info.dart';
import 'package:fr_cnamts_ens/interruption_services/redux/interruption_selectors.dart';
import 'package:fr_cnamts_ens/messagerie/widgets/file_attachment_widget.dart';
import 'package:fr_cnamts_ens/profil_medical/domain/ens_profil_medical_date_utils.dart';
import 'package:fr_cnamts_ens/profil_medical/hospitalisations/domain/models/ens_hospitalisation.dart';
import 'package:fr_cnamts_ens/profil_medical/hospitalisations/redux/hospitalisations_actions.dart';
import 'package:fr_cnamts_ens/profils_rattaches/screens/profils_utils.dart';
import 'package:fr_cnamts_ens/ui/widgets/viewmodels/linked_documents_section_display_model.dart';
import 'package:redux/redux.dart';

class HospitalisationDetailsScreenViewModel extends Equatable {
  final HospitalisationDetailsScreenDisplayModel displayModel;
  final EnsHospitalisation? hospitalisation;
  final void Function() loadHospitalisations;
  final void Function() deleteHospitalisation;
  final void Function(String documentId) deleteDocumentLinkToMaladie;
  final ProfilType profilType;

  const HospitalisationDetailsScreenViewModel._internal({
    this.hospitalisation,
    required this.displayModel,
    required this.loadHospitalisations,
    required this.deleteHospitalisation,
    required this.deleteDocumentLinkToMaladie,
    required this.profilType,
  });

  factory HospitalisationDetailsScreenViewModel.from(Store<EnsState> store, String hospitalisationId) {
    final hospitalisationsListState = store.state.hospitalisationsState.hospitalisationsListState;
    final documents = store.state.documentsState.documentsListState.documents;

    final profilType = ProfilsUtils.getCurrentProfilType(store.state);

    var displayModel = const HospitalisationDetailsScreenDisplayModel.loading('');
    EnsHospitalisation? hospitalisation;

    if (hospitalisationsListState.status.isSuccess()) {
      hospitalisation = hospitalisationsListState.hospitalisations
          .firstWhereOrNull((hospitalisation) => hospitalisation.id == hospitalisationId);
      if (hospitalisation == null) {
        displayModel = const HospitalisationDetailsScreenDisplayModel.error('');
      } else {
        final interruptionServiceSnackbarMessage = InterruptionSelectors.getCurrentInterruptionInfos(
          state: store.state,
          domaine: DomaineInterruption.DOCUMENTS,
        )?.messageSnackbar;

        final linkedDocsDisplayModels = hospitalisation.linkedDocumentsIds.map(
          (documentId) {
            return FileAttachmentDisplayModel(
              documentId: documentId,
              name: documents[documentId]?.title ?? '',
            );
          },
        ).toList();
        displayModel = HospitalisationDetailsScreenDisplayModel.success(
          hospitalisation.name,
          admissionDate: EnsProfilMedicalDateUtils.formatDateWithPlainTextMonth(hospitalisation.startDate),
          duration: EnsProfilMedicalDateUtils.formatDuration(hospitalisation.duration),
          comment: hospitalisation.comment ?? '',
          linkedDocumentsDisplayModel: LinkedDocumentsSectionDisplayModel(
            linkedDocuments: linkedDocsDisplayModels,
            interruptionServiceSnackbarMessage: interruptionServiceSnackbarMessage,
          ),
        );
      }
    } else if (hospitalisationsListState.status.isError()) {
      displayModel = const HospitalisationDetailsScreenDisplayModel.error('');
    }
    return HospitalisationDetailsScreenViewModel._internal(
      displayModel: displayModel,
      hospitalisation: hospitalisation,
      loadHospitalisations: () => _loadHospitalisations(store),
      deleteHospitalisation: () => _deleteHospitalisation(store, hospitalisation!.id),
      deleteDocumentLinkToMaladie: (documentId) => _deleteDocumentLinkToMaladie(store, hospitalisation!.id, documentId),
      profilType: profilType,
    );
  }

  static void _loadHospitalisations(Store<EnsState> store) {
    store.dispatch(const FetchHospitalisationsAction());
  }

  static void _deleteHospitalisation(Store<EnsState> store, String hospitalisationId) {
    store.dispatch(DeleteHospitalisationAction(hospitalisationId));
  }

  static void _deleteDocumentLinkToMaladie(Store<EnsState> store, String hospitalisationId, String documentId) {
    store.dispatch(
      RemoveDocumentLinkedToHospitalisationAction(hospitalisationId: hospitalisationId, documentId: documentId),
    );
  }

  @override
  List<Object?> get props => [displayModel, hospitalisation, profilType];
}

abstract class HospitalisationDetailsScreenDisplayModel extends Equatable {
  final String title;

  const HospitalisationDetailsScreenDisplayModel._internal(this.title);

  const factory HospitalisationDetailsScreenDisplayModel.loading(String title) =
      HospitalisationDetailsScreenDisplayModelLoading._internal;

  const factory HospitalisationDetailsScreenDisplayModel.error(String title) =
      HospitalisationDetailsScreenDisplayModelError._internal;

  const factory HospitalisationDetailsScreenDisplayModel.success(
    String title, {
    required String admissionDate,
    required String duration,
    required String comment,
    required LinkedDocumentsSectionDisplayModel linkedDocumentsDisplayModel,
  }) = HospitalisationDetailsScreenDisplayModelSuccess._internal;

  @override
  List<Object?> get props => [title];
}

class HospitalisationDetailsScreenDisplayModelError extends HospitalisationDetailsScreenDisplayModel {
  const HospitalisationDetailsScreenDisplayModelError._internal(super.title) : super._internal();
}

class HospitalisationDetailsScreenDisplayModelLoading extends HospitalisationDetailsScreenDisplayModel {
  const HospitalisationDetailsScreenDisplayModelLoading._internal(super.title) : super._internal();
}

class HospitalisationDetailsScreenDisplayModelSuccess extends HospitalisationDetailsScreenDisplayModel {
  final String admissionDate;
  final String duration;
  final String comment;
  final LinkedDocumentsSectionDisplayModel linkedDocumentsDisplayModel;

  const HospitalisationDetailsScreenDisplayModelSuccess._internal(
    super.title, {
    required this.admissionDate,
    required this.duration,
    required this.comment,
    required this.linkedDocumentsDisplayModel,
  }) : super._internal();

  @override
  List<Object?> get props => [...super.props, admissionDate, duration, comment, linkedDocumentsDisplayModel];
}
