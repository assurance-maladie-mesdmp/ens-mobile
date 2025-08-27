/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/documents/domain/models/ens_document.dart';
import 'package:fr_cnamts_ens/documents/redux/documents_redux.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/snackbar/redux/snackbar_actions.dart';
import 'package:fr_cnamts_ens/utils/all_purposes_status.dart';
import 'package:fr_cnamts_ens/utils/extensions/string_extensions.dart';
import 'package:redux/redux.dart';

class CreateAvisArretDeTravailDossierViewModel extends Equatable {
  static const AVIS_ARRET_DE_TRAVAIL_DOSSIER_NAME = 'Arrêts de travail';
  final DossierStatus createDossierStatus;
  final AllPurposesStatus moveDocumentsStatus;
  final bool alreadyExistingDossierName;
  final void Function() resetCreationDossierAndMoveDocumentsState;
  final void Function() createAvisArretDeTravailDossier;
  final void Function() moveAvisArretDeTravail;
  final void Function() displayCreationDossierAndMoveDocumentsSuccessSnackbar;
  final void Function(String errorMessage) displayErrorSnackbar;
  final void Function() setAlreadyDisplayedAvisArretDeTravailBottomSheets;

  const CreateAvisArretDeTravailDossierViewModel._({
    required this.createDossierStatus,
    required this.moveDocumentsStatus,
    required this.alreadyExistingDossierName,
    required this.resetCreationDossierAndMoveDocumentsState,
    required this.createAvisArretDeTravailDossier,
    required this.moveAvisArretDeTravail,
    required this.displayCreationDossierAndMoveDocumentsSuccessSnackbar,
    required this.displayErrorSnackbar,
    required this.setAlreadyDisplayedAvisArretDeTravailBottomSheets,
  });

  factory CreateAvisArretDeTravailDossierViewModel.from(Store<EnsState> store) {
    List<String> alreadyExistingDossierNames = [];
    final documentsState = store.state.documentsState;
    final documentsListState = documentsState.documentsListState;
    final createDossierStatus = documentsState.createDossierStatus;
    final moveDocumentsStatus = documentsState.moveDossiersStatus;

    final dossiers = Map.of(documentsListState.dossiers);
    final documents = Map.of(documentsListState.documents);
    documents.removeWhere((id, document) => document.type != EnsDocumentType.AVIS_ARRET_DE_TRAVAIL);

    if (documentsListState.status.isSuccess()) {
      alreadyExistingDossierNames = documentsListState.dossiers.values
          .map((dossier) => dossier.name.replaceAllDiacritics().toLowerCase())
          .toList();
    }

    return CreateAvisArretDeTravailDossierViewModel._(
      createDossierStatus: createDossierStatus,
      moveDocumentsStatus: moveDocumentsStatus,
      alreadyExistingDossierName: alreadyExistingDossierNames.any(
        (alreadyExistingName) => _isAvisArretDeTravailDossier(alreadyExistingName),
      ),
      resetCreationDossierAndMoveDocumentsState: () {
        store.dispatch(ResetCreateDossierAction());
        store.dispatch(ResetMoveDocumentsAction());
      },
      createAvisArretDeTravailDossier: () => store.dispatch(CreateDossierAction(AVIS_ARRET_DE_TRAVAIL_DOSSIER_NAME)),
      displayCreationDossierAndMoveDocumentsSuccessSnackbar: () =>
          store.dispatch(const DisplaySnackbarAction.success('Dossier créé et avis d\'arrêt de travail déplacés')),
      displayErrorSnackbar: (errorMessage) => store.dispatch(DisplaySnackbarAction.error(errorMessage)),
      moveAvisArretDeTravail: () {
        store.dispatch(
          MoveDocumentsAction(
            documentsIds: documents.keys.toList(),
            targetFolderId: dossiers.values.firstWhere(
              (dossier) {
                final dossierName = dossier.name.replaceAllDiacritics().toLowerCase();
                return _isAvisArretDeTravailDossier(dossierName);
              },
            ).id,
            isFromCreateAvisArretDeTravailJourney: true,
          ),
        );
      },
      setAlreadyDisplayedAvisArretDeTravailBottomSheets: () {
        store.dispatch(SetAlreadyDisplayCreateAvisArretDeTravailDossierBottomSheetAction());
      },
    );
  }

  static bool _isAvisArretDeTravailDossier(String nomDossier) {
    return nomDossier.contains('arrets') && nomDossier.contains('de') && nomDossier.contains('travail');
  }

  @override
  List<Object?> get props => [
        createDossierStatus,
        moveDocumentsStatus,
        alreadyExistingDossierName,
      ];
}
