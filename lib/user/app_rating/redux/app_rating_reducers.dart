/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/user/app_rating/redux/app_rating_actions.dart';
import 'package:fr_cnamts_ens/user/app_rating/redux/app_rating_states.dart';
import 'package:redux/redux.dart';

class AppRatingReducers {
  static List<Reducer<EnsState>> create() => [
        TypedReducer<EnsState, ProcessShouldDisplayAppRatingAction>(
          AppRatingReducers.onProcessShouldDisplayAppRating,
        ).call,
      ];

  static EnsState onProcessShouldDisplayAppRating(
    EnsState state,
    ProcessShouldDisplayAppRatingAction action,
  ) {
    return state.clone(
      userState: state.userState.clone(appRatingState: AppRatingState(shouldDisplayAppRating: action.result)),
    );
  }
}
