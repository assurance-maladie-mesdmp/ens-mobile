/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';

class ProfessionnelSanteConfidentialities extends Equatable {
  final List<ProfessionnelSanteConfidentiality> confidentilities;
  final bool shouldShowCasUrgence;

  const ProfessionnelSanteConfidentialities({
    required this.confidentilities,
    required this.shouldShowCasUrgence,
  });

  @override
  List<Object?> get props => [confidentilities, shouldShowCasUrgence];
}

class ProfessionnelSanteConfidentiality extends Equatable {
  final String consentId;
  final String psIdNat;
  final ProfessionnelSanteConfidentialityStatus status;
  final DateTime startDate;

  const ProfessionnelSanteConfidentiality({
    required this.consentId,
    required this.psIdNat,
    required this.status,
    required this.startDate,
  });

  @override
  List<Object?> get props => [consentId, psIdNat, status, startDate];
}

enum ProfessionnelSanteConfidentialityStatus { CONSENT, BLOCKED }
