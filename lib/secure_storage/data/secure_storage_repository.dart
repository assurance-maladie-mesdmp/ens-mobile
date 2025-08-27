/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'dart:convert';

import 'package:fr_cnamts_ens/common/data/request_result.dart';
import 'package:fr_cnamts_ens/infra/redux/crashlytics_middlewares.dart';
import 'package:fr_cnamts_ens/infra/wrappers/device_secure_storage_wrapper.dart';

abstract class ISecureStorageRepository {
  Future<RequestResult<List<String>>> readIncitationWelcomePageViews();

  Future<void> writeIncitationWelcomePageViews(String patientId);

  Future<bool> readShouldDisplayInfoHorsRefPs(String patientId);

  Future<void> writePSNonRefInfoDisplayViews(String patientId);

  Future<bool?> readShouldDisplayIncitationPmlBottomSheet(String patientId);

  Future<void> writeShouldDisplayIncitationPmlBottomSheet(String patientId, bool shouldDisplaySecondConnexion);

  Future<bool> readShouldDisplayCreateAvisArretDeTravailDossierBottomSheet(String patientId);

  Future<void> writeShouldDisplayCreateAvisArretDeTravailDossierBottomSheet(
    String patientId,
    bool shouldDisplayCreateAvisArretDeTravailBottomSheet,
  );

  Future<bool> readShouldDisplayMhsTutorial(String patientId);

  Future<void> writeShouldDisplayMhsTutorial(String patientId);
}

class SecureStorageRepository extends ISecureStorageRepository {
  final Crashlytics crashlytics;
  final DeviceSecureStorageWrapper secureStorage;
  static const String _SS_LIST_PATIENT_ID_KEY = 'list_patient_id';
  static const String _SS_NON_REF_PS_INFO_DISPLAY_TO_ID_KEY = 'ps_hors_ref_info';
  static const String SS_ONBOARDING_INCITATION_PML_BOTTOM_SHEET = 'SS_ONBOARDING_INCITATION_PML_BOTTOM_SHEET';
  static const String SS_BOTTOM_SHEET_AVIS_ARRET_DE_TRAVAIL = 'SS_BOTTOM_SHEET_AVIS_ARRET_DE_TRAVAIL';
  static const String SS_CREATE_AVIS_ARRET_DE_TRAVAIL_DOSSIER = 'SS_CREATE_AVIS_ARRET_DE_TRAVAIL_DOSSIER';
  static const String SS_MHS_TUTORIAL = 'SS_MHS_TUTORIAL';

  SecureStorageRepository({
    required this.crashlytics,
    required this.secureStorage,
  });

  @override
  Future<RequestResult<List<String>>> readIncitationWelcomePageViews() async {
    return _getIdsListFromSecureStorageFor(key: _SS_LIST_PATIENT_ID_KEY);
  }

  @override
  Future<void> writeIncitationWelcomePageViews(String patientId) async {
    return _writePatientIdInSecureStorageFor(key: _SS_LIST_PATIENT_ID_KEY, patientId: patientId);
  }

  @override
  Future<bool> readShouldDisplayInfoHorsRefPs(String patientId) async {
    final patientIds = await _getIdsListFromSecureStorageFor(key: _SS_NON_REF_PS_INFO_DISPLAY_TO_ID_KEY);
    bool shouldDisplayInfo = false;
    patientIds.onSuccess((resultSuccess) {
      shouldDisplayInfo = !resultSuccess.contains(patientId);
    });
    return shouldDisplayInfo;
  }

  @override
  Future<void> writePSNonRefInfoDisplayViews(String patientId) async {
    return _writePatientIdInSecureStorageFor(key: _SS_NON_REF_PS_INFO_DISPLAY_TO_ID_KEY, patientId: patientId);
  }

  Future<void> _writePatientIdInSecureStorageFor({required String key, required String patientId}) async {
    try {
      final String? json = await secureStorage.read(key: key);
      final String jsonToWrite;
      if (json == null) {
        final Map<String, List<String>> patientIdsJson = {
          'patientIds': [patientId],
        };
        jsonToWrite = jsonEncode(patientIdsJson);
      } else {
        final parsedJson = jsonDecode(json) as Map<String, dynamic>;
        final patientIds = parsedJson['patientIds'] as List<dynamic>;

        patientIds.add(patientId);

        final Map<String, dynamic> newPatientIdsJson = {
          'patientIds': patientIds,
        };
        jsonToWrite = jsonEncode(newPatientIdsJson);
      }
      return await secureStorage.write(key: key, value: jsonToWrite);
    } catch (e, s) {
      crashlytics.recordError(e, s);
    }
  }

  Future<RequestResult<List<String>>> _getIdsListFromSecureStorageFor({required String key}) async {
    try {
      final String? json = await secureStorage.read(key: key);
      if (json == null) {
        return RequestResultSuccess(const []);
      } else {
        final parsedJson = jsonDecode(json) as Map<String, dynamic>;
        final patientIdsJson = parsedJson['patientIds'] as List<dynamic>?;
        if (patientIdsJson == null) {
          return RequestResultSuccess(List<String>.empty());
        } else {
          final patientIds = patientIdsJson.map((id) => id as String).toList();
          return RequestResultSuccess(patientIds);
        }
      }
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return RequestResultError.genericError();
    }
  }

  @override
  Future<void> writeShouldDisplayIncitationPmlBottomSheet(
    String patientId,
    bool shouldDisplayIncitationPmlBottomSheet,
  ) async {
    await secureStorage.write(
      key: '${SS_ONBOARDING_INCITATION_PML_BOTTOM_SHEET}_$patientId',
      value: shouldDisplayIncitationPmlBottomSheet.toString(),
    );
  }

  @override
  Future<bool?> readShouldDisplayIncitationPmlBottomSheet(String patientId) async {
    final shouldDisplayIncitationPmlBottomSheet = await secureStorage.read(
      key: '${SS_ONBOARDING_INCITATION_PML_BOTTOM_SHEET}_$patientId',
    );
    if (shouldDisplayIncitationPmlBottomSheet == null) {
      return null;
    }
    try {
      return shouldDisplayIncitationPmlBottomSheet.parseBool();
    } catch (e) {
      return null;
    }
  }

  @override
  Future<bool> readShouldDisplayCreateAvisArretDeTravailDossierBottomSheet(String patientId) async {
    final shouldDisplayCreateAvisArretDeTravailDossierBottomSheet = await secureStorage.read(
      key: '${SS_CREATE_AVIS_ARRET_DE_TRAVAIL_DOSSIER}_$patientId',
    );
    if (shouldDisplayCreateAvisArretDeTravailDossierBottomSheet == null) {
      return true;
    }
    try {
      return shouldDisplayCreateAvisArretDeTravailDossierBottomSheet.parseBool();
    } catch (e) {
      return true;
    }
  }

  @override
  Future<void> writeShouldDisplayCreateAvisArretDeTravailDossierBottomSheet(
    String patientId,
    bool shouldDisplayCreateAvisArretDeTravailDossierBottomSheet,
  ) async {
    await secureStorage.write(
      key: '${SS_CREATE_AVIS_ARRET_DE_TRAVAIL_DOSSIER}_$patientId',
      value: shouldDisplayCreateAvisArretDeTravailDossierBottomSheet.toString(),
    );
  }

  @override
  Future<bool> readShouldDisplayMhsTutorial(String patientId) async {
    final shouldDisplayMhsTutorial = await secureStorage.read(
      key: '${SS_MHS_TUTORIAL}_$patientId',
    );
    if (shouldDisplayMhsTutorial == null) {
      return true;
    }
    try {
      return shouldDisplayMhsTutorial.parseBool();
    } catch (e) {
      return true;
    }
  }

  @override
  Future<void> writeShouldDisplayMhsTutorial(String patientId) async {
    await secureStorage.write(
      key: '${SS_MHS_TUTORIAL}_$patientId',
      value: false.toString(),
    );
  }
}

extension BoolParsing on String {
  bool parseBool() {
    final bool = toLowerCase();
    if (bool == 'true') {
      return true;
    } else if (bool == 'false') {
      return false;
    }
    throw '$this can not be parsed to boolean.';
  }
}
