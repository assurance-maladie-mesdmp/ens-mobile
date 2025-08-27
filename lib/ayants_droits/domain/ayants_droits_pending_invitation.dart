/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/ayants_droits/domain/ayant_droit_partage_data.dart';

class AyantsDroitsPendingInvitation extends Equatable {
  final AyantDroitsPartageProfil adPartageProfile;
  final DateTime endDate;

  const AyantsDroitsPendingInvitation({
    required this.adPartageProfile,
    required this.endDate,
  });

  @override
  List<Object?> get props => [adPartageProfile, endDate];
}
