/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';

class AppUpdateState extends Equatable {
  final AppUpdateStatus status;

  const AppUpdateState({this.status = AppUpdateStatus.NO_NEED_TO_UPDATE});

  @override
  List<Object?> get props => [status];
}

enum AppUpdateStatus {
  NO_NEED_TO_UPDATE,
  NEED_TO_UPDATE;

  bool get needToUpdate => this == AppUpdateStatus.NEED_TO_UPDATE;
}
