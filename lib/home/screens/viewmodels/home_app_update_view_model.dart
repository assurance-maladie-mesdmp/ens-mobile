/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/update/redux/app_update_actions.dart';
import 'package:redux/redux.dart';

class HomeAppUpdateScreenViewModel extends Equatable {
  final bool updateAvailable;
  final Function() redirectUpdate;

  const HomeAppUpdateScreenViewModel._internal({
    required this.updateAvailable,
    required this.redirectUpdate,
  });

  factory HomeAppUpdateScreenViewModel.from(Store<EnsState> store) {
    final appUpdateState = store.state.appUpdateState;

    return HomeAppUpdateScreenViewModel._internal(
      updateAvailable: appUpdateState.status.needToUpdate,
      redirectUpdate: () => store.dispatch(RedirectUpdateAction()),
    );
  }

  @override
  List<Object?> get props => [updateAvailable];
}
