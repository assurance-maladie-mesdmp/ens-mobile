/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';

class EnrolementCarteVitaleData extends Equatable {
  final bool isOdAccountActivated;
  final String? email;
  final String? telephone;

  const EnrolementCarteVitaleData({
    required this.isOdAccountActivated,
    required this.email,
    required this.telephone,
  });

  @override
  List<Object?> get props => [isOdAccountActivated, email, telephone];
}
