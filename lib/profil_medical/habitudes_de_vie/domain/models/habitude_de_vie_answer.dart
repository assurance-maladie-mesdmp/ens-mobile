/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'dart:core';

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/profil_medical/habitudes_de_vie/domain/models/habitude_de_vie_enum.dart';

typedef HabitudeDeVieAnswers = Map<HabitudeDeVieCategoryCode, List<HabitudeDeVieCategoryDetails>>;
typedef HabitudeDeVieCurrentUserAnswer = Map<HabitudeDeVieCategoryCode, HabitudeDeVieCategoryUserDetailsAnswer>;

class HabitudeDeVieAnswer extends Equatable {
  final HabitudeDeVieCategoryCode categoryCode;
  final List<HabitudeDeVieCategoryDetails> categoryDetails;

  const HabitudeDeVieAnswer({
    required this.categoryCode,
    required this.categoryDetails,
  });

  @override
  List<Object?> get props => [categoryCode, categoryDetails];
}

class HabitudeDeVieCategoryDetails extends Equatable {
  final String id;
  final String itemCode;
  final DateTime effectiveDate;
  final HabitudeDeVieCreationType lastModifiedType;
  final List<HabitudeDeVieDetailAnswer> answers;

  const HabitudeDeVieCategoryDetails({
    required this.id,
    required this.itemCode,
    required this.effectiveDate,
    required this.lastModifiedType,
    required this.answers,
  });

  @override
  List<Object?> get props => [id, itemCode, effectiveDate, lastModifiedType, answers];
}

class HabitudeDeVieCategoryUserDetailsAnswer extends Equatable {
  final String itemCode;

  final List<HabitudeDeVieUserDetailAnswer> answers;

  const HabitudeDeVieCategoryUserDetailsAnswer({
    required this.itemCode,
    required this.answers,
  });

  @override
  List<Object?> get props => [itemCode, answers];
}

sealed class HabitudeDeVieUserDetailAnswer extends Equatable {
  final String code;

  const HabitudeDeVieUserDetailAnswer({required this.code});

  @override
  List<Object?> get props => [code];
}

class HabitudeDeVieUserDetailRadioAnswer extends HabitudeDeVieUserDetailAnswer {
  final String value;

  const HabitudeDeVieUserDetailRadioAnswer({
    required super.code,
    required this.value,
  });

  @override
  List<Object?> get props => [code, value];
}

class HabitudeDeVieUserDetailTextAnswer extends HabitudeDeVieUserDetailAnswer {
  final String? value;

  const HabitudeDeVieUserDetailTextAnswer({
    required super.code,
    required this.value,
  });

  @override
  List<Object?> get props => [code, value];
}

class HabitudeDeVieDetailAnswer extends Equatable {
  final String code;
  final String label;
  final String value;

  const HabitudeDeVieDetailAnswer({
    required this.code,
    required this.label,
    required this.value,
  });

  @override
  List<Object?> get props => [code, label, value];
}

class HabitudeDeVieDisplayOnCondition extends Equatable {
  final String code;
  final String? value;
  final double? minValue;
  final double? maxValue;
  final String? rawString;

  const HabitudeDeVieDisplayOnCondition._({
    required this.code,
    this.value,
    this.minValue,
    this.maxValue,
    this.rawString,
  });

  factory HabitudeDeVieDisplayOnCondition.fromValue({
    required String code,
    required String value,
  }) {
    return HabitudeDeVieDisplayOnCondition._(
      code: code,
      value: value,
    );
  }

  factory HabitudeDeVieDisplayOnCondition.fromRange({
    required String code,
    required double minValue,
    required double maxValue,
  }) {
    return HabitudeDeVieDisplayOnCondition._(
      code: code,
      minValue: minValue,
      maxValue: maxValue,
    );
  }

  factory HabitudeDeVieDisplayOnCondition.fromRawString({
    required String code,
    required String value,
  }) {
    return HabitudeDeVieDisplayOnCondition._(
      code: code,
      rawString: value,
    );
  }

  @override
  List<Object?> get props => [code, value, minValue, maxValue, rawString];
}

enum TabacQuestionnaireAnswer {
  YES(value: 'YES'),
  NO(value: 'NO'),
  QUIT_SMOKING(value: 'QUIT_SMOKING');

  const TabacQuestionnaireAnswer({
    required this.value,
  });

  final String value;

  static TabacQuestionnaireAnswer? getQuestionnaireEquivalenceFrom(
    String tabacHDVAnswer,
  ) {
    return switch (tabacHDVAnswer) {
      'YES_EVERY_DAY' => TabacQuestionnaireAnswer.YES,
      'YES_OCCASIONALLY' => TabacQuestionnaireAnswer.YES,
      'NO' => TabacQuestionnaireAnswer.NO,
      'NO_BUT_I_HAVE_SMOKED_IN_THE_PAST' => TabacQuestionnaireAnswer.QUIT_SMOKING,
      _ => null,
    };
  }
}

enum TabacElectronicAnswer {
  YES(value: 'YES'),
  NO(value: 'NO'),
  QUIT_SMOKING(value: 'QUIT_SMOKING');

  const TabacElectronicAnswer({
    required this.value,
  });

  final String value;

  static TabacElectronicAnswer? getQuestionnaireEquivalenceFrom(
    String tabacHDVAnswer,
  ) {
    return switch (tabacHDVAnswer) {
      'YES_EVERY_DAY' => TabacElectronicAnswer.YES,
      'YES_OCCASIONALLY' => TabacElectronicAnswer.YES,
      'NO' => TabacElectronicAnswer.NO,
      'NO_BUT_I_HAVE_VAPED_IN_THE_PAST' => TabacElectronicAnswer.QUIT_SMOKING,
      _ => null,
    };
  }
}

enum TabacArretAnswer {
  LESS_ONE_YEAR(value: 'LESS_ONE_YEAR'),
  BETWEEN_ONE_AND_FIVE_YEAR(value: 'BETWEEN_ONE_AND_FIVE_YEAR'),
  MORE_THAN_FIVE_YEAR(value: 'MORE_THAN_FIVE_YEAR');

  const TabacArretAnswer({
    required this.value,
  });

  final String value;

  static TabacArretAnswer? getQuestionnaireEquivalence(String tabacHDVAnswer) {
    return switch (tabacHDVAnswer) {
      'SINCE_LESS_THAN_ONE_YEAR' => TabacArretAnswer.LESS_ONE_YEAR,
      'BETWEEN_ONE_YEAR_AND_FIVE_YEARS_AGO' => TabacArretAnswer.BETWEEN_ONE_AND_FIVE_YEAR,
      'SINCE_MORE_THAN_FIVE_YEARS' => TabacArretAnswer.MORE_THAN_FIVE_YEAR,
      _ => null,
    };
  }
}

class PhysicalActivityRegularlyAnswer {
  final String value;

  const PhysicalActivityRegularlyAnswer(this.value);

  String? getQuestionnaireEquivalence() {
    switch (value) {
      case 'NEVER':
        return 'NEVER';
      case 'ONE_TO_TWO_TIMES_A_WEEK':
        return 'ONE_TO_TWO_PER_WEEK';
      case 'THREE_TO_FOUR_TIMES_A_WEEK':
        return 'THREE_TO_FOUR_PER_WEEK';
      case 'FIVE_TO_SEVEN_TIMES_A_WEEK':
        return 'FIVE_TO_SEVEN_PER_WEEK';
      default:
        return null;
    }
  }
}
