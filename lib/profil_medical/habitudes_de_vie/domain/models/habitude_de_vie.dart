/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/profil_medical/habitudes_de_vie/domain/models/habitude_de_vie_enum.dart';
import 'package:fr_cnamts_ens/profil_medical/habitudes_de_vie/domain/models/habitude_de_vie_item.dart';
import 'package:optional/optional.dart';

class HabitudeDeVieCategory extends Equatable {
  final HabitudeDeVieCategoryCode code;
  final String label;
  final String categoryTag;
  final String? lastModifiedDate;
  final List<HabitudeDeVieItem> items;

  const HabitudeDeVieCategory({
    required this.code,
    required this.label,
    required this.categoryTag,
    required this.lastModifiedDate,
    required this.items,
  });

  HabitudeDeVieCategory clone({
    HabitudeDeVieCategoryCode? code,
    String? label,
    String? categoryTag,
    Optional<String>? lastModifiedDateOptional,
    List<HabitudeDeVieItem>? items,
  }) =>
      HabitudeDeVieCategory(
        code: code ?? this.code,
        label: label ?? this.label,
        categoryTag: categoryTag ?? this.categoryTag,
        lastModifiedDate:
            lastModifiedDateOptional != null ? lastModifiedDateOptional.orElseNullable(null) : lastModifiedDate,
        items: items ?? this.items,
      );

  @override
  List<Object?> get props => [code, label, categoryTag, lastModifiedDate, items];
}
