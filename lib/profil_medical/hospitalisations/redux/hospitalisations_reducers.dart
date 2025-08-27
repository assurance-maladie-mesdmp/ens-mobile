/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:collection/collection.dart';
import 'package:fr_cnamts_ens/documents/redux/documents_redux.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/hospitalisations/domain/models/ens_hospitalisation.dart';
import 'package:fr_cnamts_ens/profil_medical/hospitalisations/redux/hospitalisations_actions.dart';
import 'package:fr_cnamts_ens/profil_medical/hospitalisations/redux/hospitalisations_states.dart';
import 'package:fr_cnamts_ens/utils/all_purposes_status.dart';
import 'package:redux/redux.dart';

class HospitalisationsReducers {
  static List<Reducer<EnsState>> create() => [
        TypedReducer<EnsState, FetchHospitalisationsAction>(
          HospitalisationsReducers._onFetchHospitalisationsAction,
        ).call,
        TypedReducer<EnsState, ProcessFetchHospitalisationsSuccessAction>(
          HospitalisationsReducers._onProcessFetchHospitalisationsSuccessAction,
        ).call,
        TypedReducer<EnsState, ProcessFetchHospitalisationsErrorAction>(
          HospitalisationsReducers._onProcessFetchHospitalisationsErrorAction,
        ).call,
        TypedReducer<EnsState, AddHospitalisationAction>(HospitalisationsReducers._onAddHospitalisationAction).call,
        TypedReducer<EnsState, UpdateHospitalisationAction>(HospitalisationsReducers._onUpdateHospitalisationAction)
            .call,
        TypedReducer<EnsState, ProcessAddOrUpdateHospitalisationSuccessAction>(
          HospitalisationsReducers._onProcessAddOrUpdateHospitalisationSuccessAction,
        ).call,
        TypedReducer<EnsState, ProcessAddOrUpdateHospitalisationErrorAction>(
          HospitalisationsReducers._onProcessAddOrUpdateHospitalisationErrorAction,
        ).call,
        TypedReducer<EnsState, ProcessDeleteHospitalisationSuccessAction>(
          HospitalisationsReducers._onProcessDeleteHospitalisationSuccessAction,
        ).call,
        TypedReducer<EnsState, ProcessDeleteDocumentsSuccessAction>(
          HospitalisationsReducers._onProcessDeleteDocumentsSuccessAction,
        ).call,
        TypedReducer<EnsState, ProcessDocumentRemovedFromHospitalisationAction>(
          HospitalisationsReducers._onProcessDocumentRemovedFromHospitalisationAction,
        ).call,
      ];

  static EnsState _onFetchHospitalisationsAction(EnsState state, FetchHospitalisationsAction action) {
    if (action.force || state.hospitalisationsState.hospitalisationsListState.status.isNotSuccess()) {
      return state.clone(
        hospitalisationsState: state.hospitalisationsState.clone(
          hospitalisationsListState: state.hospitalisationsState.hospitalisationsListState.clone(
            status: AllPurposesStatus.LOADING,
          ),
        ),
      );
    }
    return state;
  }

  static EnsState _onProcessFetchHospitalisationsSuccessAction(
    EnsState state,
    ProcessFetchHospitalisationsSuccessAction action,
  ) {
    return state.clone(
      hospitalisationsState: state.hospitalisationsState.clone(
        hospitalisationsListState: HospitalisationsListState(
          status: AllPurposesStatus.SUCCESS,
          hospitalisations: action.hospitalisations,
          nonConcerneDepuis: action.nonConcerneDepuis,
        ),
      ),
    );
  }

  static EnsState _onProcessFetchHospitalisationsErrorAction(
    EnsState state,
    ProcessFetchHospitalisationsErrorAction action,
  ) {
    return state.clone(
      hospitalisationsState: state.hospitalisationsState.clone(
        hospitalisationsListState: const HospitalisationsListState(status: AllPurposesStatus.ERROR),
      ),
    );
  }

  static EnsState _onAddHospitalisationAction(EnsState state, AddHospitalisationAction action) {
    return state.clone(
      hospitalisationsState: state.hospitalisationsState.clone(
        hospitalisationsEditStatus: AllPurposesStatus.LOADING,
      ),
    );
  }

  static EnsState _onUpdateHospitalisationAction(EnsState state, UpdateHospitalisationAction action) {
    return state.clone(
      hospitalisationsState: state.hospitalisationsState.clone(
        hospitalisationsEditStatus: AllPurposesStatus.LOADING,
      ),
    );
  }

  static EnsState _onProcessAddOrUpdateHospitalisationSuccessAction(
    EnsState state,
    ProcessAddOrUpdateHospitalisationSuccessAction action,
  ) {
    return state.clone(
      hospitalisationsState: state.hospitalisationsState.clone(
        hospitalisationsEditStatus: AllPurposesStatus.SUCCESS,
      ),
      documentsState: state.documentsState.clone(documentsBeingLinked: []),
    );
  }

  static EnsState _onProcessAddOrUpdateHospitalisationErrorAction(
    EnsState state,
    ProcessAddOrUpdateHospitalisationErrorAction action,
  ) {
    return state.clone(
      hospitalisationsState: state.hospitalisationsState.clone(
        hospitalisationsEditStatus: AllPurposesStatus.ERROR,
      ),
    );
  }

  static EnsState _onProcessDeleteHospitalisationSuccessAction(
    EnsState state,
    ProcessDeleteHospitalisationSuccessAction action,
  ) {
    final newHospitalisations = List<EnsHospitalisation>.from(
      state.hospitalisationsState.hospitalisationsListState.hospitalisations,
    )..removeWhere((hospitalisation) => hospitalisation.id == action.hospitalisationId);

    return state.clone(
      hospitalisationsState: state.hospitalisationsState.clone(
        hospitalisationsListState: state.hospitalisationsState.hospitalisationsListState.clone(
          hospitalisations: newHospitalisations,
        ),
      ),
    );
  }

  static EnsState _onProcessDeleteDocumentsSuccessAction(EnsState state, ProcessDeleteDocumentsSuccessAction action) {
    final deletedDocumentsIds = action.deletedDocsIds;
    final newHospitalisations = state.hospitalisationsState.hospitalisationsListState.hospitalisations.map(
      (hospitalisation) {
        final newLinkedDocumentsIds = List<String>.from(hospitalisation.linkedDocumentsIds)
          ..removeWhere((documentId) => deletedDocumentsIds.contains(documentId));
        return EnsHospitalisation(
          id: hospitalisation.id,
          name: hospitalisation.name,
          startDate: hospitalisation.startDate,
          linkedDocumentsIds: newLinkedDocumentsIds,
          comment: hospitalisation.comment,
          duration: hospitalisation.duration,
        );
      },
    ).toList();
    return state.clone(
      hospitalisationsState: state.hospitalisationsState.clone(
        hospitalisationsListState: state.hospitalisationsState.hospitalisationsListState.clone(
          hospitalisations: newHospitalisations,
        ),
      ),
    );
  }

  static EnsState _onProcessDocumentRemovedFromHospitalisationAction(
    EnsState state,
    ProcessDocumentRemovedFromHospitalisationAction action,
  ) {
    final hospitalisationsListState = state.hospitalisationsState.hospitalisationsListState;
    final hospitalisationWithDocumentRemoved = hospitalisationsListState.hospitalisations.firstWhereOrNull(
      (hospitalisation) => hospitalisation.id == action.hospitalisationId,
    );
    if (hospitalisationWithDocumentRemoved != null) {
      final newHospitalisation = EnsHospitalisation(
        id: hospitalisationWithDocumentRemoved.id,
        name: hospitalisationWithDocumentRemoved.name,
        startDate: hospitalisationWithDocumentRemoved.startDate,
        comment: hospitalisationWithDocumentRemoved.comment,
        duration: hospitalisationWithDocumentRemoved.duration,
        linkedDocumentsIds: List<String>.from(hospitalisationWithDocumentRemoved.linkedDocumentsIds)
            .where((documentId) => documentId != action.documentId)
            .toList(),
      );

      return state.clone(
        hospitalisationsState: state.hospitalisationsState.clone(
          hospitalisationsListState: HospitalisationsListState(
            status: AllPurposesStatus.SUCCESS,
            hospitalisations: hospitalisationsListState.hospitalisations.map((hospitalisation) {
              return hospitalisation.id == action.hospitalisationId ? newHospitalisation : hospitalisation;
            }).toList(),
          ),
        ),
      );
    }
    return state;
  }
}
