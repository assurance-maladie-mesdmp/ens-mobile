/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/profil_medical/habitudes_de_vie/domain/models/habitude_de_vie_enum.dart';

class HabitudesDeVieCategoryDisplayModel extends Equatable {
  final String title;
  final String image;
  final HabitudeDeVieCategoryCode code;
  final String? lastModifiedDateLabel;

  const HabitudesDeVieCategoryDisplayModel({
    required this.title,
    required this.image,
    required this.code,
    required this.lastModifiedDateLabel,
  });

  @override
  List<Object?> get props => [title, image, code, lastModifiedDateLabel];
}
