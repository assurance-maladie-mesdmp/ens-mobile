/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/profil_medical/handicaps/screens/edit_handicap_screen.dart';

class EnsHandicap extends Equatable {
  final String id;
  final String name;
  final String? comment;
  final EnsHumanHelp humanHelp;
  final EnsDisabilityRate? disabilityRate;
  final String? technicalHelp;
  final List<HandicapTypeEnum> types;

  const EnsHandicap({
    required this.id,
    required this.name,
    this.comment,
    required this.humanHelp,
    required this.disabilityRate,
    this.technicalHelp,
    required this.types,
  });

  @override
  List<Object?> get props => [
        id,
        name,
        comment,
        humanHelp,
        disabilityRate,
        technicalHelp,
        types,
      ];
}

class EditingHandicap extends Equatable {
  final String? id;
  final String name;
  final String? comment;
  final EnsHumanHelp humanHelp;
  final EnsDisabilityRate? disabilityRate;
  final String? technicalHelp;
  final List<HandicapTypeEnum> types;

  const EditingHandicap({
    this.id,
    this.types = const [],
    required this.name,
    this.comment,
    this.technicalHelp,
    this.disabilityRate,
    this.humanHelp = EnsHumanHelp.UNKNOWN,
  });

  @override
  List<Object?> get props => [
        id,
        name,
        comment,
        humanHelp,
        disabilityRate,
        technicalHelp,
        types,
      ];
}

enum EnsHumanHelp {
  YES,
  NO,
  NONE,
  UNKNOWN,
}

enum EnsDisabilityRate {
  LESS_THAN_50,
  BETWEEN_50_AND_70,
  BIGGER_THAN_80_OR_EQUAL,
  UNKNOWN,
}
