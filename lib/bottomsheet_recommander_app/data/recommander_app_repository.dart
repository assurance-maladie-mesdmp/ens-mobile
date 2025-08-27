/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:shared_preferences/shared_preferences.dart';

abstract interface class IRecommanderAppRepository {
  bool isRecommanderAppDone();

  DateTime? getNextRecommanderAppDate();

  Future<void> setRecommanderAppDone({required bool isRecommanderAppDone});

  Future<void> setNextRecommanderAppDate({required DateTime nextRecommanderAppDate});
}

class RecommanderAppRepository extends IRecommanderAppRepository {
  final SharedPreferences sharedPreferences;
  static const String PREFS_RECOMMANDER_APP_DONE = 'PREFS_RECOMMANDER_APP_DONE';
  static const String PREFS_RECOMMANDER_APP_NEXT_DATE = 'PREFS_RECOMMANDER_APP_NEXT_DATE';

  RecommanderAppRepository(this.sharedPreferences);

  @override
  bool isRecommanderAppDone() {
    return sharedPreferences.getBool(PREFS_RECOMMANDER_APP_DONE) ?? false;
  }

  @override
  DateTime? getNextRecommanderAppDate() {
    final laterDate = sharedPreferences.getString(PREFS_RECOMMANDER_APP_NEXT_DATE);
    if (laterDate != null) {
      return DateTime.tryParse(laterDate);
    }
    return null;
  }

  @override
  Future<void> setRecommanderAppDone({required bool isRecommanderAppDone}) async {
    await sharedPreferences.setBool(PREFS_RECOMMANDER_APP_DONE, isRecommanderAppDone);
  }

  @override
  Future<void> setNextRecommanderAppDate({required DateTime nextRecommanderAppDate}) async {
    await sharedPreferences.setString(PREFS_RECOMMANDER_APP_NEXT_DATE, nextRecommanderAppDate.toString());
  }
}
