/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/profil_medical/domain/models/ens_pml_section.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class IAddItemForFirstTimeRepository {
  bool isAddItemForFirstTime(EnsPmlSection pmlSection);

  Future<void> setItemAddedForFirstTime(EnsPmlSection pmlSection);
}

class AddItemForFirstTimeRepository extends IAddItemForFirstTimeRepository {
  static const String PREFS_ADD_VACCINATION_FOR_FIRST_TIME = 'PREFS_VACCINATION_FIRST_BOTTOM_SHEET';
  static const String PREFS_ADD_TRAITEMENT_FOR_FIRST_TIME = 'PREFS_TRAITEMENT_FIRST_BOTTOM_SHEET';

  final SharedPreferences _sharedPreferences;

  AddItemForFirstTimeRepository(this._sharedPreferences);

  @override
  bool isAddItemForFirstTime(EnsPmlSection pmlSection) {
    final isFirstTime = _sharedPreferences.getBool(_getPrefsKey(pmlSection));
    return isFirstTime != false;
  }

  @override
  Future<void> setItemAddedForFirstTime(EnsPmlSection pmlSection) async {
    await _sharedPreferences.setBool(_getPrefsKey(pmlSection), false);
  }

  String _getPrefsKey(EnsPmlSection pmlSection) {
    return switch (pmlSection) {
      EnsPmlSection.VACCINATIONS => PREFS_ADD_VACCINATION_FOR_FIRST_TIME,
      EnsPmlSection.TRAITEMENTS => PREFS_ADD_TRAITEMENT_FOR_FIRST_TIME,
      _ => '',
    };
  }
}
