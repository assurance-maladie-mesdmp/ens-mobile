/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/profil_medical/domain/models/ens_duration.dart';
import 'package:fr_cnamts_ens/profil_medical/hospitalisations/domain/models/ens_hospitalisation.dart';

class EditingHospitalisation {
  String? id;
  String? name;
  String? comment;
  String? startDay;
  String? startMonth;
  String? startYear;
  int? duration;
  EnsHospitalisationDurationUnit? durationUnit;
  List<String> linkedDocumentsIds;

  EditingHospitalisation({
    this.id,
    this.name,
    this.comment,
    this.startDay,
    this.startMonth,
    this.startYear,
    this.duration,
    this.durationUnit,
    this.linkedDocumentsIds = const [],
  });

  EditingHospitalisation.fromEnsHospitalisation(EnsHospitalisation hospitalisation)
      : id = hospitalisation.id,
        name = hospitalisation.name,
        comment = hospitalisation.comment,
        startDay = hospitalisation.startDate.day,
        startMonth = hospitalisation.startDate.month,
        startYear = hospitalisation.startDate.year,
        duration = hospitalisation.duration.duration,
        durationUnit = hospitalisation.duration.unit,
        linkedDocumentsIds = hospitalisation.linkedDocumentsIds;

  EditingHospitalisation clone({
    String? id,
    String? name,
    String? comment,
    String? startDay,
    String? startMonth,
    String? startYear,
    int? duration,
    EnsHospitalisationDurationUnit? durationUnit,
    List<String>? linkedDocumentsIds,
  }) =>
      EditingHospitalisation(
        id: id ?? this.id,
        name: name ?? this.name,
        comment: comment ?? this.comment,
        startDay: startDay ?? this.startDay,
        startMonth: startMonth ?? this.startMonth,
        startYear: startYear ?? this.startYear,
        duration: duration ?? this.duration,
        durationUnit: durationUnit ?? this.durationUnit,
        linkedDocumentsIds: linkedDocumentsIds ?? this.linkedDocumentsIds,
      );
}
