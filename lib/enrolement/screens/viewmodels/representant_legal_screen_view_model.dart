/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_initial_state.dart';
import 'package:fr_cnamts_ens/utils/extensions/string_extensions.dart';
import 'package:redux/redux.dart';

class RepresentantLegalScreenViewModel extends Equatable {
  final String fullName;

  const RepresentantLegalScreenViewModel._(this.fullName);

  factory RepresentantLegalScreenViewModel(Store<EnsInitialState> store) {
    final String fullName =
        '${store.state.enrolementState.userIdentite.firstName?.capitalizeName()} ${store.state.enrolementState.userIdentite.lastName?.capitalizeName()}';
    return RepresentantLegalScreenViewModel._(fullName);
  }

  @override
  List<Object?> get props => [fullName];
}
