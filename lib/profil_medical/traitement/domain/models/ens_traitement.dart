/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/profil_medical/domain/models/ens_date.dart';

class EnsTraitement extends Equatable {
  final String id;
  final String name;
  final EnsDate startDate;
  final EnsDate? endDate;
  final String? dosage;
  final String? comment;
  final List<String> linkedMaladieIds;
  final List<String> linkedAllergieIds;

  const EnsTraitement({
    required this.id,
    required this.name,
    required this.startDate,
    this.endDate,
    this.dosage,
    this.comment,
    this.linkedMaladieIds = const [],
    this.linkedAllergieIds = const [],
  });

  EnsTraitement clone({
    List<String>? linkedMaladieIds,
    List<String>? linkedAllergieIds,
  }) {
    return EnsTraitement(
      id: id,
      name: name,
      startDate: startDate,
      endDate: endDate,
      dosage: dosage,
      comment: comment,
      linkedMaladieIds: linkedMaladieIds ?? this.linkedMaladieIds,
      linkedAllergieIds: linkedAllergieIds ?? this.linkedAllergieIds,
    );
  }

  bool isEnCours() => endDate == null || (endDate!.year == null && endDate!.month == null && endDate!.day == null);

  @override
  List<Object?> get props => [id, name, dosage, comment, startDate, endDate, linkedMaladieIds, linkedAllergieIds];
}
