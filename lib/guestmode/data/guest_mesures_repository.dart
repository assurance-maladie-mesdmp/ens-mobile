/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/common/data/request_result.dart';
import 'package:fr_cnamts_ens/guestmode/data/helper/guest_mesures_repository_helper.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/data/mesures_repository.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/domain/models/ens_mesure_data.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/domain/models/ens_mesure_input.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/domain/models/ens_mesure_metadata.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/domain/models/ens_mesure_target.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/domain/models/ens_mesure_type.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/domain/models/ens_mesure_value.dart';

class GuestMesuresRepository extends IMesuresRepository {
  static const _poidsLabel = 'Poids';
  static const _poidsUnit = 'kg';
  static const _tailleLabel = 'Taille';
  static const _tailleUnit = 'm';
  static const _imcLabel = 'Indice de Masse Corporelle';
  static const _imcUnit = 'kg/m²';
  static const _HbA1cUnit = '%';
  static const _HbA1cLabel = 'Hémoglobine glyquée (HbA1c)';
  static const _glucoseUnit = 'mg/dL';
  static const _glucoseLabel = 'Glycémie';
  static const _tensionArterielleUnit = 'mmHg';

  final List<List<EnsMesureValue>> _poidsMesureValuesForEachPatient = [
    [
      //patient0
      EnsMesureValue(
        id: 'idP1_Patient0',
        unit: _poidsUnit,
        effectiveDate: DateTime.parse('2020-02-27T11:45:23.516+01:00'),
        formattedMetricValue: '64,5',
        comments: const [],
        permissions: const EnsMesureValuePermissions(canBeModified: false, canBeDeleted: false),
        metrics: const [EnsMesureHistoryMetric(unit: _poidsUnit, type: EnsMesureType.POIDS, value: 64.5)],
      ),
      EnsMesureValue(
        id: 'idP2_Patient0',
        unit: _poidsUnit,
        effectiveDate: DateTime.parse('2021-02-27T11:45:23.516+01:00'),
        formattedMetricValue: '65,3',
        comments: const [],
        permissions: const EnsMesureValuePermissions(canBeModified: false, canBeDeleted: false),
        metrics: const [EnsMesureHistoryMetric(unit: _poidsUnit, type: EnsMesureType.POIDS, value: 65.3)],
      ),
      EnsMesureValue(
        id: 'idP3_Patient0',
        unit: _poidsUnit,
        effectiveDate: DateTime.parse('2022-01-12T09:08:23.516+01:00'),
        formattedMetricValue: '74,9',
        comments: const [EnsMesureHistoryComment(type: 'REASON', value: 'Premier bilan après les fêtes')],
        permissions: const EnsMesureValuePermissions(canBeDeleted: false, canBeModified: false),
        metrics: const [EnsMesureHistoryMetric(unit: _poidsUnit, type: EnsMesureType.POIDS, value: 74.9)],
      ),
      EnsMesureValue(
        id: 'idP4_Patient0',
        unit: _poidsUnit,
        effectiveDate: DateTime.parse('2022-01-27T11:30:23.516+01:00'),
        formattedMetricValue: '74,1',
        permissions: const EnsMesureValuePermissions(canBeModified: false, canBeDeleted: false),
        metrics: const [EnsMesureHistoryMetric(unit: _poidsUnit, type: EnsMesureType.POIDS, value: 74.1)],
      ),
      EnsMesureValue(
        id: 'idP5_Patient0',
        unit: _poidsUnit,
        effectiveDate: DateTime.parse('2022-02-27T11:30:23.516+01:00'),
        formattedMetricValue: '72,7',
        comments: const [],
        permissions: const EnsMesureValuePermissions(canBeModified: false, canBeDeleted: false),
        metrics: const [EnsMesureHistoryMetric(unit: _poidsUnit, type: EnsMesureType.POIDS, value: 72.7)],
      ),
    ],
    [
      EnsMesureValue(
        id: 'idP1_Patient1',
        unit: _poidsUnit,
        effectiveDate: DateTime.parse('2022-01-27T11:30:23.516+01:00'),
        formattedMetricValue: '7.18',
        comments: const [],
        permissions: const EnsMesureValuePermissions(canBeModified: false, canBeDeleted: false),
        metrics: const [EnsMesureHistoryMetric(unit: _poidsUnit, type: EnsMesureType.POIDS, value: 7.18)],
      ),
      EnsMesureValue(
        id: 'idP2_Patient1',
        unit: _poidsUnit,
        effectiveDate: DateTime.parse('2022-02-18T11:30:23.516+01:00'),
        formattedMetricValue: '8,1',
        comments: const [],
        permissions: const EnsMesureValuePermissions(canBeModified: false, canBeDeleted: false),
        metrics: const [EnsMesureHistoryMetric(unit: _poidsUnit, type: EnsMesureType.POIDS, value: 8.1)],
      ),
    ],
    [
      EnsMesureValue(
        id: 'idP1_Patient2',
        unit: _poidsUnit,
        effectiveDate: DateTime.parse('2022-02-27T11:30:23.516+01:00'),
        formattedMetricValue: '31,58',
        comments: const [],
        permissions: const EnsMesureValuePermissions(canBeModified: false, canBeDeleted: false),
        metrics: const [EnsMesureHistoryMetric(unit: _poidsUnit, type: EnsMesureType.POIDS, value: 31.58)],
      ),
    ],
    [], //Patient3
    [], //Patient4
  ];
  final List<List<EnsMesureValue>> _tailleMesureValuesForEachPatient = [
    [
      EnsMesureValue(
        id: 'idT1_Patient0',
        unit: _tailleUnit,
        effectiveDate: DateTime.parse('2020-02-27T11:45:23.516+01:00'),
        formattedMetricValue: '1,8',
        comments: const [],
        permissions: const EnsMesureValuePermissions(canBeModified: false, canBeDeleted: false),
        metrics: const [EnsMesureHistoryMetric(unit: _tailleUnit, type: EnsMesureType.TAILLE, value: 1.8)],
      ),
    ],
    [
      EnsMesureValue(
        id: 'idT1_Patient1',
        unit: _tailleUnit,
        effectiveDate: DateTime.parse('2020-01-27T11:45:23.516+01:00'),
        formattedMetricValue: '0,60',
        comments: const [],
        permissions: const EnsMesureValuePermissions(canBeModified: false, canBeDeleted: false),
        metrics: const [EnsMesureHistoryMetric(unit: _tailleUnit, type: EnsMesureType.TAILLE, value: 0.60)],
      ),
      EnsMesureValue(
        id: 'idT1_Patient1',
        unit: _tailleUnit,
        effectiveDate: DateTime.parse('2020-02-27T11:45:23.516+01:00'),
        formattedMetricValue: '0,63',
        comments: const [],
        permissions: const EnsMesureValuePermissions(canBeModified: false, canBeDeleted: false),
        metrics: const [EnsMesureHistoryMetric(unit: _tailleUnit, type: EnsMesureType.TAILLE, value: 0.63)],
      ),
    ],
    [
      EnsMesureValue(
        id: 'idT1_Patient2',
        unit: _tailleUnit,
        effectiveDate: DateTime.parse('2020-02-27T11:45:23.516+01:00'),
        formattedMetricValue: '1,32',
        comments: const [],
        permissions: const EnsMesureValuePermissions(canBeModified: false, canBeDeleted: false),
        metrics: const [EnsMesureHistoryMetric(unit: _tailleUnit, type: EnsMesureType.TAILLE, value: 1.32)],
      ),
    ],
    [], //Patient3
    [
      EnsMesureValue(
        id: 'idT1_Patient4',
        unit: _tailleUnit,
        effectiveDate: DateTime.parse('2020-02-27T11:45:23.516+01:00'),
        formattedMetricValue: '1,82',
        comments: const [],
        permissions: const EnsMesureValuePermissions(canBeModified: false, canBeDeleted: false),
        metrics: const [EnsMesureHistoryMetric(unit: _tailleUnit, type: EnsMesureType.TAILLE, value: 1.82)],
      ),
    ], //Patient4
  ];
  final List<List<EnsMesureValue>> _imcMesureValuesForEachPatient = [
    [
      EnsMesureValue(
        id: 'idIMC1_Patient0',
        unit: _imcUnit,
        effectiveDate: DateTime.parse('2020-02-27T11:45:23.516+01:00'),
        formattedMetricValue: '19,0',
        comments: const [],
        permissions: const EnsMesureValuePermissions(canBeModified: false, canBeDeleted: false),
        metrics: const [EnsMesureHistoryMetric(unit: _imcUnit, type: EnsMesureType.POIDS, value: 19.9)],
      ),
      EnsMesureValue(
        id: 'idIMC2_Patient0',
        unit: _imcUnit,
        effectiveDate: DateTime.parse('2021-02-27T11:45:23.516+01:00'),
        formattedMetricValue: '20,2',
        comments: const [],
        permissions: const EnsMesureValuePermissions(canBeModified: false, canBeDeleted: false),
        metrics: const [EnsMesureHistoryMetric(unit: _imcUnit, type: EnsMesureType.POIDS, value: 20.2)],
      ),
      EnsMesureValue(
        id: 'idIMC3_Patient0',
        unit: _imcUnit,
        effectiveDate: DateTime.parse('2022-01-12T09:08:23.516+01:00'),
        formattedMetricValue: '23,1',
        comments: const [EnsMesureHistoryComment(type: 'REASON', value: 'Premier bilan après les fêtes')],
        permissions: const EnsMesureValuePermissions(canBeDeleted: false, canBeModified: false),
        metrics: const [EnsMesureHistoryMetric(unit: _imcUnit, type: EnsMesureType.POIDS, value: 23.1)],
      ),
      EnsMesureValue(
        id: 'idIMC4_Patient0',
        unit: _imcUnit,
        effectiveDate: DateTime.parse('2022-01-27T11:30:23.516+01:00'),
        formattedMetricValue: '22,9',
        permissions: const EnsMesureValuePermissions(canBeModified: false, canBeDeleted: false),
        metrics: const [EnsMesureHistoryMetric(unit: _imcUnit, type: EnsMesureType.POIDS, value: 22.9)],
      ),
      EnsMesureValue(
        id: 'idIMC5_Patient0',
        unit: _imcUnit,
        effectiveDate: DateTime.parse('2022-02-27T11:30:23.516+01:00'),
        formattedMetricValue: '22,4',
        comments: const [],
        permissions: const EnsMesureValuePermissions(canBeModified: false, canBeDeleted: false),
        metrics: const [EnsMesureHistoryMetric(unit: _imcUnit, type: EnsMesureType.POIDS, value: 22.4)],
      ),
    ],
    [
      EnsMesureValue(
        id: 'idIMC1_Patient0',
        unit: _imcUnit,
        effectiveDate: DateTime.parse('2020-01-27T11:45:23.516+01:00'),
        formattedMetricValue: '19,7',
        comments: const [],
        permissions: const EnsMesureValuePermissions(canBeModified: false, canBeDeleted: false),
        metrics: const [EnsMesureHistoryMetric(unit: _imcUnit, type: EnsMesureType.POIDS, value: 19.7)],
      ),
      EnsMesureValue(
        id: 'idIMC2_Patient0',
        unit: _imcUnit,
        effectiveDate: DateTime.parse('2021-02-27T11:45:23.516+01:00'),
        formattedMetricValue: '20,4',
        comments: const [],
        permissions: const EnsMesureValuePermissions(canBeModified: false, canBeDeleted: false),
        metrics: const [EnsMesureHistoryMetric(unit: _imcUnit, type: EnsMesureType.POIDS, value: 20.4)],
      ),
    ],
    [
      EnsMesureValue(
        id: 'idIMC1_Patient0',
        unit: _imcUnit,
        effectiveDate: DateTime.parse('2020-01-27T11:45:23.516+01:00'),
        formattedMetricValue: '18,18',
        comments: const [],
        permissions: const EnsMesureValuePermissions(canBeModified: false, canBeDeleted: false),
        metrics: const [EnsMesureHistoryMetric(unit: _imcUnit, type: EnsMesureType.POIDS, value: 18.18)],
      ),
    ],
    [], //Patient3
    [], //Patient4
  ];
  final List<List<EnsMesureValue>> _hbA1cMesureValuesForEachPatient = [
    [
      EnsMesureValue(
        id: 'idHbA1c1_Patient0',
        unit: _HbA1cUnit,
        effectiveDate: DateTime.parse('2023-11-13T12:04:56.526+01:00'),
        formattedMetricValue: '15,0',
        comments: const [],
        permissions: const EnsMesureValuePermissions(canBeModified: false, canBeDeleted: false),
        metrics: const [EnsMesureHistoryMetric(unit: _HbA1cUnit, type: EnsMesureType.HEMOGLOBINE_GLYQUEE, value: 15.0)],
      ),
    ],
    [
      EnsMesureValue(
        id: 'idHbA1c1_Patient1',
        unit: _HbA1cUnit,
        effectiveDate: DateTime.parse('2023-11-13T12:04:56.526+01:00'),
        formattedMetricValue: '20,0',
        comments: const [],
        permissions: const EnsMesureValuePermissions(canBeModified: false, canBeDeleted: false),
        metrics: const [EnsMesureHistoryMetric(unit: _HbA1cUnit, type: EnsMesureType.HEMOGLOBINE_GLYQUEE, value: 20.0)],
      ),
      EnsMesureValue(
        id: 'idHbA1c2_Patient1',
        unit: _HbA1cUnit,
        effectiveDate: DateTime.parse('2023-11-13T12:04:56.526+01:00'),
        formattedMetricValue: '30,0',
        comments: const [],
        permissions: const EnsMesureValuePermissions(canBeModified: false, canBeDeleted: false),
        metrics: const [EnsMesureHistoryMetric(unit: _HbA1cUnit, type: EnsMesureType.HEMOGLOBINE_GLYQUEE, value: 30.0)],
      ),
      EnsMesureValue(
        id: 'idHbA1c3_Patient1',
        unit: _HbA1cUnit,
        effectiveDate: DateTime.parse('2023-11-13T12:04:56.526+01:00'),
        formattedMetricValue: '15,0',
        comments: const [],
        permissions: const EnsMesureValuePermissions(canBeModified: false, canBeDeleted: false),
        metrics: const [EnsMesureHistoryMetric(unit: _HbA1cUnit, type: EnsMesureType.HEMOGLOBINE_GLYQUEE, value: 15.0)],
      ),
    ],
  ];
  final List<List<EnsMesureValue>> _tensionArterielleMesureValuesForEachPatient = [
    [
      EnsMesureValue(
        id: 'idTensionA1_Patient0',
        unit: _tensionArterielleUnit,
        effectiveDate: DateTime.parse('2023-11-12T12:04:56.526+01:00'),
        formattedMetricValue: '70/40',
        comments: const [],
        permissions: const EnsMesureValuePermissions(canBeModified: false, canBeDeleted: false),
        metrics: const [
          EnsMesureHistoryMetric(
            unit: _tensionArterielleUnit,
            type: EnsMesureType.TENSION_ARTERIELLE_SYSTOLIQUE,
            value: 70,
          ),
          EnsMesureHistoryMetric(
            unit: _tensionArterielleUnit,
            type: EnsMesureType.TENSION_ARTERIELLE_DIASTOLIQUE,
            value: 40,
          ),
        ],
      ),
      EnsMesureValue(
        id: 'idTensionA1_Patient0',
        unit: _tensionArterielleUnit,
        effectiveDate: DateTime.parse('2023-11-13T12:04:56.526+01:00'),
        formattedMetricValue: '100/60',
        comments: const [],
        permissions: const EnsMesureValuePermissions(canBeModified: false, canBeDeleted: false),
        metrics: const [
          EnsMesureHistoryMetric(
            unit: _tensionArterielleUnit,
            type: EnsMesureType.TENSION_ARTERIELLE_SYSTOLIQUE,
            value: 100,
          ),
          EnsMesureHistoryMetric(
            unit: _tensionArterielleUnit,
            type: EnsMesureType.TENSION_ARTERIELLE_DIASTOLIQUE,
            value: 60,
          ),
        ],
      ),
      EnsMesureValue(
        id: 'idTensionA1_Patient0',
        unit: _tensionArterielleUnit,
        effectiveDate: DateTime.parse('2023-11-14T12:04:56.526+01:00'),
        formattedMetricValue: '70/40',
        comments: const [],
        permissions: const EnsMesureValuePermissions(canBeModified: false, canBeDeleted: false),
        metrics: const [
          EnsMesureHistoryMetric(
            unit: _tensionArterielleUnit,
            type: EnsMesureType.TENSION_ARTERIELLE_SYSTOLIQUE,
            value: 70,
          ),
          EnsMesureHistoryMetric(
            unit: _tensionArterielleUnit,
            type: EnsMesureType.TENSION_ARTERIELLE_DIASTOLIQUE,
            value: 40,
          ),
        ],
      ),
    ],
  ];
  final List<List<EnsMesureValue>> _glucoseMesureValuesForEachPatient = [
    [
      EnsMesureValue(
        id: 'idGlucose1_Patient0',
        unit: _glucoseUnit,
        effectiveDate: DateTime.parse('2023-11-13T12:04:56.526+01:00'),
        formattedMetricValue: '120',
        comments: const [],
        permissions: const EnsMesureValuePermissions(canBeModified: false, canBeDeleted: false),
        metrics: const [EnsMesureHistoryMetric(unit: _glucoseUnit, type: EnsMesureType.GLYCEMIE, value: 120)],
      ),
      EnsMesureValue(
        id: 'idGlucose2_Patient0',
        unit: _glucoseUnit,
        effectiveDate: DateTime.parse('2023-11-13T12:04:56.526+01:00'),
        formattedMetricValue: '100',
        comments: const [],
        permissions: const EnsMesureValuePermissions(canBeModified: false, canBeDeleted: false),
        metrics: const [EnsMesureHistoryMetric(unit: _glucoseUnit, type: EnsMesureType.GLYCEMIE, value: 100)],
      ),
      EnsMesureValue(
        id: 'idGlucose3_Patient0',
        unit: _glucoseUnit,
        effectiveDate: DateTime.parse('2023-11-13T12:04:56.526+01:00'),
        formattedMetricValue: '130',
        comments: const [],
        permissions: const EnsMesureValuePermissions(canBeModified: false, canBeDeleted: false),
        metrics: const [EnsMesureHistoryMetric(unit: _glucoseUnit, type: EnsMesureType.GLYCEMIE, value: 130)],
      ),
    ],
  ];

  final _glucoseMetadata = const EnsMesureMetadata(
    comments: [
      EnsMesureMetadataComment(
        label: 'Informations complémentaires (facultatif)',
        type: 'REASON',
        placeholder: 'Ex. : Diabète, surpoids, maladie du coeur et des vaisseaux, malaise...',
      ),
    ],
    metrics: [
      EnsMesureMetadataMetric(
        type: EnsMesureType.GLYCEMIE,
        unit: _glucoseUnit,
        label: _glucoseLabel,
        placeholder: '0',
        maxlength: 7,
        constraints: [],
      ),
    ],
  );

  final _tensionArterielleMetadata = const EnsMesureMetadata(
    comments: [
      EnsMesureMetadataComment(
        label: 'Informations complémentaires (facultatif)',
        type: 'BLOOD_PRESSURE',
        placeholder: 'Ex. : Au repos, à l\'effort, palpitations cardiaques, malaise...',
      ),
    ],
    metrics: [
      EnsMesureMetadataMetric(
        type: EnsMesureType.TENSION_ARTERIELLE_SYSTOLIQUE,
        unit: _tensionArterielleUnit,
        label: 'Systolique',
        placeholder: '0',
        maxlength: 3,
        constraints: [],
      ),
      EnsMesureMetadataMetric(
        type: EnsMesureType.TENSION_ARTERIELLE_DIASTOLIQUE,
        unit: _tensionArterielleUnit,
        label: 'Diastolique',
        placeholder: '0',
        maxlength: 3,
        constraints: [],
      ),
    ],
  );

  final _hbA1cMetadata = const EnsMesureMetadata(
    comments: [
      EnsMesureMetadataComment(
        label: 'Informations complémentaires (facultatif)',
        type: 'REASON',
        placeholder: 'Ex. Changement de régime alimentaire, modification de traitement...',
      ),
    ],
    metrics: [
      EnsMesureMetadataMetric(
        type: EnsMesureType.HEMOGLOBINE_GLYQUEE,
        unit: _HbA1cUnit,
        label: _HbA1cLabel,
        placeholder: '0,0',
        maxlength: 4,
        constraints: [],
      ),
    ],
  );

  final _poidsMetadata = const EnsMesureMetadata(
    comments: [
      EnsMesureMetadataComment(
        label: 'Commentaire (facultatif)',
        type: 'REASON',
        placeholder: '',
      ),
    ],
    metrics: [
      EnsMesureMetadataMetric(
        type: EnsMesureType.POIDS,
        unit: _poidsUnit,
        label: _poidsLabel,
        placeholder: '0,0',
        maxlength: 7,
        constraints: [],
      ),
    ],
  );

  final _tailleMetadata = const EnsMesureMetadata(
    comments: [
      EnsMesureMetadataComment(
        label: 'Commentaire (facultatif)',
        type: 'REASON',
        placeholder: '',
      ),
    ],
    metrics: [
      EnsMesureMetadataMetric(
        type: EnsMesureType.TAILLE,
        unit: _tailleUnit,
        label: _tailleLabel,
        placeholder: '0,0',
        maxlength: 7,
        constraints: [],
      ),
    ],
  );

  final _imcMetadata = const EnsMesureMetadata(
    comments: [
      EnsMesureMetadataComment(
        label: 'Commentaire (facultatif)',
        type: 'REASON',
        placeholder: '',
      ),
    ],
    metrics: [
      EnsMesureMetadataMetric(
        type: EnsMesureType.IMC,
        unit: _imcUnit,
        label: _imcLabel,
        placeholder: '0,0',
        maxlength: 7,
        constraints: [],
      ),
    ],
  );

  @override
  Future<RequestResult<GetLastMesuresResponse>> getLastMesures(String patientId) {
    return Future.value(RequestResultSuccess(GuestMesuresRepositoryHelper.getLastMesures(patientId)));
  }

  List<EnsMesureValue> getMesuresByPatientId(int patientIntId, List<List<EnsMesureValue>> listeMesures) {
    return listeMesures.length <= patientIntId ? <EnsMesureValue>[] : listeMesures[patientIntId];
  }

  @override
  Future<RequestResult<EnsMesureData>> getMesureDataByCode(EnsMesureType type, String patientId) {
    final patientIntId = int.tryParse(patientId) ?? 0;

    switch (type) {
      case EnsMesureType.POIDS:
        return Future.value(
          RequestResultSuccess<EnsMesureData>(
            EnsMesureData(
              mesureMetadata: _poidsMetadata,
              mesureHistory: getMesuresByPatientId(patientIntId, _poidsMesureValuesForEachPatient),
            ),
          ),
        );
      case EnsMesureType.TAILLE:
        return Future.value(
          RequestResultSuccess<EnsMesureData>(
            EnsMesureData(
              mesureMetadata: _tailleMetadata,
              mesureHistory: getMesuresByPatientId(patientIntId, _tailleMesureValuesForEachPatient),
            ),
          ),
        );
      case EnsMesureType.IMC:
        return Future.value(
          RequestResultSuccess<EnsMesureData>(
            EnsMesureData(
              mesureMetadata: _imcMetadata,
              mesureHistory: getMesuresByPatientId(patientIntId, _imcMesureValuesForEachPatient),
            ),
          ),
        );
      case EnsMesureType.HEMOGLOBINE_GLYQUEE:
        return Future.value(
          RequestResultSuccess<EnsMesureData>(
            EnsMesureData(
              mesureMetadata: _hbA1cMetadata,
              mesureHistory: getMesuresByPatientId(patientIntId, _hbA1cMesureValuesForEachPatient),
            ),
          ),
        );
      case EnsMesureType.GLYCEMIE:
        return Future.value(
          RequestResultSuccess<EnsMesureData>(
            EnsMesureData(
              mesureMetadata: _glucoseMetadata,
              mesureHistory: getMesuresByPatientId(patientIntId, _glucoseMesureValuesForEachPatient),
            ),
          ),
        );
      case EnsMesureType.TENSION_ARTERIELLE:
        return Future.value(
          RequestResultSuccess<EnsMesureData>(
            EnsMesureData(
              mesureMetadata: _tensionArterielleMetadata,
              mesureHistory: getMesuresByPatientId(patientIntId, _tensionArterielleMesureValuesForEachPatient),
            ),
          ),
        );
      default:
        return Future.value(
          RequestResultSuccess<EnsMesureData>(
            EnsMesureData(
              mesureMetadata: EnsMesureMetadata(
                comments: const [],
                metrics: [
                  EnsMesureMetadataMetric(
                    type: EnsMesureType.POIDS,
                    label: _poidsLabel,
                    unit: _poidsUnit,
                    placeholder: 'placeholder',
                    maxlength: 7,
                    constraints: [EnsMesureConstraint.regexp(message: '', regexp: '')],
                  ),
                ],
              ),
              mesureHistory: getMesuresByPatientId(patientIntId, _poidsMesureValuesForEachPatient),
            ),
          ),
        );
    }
  }

  @override
  Future<RequestResult<EnsMesureValue>> addMesure({
    required String patientId,
    required EnsMesureInput input,
    required EnsMesureMetadata metadata,
  }) async {
    return RequestResultError.genericError();
  }

  @override
  Future<RequestResult<EnsMesureValue>> updateMesure({
    required String patientId,
    required EnsMesureInput input,
    required EnsMesureMetadata metadata,
  }) async {
    return RequestResultError.genericError();
  }

  @override
  Future<RequestResult<EnsMesureMetadata>> getMetadata(EnsMesureType type) async {
    switch (type) {
      case EnsMesureType.POIDS:
        return RequestResultSuccess(_poidsMetadata);
      case EnsMesureType.TAILLE:
        return RequestResultSuccess(_tailleMetadata);
      case EnsMesureType.IMC:
        return RequestResultSuccess(_imcMetadata);
      case EnsMesureType.HEMOGLOBINE_GLYQUEE:
        return RequestResultSuccess(_hbA1cMetadata);
      case EnsMesureType.GLYCEMIE:
        return RequestResultSuccess(_tensionArterielleMetadata);
      case EnsMesureType.TENSION_ARTERIELLE:
        return RequestResultSuccess(_glucoseMetadata);
      default:
        return RequestResultSuccess(_poidsMetadata);
    }
  }

  @override
  Future<RequestResult<String>> deleteMesure(String patientId, String id) async {
    return RequestResultError.unavailableInGuestMode();
  }

  @override
  Future<RequestResult<Map<EnsMesureType, bool>>> updateMesuresCustomization(
    String patientId,
    Map<EnsMesureType, bool> visibilityStatus,
  ) async {
    await Future.delayed(const Duration(seconds: 1));
    return RequestResultSuccess<Map<EnsMesureType, bool>>(const {
      EnsMesureType.POIDS: true,
      EnsMesureType.TAILLE: true,
    });
  }

  @override
  Future<RequestResult<EnsMesureTarget>> addMesureTarget(String patientId, EnsMesureType type, double value) {
    return Future.value(RequestResultError.unavailableInGuestMode());
  }

  @override
  Future<RequestResult<void>> deleteMesureTarget(String patientId, String targetId) {
    return Future.value(RequestResultError.unavailableInGuestMode());
  }

  @override
  Future<RequestResult<EnsMesureTarget>> updateMesureTarget(String patientId, String targetId, double value) {
    return Future.value(RequestResultError.unavailableInGuestMode());
  }

  @override
  Future<RequestResult<List<EnsMesureData>>> getMesuresDatasByListCodes(List<EnsMesureType> types, String patientId) {
    return Future.value(RequestResultError.unavailableInGuestMode());
  }
}
