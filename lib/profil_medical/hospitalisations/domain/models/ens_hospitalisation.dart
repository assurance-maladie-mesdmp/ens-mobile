/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/profil_medical/domain/models/ens_date.dart';
import 'package:fr_cnamts_ens/profil_medical/domain/models/ens_duration.dart';

class EnsHospitalisation extends Equatable {
  final String id;
  final String name;
  final String? comment;
  final EnsDate startDate;
  final EnsHospitalisationDuration duration;
  final List<String> linkedDocumentsIds;

  const EnsHospitalisation({
    required this.id,
    required this.name,
    this.comment,
    required this.startDate,
    required this.duration,
    required this.linkedDocumentsIds,
  });

  @override
  List<Object?> get props => [id, name, comment, startDate, duration, linkedDocumentsIds];
}
