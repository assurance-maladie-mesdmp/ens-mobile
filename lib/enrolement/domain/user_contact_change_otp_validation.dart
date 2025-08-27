/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/user/domain/model/contact_change.dart';

class UserContactChangeOtpValidation extends Equatable {
  final ContactChangeType type;
  final String otp;

  const UserContactChangeOtpValidation({
    required this.type,
    required this.otp,
  });

  @override
  List<Object?> get props => [type, otp];
}
