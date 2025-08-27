/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:built_collection/built_collection.dart';
import 'package:clock/clock.dart';
import 'package:collection/collection.dart';
import 'package:ferry/ferry.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_mesure_extract_mesure.fragment.data.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_mesures_add_mesure.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_mesures_last_mesure.fragment.data.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_mesures_mesure_fields.fragment.data.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_mesures_mesures_targets.fragment.data.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_mesures_metadata_fields.fragment.data.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_mesures_update_mesure.query.req.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart';
import 'package:fr_cnamts_ens/messagerie/home_messagerie/screens/messagerie_datetime_formater.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/domain/models/ens_mesure.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/domain/models/ens_mesure_data.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/domain/models/ens_mesure_input.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/domain/models/ens_mesure_metadata.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/domain/models/ens_mesure_permissions.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/domain/models/ens_mesure_target.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/domain/models/ens_mesure_type.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/domain/models/ens_mesure_value.dart';

class MesuresRepositoryMapper {
  static List<EnsMesure> toLastMesures(List<GlastMesure> lastMeasures, List<GmesuresTargets_targets> measuresTargets) {
    return lastMeasures
        .map(
          (measure) => MesuresRepositoryMapper.toEnsMesure(
            measure,
            measuresTargets.firstWhereOrNull((target) => target.type == measure.code),
          ),
        )
        .where((mesure) => mesure.type != EnsMesureType.UNKNOWN)
        .toList();
  }

  static EnsMesure toEnsMesure(
    GlastMesure mesure, [
    GmesuresTargets_targets? targetedValue,
  ]) {
    EnsMesureValue? mesureValue;
    if (mesure.effectiveDate != null &&
        mesure.formattedMetricValue != '' &&
        mesure.metrics != null &&
        mesure.metrics!.isNotEmpty) {
      mesureValue = EnsMesureValue(
        permissions: EnsMesureValuePermissions(
          canBeModified: mesure.permissions.Gupdate,
          canBeDeleted: mesure.permissions.delete,
        ),
        id: mesure.id,
        effectiveDate: DateTime.parse(mesure.effectiveDate!),
        formattedMetricValue: mesure.formattedMetricValue,
        unit: mesure.metrics![0].unit,
      );
    }
    return EnsMesure(
      type: mesure.code.toEnsMesureType(),
      lastValue: mesureValue,
      label: mesure.label,
      permissions: EnsMesurePermissions(
        canAddValue: mesure.permissions.add,
        canViewHistory: mesure.permissions.history,
      ),
      targetedValue: _toTargetedValue(targetedValue),
    );
  }

  static List<EnsMesureData> toEnsMesuresDatas(List<GextractMesure> measuresByCode) {
    return measuresByCode.map((measuresByCode) => toEnsMesureData(measuresByCode)).toList();
  }

  static EnsMesureData toEnsMesureData(GextractMesure measuresByCode) {
    final mesureMetadata = toEnsMesureMetadata(measuresByCode.metaData);
    return EnsMesureData(
      mesureMetadata: mesureMetadata,
      mesureHistory:
          measuresByCode.measures.map((measure) => toEnsMesureValue(measure, mesureMetadata)).nonNulls.toList(),
    );
  }

  static EnsMesureValue? toEnsMesureValue(
    GmesureFields measureModel,
    EnsMesureMetadata mesureMetadata,
  ) {
    final DateTime effectiveDate;
    if (measureModel.effectiveDate == null) {
      return null;
    }
    effectiveDate = DateTime.parse(measureModel.effectiveDate!);

    final String unit;
    if (measureModel.metrics == null || measureModel.metrics!.isEmpty) {
      return null;
    }
    unit = measureModel.metrics![0].unit;

    final List<EnsMesureHistoryComment> comments;
    comments = measureModel.comments != null
        ? measureModel.comments!.map((comment) => _toEnsMesureHistoryComment(comment, mesureMetadata)).nonNulls.toList()
        : <EnsMesureHistoryComment>[];

    final List<EnsMesureHistoryMetric> metrics;
    metrics = measureModel.metrics!.map((metric) => _toEnsMesureHistoryMetric(metric)).nonNulls.toList();

    EnsMesureDocumentInfo? linkDocumentInfo;
    if (measureModel.idDocument != null) {
      linkDocumentInfo = EnsMesureDocumentInfo(
        documentId: measureModel.idDocument!,
        documentName: measureModel.nameDocument ?? '',
      );
    }

    return EnsMesureValue(
      id: measureModel.id,
      permissions: EnsMesureValuePermissions(
        canBeModified: measureModel.permissions.Gupdate,
        canBeDeleted: measureModel.permissions.delete,
      ),
      unit: unit,
      effectiveDate: effectiveDate,
      formattedMetricValue: measureModel.formattedMetricValue,
      comments: comments,
      metrics: metrics,
      courbeReferenceText: measureModel.growthMetricsIntervalText,
      linkDocumentInfo: linkDocumentInfo,
      auteur: _toEnsMesureAuteur(measureModel.author),
    );
  }

  static EnsMesureMetadata toEnsMesureMetadata(GmetadataFields measureMetadata) {
    final metrics = measureMetadata.metrics == null
        ? <EnsMesureMetadataMetric>[]
        : measureMetadata.metrics!.map((metric) => _toEnsMesureMetadataMetric(metric)).nonNulls.toList();
    final comments = measureMetadata.comments == null
        ? <EnsMesureMetadataComment>[]
        : measureMetadata.comments!.map((commentMetadata) => _toEnsMesureMetadataComment(commentMetadata)).toList();
    return EnsMesureMetadata(
      comments: comments,
      metrics: metrics,
    );
  }

  static Gadd_mesureReq toGAddMesureReq(
    EnsMesureInput ensMesureInput,
    String patientId,
    LocaleHelper localeHelper,
  ) {
    final now = clock.now();
    return Gadd_mesureReq(
      (builder) => builder
        ..fetchPolicy = FetchPolicy.NetworkOnly
        ..vars.mesure.id = ensMesureInput.id
        ..vars.mesure.patientId = patientId
        ..vars.mesure.code = MeasureCodeExtension.from(ensMesureInput.type)
        ..vars.mesure.effectiveDate = localeHelper
            .toUtc(ensMesureInput.date.copyWith(second: now.second, millisecond: now.millisecond))
            .toIso8601String()
        ..vars.mesure.metrics = ListBuilder(
          ensMesureInput.values.map(
            (value) => GMetricInput(
              (builder) => builder
                ..code = MeasureCodeExtension.from(value.type)
                ..value = value.value
                ..unit = value.unit,
            ),
          ),
        )
        ..vars.mesure.comments = ListBuilder(
          ensMesureInput.comments.map(
            (comment) => GCommentInput(
              (builder) => builder
                ..code = comment.type
                ..value = comment.value
                ..extra = comment.extraValue,
            ),
          ),
        ),
    );
  }

  static Gupdate_mesureReq toGUpdateMesureReq(
    EnsMesureInput ensMesureInput,
    String patientId,
    LocaleHelper localeHelper,
  ) {
    final now = clock.now();
    return Gupdate_mesureReq(
      (builder) => builder
        ..fetchPolicy = FetchPolicy.NetworkOnly
        ..vars.mesure.id = ensMesureInput.id
        ..vars.mesure.patientId = patientId
        ..vars.mesure.code = MeasureCodeExtension.from(ensMesureInput.type)
        ..vars.mesure.effectiveDate = localeHelper
            .toUtc(ensMesureInput.date.copyWith(second: now.second, millisecond: now.millisecond))
            .toIso8601String()
        ..vars.mesure.metrics = ListBuilder(
          ensMesureInput.values.map(
            (value) => GMetricInput(
              (builder) => builder
                ..code = MeasureCodeExtension.from(value.type)
                ..value = value.value
                ..unit = value.unit,
            ),
          ),
        )
        ..vars.mesure.comments = ListBuilder(
          ensMesureInput.comments.map(
            (comment) => GCommentInput(
              (builder) => builder
                ..code = comment.type
                ..value = comment.value
                ..extra = comment.extraValue,
            ),
          ),
        ),
    );
  }

  static EnsMesureMetadataMetric? _toEnsMesureMetadataMetric(GmetadataFields_metrics metricMetadata) {
    final maxLength = metricMetadata.maxlength == null ? -1 : int.tryParse(metricMetadata.maxlength!) ?? -1;
    final constraints = metricMetadata.constraints
        .map(
          (constraint) => _toEnsMesureConstraint(
            regexp: constraint.regexp,
            message: constraint.message,
            rangeMin: constraint.range?.min,
            rangeMax: constraint.range?.max,
          ),
        )
        .nonNulls
        .toList();
    final mesureType = metricMetadata.code.toEnsMesureType();
    if (mesureType == EnsMesureType.UNKNOWN) {
      return null;
    }
    return EnsMesureMetadataMetric(
      type: mesureType,
      label: metricMetadata.label,
      unit: metricMetadata.unit,
      placeholder: metricMetadata.placeholder,
      infoText: metricMetadata.hint,
      maxlength: maxLength,
      constraints: constraints,
    );
  }

  static EnsMesureConstraint? _toEnsMesureConstraint({
    String? regexp,
    required String message,
    double? rangeMin,
    double? rangeMax,
  }) {
    final regexpStr = regexp;
    if (regexpStr != null) {
      return EnsMesureConstraint.regexp(
        message: message,
        regexp: regexpStr.replaceAll(r'\\', r'\'),
      );
    }
    if (rangeMin != null && rangeMax != null) {
      return EnsMesureConstraint.range(
        message: message,
        min: rangeMin,
        max: rangeMax,
      );
    }

    return null;
  }

  static EnsMesureMetadataComment _toEnsMesureMetadataComment(GmetadataFields_comments commentMetadata) {
    final options = commentMetadata.options == null
        ? null
        : {
            for (final option in commentMetadata.options!)
              option.code: OptionMetadata(
                label: option.label,
                extraValueMetadata: _toExtraValueMetadata(option.extraValueMetadata),
              ),
          };
    return EnsMesureMetadataComment(
      type: commentMetadata.code,
      options: options,
      label: commentMetadata.label,
      placeholder: commentMetadata.placeholder,
    );
  }

  static EnsMesureAuteur? _toEnsMesureAuteur(GmesureFields_author? authorModel) {
    if (!_isAuteurEmpty(authorModel)) {
      return EnsMesureAuteur(authorModel!.firstName!, authorModel.lastName!);
    } else {
      return null;
    }
  }

  static bool _isAuteurEmpty(GmesureFields_author? authorModel) {
    return authorModel == null ||
        authorModel.firstName == null ||
        authorModel.firstName!.isEmpty ||
        authorModel.lastName == null ||
        authorModel.lastName!.isEmpty;
  }

  static EnsMesureHistoryMetric? _toEnsMesureHistoryMetric(GmesureFields_metrics metricModel) {
    final code = metricModel.code;
    if (code == null) {
      return null;
    }
    return EnsMesureHistoryMetric(type: code.toEnsMesureType(), value: metricModel.value, unit: metricModel.unit);
  }

  static EnsMesureHistoryComment? _toEnsMesureHistoryComment(
    GmesureFields_comments commentModel,
    EnsMesureMetadata mesureMetadata,
  ) {
    final EnsMesureMetadataComment commentMetadata;
    try {
      commentMetadata = mesureMetadata.comments.firstWhere((comment) => comment.type == commentModel.code);
    } catch (e) {
      return null;
    }
    final options = commentMetadata.options;
    if (options == null) {
      return EnsMesureHistoryComment(type: commentModel.code, value: commentModel.value);
    }
    final value = options[commentModel.value]?.label;
    return value != null
        ? EnsMesureHistoryComment(
            type: commentModel.code,
            value: value,
            optionCode: commentModel.value,
            extraValue: commentModel.extra,
          )
        : null;
  }

  static ExtraValueMetadata? _toExtraValueMetadata(
    GmetadataFields_comments_options_extraValueMetadata? extraValueMetadata,
  ) {
    if (extraValueMetadata == null) {
      return null;
    }
    return ExtraValueMetadata(
      fieldLabel: extraValueMetadata.fieldLabel,
      maxLength: extraValueMetadata.maxLength.toInt(),
      constraints: extraValueMetadata.constraints
          .map(
            (constraint) => _toEnsMesureConstraint(
              regexp: constraint.regexp,
              message: constraint.message,
              rangeMin: constraint.range?.min,
              rangeMax: constraint.range?.max,
            ),
          )
          .nonNulls
          .toList(),
    );
  }

  static EnsMesureTarget? _toTargetedValue(GmesuresTargets_targets? measureTargetModel) {
    if (measureTargetModel == null) {
      return null;
    }
    return EnsMesureTarget(
      type: measureTargetModel.type.toEnsMesureType(),
      value: measureTargetModel.value,
      id: measureTargetModel.id,
    );
  }
}

extension MeasureCodeExtension on GMeasureCode {
  EnsMesureType toEnsMesureType() {
    switch (this) {
      case GMeasureCode.WEIGHT:
        return EnsMesureType.POIDS;
      case GMeasureCode.HEIGHT:
        return EnsMesureType.TAILLE;
      case GMeasureCode.BODY_MASS_INDEX:
        return EnsMesureType.IMC;
      case GMeasureCode.HEART_RATE:
        return EnsMesureType.FREQUENCE_CARDIAQUE;
      case GMeasureCode.WAIST_CIRCUMFERENCE:
        return EnsMesureType.TOUR_DE_TAILLE;
      case GMeasureCode.SYSTOLIC_BLOOD_PRESSURE:
        return EnsMesureType.TENSION_ARTERIELLE_SYSTOLIQUE;
      case GMeasureCode.DIASTOLIC_BLOOD_PRESSURE:
        return EnsMesureType.TENSION_ARTERIELLE_DIASTOLIQUE;
      case GMeasureCode.BLOOD_PRESSURE:
        return EnsMesureType.TENSION_ARTERIELLE;
      case GMeasureCode.STEPS_BY_DAY:
        return EnsMesureType.NOMBRE_DE_PAS;
      case GMeasureCode.HEAD_CIRCUMFERENCE:
        return EnsMesureType.PERIMETRE_CRANIEN;
      case GMeasureCode.PAIN_SEVERITY:
        return EnsMesureType.NIVEAU_DE_DOULEUR;
      case GMeasureCode.BODY_TEMPERATURE:
        return EnsMesureType.TEMPERATURE;
      case GMeasureCode.GLUCOSE:
        return EnsMesureType.GLYCEMIE;
      case GMeasureCode.INTERSTITIAL_GLUCOSE:
        return EnsMesureType.GLUCOSE_INTERSTITIEL;
      case GMeasureCode.GLYCATED_HEMOGLOBIN:
        return EnsMesureType.HEMOGLOBINE_GLYQUEE;
      case GMeasureCode.HEMOGLOBIN_GLYCATION_INDEX:
        return EnsMesureType.HEMOGLOBINE_GLYQUEE_INDEX;
      default:
        return EnsMesureType.UNKNOWN;
    }
  }

  static GMeasureCode from(EnsMesureType type) {
    switch (type) {
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
      case EnsMesureType.TENSION_ARTERIELLE_SYSTOLIQUE:
        return GMeasureCode.SYSTOLIC_BLOOD_PRESSURE;
      case EnsMesureType.TENSION_ARTERIELLE_DIASTOLIQUE:
        return GMeasureCode.DIASTOLIC_BLOOD_PRESSURE;
      case EnsMesureType.TENSION_ARTERIELLE:
        return GMeasureCode.BLOOD_PRESSURE;
      case EnsMesureType.NOMBRE_DE_PAS:
        return GMeasureCode.STEPS_BY_DAY;
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
}
