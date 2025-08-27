/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';

class EditingTraitement extends Equatable {
  final String id;
  final String name;
  final String? dosage;
  final String? comment;
  final String? startDay;
  final String? startMonth;
  final String startYear;
  final String? endDay;
  final String? endMonth;
  final String? endYear;

  const EditingTraitement({
    required this.id,
    required this.name,
    this.dosage,
    this.comment,
    this.startDay,
    this.startMonth,
    required this.startYear,
    this.endDay,
    this.endMonth,
    this.endYear,
  });

  EditingTraitement clone({
    String? id,
    String? name,
    String? dosage,
    String? comment,
    String? startDay,
    String? startMonth,
    String? startYear,
    String? endDay,
    String? endMonth,
    String? endYear,
  }) {
    return EditingTraitement(
      id: id ?? this.id,
      name: name ?? this.name,
      dosage: dosage ?? this.dosage,
      comment: comment ?? this.comment,
      startDay: startDay ?? this.startDay,
      startMonth: startMonth ?? this.startMonth,
      startYear: startYear ?? this.startYear,
      endDay: endDay ?? this.endDay,
      endMonth: endMonth ?? this.endMonth,
      endYear: endYear ?? this.endYear,
    );
  }

  @override
  List<Object?> get props => [id, name, dosage, comment, startDay, startMonth, startYear, endDay, endMonth, endYear];
}
