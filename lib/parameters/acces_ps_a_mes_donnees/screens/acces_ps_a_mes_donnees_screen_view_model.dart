/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:redux/redux.dart';

class AccesPsAMesDonneesScreenViewModel extends Equatable {
  static const EMPTY_VALUE = '-';
  final String? userMail;

  const AccesPsAMesDonneesScreenViewModel._internal({
    this.userMail,
  });

  factory AccesPsAMesDonneesScreenViewModel.from(Store<EnsState> store) {
    final mainUserDataState = store.state.userState.mainUserDataState;
    var userMail = EMPTY_VALUE;

    if (mainUserDataState.isSuccessWithData) {
      userMail = mainUserDataState.userData!.mail ?? EMPTY_VALUE;
    }
    return AccesPsAMesDonneesScreenViewModel._internal(userMail: userMail);
  }

  @override
  List<Object?> get props => [userMail];
}
