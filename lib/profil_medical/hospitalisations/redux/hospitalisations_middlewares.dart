/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/documents/redux/documents_redux.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/link/domaine/links_interactor.dart';
import 'package:fr_cnamts_ens/profil_medical/hospitalisations/data/hospitalisations_repository.dart';
import 'package:fr_cnamts_ens/profil_medical/hospitalisations/domain/hospitalisation_interactor.dart';
import 'package:fr_cnamts_ens/profil_medical/hospitalisations/redux/hospitalisations_actions.dart';
import 'package:fr_cnamts_ens/snackbar/redux/snackbar_actions.dart';
import 'package:fr_cnamts_ens/user/app_rating/redux/app_rating_actions.dart';
import 'package:fr_cnamts_ens/user/redux/user_selectors.dart';
import 'package:fr_cnamts_ens/utils/error_helper.dart';
import 'package:redux/redux.dart';

class HospitalisationsMiddlewares {
  final IHospitalisationsRepository hospitalisationsRepository;
  final IHospitalisationInteractor hospitalisationInteractor;
  final ILinksInMemoryInteractor linksInMemoryInteractor;

  HospitalisationsMiddlewares._(
    this.hospitalisationsRepository,
    this.hospitalisationInteractor,
    this.linksInMemoryInteractor,
  );

  static List<Middleware<EnsState>> create(
    IHospitalisationsRepository hospitalisationsRepository,
    IHospitalisationInteractor hospitalisationInteractor,
    ILinksInMemoryInteractor linksInMemoryInteractor,
  ) {
    final middleware = HospitalisationsMiddlewares._(
      hospitalisationsRepository,
      hospitalisationInteractor,
      linksInMemoryInteractor,
    );
    return [
      TypedMiddleware<EnsState, FetchHospitalisationsAction>(middleware._onFetchHospitalisationsAction).call,
      TypedMiddleware<EnsState, AddHospitalisationAction>(middleware._onAddHospitalisationAction).call,
      TypedMiddleware<EnsState, UpdateHospitalisationAction>(middleware._onUpdateHospitalisationAction).call,
      TypedMiddleware<EnsState, DeleteHospitalisationAction>(middleware._onDeleteHospitalisationAction).call,
      TypedMiddleware<EnsState, RemoveDocumentLinkedToHospitalisationAction>(
        middleware._onRemoveDocumentLinkedToHospitalisationAction,
      ).call,
    ];
  }

  Future<void> _onFetchHospitalisationsAction(
    Store<EnsState> store,
    FetchHospitalisationsAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final hospitalisationsState = store.state.hospitalisationsState;
    if (action.force || hospitalisationsState.hospitalisationsListState.status.isNotSuccess()) {
      final patientId = UserSelectors.getPatientId(store.state);
      final result = await hospitalisationsRepository.getHospitalisations(patientId);
      result.onSuccess((successResult) {
        store.dispatch(
          ProcessFetchHospitalisationsSuccessAction(
            hospitalisations: successResult.hospitalisations,
            nonConcerneDepuis: successResult.unconcernedDeclarationDate,
          ),
        );
      }).onError((_) {
        store.dispatch(ProcessFetchHospitalisationsErrorAction());
      });
    }
  }

  Future<void> _onAddHospitalisationAction(
    Store<EnsState> store,
    AddHospitalisationAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final patientId = UserSelectors.getPatientId(store.state);
    final edit = action.editingHospitalisation;
    final docsToCreateAndLink = action.docsToCreateAndLink;

    final result = await hospitalisationInteractor.addHospitalisation(
      patientId: patientId,
      editingHospitalisation: edit,
      docsToCreateAndLink: docsToCreateAndLink,
    );
    result.onSuccess((successResult) {
      store.dispatch(const DisplaySnackbarAction.success('Hospitalisation ajoutée'));
      store.dispatch(AddSuccessfulRatingAction());
      store.dispatch(ProcessAddOrUpdateHospitalisationSuccessAction(successResult));
      store.dispatch(const FetchHospitalisationsAction(force: true));
      if (docsToCreateAndLink.isNotEmpty) {
        store.dispatch(FetchDocumentsAction(force: true));
      }
    }).onError((domainError) {
      store.dispatch(ProcessAddOrUpdateHospitalisationErrorAction());
      if (domainError.errorMessage != null) {
        store.dispatch(DisplaySnackbarAction.error(domainError.errorMessage!));
      }
    });
  }

  Future<void> _onUpdateHospitalisationAction(
    Store<EnsState> store,
    UpdateHospitalisationAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final patientId = UserSelectors.getPatientId(store.state);
    final edit = action.editingHospitalisation;
    final docsToCreateAndLink = action.docsToCreateAndLink;

    final hospitalisationToEdit = store.state.hospitalisationsState.hospitalisationsListState.hospitalisations
        .firstWhere((hospitalisation) => hospitalisation.id == edit.id);

    final result = await hospitalisationInteractor.updateHospitalisation(
      patientId: patientId,
      currentHospitalisation: hospitalisationToEdit,
      editingHospitalisation: edit,
      docsToCreateAndLink: docsToCreateAndLink,
    );
    result.onSuccess((successResult) {
      store.dispatch(const DisplaySnackbarAction.success('Hospitalisation modifiée'));
      store.dispatch(ProcessAddOrUpdateHospitalisationSuccessAction(successResult));
      store.dispatch(const FetchHospitalisationsAction(force: true));
      if (docsToCreateAndLink.isNotEmpty) {
        store.dispatch(FetchDocumentsAction(force: true));
      }
    }).onError((error) {
      store.dispatch(ProcessAddOrUpdateHospitalisationErrorAction());
      store.dispatch(const DisplaySnackbarAction.error(GENERIC_ERROR_MESSAGE));
    });
  }

  Future<void> _onDeleteHospitalisationAction(
    Store<EnsState> store,
    DeleteHospitalisationAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final patientId = UserSelectors.getPatientId(store.state);
    final result = await hospitalisationsRepository.deleteHospitalisation(
      patientId,
      action.hospitalisationId,
    );
    result.onSuccess((successResult) {
      store.dispatch(const DisplaySnackbarAction.success('Hospitalisation supprimée'));
      store.dispatch(ProcessDeleteHospitalisationSuccessAction(successResult));
    }).onError((error) {
      store.dispatch(const DisplaySnackbarAction.error(GENERIC_ERROR_MESSAGE));
    });
  }

  Future<void> _onRemoveDocumentLinkedToHospitalisationAction(
    Store<EnsState> store,
    RemoveDocumentLinkedToHospitalisationAction action,
    NextDispatcher next,
  ) async {
    next(action);
    final result = await linksInMemoryInteractor.deleteDocumentLinkedToHospitalisation(
      store: store,
      hospitalisationId: action.hospitalisationId,
      documentId: action.documentId,
    );
    result.onSuccess((successResult) {
      store.dispatch(
        ProcessDocumentRemovedFromHospitalisationAction(
          action.hospitalisationId,
          action.documentId,
        ),
      );
      store.dispatch(const DisplaySnackbarAction.success('Document retiré'));
    }).onError((error) {
      store.dispatch(const DisplaySnackbarAction.error(GENERIC_ERROR_MESSAGE));
    });
  }
}
