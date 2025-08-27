/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/profil_medical/maladies/domain/models/ens_maladie.dart';

class EditingMaladie {
  String? id;
  String? name;
  String? comment;
  String? startDay;
  String? startMonth;
  String? startYear;
  String? endDay;
  String? endMonth;
  String? endYear;
  List<String> linkedDocumentIds;
  List<String> linkedTraitementIds;

  EditingMaladie({
    this.id,
    this.name,
    this.comment,
    this.startDay,
    this.startMonth,
    this.startYear,
    this.endDay,
    this.endMonth,
    this.endYear,
    this.linkedDocumentIds = const [],
    this.linkedTraitementIds = const [],
  });

  EditingMaladie.fromEnsMaladie(EnsMaladie maladie)
      : id = maladie.id,
        name = maladie.name,
        comment = maladie.comment,
        startDay = maladie.startDate.day,
        startMonth = maladie.startDate.month,
        startYear = maladie.startDate.year,
        endDay = maladie.endDate?.day,
        endMonth = maladie.endDate?.month,
        endYear = maladie.endDate?.year,
        linkedDocumentIds = maladie.linkedDocumentIds,
        linkedTraitementIds = maladie.linkedTraitementIds;

  EditingMaladie clone({
    String? id,
    String? name,
    String? comment,
    String? startDay,
    String? startMonth,
    String? startYear,
    String? endDay,
    String? endMonth,
    String? endYear,
    List<String>? linkedDocumentIds,
    List<String>? linkedTraitementIds,
  }) =>
      EditingMaladie(
        id: id ?? this.id,
        name: name ?? this.name,
        comment: comment ?? this.comment,
        startDay: startDay ?? this.startDay,
        startMonth: startMonth ?? this.startMonth,
        startYear: startYear ?? this.startYear,
        endDay: endDay ?? this.endDay,
        endMonth: endMonth ?? this.endMonth,
        endYear: endYear ?? this.endYear,
        linkedDocumentIds: linkedDocumentIds ?? this.linkedDocumentIds,
        linkedTraitementIds: linkedTraitementIds ?? this.linkedTraitementIds,
      );
}
