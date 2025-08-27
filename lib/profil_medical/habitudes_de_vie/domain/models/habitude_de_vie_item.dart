/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/profil_medical/habitudes_de_vie/domain/models/habitude_de_vie_detail.dart';

class HabitudeDeVieItem extends Equatable {
  final String code;
  final String itemTag;
  final List<HabitudeDeVieDetail> details;

  const HabitudeDeVieItem({
    required this.code,
    required this.itemTag,
    required this.details,
  });

  @override
  List<Object?> get props => [code, details, itemTag];
}
