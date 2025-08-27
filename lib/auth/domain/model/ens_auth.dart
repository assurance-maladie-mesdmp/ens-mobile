/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';

class AuthState extends Equatable {
  final AuthStatus status;

  const AuthState(this.status);

  @override
  List<Object?> get props => [status];
}

enum AuthStatus {
  NOT_LOGGED_IN,
  LOGIN_IN,
  LOGIN_IN_WITH_ANOTHER_ACCOUNT,
  LOGGED_IN,
  ERROR,
  GUEST,
}
