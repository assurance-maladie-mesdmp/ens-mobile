/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/infra/redux/ens_initial_state.dart';
import 'package:fr_cnamts_ens/privacy/redux/privacy_actions.dart';
import 'package:redux/redux.dart';

class InitialPrivacyReducers {
  static List<Reducer<EnsInitialState>> createPrivacyReducers() => [
        TypedReducer<EnsInitialState, PrivacyBannerShownAction>(InitialPrivacyReducers._onPrivacyBannerShownAction)
            .call,
      ];

  static EnsInitialState _onPrivacyBannerShownAction(EnsInitialState state, PrivacyBannerShownAction action) {
    return state.clone(
      privacyBannerShown: true,
    );
  }
}
