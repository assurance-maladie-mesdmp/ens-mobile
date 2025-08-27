/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/commune/redux/search_communes_action.dart';
import 'package:redux/redux.dart';

class SearchCommunesReducers {
  static List<Reducer<EnsState>> create() {
    return [
      TypedReducer<EnsState, ProcessSearchCommunesSuccessAction>(
        SearchCommunesReducers._onProcessSearchCommunesSuccessAction,
      ).call,
      TypedReducer<EnsState, ProcessSearchCommunesErrorAction>(
        SearchCommunesReducers._onProcessSearchCommunesErrorAction,
      ).call,
    ];
  }

  static EnsState _onProcessSearchCommunesSuccessAction(
    EnsState state,
    ProcessSearchCommunesSuccessAction action,
  ) {
    return state.clone(communesState: state.communesState.clone(cities: action.communes));
  }

  static EnsState _onProcessSearchCommunesErrorAction(
    EnsState state,
    ProcessSearchCommunesErrorAction action,
  ) {
    return state.clone(communesState: state.communesState.clone(cities: []));
  }
}
