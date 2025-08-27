/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:built_collection/built_collection.dart';
import 'package:ferry/ferry.dart';
import 'package:fr_cnamts_ens/common/data/request_result.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_courbes_reference.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart';
import 'package:fr_cnamts_ens/infra/redux/crashlytics_middlewares.dart';
import 'package:fr_cnamts_ens/profil_medical/courbes_reference/domain/models/ens_courbe_reference.dart';
import 'package:fr_cnamts_ens/profil_medical/courbes_reference/redux/courbes_reference_states.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/domain/models/ens_mesure_type.dart';
import 'package:fr_cnamts_ens/user/domain/model/user_data.dart';
import 'package:fr_cnamts_ens/utils/extensions/graphql_extensions.dart';
import 'package:intl/intl.dart';

abstract class ICourbesReferenceRepository {
  Future<RequestResult<List<EnsCourbeReference>>> getCourbesReferenceForMeasureType(
    List<TypeOfCurve> typeOfCurveToFetch,
    EnsMesureType mesureType,
    DateTime birthdate,
    CourbesReferencePeriode period,
    Genre sex,
  );
}

class CourbesReferenceRepository extends ICourbesReferenceRepository {
  final Client ferryClient;
  final Crashlytics crashlytics;

  CourbesReferenceRepository(this.ferryClient, this.crashlytics);

  @override
  Future<RequestResult<List<EnsCourbeReference>>> getCourbesReferenceForMeasureType(
    List<TypeOfCurve> typeOfCurveToFetch,
    EnsMesureType mesureType,
    DateTime birthdate,
    CourbesReferencePeriode period,
    Genre genre,
  ) async {
    try {
      final categories =
          typeOfCurveToFetch.map((type) => _getCategoriesFromTypeOfCurve(type, mesureType)).expand((e) => e).toList();
      final dateFormat = DateFormat('yyyy-MM-ddTHH:mm:ss');
      final query = Gget_courbes_referenceReq(
        (builder) => builder
          ..fetchPolicy = FetchPolicy.NetworkOnly
          ..vars.params.code = _getMeasureCodeFromMesureType(mesureType)
          ..vars.params.gender = _getMeasureGenderFromGenre(genre)
          ..vars.params.birthdate = dateFormat.format(birthdate)
          ..vars.params.categories = ListBuilder(
            categories.map((category) => _getMeasureCategoryFromCourbeReferenceCategory(category)),
          )
          ..vars.params.startPeriod = dateFormat.format(period.startDate(birthdate))
          ..vars.params.endPeriod = dateFormat.format(period.endDate(birthdate))
          ..vars.params.isReducedDataForChart = false,
      );

      final graphQLResponse = await ferryClient.request(query).first;
      if (graphQLResponse.checkGenericError(crashlytics)) {
        return RequestResultError.genericError();
      }
      final graphQLResult = graphQLResponse.data?.measureGrowthMetrics;
      if (graphQLResult != null) {
        final curves = graphQLResult.categories.map(
          (category) {
            final courbeReferenceCategory = _getCourbeReferenceCategoryFromMeasureCategory(category.name);
            return EnsCourbeReference(
              mesureType: mesureType,
              periode: period,
              category: courbeReferenceCategory,
              typeOfCurve: _getTypeOfCurveFromCategory(courbeReferenceCategory),
              points: category.data
                  .map(
                    (point) => EnsCourbeReferencePoint(
                      date: DateTime.parse(point.date).millisecondsSinceEpoch,
                      value: point.measure,
                    ),
                  )
                  .toList(),
            );
          },
        ).toList();
        return RequestResultSuccess(curves);
      } else {
        return RequestResultError.genericError();
      }
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }

  TypeOfCurve _getTypeOfCurveFromCategory(CourbeReferenceCategory courbeReferenceCategory) {
    switch (courbeReferenceCategory) {
      case CourbeReferenceCategory.SDMED:
      case CourbeReferenceCategory.SDPOS2:
      case CourbeReferenceCategory.SDNEG2:
      case CourbeReferenceCategory.BMI25:
      case CourbeReferenceCategory.BMI17:
      case CourbeReferenceCategory.C3:
      case CourbeReferenceCategory.C50:
      case CourbeReferenceCategory.C97:
        return TypeOfCurve.PRINCIPALE;
      default:
        return TypeOfCurve.SECONDAIRE;
    }
  }

  List<CourbeReferenceCategory> _getCategoriesFromTypeOfCurve(TypeOfCurve typeOfCurve, EnsMesureType mesureType) {
    if (mesureType == EnsMesureType.IMC) {
      switch (typeOfCurve) {
        case TypeOfCurve.PRINCIPALE:
          return [
            CourbeReferenceCategory.BMI25,
            CourbeReferenceCategory.BMI17,
          ];
        case TypeOfCurve.SECONDAIRE:
          return [
            CourbeReferenceCategory.BMI16,
            CourbeReferenceCategory.BMI18_5,
            CourbeReferenceCategory.BMI23,
            CourbeReferenceCategory.BMI27,
            CourbeReferenceCategory.BMI30,
            CourbeReferenceCategory.BMI35,
          ];
      }
    } else if (mesureType == EnsMesureType.POIDS) {
      switch (typeOfCurve) {
        case TypeOfCurve.PRINCIPALE:
          return [
            CourbeReferenceCategory.C3,
            CourbeReferenceCategory.C50,
            CourbeReferenceCategory.C97,
          ];
        case TypeOfCurve.SECONDAIRE:
          return [
            CourbeReferenceCategory.C1,
            CourbeReferenceCategory.C10,
            CourbeReferenceCategory.C25,
            CourbeReferenceCategory.C75,
            CourbeReferenceCategory.C90,
            CourbeReferenceCategory.C99,
          ];
      }
    } else {
      switch (typeOfCurve) {
        case TypeOfCurve.PRINCIPALE:
          return [
            CourbeReferenceCategory.SDMED,
            CourbeReferenceCategory.SDPOS2,
            CourbeReferenceCategory.SDNEG2,
          ];
        case TypeOfCurve.SECONDAIRE:
          return [
            CourbeReferenceCategory.SDPOS1,
            CourbeReferenceCategory.SDPOS3,
            CourbeReferenceCategory.SDNEG1,
            CourbeReferenceCategory.SDNEG3,
          ];
      }
    }
  }
}

GMeasureGender _getMeasureGenderFromGenre(Genre genre) {
  switch (genre) {
    case Genre.HOMME:
      return GMeasureGender.MALE;
    case Genre.FEMME:
      return GMeasureGender.FEMALE;
  }
}

GMeasureCode _getMeasureCodeFromMesureType(EnsMesureType mesureType) {
  switch (mesureType) {
    case EnsMesureType.POIDS:
      return GMeasureCode.WEIGHT;
    case EnsMesureType.TAILLE:
      return GMeasureCode.HEIGHT;
    case EnsMesureType.IMC:
      return GMeasureCode.BODY_MASS_INDEX;
    case EnsMesureType.FREQUENCE_CARDIAQUE:
      return GMeasureCode.HEART_RATE;
    case EnsMesureType.TOUR_DE_TAILLE:
      return GMeasureCode.WAIST_CIRCUMFERENCE;
    case EnsMesureType.NOMBRE_DE_PAS:
      return GMeasureCode.STEPS_BY_DAY;
    case EnsMesureType.TENSION_ARTERIELLE_SYSTOLIQUE:
      return GMeasureCode.SYSTOLIC_BLOOD_PRESSURE;
    case EnsMesureType.TENSION_ARTERIELLE_DIASTOLIQUE:
      return GMeasureCode.DIASTOLIC_BLOOD_PRESSURE;
    case EnsMesureType.TENSION_ARTERIELLE:
      return GMeasureCode.BLOOD_PRESSURE;
    case EnsMesureType.PERIMETRE_CRANIEN:
      return GMeasureCode.HEAD_CIRCUMFERENCE;
    case EnsMesureType.NIVEAU_DE_DOULEUR:
      return GMeasureCode.PAIN_SEVERITY;
    case EnsMesureType.TEMPERATURE:
      return GMeasureCode.BODY_TEMPERATURE;
    case EnsMesureType.GLYCEMIE:
      return GMeasureCode.GLUCOSE;
    case EnsMesureType.GLUCOSE_INTERSTITIEL:
      return GMeasureCode.INTERSTITIAL_GLUCOSE;
    case EnsMesureType.HEMOGLOBINE_GLYQUEE:
      return GMeasureCode.GLYCATED_HEMOGLOBIN;
    case EnsMesureType.HEMOGLOBINE_GLYQUEE_INDEX:
      return GMeasureCode.HEMOGLOBIN_GLYCATION_INDEX;
    case EnsMesureType.UNKNOWN:
      return GMeasureCode.gUnknownEnumValue;
  }
}

CourbeReferenceCategory _getCourbeReferenceCategoryFromMeasureCategory(GMeasureCategory measureCategory) {
  switch (measureCategory) {
    case GMeasureCategory.SDMED:
      return CourbeReferenceCategory.SDMED;
    case GMeasureCategory.SDNEG1:
      return CourbeReferenceCategory.SDNEG1;
    case GMeasureCategory.SDNEG2:
      return CourbeReferenceCategory.SDNEG2;
    case GMeasureCategory.SDNEG3:
      return CourbeReferenceCategory.SDNEG3;
    case GMeasureCategory.SDPOS1:
      return CourbeReferenceCategory.SDPOS1;
    case GMeasureCategory.SDPOS2:
      return CourbeReferenceCategory.SDPOS2;
    case GMeasureCategory.SDPOS3:
      return CourbeReferenceCategory.SDPOS3;
    case GMeasureCategory.BMI16:
      return CourbeReferenceCategory.BMI16;
    case GMeasureCategory.BMI17:
      return CourbeReferenceCategory.BMI17;
    case GMeasureCategory.BMI18_5:
      return CourbeReferenceCategory.BMI18_5;
    case GMeasureCategory.BMI23:
      return CourbeReferenceCategory.BMI23;
    case GMeasureCategory.BMI25:
      return CourbeReferenceCategory.BMI25;
    case GMeasureCategory.BMI27:
      return CourbeReferenceCategory.BMI27;
    case GMeasureCategory.BMI30:
      return CourbeReferenceCategory.BMI30;
    case GMeasureCategory.BMI35:
      return CourbeReferenceCategory.BMI35;
    case GMeasureCategory.C1:
      return CourbeReferenceCategory.C1;
    case GMeasureCategory.C3:
      return CourbeReferenceCategory.C3;
    case GMeasureCategory.C10:
      return CourbeReferenceCategory.C10;
    case GMeasureCategory.C25:
      return CourbeReferenceCategory.C25;
    case GMeasureCategory.C50:
      return CourbeReferenceCategory.C50;
    case GMeasureCategory.C75:
      return CourbeReferenceCategory.C75;
    case GMeasureCategory.C90:
      return CourbeReferenceCategory.C90;
    case GMeasureCategory.C97:
      return CourbeReferenceCategory.C97;
    case GMeasureCategory.C99:
      return CourbeReferenceCategory.C99;
    case GMeasureCategory.gUnknownEnumValue:
      return CourbeReferenceCategory.UNKNOWN;
  }
  return CourbeReferenceCategory.UNKNOWN;
}

GMeasureCategory _getMeasureCategoryFromCourbeReferenceCategory(CourbeReferenceCategory courbeReferenceCategory) {
  switch (courbeReferenceCategory) {
    case CourbeReferenceCategory.SDMED:
      return GMeasureCategory.SDMED;
    case CourbeReferenceCategory.SDPOS1:
      return GMeasureCategory.SDPOS1;
    case CourbeReferenceCategory.SDPOS2:
      return GMeasureCategory.SDPOS2;
    case CourbeReferenceCategory.SDPOS3:
      return GMeasureCategory.SDPOS3;
    case CourbeReferenceCategory.SDNEG1:
      return GMeasureCategory.SDNEG1;
    case CourbeReferenceCategory.SDNEG2:
      return GMeasureCategory.SDNEG2;
    case CourbeReferenceCategory.SDNEG3:
      return GMeasureCategory.SDNEG3;
    case CourbeReferenceCategory.BMI16:
      return GMeasureCategory.BMI16;
    case CourbeReferenceCategory.BMI17:
      return GMeasureCategory.BMI17;
    case CourbeReferenceCategory.BMI18_5:
      return GMeasureCategory.BMI18_5;
    case CourbeReferenceCategory.BMI23:
      return GMeasureCategory.BMI23;
    case CourbeReferenceCategory.BMI25:
      return GMeasureCategory.BMI25;
    case CourbeReferenceCategory.BMI27:
      return GMeasureCategory.BMI27;
    case CourbeReferenceCategory.BMI30:
      return GMeasureCategory.BMI30;
    case CourbeReferenceCategory.BMI35:
      return GMeasureCategory.BMI35;
    case CourbeReferenceCategory.C1:
      return GMeasureCategory.C1;
    case CourbeReferenceCategory.C3:
      return GMeasureCategory.C3;
    case CourbeReferenceCategory.C10:
      return GMeasureCategory.C10;
    case CourbeReferenceCategory.C25:
      return GMeasureCategory.C25;
    case CourbeReferenceCategory.C50:
      return GMeasureCategory.C50;
    case CourbeReferenceCategory.C75:
      return GMeasureCategory.C75;
    case CourbeReferenceCategory.C90:
      return GMeasureCategory.C90;
    case CourbeReferenceCategory.C97:
      return GMeasureCategory.C97;
    case CourbeReferenceCategory.C99:
      return GMeasureCategory.C99;
    case CourbeReferenceCategory.UNKNOWN:
      return GMeasureCategory.gUnknownEnumValue;
  }
}
