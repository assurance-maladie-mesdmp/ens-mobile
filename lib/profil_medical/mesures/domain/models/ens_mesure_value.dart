/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/domain/models/ens_mesure_type.dart';
import 'package:intl/intl.dart';

class EnsMesureValue extends Equatable {
  final String id;
  final String formattedMetricValue;
  final DateTime effectiveDate;
  final String unit;
  final EnsMesureValuePermissions permissions;
  final List<EnsMesureHistoryComment> comments;
  final List<EnsMesureHistoryMetric> metrics;
  final String? courbeReferenceText;
  final EnsMesureDocumentInfo? linkDocumentInfo;
  final EnsMesureAuteur? auteur;

  const EnsMesureValue({
    required this.id,
    required this.effectiveDate,
    required this.formattedMetricValue,
    required this.unit,
    required this.permissions,
    this.comments = const [],
    this.metrics = const [],
    this.courbeReferenceText,
    this.linkDocumentInfo,
    this.auteur,
  });

  @override
  List<Object?> get props => [
        id,
        effectiveDate,
        comments,
        metrics,
        formattedMetricValue,
        unit,
        permissions,
        courbeReferenceText,
        linkDocumentInfo,
        auteur,
      ];
}

class EnsMesureHistoryComment extends Equatable {
  final String type;
  final String value;
  final String? optionCode;
  final String? extraValue;

  const EnsMesureHistoryComment({this.optionCode, required this.type, required this.value, this.extraValue});

  @override
  List<Object?> get props => [type, value, optionCode, extraValue];
}

class EnsMesureHistoryMetric extends Equatable {
  static final _numberFormat = NumberFormat('##0.###');

  final EnsMesureType type;
  final double value;
  final String unit;

  // malheureusement, le format du champ `format` de l'api n'est pas compatible avec NumberFormat()
  String get formattedValue => _numberFormat.format(value);

  const EnsMesureHistoryMetric({required this.unit, required this.type, required this.value});

  @override
  List<Object?> get props => [type, value, unit];
}

class EnsMesureValuePermissions extends Equatable {
  final bool canBeModified;
  final bool canBeDeleted;

  const EnsMesureValuePermissions({required this.canBeModified, required this.canBeDeleted});

  const EnsMesureValuePermissions.all()
      : canBeModified = true,
        canBeDeleted = true;

  @override
  List<Object?> get props => [canBeModified, canBeDeleted];
}

class EnsMesureDocumentInfo extends Equatable {
  final String documentName;
  final String documentId;

  const EnsMesureDocumentInfo({required this.documentName, required this.documentId});

  @override
  List<Object?> get props => [documentName, documentId];
}

class EnsMesureAuteur extends Equatable {
  final String firstName;
  final String lastName;

  const EnsMesureAuteur(this.firstName, this.lastName);

  @override
  List<Object?> get props => [firstName, lastName];
}
