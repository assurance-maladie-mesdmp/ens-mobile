/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/documents/domain/models/ens_document.dart';
import 'package:fr_cnamts_ens/documents/domain/models/ens_document_categorie.dart';
import 'package:fr_cnamts_ens/files/domain/models/ens_file_content.dart';

class EditingDocument extends Equatable {
  final String? id;
  final String? title;
  final DateTime? date;
  final EnsDocumentCategorie? categorie;
  final List<KindOfConfidentiality>? confidentialites;
  final bool updatableTitle;
  final bool updatableCreationDate;
  final bool updatableCategory;
  final bool isCovidCertificate;
  final EnsFileContent? content;
  final String? dossierId;
  final Proprietaire? proprietaire;

  const EditingDocument({
    this.updatableTitle = true,
    this.updatableCreationDate = true,
    this.updatableCategory = true,
    this.isCovidCertificate = false,
    this.id,
    this.title,
    this.date,
    this.categorie,
    this.confidentialites,
    this.content,
    this.dossierId,
    this.proprietaire,
  });

  EditingDocument.fromEnsDocument(EnsDocument document)
      : id = document.id,
        title = document.title,
        date = document.date,
        categorie = document.categorie,
        confidentialites = document.confidentialites,
        updatableTitle = document.updatableTitle,
        updatableCreationDate = document.updatableCreationDate,
        updatableCategory = document.updatableCategory,
        isCovidCertificate = document.isCovidCertificate,
        content = null,
        dossierId = document.dossierId,
        proprietaire = document.proprietaire;

  @override
  List<Object?> get props => [
        updatableTitle,
        updatableCreationDate,
        updatableCategory,
        isCovidCertificate,
        id,
        title,
        date,
        categorie,
        confidentialites,
        content,
        dossierId,
        proprietaire,
      ];
}
