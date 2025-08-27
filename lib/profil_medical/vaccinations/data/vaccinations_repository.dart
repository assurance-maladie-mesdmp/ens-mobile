/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:ferry/ferry.dart';
import 'package:fr_cnamts_ens/common/data/request_result.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_vaccination_add_vaccination.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_vaccination_delete_vaccination.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_vaccination_get_vaccin_by_cip.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_vaccination_get_vaccinations.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_vaccination_get_vaccins.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_vaccination_update_vaccination.query.req.gql.dart';
import 'package:fr_cnamts_ens/infra/data/http/json_data_source.dart';
import 'package:fr_cnamts_ens/infra/data/json_repository_mapper.dart';
import 'package:fr_cnamts_ens/infra/redux/crashlytics_middlewares.dart';
import 'package:fr_cnamts_ens/profil_medical/vaccinations/data/vaccinations_repository_mapper.dart';
import 'package:fr_cnamts_ens/profil_medical/vaccinations/domain/models/carte_vaccinations.dart';
import 'package:fr_cnamts_ens/profil_medical/vaccinations/domain/models/editing_vaccination.dart';
import 'package:fr_cnamts_ens/profil_medical/vaccinations/domain/models/ens_vaccin.dart';
import 'package:fr_cnamts_ens/profil_medical/vaccinations/domain/models/ens_vaccination.dart';
import 'package:fr_cnamts_ens/profil_medical/vaccinations/domain/vaccinations_domain_error.dart';
import 'package:fr_cnamts_ens/utils/extensions/graphql_extensions.dart';

abstract class IVaccinationsRepository {
  Future<RequestResult<List<EnsVaccination>>> getVaccinations(String patientId);

  Future<RequestResult<EditingVaccination>> addVaccination(String patientId, EditingVaccination editingVaccination);

  Future<RequestResult<EditingVaccination>> updateVaccination(String patientId, EditingVaccination editingVaccination);

  Future<RequestResult<String>> deleteVaccination(String patientId, String id);

  Future<RequestResult<List<EnsVaccin>>> getVaccins();

  Future<RequestResult<EnsVaccin>> getVaccinByCodeCip(String codeCip);

  Future<RequestResult<CarteVaccinations>> getCarteVaccinations();
}

class VaccinationsRepository extends IVaccinationsRepository {
  final JsonDataSource dataSource;
  final String cmsUrl;
  final Client ferryClient;
  final Crashlytics crashlytics;

  VaccinationsRepository(
    this.dataSource,
    this.cmsUrl,
    this.ferryClient,
    this.crashlytics,
  );

  @override
  Future<RequestResult<List<EnsVaccination>>> getVaccinations(String patientId) async {
    final query = Gget_vaccinationsReq(
      (builder) => builder
        ..fetchPolicy = FetchPolicy.NetworkOnly
        ..vars.patientId = patientId,
    );
    try {
      final graphQLResponse = await ferryClient.request(query).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        final exception = graphQLResponse.linkException as ServerException?;
        if (exception?.statusCode == 404) {
          return RequestResultSuccess(const []);
        }
        return RequestResultError.genericError();
      }

      final result = graphQLResponse.data?.vaccines;
      if (result != null) {
        final vaccinations = result.vaccines
            .map(
              (vaccine) => EnsVaccination(
                id: vaccine.vaccineId,
                effectiveTime: DateTime.parse(vaccine.effectiveTime),
                name: vaccine.name,
                lotNumber: vaccine.lotNumber,
                typeOfAdministration:
                    VaccinationsRepositoryMapper.mapGqlVaccineTypeOfAdministration(vaccine.typeOfAdministration),
                nomVaccinateur: vaccine.performer,
                author: vaccine.author,
                comment: vaccine.comment,
                pathologies: vaccine.pathologies,
                recommandation: vaccine.mandatory == true
                    ? VaccinationNiveauRecommandation.OBLIGATOIRE
                    : VaccinationNiveauRecommandation.RECOMMANDE,
                authoredByPatient: vaccine.authoredByPatient,
                refId: vaccine.vaccineRefId,
              ),
            )
            .toList();
        return RequestResultSuccess(vaccinations);
      } else {
        return RequestResultError.genericError();
      }
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }

  @override
  Future<RequestResult<EditingVaccination>> addVaccination(
    String patientId,
    EditingVaccination editingVaccination,
  ) async {
    final mutation = Gadd_vaccinationReq(
      (builder) => builder
        ..fetchPolicy = FetchPolicy.NetworkOnly
        ..vars.vaccine = VaccinationsRepositoryMapper.buildVaccinationInput(patientId, editingVaccination),
    );

    try {
      final graphQLResponse = await ferryClient.request(mutation).first;

      if (graphQLResponse.checkGenericError(crashlytics)) {
        final graphqlErrorMesaage = graphQLResponse.graphqlErrors?.first.message;
        return RequestResultError(
          domainError: VaccinationDomainError.getErrorDomainFromGraphQLError(graphqlErrorMesaage),
        );
      }

      final graphQLResult = graphQLResponse.data?.postVaccine;
      if (graphQLResult != null) {
        return RequestResultSuccess(editingVaccination);
      } else {
        return RequestResultError.genericError();
      }
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }

  @override
  Future<RequestResult<EditingVaccination>> updateVaccination(
    String patientId,
    EditingVaccination editingVaccination,
  ) async {
    final mutation = Gupdate_vaccinationReq(
      (builder) => builder
        ..fetchPolicy = FetchPolicy.NetworkOnly
        ..vars.vaccine = VaccinationsRepositoryMapper.buildVaccinationUpdateInput(patientId, editingVaccination),
    );

    try {
      final graphQLResponse = await ferryClient.request(mutation).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        final graphqlErrorMesaage = graphQLResponse.graphqlErrors?.first.message;
        return RequestResultError(
          domainError: VaccinationDomainError.getErrorDomainFromGraphQLError(graphqlErrorMesaage),
        );
      }

      final graphQLResult = graphQLResponse.data?.putVaccine;
      if (graphQLResult != null) {
        return RequestResultSuccess(editingVaccination);
      } else {
        return RequestResultError.genericError();
      }
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }

  @override
  Future<RequestResult<String>> deleteVaccination(String patientId, String id) async {
    final mutation = Gdelete_vaccinationReq(
      (builder) => builder
        ..fetchPolicy = FetchPolicy.NetworkOnly
        ..vars.patientId = patientId
        ..vars.id = id,
    );

    try {
      final graphQLResponse = await ferryClient.request(mutation).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }

      final graphQLResult = graphQLResponse.data?.deleteVaccine;
      if (graphQLResult != null) {
        return RequestResultSuccess(id);
      } else {
        return RequestResultError.genericError();
      }
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }

  @override
  Future<RequestResult<List<EnsVaccin>>> getVaccins() async {
    final query = Gget_vaccinsReq((builder) => builder..fetchPolicy = FetchPolicy.NetworkOnly);
    try {
      final graphQLResponse = await ferryClient.request(query).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }

      final result = graphQLResponse.data?.vaccinesRef;
      if (result != null) {
        final vaccins = result
            .map(
              (vaccineRef) => EnsVaccin(
                vaccineRefId: vaccineRef.vaccineRefId,
                cipCodes: vaccineRef.cipCodes.toList(),
                label: vaccineRef.label,
                pathologies: vaccineRef.pathologies,
                marketingStart: vaccineRef.marketingStart == null || vaccineRef.marketingStart!.isEmpty
                    ? null
                    : DateTime.parse(vaccineRef.marketingStart!),
                marketingEnd: vaccineRef.marketingEnd == null || vaccineRef.marketingEnd!.isEmpty
                    ? null
                    : DateTime.parse(vaccineRef.marketingEnd!),
              ),
            )
            .toList();
        return RequestResultSuccess(vaccins);
      } else {
        return RequestResultError.genericError();
      }
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }

  @override
  Future<RequestResult<CarteVaccinations>> getCarteVaccinations() async {
    try {
      const String path = '/jsonapi/node/carte_de_vaccination?include=field_image_carte&jsonapi_include=1';
      final json = await dataSource.get(cmsUrl, path);
      final CarteVaccinations? result = fromJsonObject(
        json,
        mapper: (item) => CarteVaccinations.fromJson(
          item,
          cmsUrl: cmsUrl,
        ),
      );
      if (result != null) {
        return RequestResultSuccess(result);
      } else {
        return RequestResultError.genericError();
      }
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }

  @override
  Future<RequestResult<EnsVaccin>> getVaccinByCodeCip(String cipCode) async {
    final query = Gget_vaccin_by_cipReq(
      (builder) => builder
        ..fetchPolicy = FetchPolicy.NetworkOnly
        ..vars.cipCode = cipCode,
    );
    try {
      final graphQLResponse = await ferryClient.request(query).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }

      final result = graphQLResponse.data?.vaccineRefByCipCode;
      if (result != null) {
        final vaccin = EnsVaccin(
          vaccineRefId: result.vaccineRefId,
          cipCodes: result.cipCodes.toList(),
          label: result.label,
          pathologies: result.pathologies,
          marketingStart: result.marketingStart == null || result.marketingStart!.isEmpty
              ? null
              : DateTime.parse(result.marketingStart!),
          marketingEnd:
              result.marketingEnd == null || result.marketingEnd!.isEmpty ? null : DateTime.parse(result.marketingEnd!),
        );
        return RequestResultSuccess(vaccin);
      } else {
        return RequestResultError.genericError();
      }
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }
}
