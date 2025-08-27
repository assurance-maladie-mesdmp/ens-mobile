/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/profil_medical/habitudes_de_vie/domain/models/habitude_de_vie_answer.dart';
import 'package:fr_cnamts_ens/profil_medical/habitudes_de_vie/domain/models/habitude_de_vie_option.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/counted_text_input.dart';

class HabitudeDeVieDetail extends Equatable {
  final String code;
  final String label;
  final String? description;
  final String? exemple;
  final String detailTag;
  final ItemDisplayType type;
  final List<HabitudeDeVieOption> options;
  final HabitudeDeVieDisplayOnCondition? displayOnCondition;
  final double? maxLength;
  final List<TextInputConstraints> constraints;

  const HabitudeDeVieDetail({
    required this.code,
    required this.label,
    required this.detailTag,
    this.description,
    this.exemple,
    required this.type,
    required this.options,
    this.displayOnCondition,
    this.maxLength,
    required this.constraints,
  });

  @override
  List<Object?> get props => [
        code,
        label,
        detailTag,
        description,
        exemple,
        type,
        options,
        displayOnCondition,
        maxLength,
        constraints,
      ];
}

enum ItemDisplayType { RADIO, TEXT }
