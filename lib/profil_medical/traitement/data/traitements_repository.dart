/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:ferry/ferry.dart';
import 'package:fr_cnamts_ens/common/data/request_result.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_traitement_add_traitement.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_traitement_delete_traitement.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_traitement_get_nom_par_code_cip.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_traitement_get_traitements.query.data.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_traitement_get_traitements.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_traitement_update_traitement.query.req.gql.dart';
import 'package:fr_cnamts_ens/infra/redux/crashlytics_middlewares.dart';
import 'package:fr_cnamts_ens/link/domaine/links_interactor.dart';
import 'package:fr_cnamts_ens/profil_medical/allergies/domain/models/ens_allergie.dart';
import 'package:fr_cnamts_ens/profil_medical/maladies/domain/models/ens_maladie.dart';
import 'package:fr_cnamts_ens/profil_medical/traitement/data/traitements_repository_mapper.dart';
import 'package:fr_cnamts_ens/profil_medical/traitement/domain/models/editing_traitement.dart';
import 'package:fr_cnamts_ens/profil_medical/traitement/domain/models/ens_traitements.dart';
import 'package:fr_cnamts_ens/profil_medical/traitement/domain/models/traitement_temporaire.dart';
import 'package:fr_cnamts_ens/utils/extensions/graphql_extensions.dart';

class GetTraitementResponse extends Equatable {
  final EnsTraitements traitements;
  final Map<String, EnsMaladie> maladies;
  final Map<String, EnsAllergie> allergies;

  const GetTraitementResponse(this.traitements, this.maladies, this.allergies);

  @override
  List<Object?> get props => [traitements, maladies, allergies];
}

abstract class ITraitementsRepository {
  Future<RequestResult<GetTraitementResponse>> getTraitements(String patientId);

  Future<RequestResult<String>> addTraitement(String patientId, TraitementTemporaire traitementTemporaire);

  Future<RequestResult<List<String>>> addTraitements(
    String patientId,
    List<TraitementTemporaire> editingTraitementList,
  );

  Future<RequestResult<EditingTraitement>> updateTraitement(String patientId, EditingTraitement editingTraitement);

  Future<RequestResult<String>> deleteTraitement(String patientId, String id);

  Future<RequestResult<String>> getNomTraitementByCodeCip(String codeCip);
}

class TraitementsRepository extends ITraitementsRepository {
  final Client ferryClient;
  final ILinksInMemoryInteractor linksInMemoryInteractor;
  final Crashlytics crashlytics;

  TraitementsRepository(
    this.ferryClient,
    this.linksInMemoryInteractor,
    this.crashlytics,
  );

  @override
  Future<RequestResult<GetTraitementResponse>> getTraitements(String patientId) async {
    try {
      final query = Gget_traitementsReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.patientId = patientId,
      );

      final graphQLResponse = await ferryClient.request(query).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }

      final result = graphQLResponse.data?.treatments;
      if (result != null) {
        final ensTraitements = TraitementsRepositoryMapper.toTraitementResponse(
          result.treatments,
          result.unconcernedDeclarationDate,
        );
        _updateTraitementsLinks(result);
        return RequestResultSuccess(ensTraitements);
      } else {
        return RequestResultError.genericError();
      }
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }

  @override
  Future<RequestResult<String>> addTraitement(String patientId, TraitementTemporaire traitementTemporaire) async {
    try {
      final mutation = Gadd_traitementReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.treatment = TraitementsRepositoryMapper.buildTraitementInput(patientId, traitementTemporaire),
      );

      final graphQLResponse = await ferryClient.request(mutation).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }

      final graphQLResult = graphQLResponse.data?.postTreatment;
      final newTraitementId = graphQLResult?.id;
      if (newTraitementId != null) {
        return RequestResultSuccess(newTraitementId);
      } else {
        return RequestResultError.genericError();
      }
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }

  @override
  Future<RequestResult<List<String>>> addTraitements(
    String patientId,
    List<TraitementTemporaire> traitementTemporaireList,
  ) async {
    final List<String> resultList = [];
    for (final traitement in traitementTemporaireList) {
      final addTraitementResult = await addTraitement(patientId, traitement);
      addTraitementResult.onSuccess((successResult) {
        resultList.add(successResult);
      });
    }

    if (resultList.length == traitementTemporaireList.length) {
      return RequestResultSuccess(resultList);
    } else {
      return RequestResultError.genericError();
    }
  }

  @override
  Future<RequestResult<EditingTraitement>> updateTraitement(
    String patientId,
    EditingTraitement editingTraitement,
  ) async {
    try {
      final mutation = Gupdate_traitementReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.treatment = TraitementsRepositoryMapper.buildTraitementUpdateInput(patientId, editingTraitement),
      );

      final graphQLResponse = await ferryClient.request(mutation).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }

      final graphQLResult = graphQLResponse.data?.putTreatment;
      if (graphQLResult != null && graphQLResult.success) {
        return RequestResultSuccess(editingTraitement);
      } else {
        return RequestResultError.genericError();
      }
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }

  @override
  Future<RequestResult<String>> deleteTraitement(String patientId, String id) async {
    try {
      final mutation = Gdelete_traitementReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.patientId = patientId
          ..vars.id = id,
      );

      final graphQLResponse = await ferryClient.request(mutation).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }

      final graphQLResult = graphQLResponse.data?.deleteTreatment;
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

  void _updateTraitementsLinks(Gget_traitementsData_treatments traitements) {
    for (final traitement in traitements.treatments) {
      traitement.linkedDiseases?.forEach((linkMaladie) {
        linksInMemoryInteractor.addTraitementToMaladieLink(
          maladieId: linkMaladie.disease.id,
          traitementId: traitement.id,
          linkId: linkMaladie.linkId,
        );
      });
      traitement.linkedAllergies?.forEach((linkAllergie) {
        linksInMemoryInteractor.addTraitementToAllergiesLink(
          allergieId: linkAllergie.allergy.id,
          traitementId: traitement.id,
          linkId: linkAllergie.linkId,
        );
      });
    }
  }

  @override
  Future<RequestResult<String>> getNomTraitementByCodeCip(String codeCip) async {
    try {
      final query = Gget_nom_par_code_cipReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.code_cip = codeCip,
      );

      final graphQLResponse = await ferryClient.request(query).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }

      final result = graphQLResponse.data?.getByCip;
      if (result != null) {
        return RequestResultSuccess(result.name);
      } else {
        return RequestResultError.genericError();
      }
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }
}
