/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/profil_medical/mesures/data/mesures_repository.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/domain/models/ens_mesure.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/domain/models/ens_mesure_permissions.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/domain/models/ens_mesure_type.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/domain/models/ens_mesure_value.dart';

class GuestMesuresRepositoryHelper {
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
  static const _tensionArterielleLabel = 'Tension artérielle';

  static final List<List<EnsMesureValue>> _poidsMesureValuesForEachPatient = [
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
  static final List<List<EnsMesureValue>> _tailleMesureValuesForEachPatient = [
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
  static final List<List<EnsMesureValue>> _imcMesureValuesForEachPatient = [
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
  static final List<List<EnsMesureValue>> _hbA1cMesureValuesForEachPatient = [
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
  static final List<List<EnsMesureValue>> _tensionArterielleMesureValuesForEachPatient = [
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
  static final List<List<EnsMesureValue>> _glucoseMesureValuesForEachPatient = [
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

  static GetLastMesuresResponse getLastMesures(String patientId) {
    final patientIntId = int.tryParse(patientId) ?? 0;

    final poidsMesureValuesForPatient = _getMesuresByPatientId(patientIntId, _poidsMesureValuesForEachPatient);
    final tailleMesureValuesForPatient = _getMesuresByPatientId(patientIntId, _tailleMesureValuesForEachPatient);
    final hbA1cMesureValuesForPatient = _getMesuresByPatientId(patientIntId, _hbA1cMesureValuesForEachPatient);
    final imcMesureValuesForPatient = _getMesuresByPatientId(patientIntId, _imcMesureValuesForEachPatient);
    final glucoseMesureValuesForPatient = _getMesuresByPatientId(patientIntId, _glucoseMesureValuesForEachPatient);
    final tensionArterielleMesureValuesForPatient =
        _getMesuresByPatientId(patientIntId, _tensionArterielleMesureValuesForEachPatient);

    return GetLastMesuresResponse(
      mesures: [
        EnsMesure(
          type: EnsMesureType.POIDS,
          label: _poidsLabel,
          permissions: const EnsMesurePermissions.all(),
          lastValue: poidsMesureValuesForPatient.isEmpty ? null : poidsMesureValuesForPatient.last,
        ),
        EnsMesure(
          type: EnsMesureType.TAILLE,
          label: _tailleLabel,
          permissions: const EnsMesurePermissions.all(),
          lastValue: tailleMesureValuesForPatient.isEmpty ? null : tailleMesureValuesForPatient.last,
        ),
        EnsMesure(
          type: EnsMesureType.IMC,
          label: _imcLabel,
          permissions: const EnsMesurePermissions.noAdd(),
          lastValue: imcMesureValuesForPatient.isEmpty ? null : imcMesureValuesForPatient.last,
        ),
        EnsMesure(
          type: EnsMesureType.HEMOGLOBINE_GLYQUEE,
          label: _HbA1cLabel,
          permissions: const EnsMesurePermissions.all(),
          lastValue: hbA1cMesureValuesForPatient.isEmpty ? null : hbA1cMesureValuesForPatient.last,
        ),
        EnsMesure(
          type: EnsMesureType.GLYCEMIE,
          label: _glucoseLabel,
          permissions: const EnsMesurePermissions.all(),
          lastValue: glucoseMesureValuesForPatient.isEmpty ? null : glucoseMesureValuesForPatient.last,
        ),
        EnsMesure(
          type: EnsMesureType.TENSION_ARTERIELLE,
          label: _tensionArterielleLabel,
          permissions: const EnsMesurePermissions.all(),
          lastValue:
              tensionArterielleMesureValuesForPatient.isEmpty ? null : tensionArterielleMesureValuesForPatient.last,
        ),
      ],
      customizationStatus: const [
        EnsMesureType.POIDS,
        EnsMesureType.TAILLE,
        EnsMesureType.IMC,
        EnsMesureType.TENSION_ARTERIELLE,
        EnsMesureType.GLYCEMIE,
        EnsMesureType.HEMOGLOBINE_GLYQUEE,
      ],
    );
  }

  static List<EnsMesureValue> _getMesuresByPatientId(int patientIntId, List<List<EnsMesureValue>> listeMesures) {
    return listeMesures.length <= patientIntId ? <EnsMesureValue>[] : listeMesures[patientIntId];
  }
}
