/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/user/cgu/redux/cgu_redux.dart';
import 'package:redux/redux.dart';

class AcceptCguScreenViewModel {
  final Store<EnsState> _store;
  final bool isLoading;
  final bool isFinished;

  AcceptCguScreenViewModel._(this._store, {required this.isLoading, required this.isFinished});

  factory AcceptCguScreenViewModel.from(Store<EnsState> store) {
    final cguState = store.state.userState.acceptCguState;
    return AcceptCguScreenViewModel._(
      store,
      isLoading: cguState == AcceptCguState.LOADING,
      isFinished: cguState == AcceptCguState.ACCEPTED,
    );
  }

  void acceptCgu() {
    _store.dispatch(AcceptCguAction());
  }
}
