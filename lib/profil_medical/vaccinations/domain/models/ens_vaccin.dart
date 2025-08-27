/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/utils/ens_date_utils.dart';

class EnsVaccin with EquatableMixin implements Comparable<EnsVaccin> {
  final String vaccineRefId;
  final List<String> cipCodes;
  final String label;
  final String pathologies;
  final DateTime? marketingStart;
  final DateTime? marketingEnd;

  EnsVaccin({
    required this.vaccineRefId,
    required this.cipCodes,
    required this.label,
    required this.pathologies,
    this.marketingStart,
    this.marketingEnd,
  });

  @override
  List<Object?> get props => [vaccineRefId, cipCodes, label, pathologies, marketingStart, marketingEnd];

  @override
  int compareTo(EnsVaccin other) {
    if (marketingEnd == null && other.marketingEnd == null) {
      if (marketingStart == null && other.marketingStart == null) return label.compareTo(other.label);
      if (marketingStart == null) return 1;
      if (other.marketingStart == null) return -1;
      if (marketingStart == other.marketingStart) return label.compareTo(other.label);
      return EnsDateUtils.compareToNullable(other.marketingStart, marketingStart);
    }
    if (marketingEnd == null) {
      if (marketingStart == null) {
        return 1;
      }
      return -1;
    }
    if (other.marketingEnd == null) {
      if (other.marketingStart == null) {
        return -1;
      }
      return 1;
    }

    final resultOfEndDateComparison = EnsDateUtils.compareToNullable(other.marketingEnd, marketingEnd);
    if (resultOfEndDateComparison != 0) return resultOfEndDateComparison;

    final resultOfStartDateComparison = EnsDateUtils.compareToNullable(other.marketingStart, marketingStart);
    if (resultOfStartDateComparison != 0) return resultOfStartDateComparison;

    return label.compareTo(other.label);
  }
}
