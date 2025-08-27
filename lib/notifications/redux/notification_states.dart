/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/utils/all_purposes_status.dart';

class NotificationState extends Equatable {
  final AllPurposesStatus status;
  final String? decryptedPatientId;

  const NotificationState({this.status = AllPurposesStatus.NOT_LOADED, this.decryptedPatientId});

  bool get isSuccessWithData => status.isSuccess() && decryptedPatientId != null;

  @override
  List<Object?> get props => [status, decryptedPatientId];
}
