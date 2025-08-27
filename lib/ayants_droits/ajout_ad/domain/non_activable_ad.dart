/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/ayants_droits/ajout_ad/domain/ad_to_add.dart';

class NonActivableAd extends Equatable {
  final String firstName;
  final String lastName;
  final AdToAddStatus status;

  const NonActivableAd({
    required this.firstName,
    required this.lastName,
    required this.status,
  });

  @override
  List<Object?> get props => [firstName, lastName, status];
}
