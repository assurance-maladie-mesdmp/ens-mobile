/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/documents/data/categorie_mapper.dart';
import 'package:fr_cnamts_ens/documents/data/confidentialite_mapper.dart';
import 'package:fr_cnamts_ens/documents/domain/models/ens_document.dart';
import 'package:fr_cnamts_ens/documents/domain/models/ens_dossier.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_document_dossier_fragment.data.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_documents.fragment.data.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart';
import 'package:fr_cnamts_ens/utils/ens_date_utils.dart';

class DocumentsRepositoryMapper {
  static List<EnsDocument> toEnsDocuments(List<GensDocument> documentModel) =>
      documentModel.map(toEnsDocument).toList();

  static EnsDocument toEnsDocument(GensDocument doc) {
    bool updatableCategory;
    bool updatableCreationDate;
    bool updatableTitle;

    updatableCategory = doc.canUpdateCategory;
    updatableCreationDate = doc.canUpdateCreatedAt;
    updatableTitle = doc.canUpdateTitle;

    return EnsDocument(
      id: doc.id,
      title: doc.title,
      date: DateTime.parse(doc.createdAt),
      proprietaire: Proprietaire(
        id: doc.uploadedBy.id,
        firstName: doc.uploadedBy.firstName,
        lastName: doc.uploadedBy.lastName,
        ownerType: toDocumentOwnerType(doc.uploadedBy.sourceAuthor, doc.uploadedBy.lastName),
        isPsClickable: doc.uploadedBy.isPsClickable,
      ),
      categorie: CategorieMapper.fromGraphQl(doc.category),
      confidentialites:
          doc.confidentialities.map((confidentialite) => ConfidentialiteMapper.fromGraphQl(confidentialite)).toList(),
      deletable: doc.canOwnerDelete && !doc.covidCertificate,
      isCovidCertificate: doc.covidCertificate,
      updatableCategory: updatableCategory,
      updatableCreationDate: updatableCreationDate,
      updatableTitle: updatableTitle,
      reportDate: (doc.reportDate == null || doc.reportDate!.isEmpty) ? null : DateTime.parse(doc.reportDate!),
      dossierId: doc.folder?.id,
      isEpingle: doc.pinned ?? false,
      type: doc.type == 'PRESCRIPTION_ARRET_DE_TRAVAIL' ? EnsDocumentType.AVIS_ARRET_DE_TRAVAIL : EnsDocumentType.AUTRE,
    );
  }

  static DocumentSpecialOwnerType? toDocumentOwnerType(GSourceAuthor sourceAuthor, String? lastName) {
    switch (sourceAuthor) {
      case GSourceAuthor.ORGANISATION:
        return DocumentSpecialOwnerType.ES;
      case GSourceAuthor.DISPOSITIF:
        if (lastName?.toLowerCase() == 'assurance maladie') {
          return DocumentSpecialOwnerType.ASSURANCE_MALADIE;
        } else if (lastName?.toLowerCase() == 'mon espace santé') {
          return DocumentSpecialOwnerType.MON_ESPACE_SANTE;
        }
        return DocumentSpecialOwnerType.ES;
      case GSourceAuthor.PRACTITIONER:
        return DocumentSpecialOwnerType.PS;
      default:
        return null;
    }
  }

  static EnsDossier toEnsDossier(Gdossier folder) => EnsDossier(id: folder.id, name: folder.title);

  static GDocumentInput toDocumentInput(
    String patientId,
    DocumentEditionCreation docEdition,
  ) {
    return GDocumentInput(
      (updates) => updates
        ..patientId = patientId
        ..uploadedBy = patientId
        ..author = patientId
        ..title = docEdition.name
        ..category = CategorieMapper.toGraphQl(docEdition.category)
        ..confidentialities = ConfidentialiteMapper.buildConfidentialities(docEdition.confidentialites)
        ..createdAt = EnsDateUtils.formatYYYYMMDD(docEdition.documentDate)
        ..uploadedAt = EnsDateUtils.formatYYYYMMDDHHmmssSSS(docEdition.uploadDate)
        ..mimeType = docEdition.ensFileContent.mimeType
        ..attachment = docEdition.ensFileContent.base64Content
        ..folderId = docEdition.dossierId,
    );
  }

  static GDocumentUpdateInput toDocumentUpdateInput(String patientId, DocumentEditionUpdateData docInput) {
    return GDocumentUpdateInput(
      (updates) => updates
        ..id = docInput.id
        ..patientId = patientId
        ..uploadedBy = patientId
        ..author = patientId
        ..title = docInput.name
        ..category = CategorieMapper.toGraphQl(docInput.category)
        ..confidentialities = ConfidentialiteMapper.buildConfidentialities(docInput.confidentialites)
        ..createdAt = EnsDateUtils.formatYYYYMMDD(docInput.documentDate)
        ..uploadedAt = EnsDateUtils.formatYYYYMMDDHHmmssSSS(docInput.uploadDate)
        ..mimeType = docInput.ensFileContent.mimeType
        ..attachment = docInput.ensFileContent.base64Content,
    );
  }

  static GDocumentPropertiesUpdateInput toDocumentPropertiesUpdateInput(
    String patientId,
    DocumentEditionPropertiesUpdate docEdition,
  ) {
    return GDocumentPropertiesUpdateInput(
      (updates) => updates
        ..id = docEdition.id
        ..patientId = patientId
        ..title = docEdition.name
        ..category = CategorieMapper.toGraphQl(docEdition.category)
        ..createdAt = EnsDateUtils.formatYYYYMMDD(docEdition.documentDate)
        ..uploadedAt = EnsDateUtils.formatYYYYMMDDHHmmssSSS(docEdition.uploadDate)
        ..folderId = docEdition.dossierId
        ..confidentialities = ConfidentialiteMapper.buildConfidentialities(docEdition.confidentialites),
    );
  }

  static GDocumentUpdateConfidentialityInput toDocumentUpdateConfidentialityInput(
    String patientId,
    DocumentEditionPropertiesUpdate docEdition,
  ) {
    return GDocumentUpdateConfidentialityInput(
      (updates) => updates
        ..id = docEdition.id
        ..patientId = patientId
        ..confidentialities = ConfidentialiteMapper.buildConfidentialities(docEdition.confidentialites),
    );
  }

  static List<GDocumentPatchInput> buildGDocumentPatchInputs(List<String> documentsId, String? documentFolderId) =>
      documentsId
          .map(
            (id) => GDocumentPatchInput(
              (input) => input
                ..id = id
                ..folderId = documentFolderId ?? 'ROOT',
            ),
          )
          .toList();
}
