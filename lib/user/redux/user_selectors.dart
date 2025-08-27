/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:clock/clock.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/prevention/domain/models/article.dart';
import 'package:fr_cnamts_ens/user/domain/model/ens_profil.dart';
import 'package:fr_cnamts_ens/user/domain/model/user_data.dart';

class UserSelectors {
  const UserSelectors._();

  static String getPatientId(EnsState state) => state.userState.currentProfilePatientId;

  static String getConnectedUserPatientId(EnsState state) => state.userState.connectedUserPatientId;

  static DateTime getBirthdateOrNow(EnsState state) => state.userState.currentProfileBirthdateOrNow;

  static DateTime? getBirthdate(EnsState state) => state.userState.currentProfileBirthdate;

  static int? getAge(EnsState state) {
    final birthdate = getBirthdate(state);
    if (birthdate == null) {
      return null;
    }
    final now = clock.now();
    final age = now.year - birthdate.year;
    final month1 = now.month;
    final month2 = birthdate.month;
    if (month2 > month1) {
      return age - 1;
    } else if (month1 == month2) {
      final day1 = now.day;
      final day2 = birthdate.day;
      if (day2 > day1) {
        return age - 1;
      } else if (day1 == day2) {
        final second1 = now.second;
        final second2 = birthdate.second;
        if (second2 > second1) {
          return age - 1;
        } else if (second1 == second2) {
          final millisecond1 = now.millisecond;
          final millisecond2 = birthdate.millisecond;
          if (millisecond2 > millisecond1) {
            return age - 1;
          } else if (millisecond1 == millisecond2) {
            final microsecond1 = now.microsecond;
            final microsecond2 = birthdate.microsecond;
            if (microsecond2 > microsecond1) {
              return age - 1;
            }
          }
        }
      }
    }
    return age;
  }

  static bool isCurrentProfileUnderFiveYears(EnsState state) {
    final age = getAge(state);
    return age != null && age < 5;
  }

  static bool shouldDisplayOnboarding(EnsState state) {
    final EnsProfil? currentProfile = state.userState.currentProfile;
    final prenom = currentProfile?.prenom ?? '';
    final isOnboardingDone = currentProfile?.isOnboardingTermine;
    return prenom.isNotEmpty && isOnboardingDone == false;
  }

  static String? getFirstName(EnsState state) {
    return state.userState.currentProfile?.prenom;
  }

  static String? getLastName(EnsState state) {
    return state.userState.currentProfile?.nom;
  }

  static String getFullName(EnsState state) {
    return state.userState.currentProfile == null
        ? ''
        : '${state.userState.currentProfile?.prenom.split(' ').first} ${state.userState.currentProfile?.nom}';
  }

  static bool isArticleMatchingFilters(Article article, EnsState state) {
    final hasMatchingGender = _isArticleMatchGender(state, article.gender);
    final isProfileInAgeRange = _isCurrentProfileInAgeRange(state, article.ageRange);
    return isProfileInAgeRange && hasMatchingGender;
  }

  static bool _isArticleMatchGender(EnsState state, ArticleGender gender) {
    final currentProfile = state.userState.currentProfile;
    final hasMatchingHommeArticle = currentProfile?.sexe == Genre.HOMME && gender == ArticleGender.HOMME;
    final hasMatchingFemmeArticle = currentProfile?.sexe == Genre.FEMME && gender == ArticleGender.FEMME;
    return hasMatchingHommeArticle || hasMatchingFemmeArticle || gender == ArticleGender.TOUS;
  }

  static bool _isCurrentProfileInAgeRange(EnsState state, AgeRange ageRange) {
    int currentAgeRange = 0;
    if (ageRange.type == RangeType.TOUS) return true;

    final birthdate = getBirthdate(state);
    if (birthdate == null) return false;

    switch (ageRange.type) {
      case RangeType.ANNEE:
        currentAgeRange = getAge(state) ?? 0;
      case RangeType.MOIS:
        currentAgeRange = _getAgeInMonths(birthdate);
      case RangeType.JOUR:
        currentAgeRange = _getAgeInDays(birthdate);
      default:
        return false;
    }

    return currentAgeRange >= ageRange.min && currentAgeRange <= ageRange.max;
  }

  static int _getAgeInMonths(DateTime birthdate) {
    final now = clock.now();
    return (now.year - birthdate.year) * 12 + (now.month - birthdate.month);
  }

  static int _getAgeInDays(DateTime birthdate) {
    final now = clock.now();
    return now.difference(birthdate).inDays;
  }
}
