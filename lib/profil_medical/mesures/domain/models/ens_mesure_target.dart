/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/domain/models/ens_mesure_type.dart';

class EnsMesureTarget extends Equatable {
  final String id;
  final EnsMesureType type;
  final double value;

  const EnsMesureTarget({required this.id, required this.type, required this.value});

  @override
  List<Object?> get props => [id, type, value];
}
