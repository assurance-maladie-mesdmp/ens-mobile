/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:redux/redux.dart';

class EmptyEnsWidgetViewModel extends Equatable {
  final bool isMainProfile;

  const EmptyEnsWidgetViewModel._internal({required this.isMainProfile});

  factory EmptyEnsWidgetViewModel(Store<EnsState> store) {
    return EmptyEnsWidgetViewModel._internal(isMainProfile: store.state.userState.isMainProfile);
  }

  @override
  List<Object?> get props => [isMainProfile];
}
