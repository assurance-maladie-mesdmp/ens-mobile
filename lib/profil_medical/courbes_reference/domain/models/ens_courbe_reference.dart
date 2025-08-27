/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/profil_medical/courbes_reference/redux/courbes_reference_states.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/domain/models/ens_mesure_type.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';

class EnsCourbeReference extends Equatable {
  final EnsMesureType mesureType;
  final CourbeReferenceCategory category;
  final TypeOfCurve typeOfCurve;
  final List<EnsCourbeReferencePoint> points;
  final CourbesReferencePeriode periode;

  const EnsCourbeReference({
    required this.category,
    required this.points,
    required this.mesureType,
    required this.typeOfCurve,
    required this.periode,
  });

  EnsCourbeReference clone({
    EnsMesureType? mesureType,
    CourbeReferenceCategory? category,
    TypeOfCurve? typeOfCurve,
    List<EnsCourbeReferencePoint>? points,
    CourbesReferencePeriode? periode,
    CourbeStatus? status,
  }) =>
      EnsCourbeReference(
        mesureType: mesureType ?? this.mesureType,
        category: category ?? this.category,
        typeOfCurve: typeOfCurve ?? this.typeOfCurve,
        points: points ?? this.points,
        periode: periode ?? this.periode,
      );

  @override
  List<Object?> get props => [mesureType, category, points, typeOfCurve, periode];
}

class EnsCourbeReferencePoint extends Equatable {
  final int date;
  final double value;

  const EnsCourbeReferencePoint({required this.date, required this.value});

  @override
  List<Object?> get props => [date, value];
}

enum CourbeReferenceCategory {
  SDMED(EnsColors.tertiary, 'M'),
  SDPOS1(EnsColors.body, '+1σ'),
  SDPOS2(EnsColors.tertiary, '+2σ'),
  SDPOS3(EnsColors.body, '+3σ'),
  SDNEG1(EnsColors.body, '-1σ'),
  SDNEG2(EnsColors.tertiary, '-2σ'),
  SDNEG3(EnsColors.body, '-3σ'),
  BMI16(EnsColors.body, 'IOTF 16'),
  BMI17(EnsColors.tertiary, 'IOTF 17'),
  BMI18_5(EnsColors.body, 'IOTF 18,5'),
  BMI23(EnsColors.body, 'IOTF 23'),
  BMI25(EnsColors.tertiary, 'IOTF 25'),
  BMI27(EnsColors.body, 'IOTF 27'),
  BMI30(EnsColors.body, 'IOTF 30'),
  BMI35(EnsColors.body, 'IOTF 35'),
  C1(EnsColors.body, '1%'),
  C3(EnsColors.tertiary, '3%'),
  C10(EnsColors.body, '10%'),
  C25(EnsColors.body, '25%'),
  C50(EnsColors.tertiary, '50%'),
  C75(EnsColors.body, '75%'),
  C90(EnsColors.body, '90%'),
  C97(EnsColors.tertiary, '97%'),
  C99(EnsColors.body, '99%'),
  UNKNOWN(EnsColors.light, '');

  final Color color;
  final String label;

  const CourbeReferenceCategory(this.color, this.label);
}

enum CourbeStatus { LOADING, LOADED }
