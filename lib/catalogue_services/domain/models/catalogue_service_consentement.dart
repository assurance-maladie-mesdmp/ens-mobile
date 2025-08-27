/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';

class CatalogueServiceConsentement extends Equatable {
  final String title;
  final String purpose;
  final String purposeCode;
  final bool accepted;
  final List<ServiceConsentementDetail> details;

  const CatalogueServiceConsentement({
    required this.title,
    required this.purpose,
    required this.purposeCode,
    required this.accepted,
    required this.details,
  });

  @override
  List<Object?> get props => [title, purpose, purposeCode, accepted, details];
}

class ServiceConsentementDetail extends Equatable {
  final String libelle;
  final bool isWrite;
  final List<ServiceConsentementDetailItem> items;

  const ServiceConsentementDetail(this.libelle, [this.items = const [], this.isWrite = true]);

  @override
  List<Object?> get props => [libelle, isWrite, items];
}

class ServiceConsentementDetailItem extends Equatable {
  final String title;
  final String description;

  const ServiceConsentementDetailItem(this.title, this.description);

  @override
  List<Object?> get props => [title, description];
}
