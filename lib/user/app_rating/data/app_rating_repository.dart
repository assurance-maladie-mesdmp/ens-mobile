/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:clock/clock.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class IAppRatingRepository {
  int getNumberSuccessfulActions();

  void addSuccessfulAction();

  void resetSuccessfulActions();

  DateTime? getNextAppRatingDate();

  void setNextAppRatingDate();

  bool shouldShowAppRatingAgain();

  void setShouldNeverShowAppRatingAgain();

  void resetAppRatingFeature();
}

class AppRatingRepository extends IAppRatingRepository {
  static const String APP_RATING_SUCCESSFUL_ACTIONS_COUNT = 'APP_RATING_SUCCESSFUL_ACTIONS_COUNT';
  static const String APP_RATING_NEXT_DISPLAY_DATE = 'APP_RATING_NEXT_DISPLAY_DATE';
  static const String APP_RATING_SHOULD_DISPLAY_AGAIN = 'APP_RATING_SHOULD_DISPLAY_AGAIN';
  static const int TWO_MONTHS = 61;

  final SharedPreferences _sharedPreferences;

  AppRatingRepository(this._sharedPreferences);

  @override
  DateTime? getNextAppRatingDate() {
    final String? showAppRatingDate = _sharedPreferences.getString(APP_RATING_NEXT_DISPLAY_DATE);

    if (showAppRatingDate == null) {
      return null;
    }
    return DateTime.parse(showAppRatingDate);
  }

  @override
  void setNextAppRatingDate() {
    final DateTime nextAppRatingDate = clock.now().add(const Duration(days: TWO_MONTHS));
    _sharedPreferences.setString(APP_RATING_NEXT_DISPLAY_DATE, nextAppRatingDate.toString());
  }

  @override
  int getNumberSuccessfulActions() => _sharedPreferences.getInt(APP_RATING_SUCCESSFUL_ACTIONS_COUNT) ?? 0;

  @override
  void addSuccessfulAction() {
    final int numberSuccessfulActions = _sharedPreferences.getInt(APP_RATING_SUCCESSFUL_ACTIONS_COUNT) ?? 0;
    _sharedPreferences.setInt(APP_RATING_SUCCESSFUL_ACTIONS_COUNT, numberSuccessfulActions + 1);
  }

  @override
  void resetSuccessfulActions() {
    _sharedPreferences.setInt(APP_RATING_SUCCESSFUL_ACTIONS_COUNT, 0);
  }

  @override
  bool shouldShowAppRatingAgain() => _sharedPreferences.getBool(APP_RATING_SHOULD_DISPLAY_AGAIN) ?? true;

  @override
  void setShouldNeverShowAppRatingAgain() {
    _sharedPreferences.setBool(APP_RATING_SHOULD_DISPLAY_AGAIN, false);
  }

  @override
  void resetAppRatingFeature() {
    _sharedPreferences.remove(APP_RATING_SUCCESSFUL_ACTIONS_COUNT);
    _sharedPreferences.remove(APP_RATING_NEXT_DISPLAY_DATE);
    _sharedPreferences.remove(APP_RATING_SHOULD_DISPLAY_AGAIN);
  }
}
