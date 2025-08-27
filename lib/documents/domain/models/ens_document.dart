/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/documents/domain/models/ens_document_categorie.dart';
import 'package:fr_cnamts_ens/files/domain/models/ens_file_content.dart';
import 'package:optional/optional.dart';

class EnsDocument extends Equatable implements Comparable<EnsDocument> {
  final String id;
  final String title;
  final DateTime date;
  final Proprietaire proprietaire;
  final EnsDocumentCategorie categorie;
  final List<KindOfConfidentiality> confidentialites;
  final bool deletable;
  final bool isEpingle;
  final bool isCovidCertificate;
  final bool updatableCategory;
  final bool updatableTitle;
  final bool updatableCreationDate;
  final String? dossierId;
  final DateTime? reportDate;
  final EnsDocumentType type;

  const EnsDocument({
    required this.id,
    required this.title,
    required this.date,
    required this.proprietaire,
    required this.categorie,
    required this.confidentialites,
    required this.deletable,
    required this.isCovidCertificate,
    required this.updatableCategory,
    required this.updatableTitle,
    required this.updatableCreationDate,
    required this.reportDate,
    required this.isEpingle,
    this.dossierId,
    this.type = EnsDocumentType.AUTRE,
  });

  EnsDocument withProprietaire(Proprietaire proprietaire) => EnsDocument(
        id: id,
        title: title,
        date: date,
        proprietaire: proprietaire,
        categorie: categorie,
        confidentialites: confidentialites,
        deletable: deletable,
        isCovidCertificate: isCovidCertificate,
        updatableCategory: updatableCategory,
        updatableTitle: updatableTitle,
        updatableCreationDate: updatableCreationDate,
        reportDate: reportDate,
        dossierId: dossierId,
        isEpingle: isEpingle,
        type: type,
      );

  EnsDocument withDossier(String? dossierId) => EnsDocument(
        id: id,
        title: title,
        date: date,
        proprietaire: proprietaire,
        categorie: categorie,
        confidentialites: confidentialites,
        deletable: deletable,
        isCovidCertificate: isCovidCertificate,
        updatableCategory: updatableCategory,
        updatableTitle: updatableTitle,
        updatableCreationDate: updatableCreationDate,
        reportDate: reportDate,
        dossierId: dossierId,
        isEpingle: isEpingle,
        type: type,
      );

  EnsDocument withConfidentiality(List<KindOfConfidentiality> confidentialites) => EnsDocument(
        id: id,
        title: title,
        date: date,
        proprietaire: proprietaire,
        categorie: categorie,
        confidentialites: confidentialites,
        deletable: deletable,
        isCovidCertificate: isCovidCertificate,
        updatableCategory: updatableCategory,
        updatableTitle: updatableTitle,
        updatableCreationDate: updatableCreationDate,
        reportDate: reportDate,
        dossierId: dossierId,
        isEpingle: isEpingle,
        type: type,
      );

  EnsDocument clone({
    String? id,
    String? title,
    DateTime? date,
    Proprietaire? proprietaire,
    EnsDocumentCategorie? categorie,
    List<KindOfConfidentiality>? confidentialites,
    bool? deletable,
    bool? isCovidCertificate,
    bool? updatableCategory,
    bool? updatableTitle,
    bool? updatableCreationDate,
    Optional<DateTime>? reportDateOptional,
    Optional<String>? dossierIdOptional,
    bool? isEpingle,
    EnsDocumentType? type,
  }) =>
      EnsDocument(
        id: id ?? this.id,
        title: title ?? this.title,
        date: date ?? this.date,
        proprietaire: proprietaire ?? this.proprietaire,
        categorie: categorie ?? this.categorie,
        confidentialites: confidentialites ?? this.confidentialites,
        deletable: deletable ?? this.deletable,
        isCovidCertificate: isCovidCertificate ?? this.isCovidCertificate,
        updatableCategory: updatableCategory ?? this.updatableCategory,
        updatableTitle: updatableTitle ?? this.updatableTitle,
        updatableCreationDate: updatableCreationDate ?? this.updatableCreationDate,
        reportDate: reportDateOptional != null ? reportDateOptional.orElseNullable(reportDate) : reportDate,
        dossierId: dossierIdOptional != null ? dossierIdOptional.orElseNullable(dossierId) : dossierId,
        isEpingle: isEpingle ?? this.isEpingle,
        type: type ?? this.type,
      );

  bool get updatable =>
      (updatableCategory || updatableTitle || updatableCreationDate) && categorie.isNotQuestionnaire();

  static int compareDocumentsDateFreshestFirst(EnsDocument documentA, EnsDocument documentB) =>
      -documentA.date.compareTo(documentB.date);

  @override
  List<Object?> get props => [
        id,
        title,
        date,
        proprietaire,
        categorie,
        confidentialites,
        deletable,
        isCovidCertificate,
        updatableCategory,
        updatableTitle,
        updatableCreationDate,
        reportDate,
        dossierId,
        isEpingle,
        type,
      ];

  // Used to sort documents in a list by anti-chronological order (newest docs at the beginning)
  @override
  int compareTo(EnsDocument other) => -date.compareTo(other.date);
}

abstract class DocumentEdition extends Equatable {
  final String name;
  final DateTime documentDate;
  final EnsDocumentCategorie category;
  final List<KindOfConfidentiality> confidentialites;
  final DateTime uploadDate;
  final String? dossierId;
  final DateTime? reportDate;

  const DocumentEdition({
    required this.name,
    required this.documentDate,
    required this.category,
    required this.confidentialites,
    required this.uploadDate,
    this.dossierId,
    this.reportDate,
  });

  @override
  List<Object?> get props => [name, documentDate, category, confidentialites, uploadDate, dossierId, reportDate];
}

class DocumentEditionCreation extends DocumentEdition {
  final EnsFileContent ensFileContent;

  const DocumentEditionCreation({
    required this.ensFileContent,
    required super.name,
    required super.documentDate,
    required super.category,
    required super.confidentialites,
    required super.uploadDate,
    super.dossierId,
  });

  @override
  List<Object?> get props => [...super.props, ensFileContent];
}

class DocumentEditionUpdateData extends DocumentEdition {
  final String id;
  final EnsFileContent ensFileContent;

  const DocumentEditionUpdateData({
    required this.ensFileContent,
    required this.id,
    required super.name,
    required super.documentDate,
    required super.category,
    required super.confidentialites,
    required super.uploadDate,
    super.dossierId,
  });

  @override
  List<Object?> get props => [...super.props, id, ensFileContent];
}

class DocumentEditionPropertiesUpdate extends DocumentEdition {
  final String id;

  const DocumentEditionPropertiesUpdate({
    required this.id,
    required super.name,
    required super.documentDate,
    required super.category,
    required super.confidentialites,
    required super.uploadDate,
    super.dossierId,
  });

  @override
  List<Object?> get props => [...super.props, id];
}

enum KindOfConfidentiality {
  PATIENT_AND_PS,
  PATIENT_ONLY,
  INVISIBLE_REPRESENTANTS_LEGAUX,
  UNKNOWN;

  bool get isShared {
    return this == KindOfConfidentiality.PATIENT_AND_PS;
  }
}

sealed class DocInitResult {
  const DocInitResult._internal();

  factory DocInitResult.success() = DocInitSuccess._internal;

  factory DocInitResult.error(String message) = DocInitError._internal;
}

class DocInitSuccess extends DocInitResult {
  const DocInitSuccess._internal() : super._internal();
}

class DocInitError extends DocInitResult {
  final String message;

  const DocInitError._internal(this.message) : super._internal();
}

sealed class DocEditionResult {
  const DocEditionResult._internal();

  factory DocEditionResult.creationSuccess() = DocCreationSuccess._internal;

  factory DocEditionResult.modificationSuccess() = DocModificationSuccess._internal;

  factory DocEditionResult.error(String message) = DocEditionError._internal;
}

class DocCreationSuccess extends DocEditionResult {
  const DocCreationSuccess._internal() : super._internal();
}

class DocModificationSuccess extends DocEditionResult {
  const DocModificationSuccess._internal() : super._internal();
}

class DocEditionError extends DocEditionResult {
  final String message;

  const DocEditionError._internal(this.message) : super._internal();
}

class Proprietaire extends Equatable {
  final String id;
  final String? firstName;
  final String? lastName;
  final DocumentSpecialOwnerType? ownerType;
  final bool isPsClickable;

  String get fullName {
    return '$firstName $lastName'.trim();
  }

  const Proprietaire({
    required this.id,
    required this.firstName,
    required this.isPsClickable,
    this.lastName,
    this.ownerType,
  });

  @override
  List<Object?> get props => [
        id,
        firstName,
        lastName,
        ownerType,
        isPsClickable,
      ];
}

enum DocumentSpecialOwnerType { PS, ES, ASSURANCE_MALADIE, MON_ESPACE_SANTE }

enum EnsDocumentType { AVIS_ARRET_DE_TRAVAIL, AUTRE }
