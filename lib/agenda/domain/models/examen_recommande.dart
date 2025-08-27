/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/profil_medical/vaccinations/domain/models/ens_vaccination.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:optional/optional_internal.dart';

class ExamenRecommande extends Equatable {
  final String id;
  final DateTime startDate;
  final DateTime endDate;
  final String title;
  final ExamenStatus status;
  final String body;
  final String linkLabel;
  final String linkUrl;
  final String? type;
  final DateTime? dateRealisation;
  final VaccinationNiveauRecommandation? niveauRecommandation;

  @override
  List<Object?> get props => [
        id,
        startDate,
        endDate,
        title,
        status,
        body,
        linkLabel,
        linkUrl,
        type,
        dateRealisation,
        niveauRecommandation,
      ];

  const ExamenRecommande({
    required this.id,
    required this.startDate,
    required this.endDate,
    required this.title,
    required this.status,
    required this.body,
    required this.linkUrl,
    required this.linkLabel,
    required this.type,
    this.dateRealisation,
    this.niveauRecommandation,
  });

  ExamenRecommande clone({
    String? id,
    DateTime? startDate,
    DateTime? endDate,
    String? title,
    ExamenStatus? status,
    String? body,
    String? linkLabel,
    String? linkUrl,
    Optional<String>? typeOptional,
    Optional<DateTime>? dateRealisationOptional,
    Optional<VaccinationNiveauRecommandation>? niveauRecommandationOptional,
  }) {
    return ExamenRecommande(
      id: id ?? this.id,
      startDate: startDate ?? this.startDate,
      endDate: endDate ?? this.endDate,
      title: title ?? this.title,
      status: status ?? this.status,
      body: body ?? this.body,
      linkLabel: linkLabel ?? this.linkLabel,
      linkUrl: linkUrl ?? this.linkUrl,
      type: typeOptional != null ? typeOptional.orElseNullable(type) : type,
      dateRealisation: dateRealisationOptional != null ? dateRealisationOptional.orElseNullable(null) : dateRealisation,
      niveauRecommandation: niveauRecommandationOptional != null
          ? niveauRecommandationOptional.orElseNullable(null)
          : niveauRecommandation,
    );
  }
}

enum ExamenStatus {
  A_PLANIFIER,
  NON_RENSEIGNE,
  NON_REALISE,
  REALISE;

  String get label {
    switch (this) {
      case ExamenStatus.REALISE:
        return 'Réalisé';
      case ExamenStatus.A_PLANIFIER:
        return 'À planifier';
      case ExamenStatus.NON_RENSEIGNE:
        return 'Non renseigné';
      case ExamenStatus.NON_REALISE:
        return 'Non réalisé';
    }
  }

  Color get color {
    switch (this) {
      case ExamenStatus.REALISE:
        return EnsColors.illustrative01;
      case ExamenStatus.A_PLANIFIER:
        return EnsColors.illustrative08;
      case ExamenStatus.NON_RENSEIGNE:
        return EnsColors.illustrative06;
      case ExamenStatus.NON_REALISE:
        return EnsColors.illustrative02;
    }
  }
}
