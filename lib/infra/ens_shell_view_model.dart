/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/auth/domain/model/ens_auth.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_initial_state.dart';
import 'package:redux/redux.dart';

class EnsShellViewModel extends Equatable {
  final AuthStatus authStatus;

  const EnsShellViewModel._internal(this.authStatus);

  factory EnsShellViewModel(Store<EnsInitialState> store) {
    return EnsShellViewModel._internal(store.state.authState.status);
  }

  @override
  List<Object?> get props => [authStatus];
}
