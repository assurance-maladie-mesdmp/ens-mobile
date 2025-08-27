/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'dart:convert';

import 'package:fr_cnamts_ens/infra/redux/crashlytics_middlewares.dart';
import 'package:fr_cnamts_ens/infra/wrappers/device_secure_storage_wrapper.dart';
import 'package:fr_cnamts_ens/raccourcis/domain/raccourcis.dart';

abstract class IRaccourcisRepository {
  Future<List<Raccourcis>> getRaccourcis(String patientId);

  Future<void> setRaccourcis(String patientId, List<Raccourcis> raccourcis);

  List<Raccourcis> getAllRaccourcis();
}

class RaccourcisRepository extends IRaccourcisRepository {
  static const String PREFS_RACCOURCIS = 'PREFS_RACCOURCIS';

  final DeviceSecureStorageWrapper secureStorage;
  final Crashlytics crashlytics;

  RaccourcisRepository({required this.secureStorage, required this.crashlytics});

  @override
  Future<List<Raccourcis>> getRaccourcis(String patientId) async {
    try {
      final raccourcisParDefaut = [Raccourcis.RECHERCHER_PS, Raccourcis.AJOUTER_DOCUMENT];
      final raccourcisJson = await secureStorage.read(key: PREFS_RACCOURCIS);
      if (raccourcisJson == null) {
        return raccourcisParDefaut;
      } else {
        final raccourcisList = json.decode(raccourcisJson) as Map<String, dynamic>;
        final raccourcisProfil = raccourcisList[patientId] as List<dynamic>?;
        if (raccourcisProfil == null) {
          return raccourcisParDefaut;
        }
        final raccourcisTitre = raccourcisProfil.map((racc) => racc as String).toList();
        return raccourcisTitre.map((item) => Raccourcis.values.firstWhere((racc) => racc.toString() == item)).toList();
      }
    } catch (error, stack) {
      crashlytics.recordError(error, stack);
      return [];
    }
  }

  @override
  Future<void> setRaccourcis(String patientId, List<Raccourcis> raccourcis) async {
    final initialRaccourcis = await secureStorage.read(key: PREFS_RACCOURCIS);
    if (initialRaccourcis == null) {
      final raccourcisJsonToWrite = {
        patientId: raccourcis.map((racc) => racc.toString()).toList(),
      };
      await secureStorage.write(key: PREFS_RACCOURCIS, value: json.encode(raccourcisJsonToWrite));
    } else {
      final raccourcisList = json.decode(initialRaccourcis) as Map<String, dynamic>;
      raccourcisList[patientId] = raccourcis.map((racc) => racc.toString()).toList();
      await secureStorage.write(key: PREFS_RACCOURCIS, value: json.encode(raccourcisList));
    }
  }

  @override
  List<Raccourcis> getAllRaccourcis() {
    return Raccourcis.values;
  }
}
