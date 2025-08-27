/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/user/domain/model/user_data.dart';
import 'package:fr_cnamts_ens/utils/all_purposes_status.dart';

class MainUserDataState extends Equatable {
  final AllPurposesStatus status;
  final UserData? userData;

  const MainUserDataState({this.status = AllPurposesStatus.NOT_LOADED, this.userData});

  MainUserDataState clone({
    AllPurposesStatus? status,
    UserData? userData,
  }) {
    return MainUserDataState(
      status: status ?? this.status,
      userData: userData ?? this.userData,
    );
  }

  bool get isSuccessWithData => status.isSuccess() && userData != null;

  bool get isErrorOrSuccessWithoutData => status.isError() || (status.isSuccess() && userData == null);

  @override
  List<Object?> get props => [status, userData];
}
