/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:built_collection/built_collection.dart';
import 'package:equatable/equatable.dart';
import 'package:ferry/ferry.dart';
import 'package:fr_cnamts_ens/common/data/request_result.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_maladies.fragment.data.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_maladies_add_maladie.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_maladies_delete_maladie.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_maladies_get_maladies.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_maladies_update_maladie.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart';
import 'package:fr_cnamts_ens/infra/redux/crashlytics_middlewares.dart';
import 'package:fr_cnamts_ens/link/domaine/links_interactor.dart';
import 'package:fr_cnamts_ens/profil_medical/maladies/data/maladies_repository_mapper.dart';
import 'package:fr_cnamts_ens/profil_medical/maladies/domain/models/editing_maladie.dart';
import 'package:fr_cnamts_ens/profil_medical/maladies/domain/models/ens_maladie.dart';
import 'package:fr_cnamts_ens/profil_medical/traitement/domain/models/ens_traitement.dart';
import 'package:fr_cnamts_ens/utils/extensions/graphql_extensions.dart';

abstract class IMaladiesRepository {
  Future<RequestResult<GetMaladieResponse>> getMaladies(String patientId);

  Future<RequestResult<EditingMaladie>> addMaladie(String patientId, EditingMaladie editingMaladie);

  Future<RequestResult<EditingMaladie>> updateMaladie(
    String patientId,
    EditingMaladie editingMaladie,
    List<String> documentsToAdd,
    List<String> documentsToRemove,
    List<String> traitementsToAdd,
    List<String> traitementsToRemove,
  );

  Future<RequestResult<String>> deleteMaladie(String patientId, String id);
}

class GetMaladieResponse extends Equatable {
  final List<EnsMaladie> maladies;
  final DateTime? nonConcerneDepuis;
  final List<EnsTraitement> traitements;

  const GetMaladieResponse(this.maladies, this.nonConcerneDepuis, this.traitements);

  @override
  List<Object?> get props => [maladies, traitements, nonConcerneDepuis];
}

class MaladiesRepository extends IMaladiesRepository {
  final Client ferryClient;
  final ILinksInMemoryInteractor linksInMemoryInteractor;
  final Crashlytics crashlytics;

  MaladiesRepository(
    this.ferryClient,
    this.linksInMemoryInteractor,
    this.crashlytics,
  );

  @override
  Future<RequestResult<GetMaladieResponse>> getMaladies(String patientId) async {
    try {
      final query = Gget_maladiesReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.patientId = patientId,
      );

      final graphQLResponse = await ferryClient.request(query).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }

      final result = graphQLResponse.data?.diseases;

      if (result != null) {
        final responseData = MaladiesRepositoryMapper.toMaladieResponse(
          result.diseases,
          result.unconcernedDeclarationDate,
        );

        _updateLinks(result.diseases.toList());
        return RequestResultSuccess(responseData);
      } else {
        return RequestResultError.genericError();
      }
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }

  @override
  Future<RequestResult<EditingMaladie>> addMaladie(String patientId, EditingMaladie editingMaladie) async {
    try {
      final mutation = Gadd_maladieReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.disease.patientId = patientId
          ..vars.disease.name = editingMaladie.name
          ..vars.disease.comment = editingMaladie.comment
          ..vars.disease.startDay = editingMaladie.startDay
          ..vars.disease.startMonth = editingMaladie.startMonth
          ..vars.disease.startYear = editingMaladie.startYear
          ..vars.disease.endDay = editingMaladie.endDay
          ..vars.disease.endMonth = editingMaladie.endMonth
          ..vars.disease.endYear = editingMaladie.endYear
          ..vars.disease.linkedDocumentsId = ListBuilder(editingMaladie.linkedDocumentIds)
          ..vars.disease.linkedTreatmentsId = ListBuilder(editingMaladie.linkedTraitementIds),
      );

      final graphQLResponse = await ferryClient.request(mutation).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }

      final graphQLResult = graphQLResponse.data?.postDisease;
      if (graphQLResult != null && graphQLResult.success) {
        return RequestResultSuccess(editingMaladie);
      } else {
        return RequestResultError.genericError();
      }
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }

  @override
  Future<RequestResult<EditingMaladie>> updateMaladie(
    String patientId,
    EditingMaladie editingMaladie,
    List<String> documentsToAdd,
    List<String> documentsToRemove,
    List<String> traitementsToAdd,
    List<String> traitementsToRemove,
  ) async {
    try {
      final linkIdsOfDocumentToRemove = documentsToRemove
          .map((documentId) {
            return linksInMemoryInteractor.getDocumentToMaladieLinkId(editingMaladie.id!, documentId);
          })
          .nonNulls
          .toList();
      final removedTraitementLinkIds = traitementsToRemove
          .map((traitementId) {
            return linksInMemoryInteractor.getTraitementToMaladieLinkId(editingMaladie.id!, traitementId);
          })
          .nonNulls
          .toList();
      final deleteLinksInput = MaladiesRepositoryMapper.toDeleteLinkInputs(
        documentLinkIds: linkIdsOfDocumentToRemove,
        traitementLinkIds: removedTraitementLinkIds,
      );

      final diseaseUpdateInput = MaladiesRepositoryMapper.toDiseaseUpdateInput(patientId, editingMaladie);
      final diseaseUpdateInputBuilder = GDiseaseUpdateInputBuilder();
      diseaseUpdateInputBuilder.replace(diseaseUpdateInput);

      final linksInput =
          MaladiesRepositoryMapper.toLinkInputs(documentsToAdd, traitementsToAdd, patientId, editingMaladie.id!);

      final mutation = Gupdate_maladieReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.patientId = patientId
          ..vars.disease = diseaseUpdateInputBuilder
          ..vars.linksInput = ListBuilder(linksInput)
          ..vars.deleteLinksInput = ListBuilder(deleteLinksInput),
      );

      final graphQLResponse = await ferryClient.request(mutation).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }

      final graphQLResult = graphQLResponse.data?.putDisease;
      if (graphQLResult != null && graphQLResult.success) {
        return RequestResultSuccess(editingMaladie);
      } else {
        return RequestResultError.genericError();
      }
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }

  @override
  Future<RequestResult<String>> deleteMaladie(String patientId, String id) async {
    try {
      final mutation = Gdelete_maladieReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.patientId = patientId
          ..vars.id = id,
      );

      final graphQLResponse = await ferryClient.request(mutation).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }

      final graphQLResult = graphQLResponse.data?.deleteDisease;
      if (graphQLResult != null && graphQLResult.success) {
        return RequestResultSuccess(id);
      } else {
        return RequestResultError.genericError();
      }
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }

  void _updateLinks(List<Gmaladie> diseases) {
    for (final disease in diseases) {
      disease.linkedDocuments?.forEach((doc) {
        linksInMemoryInteractor.addDocumentToMaladieLink(disease.id, doc.document.id, doc.linkId);
      });
      disease.linkedTreatments?.forEach((linkedTraitement) {
        linksInMemoryInteractor.addTraitementToMaladieLink(
          maladieId: disease.id,
          traitementId: linkedTraitement.treatment.id,
          linkId: linkedTraitement.linkId,
        );
      });
    }
  }
}
