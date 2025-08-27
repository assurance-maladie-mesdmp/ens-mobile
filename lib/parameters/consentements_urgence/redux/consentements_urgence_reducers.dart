/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/common/data/request_result.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/parameters/consentements_urgence/domain/models/ens_consentements_urgence.dart';
import 'package:fr_cnamts_ens/parameters/consentements_urgence/redux/consentements_urgence_actions.dart';
import 'package:fr_cnamts_ens/parameters/consentements_urgence/redux/consentements_urgence_states.dart';
import 'package:fr_cnamts_ens/utils/all_purposes_status.dart';
import 'package:redux/redux.dart';

class ConsentementsUrgenceReducers {
  static List<Reducer<EnsState>> create() => [
        TypedReducer<EnsState, ProcessFetchedConsentementsUrgenceAction>(
          ConsentementsUrgenceReducers._onProcessFetchedConsentementsUrgenceAction,
        ).call,
        TypedReducer<EnsState, UpdateConsentementUrgenceAction>(
          ConsentementsUrgenceReducers._onUpdateConsentementUrgenceAction,
        ).call,
        TypedReducer<EnsState, ProcessUpdatedConsentementUrgenceAction>(
          ConsentementsUrgenceReducers._onProcessUpdatedConsentementUrgenceAction,
        ).call,
        TypedReducer<EnsState, InitConsentementUrgenceEditionAction>(
          ConsentementsUrgenceReducers._onInitConsentementUrgenceEditionAction,
        ).call,
      ];

  static EnsState _onProcessFetchedConsentementsUrgenceAction(
    EnsState state,
    ProcessFetchedConsentementsUrgenceAction action,
  ) {
    final consentementsUrgence = action.result;
    if (consentementsUrgence is RequestResultSuccess<EnsConsentementsUrgence>) {
      return state.clone(
        consentementsUrgenceState: state.consentementsUrgenceState.clone(
          status: AllPurposesStatus.SUCCESS,
          consentementsUrgence: consentementsUrgence.result,
        ),
      );
    } else {
      return state.clone(
        consentementsUrgenceState: state.consentementsUrgenceState.clone(
          status: AllPurposesStatus.ERROR,
        ),
      );
    }
  }

  static EnsState _onInitConsentementUrgenceEditionAction(EnsState state, InitConsentementUrgenceEditionAction action) {
    return state.clone(
      consentementsUrgenceEditState: const ConsentementsUrgenceEditState(),
    );
  }

  static EnsState _onUpdateConsentementUrgenceAction(EnsState state, UpdateConsentementUrgenceAction action) {
    return state.clone(
      consentementsUrgenceEditState: state.consentementsUrgenceEditState.clone(
        status: AllPurposesStatus.LOADING,
      ),
    );
  }

  static EnsState _onProcessUpdatedConsentementUrgenceAction(
    EnsState state,
    ProcessUpdatedConsentementUrgenceAction action,
  ) {
    final consentementsUrgence = action.consentementsUrgence;
    if (consentementsUrgence is RequestResultSuccess<EnsConsentementsUrgence>) {
      return state.clone(
        consentementsUrgenceState: state.consentementsUrgenceState.clone(
          consentementsUrgence: consentementsUrgence.result,
        ),
        consentementsUrgenceEditState: state.consentementsUrgenceEditState.clone(
          status: AllPurposesStatus.SUCCESS,
        ),
      );
    } else {
      return state.clone(
        consentementsUrgenceEditState: state.consentementsUrgenceEditState.clone(
          status: AllPurposesStatus.ERROR,
        ),
      );
    }
  }
}
