/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/domain/models/ens_mesure_type.dart';

class EnsMesureMetadata extends Equatable {
  final List<EnsMesureMetadataComment> comments;
  final List<EnsMesureMetadataMetric> metrics;

  const EnsMesureMetadata({required this.comments, required this.metrics});

  @override
  List<Object?> get props => [comments, metrics];
}

class EnsMesureMetadataComment extends Equatable {
  final String label;
  final String placeholder;
  final String type;
  final Map<String, OptionMetadata>? options;

  const EnsMesureMetadataComment({
    required this.label,
    required this.placeholder,
    required this.type,
    this.options,
  });

  @override
  List<Object?> get props => [type, options, label, placeholder];
}

class EnsMesureMetadataMetric extends Equatable {
  final EnsMesureType type;
  final String unit;
  final String label;
  final String placeholder;
  final String? infoText;
  final int maxlength;
  final List<EnsMesureConstraint> constraints;

  const EnsMesureMetadataMetric({
    required this.type,
    required this.label,
    required this.unit,
    required this.placeholder,
    this.infoText,
    required this.maxlength,
    required this.constraints,
  });

  @override
  List<Object?> get props => [type, unit, label, placeholder, maxlength, constraints, infoText];
}

abstract class EnsMesureConstraint extends Equatable {
  final String message;

  const EnsMesureConstraint._(this.message);

  factory EnsMesureConstraint.regexp({required String message, required String regexp}) {
    return _EnsMesureMetricRegexpConstraint._(message: message, regexp: RegExp(regexp));
  }

  factory EnsMesureConstraint.range({required String message, required double min, required double max}) {
    return _EnsMesureMetricRangeConstraint._(message: message, min: min, max: max);
  }

  bool validate(String input);

  @override
  List<Object?> get props => [message];
}

class _EnsMesureMetricRegexpConstraint extends EnsMesureConstraint {
  final RegExp regexp;

  const _EnsMesureMetricRegexpConstraint._({required String message, required this.regexp}) : super._(message);

  @override
  bool validate(String input) {
    return regexp.hasMatch(input);
  }

  @override
  List<Object?> get props => [...super.props, regexp];
}

class _EnsMesureMetricRangeConstraint extends EnsMesureConstraint {
  final double min;
  final double max;

  const _EnsMesureMetricRangeConstraint._({
    required String message,
    required this.min,
    required this.max,
  }) : super._(message);

  @override
  bool validate(String input) {
    final number = double.tryParse(input);
    if (number == null) {
      return false;
    }
    return number >= min && number <= max;
  }

  @override
  List<Object?> get props => [...super.props, min, max];
}

class OptionMetadata extends Equatable {
  final String label;
  final ExtraValueMetadata? extraValueMetadata;

  const OptionMetadata({required this.label, this.extraValueMetadata});

  @override
  List<Object?> get props => [label, extraValueMetadata];
}

class ExtraValueMetadata extends Equatable {
  final String fieldLabel;
  final int maxLength;
  final List<EnsMesureConstraint> constraints;

  const ExtraValueMetadata({required this.fieldLabel, required this.maxLength, required this.constraints});

  @override
  List<Object?> get props => [fieldLabel, maxLength, constraints];
}
