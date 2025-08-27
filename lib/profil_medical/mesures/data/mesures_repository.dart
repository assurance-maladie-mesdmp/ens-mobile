/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:built_collection/built_collection.dart';
import 'package:equatable/equatable.dart';
import 'package:ferry/ferry.dart';
import 'package:fr_cnamts_ens/common/data/request_result.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_mesures_add_mesure_target.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_mesures_delete_mesure_target.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_mesures_get_extract_mesures_by_list_code.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_mesures_get_last_mesures.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_mesures_get_mesures_by_code.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_mesures_get_metadata_by_code.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_mesures_remove_mesure.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_mesures_update_mesure_target.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_mesures_update_mesures_customization.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart';
import 'package:fr_cnamts_ens/infra/redux/crashlytics_middlewares.dart';
import 'package:fr_cnamts_ens/messagerie/home_messagerie/screens/messagerie_datetime_formater.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/data/mesures_repository_mapper.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/domain/models/ens_mesure.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/domain/models/ens_mesure_data.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/domain/models/ens_mesure_input.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/domain/models/ens_mesure_metadata.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/domain/models/ens_mesure_target.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/domain/models/ens_mesure_type.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/domain/models/ens_mesure_value.dart';
import 'package:fr_cnamts_ens/utils/extensions/graphql_extensions.dart';

abstract class IMesuresRepository {
  Future<RequestResult<GetLastMesuresResponse>> getLastMesures(String patientId);

  Future<RequestResult<EnsMesureData>> getMesureDataByCode(EnsMesureType type, String patientId);

  Future<RequestResult<EnsMesureValue?>> addMesure({
    required String patientId,
    required EnsMesureInput input,
    required EnsMesureMetadata metadata,
  });

  Future<RequestResult<EnsMesureValue?>> updateMesure({
    required String patientId,
    required EnsMesureInput input,
    required EnsMesureMetadata metadata,
  });

  Future<RequestResult<EnsMesureMetadata>> getMetadata(EnsMesureType type);

  Future<RequestResult<String>> deleteMesure(String patientId, String id);

  Future<RequestResult<Map<EnsMesureType, bool>>> updateMesuresCustomization(
    String patientId,
    Map<EnsMesureType, bool> visibilityStatus,
  );

  Future<RequestResult<EnsMesureTarget>> addMesureTarget(String patientId, EnsMesureType type, double value);

  Future<RequestResult<EnsMesureTarget>> updateMesureTarget(String patientId, String targetId, double value);

  Future<RequestResult<void>> deleteMesureTarget(String patientId, String targetId);

  Future<RequestResult<List<EnsMesureData>>> getMesuresDatasByListCodes(List<EnsMesureType> types, String patientId);
}

class MesuresRepository extends IMesuresRepository {
  final Client ferryClient;
  final Crashlytics crashlytics;
  final LocaleHelper localHelper;

  MesuresRepository(this.ferryClient, this.crashlytics, this.localHelper);

  @override
  Future<RequestResult<GetLastMesuresResponse>> getLastMesures(String patientId) async {
    try {
      final query = Gget_last_mesuresReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.patientId = patientId,
      );
      final graphQLResponse = await ferryClient.request(query).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }

      final result = graphQLResponse.data;
      final lastMeasures = result?.lastMeasures;
      if (result == null || lastMeasures == null) {
        return RequestResultError.genericError();
      }
      final measuresTiles = result.measuresTiles.tiles;
      final measuresTargets = result.measuresTargets.targets;

      final lastMesures = MesuresRepositoryMapper.toLastMesures(lastMeasures.toList(), measuresTargets.toList());

      if (lastMesures.isEmpty) {
        return RequestResultError.genericError();
      }
      return RequestResultSuccess(
        GetLastMesuresResponse(
          mesures: lastMesures,
          customizationStatus: measuresTiles.map((e) => e.visible ? e.type.toEnsMesureType() : null).nonNulls.toList(),
        ),
      );
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }

  @override
  Future<RequestResult<EnsMesureData>> getMesureDataByCode(EnsMesureType type, String patientId) async {
    try {
      final query = Gget_mesures_by_codeReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.mesurePageable.patientId = patientId
          ..vars.mesurePageable.code = MeasureCodeExtension.from(type)
          ..vars.mesurePageable.pageable.itemsPerPage = 5000
          ..vars.mesurePageable.pageable.page = 0,
      );
      final graphQLResponse = await ferryClient.request(query).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }

      final graphQLResult = graphQLResponse.data?.measuresByCode;
      if (graphQLResult != null) {
        final mesuresData = MesuresRepositoryMapper.toEnsMesureData(graphQLResult);
        return RequestResultSuccess(mesuresData);
      } else {
        return RequestResultError.genericError();
      }
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }

  @override
  Future<RequestResult<EnsMesureValue?>> addMesure({
    required String patientId,
    required EnsMesureInput input,
    required EnsMesureMetadata metadata,
  }) async {
    try {
      final mutation = MesuresRepositoryMapper.toGAddMesureReq(input, patientId, localHelper);

      final graphQLResponse = await ferryClient.request(mutation).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }

      final graphQLResult = graphQLResponse.data?.addMeasure;
      if (graphQLResult != null) {
        final mesuresData = MesuresRepositoryMapper.toEnsMesureValue(graphQLResult, metadata);
        return RequestResultSuccess(mesuresData);
      } else {
        return RequestResultSuccess(null);
      }
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }

  @override
  Future<RequestResult<EnsMesureValue?>> updateMesure({
    required String patientId,
    required EnsMesureInput input,
    required EnsMesureMetadata metadata,
  }) async {
    try {
      final mutation = MesuresRepositoryMapper.toGUpdateMesureReq(input, patientId, localHelper);

      final graphQLResponse = await ferryClient.request(mutation).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }

      final graphQLResult = graphQLResponse.data?.updateMeasure;
      if (graphQLResult != null) {
        final mesureData = MesuresRepositoryMapper.toEnsMesureValue(graphQLResult, metadata);
        return RequestResultSuccess(mesureData);
      } else {
        return RequestResultSuccess(null);
      }
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }

  @override
  Future<RequestResult<EnsMesureMetadata>> getMetadata(EnsMesureType type) async {
    try {
      final query = Gget_metadata_by_codeReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.code = type.toMeasureCodeString(),
      );

      final graphQLResponse = await ferryClient.request(query).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }

      final graphQLResult = graphQLResponse.data?.measureMetaData;
      if (graphQLResult != null) {
        final mesureMetadata = MesuresRepositoryMapper.toEnsMesureMetadata(graphQLResult);
        return RequestResultSuccess(mesureMetadata);
      } else {
        return RequestResultError.genericError();
      }
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }

  @override
  Future<RequestResult<String>> deleteMesure(String patientId, String id) async {
    try {
      final mutation = Gremove_mesureReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.deleteMesure.id = id
          ..vars.deleteMesure.patientId = patientId,
      );

      final graphQLResponse = await ferryClient.request(mutation).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }

      final graphQLResult = graphQLResponse.data?.removeMeasure;
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

  @override
  Future<RequestResult<Map<EnsMesureType, bool>>> updateMesuresCustomization(
    String patientId,
    Map<EnsMesureType, bool> visibilityStatus,
  ) async {
    try {
      final mutation = Gupdate_mesures_customizationReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.patientId = patientId
          ..vars.mesureTiles = ListBuilder(
            visibilityStatus.entries.map(
              (status) => GMeasureTileInput(
                (builder) => builder
                  ..type = MeasureCodeExtension.from(status.key)
                  ..visible = status.value,
              ),
            ),
          ),
      );

      final graphQLResponse = await ferryClient.request(mutation).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }

      final graphQLResult = graphQLResponse.data?.updateMeasuresTiles;
      if (graphQLResult != null && graphQLResult.success) {
        return RequestResultSuccess(visibilityStatus);
      } else {
        return RequestResultError.genericError();
      }
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }

  @override
  Future<RequestResult<EnsMesureTarget>> addMesureTarget(String patientId, EnsMesureType type, double value) async {
    try {
      final mutation = Gadd_mesure_targetReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.patientId = patientId
          ..vars.mesureTarget.type = MeasureCodeExtension.from(type)
          ..vars.mesureTarget.value = value,
      );

      final graphQLResponse = await ferryClient.request(mutation).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }

      final graphQLResult = graphQLResponse.data?.addMeasureTarget;
      if (graphQLResult != null) {
        return RequestResultSuccess(
          EnsMesureTarget(
            id: graphQLResult.id,
            type: graphQLResult.type.toEnsMesureType(),
            value: graphQLResult.value,
          ),
        );
      } else {
        return RequestResultError.genericError();
      }
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }

  @override
  Future<RequestResult<EnsMesureTarget>> updateMesureTarget(String patientId, String targetId, double value) async {
    try {
      final mutation = Gupdate_mesure_targetReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.patientId = patientId
          ..vars.editMesureTarget.targetId = targetId
          ..vars.editMesureTarget.value = value,
      );

      final graphQLResponse = await ferryClient.request(mutation).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }

      final graphQLResult = graphQLResponse.data?.updateMeasureTarget;
      if (graphQLResult != null) {
        return RequestResultSuccess(
          EnsMesureTarget(
            id: graphQLResult.id,
            type: graphQLResult.type.toEnsMesureType(),
            value: graphQLResult.value,
          ),
        );
      } else {
        return RequestResultError.genericError();
      }
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }

  @override
  Future<RequestResult<void>> deleteMesureTarget(String patientId, String targetId) async {
    try {
      final mutation = Gdelete_mesure_targetReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.patientId = patientId
          ..vars.targetId = targetId,
      );

      final graphQLResponse = await ferryClient.request(mutation).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }

      final graphQLResult = graphQLResponse.data?.deleteMeasureTarget;
      if (graphQLResult != null) {
        return RequestResultSuccess(null);
      } else {
        return RequestResultError.genericError();
      }
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }

  @override
  Future<RequestResult<List<EnsMesureData>>> getMesuresDatasByListCodes(
    List<EnsMesureType> types,
    String patientId,
  ) async {
    try {
      final query = Gget_extract_mesures_by_list_codeReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.measurePageableInputs = ListBuilder(
            types.map(
              (type) => GMeasurePageableInput(
                (builder) => builder
                  ..patientId = patientId
                  ..code = MeasureCodeExtension.from(type)
                  ..pageable.itemsPerPage = 5000
                  ..pageable.page = 0,
              ),
            ),
          ),
      );

      final graphQLResponse = await ferryClient.request(query).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }

      final measuresByCodeList = graphQLResponse.data?.measuresByCodeList;
      if (measuresByCodeList != null) {
        final mesuresDatas = MesuresRepositoryMapper.toEnsMesuresDatas(measuresByCodeList.toList());
        return RequestResultSuccess(mesuresDatas);
      } else {
        return RequestResultError.genericError();
      }
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }
}

class GetLastMesuresResponse extends Equatable {
  final List<EnsMesure> mesures;
  final List<EnsMesureType> customizationStatus;

  const GetLastMesuresResponse({required this.mesures, required this.customizationStatus});

  @override
  List<Object?> get props => [mesures, customizationStatus];
}
