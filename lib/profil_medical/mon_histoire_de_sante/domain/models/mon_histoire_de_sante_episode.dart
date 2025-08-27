/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/profil_medical/domain/ens_profil_medical_date_utils.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/domain/models/mon_histoire_de_sante_item.dart';
import 'package:fr_cnamts_ens/utils/ens_date_utils.dart';

sealed class MonHistoireDeSanteEpisode extends Equatable {
  final DateTime date;
  final EpisodeSanteCategorie categorie;

  const MonHistoireDeSanteEpisode({
    required this.date,
    required this.categorie,
  });
}

class MonHistoireDeSanteEpisodeBiologie extends MonHistoireDeSanteEpisode {
  final List<MonHistoireDeSanteItemBiologie> items;

  const MonHistoireDeSanteEpisodeBiologie({
    required super.date,
    required super.categorie,
    required this.items,
  });

  @override
  List<Object?> get props => [date, categorie, items];
}

class MonHistoireDeSanteEpisodeMedicaments extends MonHistoireDeSanteEpisode {
  final List<MonHistoireDeSanteItemMedicaments> items;

  const MonHistoireDeSanteEpisodeMedicaments({
    required super.date,
    required super.categorie,
    required this.items,
  });

  @override
  List<Object?> get props => [date, categorie, items];
}

class MonHistoireDeSanteEpisodeSoins extends MonHistoireDeSanteEpisode {
  final List<MonHistoireDeSanteItemSoins> items;

  const MonHistoireDeSanteEpisodeSoins({
    required super.date,
    required super.categorie,
    required this.items,
  });

  @override
  List<Object?> get props => [
        date,
        categorie,
        items,
      ];
}

class MonHistoireDeSanteEpisodeHospitalisation extends MonHistoireDeSanteEpisode {
  final DateTime dateAdmission;
  final DateTime? dateSortie;
  final String nature;
  final EpisodeActeurSante? hopital;

  const MonHistoireDeSanteEpisodeHospitalisation({
    required super.date,
    required super.categorie,
    required this.dateAdmission,
    this.dateSortie,
    required this.nature,
    required this.hopital,
  });

  @override
  List<Object?> get props => [
        date,
        categorie,
        dateAdmission,
        dateSortie,
        nature,
        hopital,
      ];
}

class MonHistoireDeSanteEpisodeRadiologie extends MonHistoireDeSanteEpisode {
  final List<MonHistoireDeSanteItemRadiologie> items;

  const MonHistoireDeSanteEpisodeRadiologie({
    required super.date,
    required super.categorie,
    required this.items,
  });

  @override
  List<Object?> get props => [date, categorie, items];
}

class MonHistoireDeSanteEpisodeDispositifsMedicaux extends MonHistoireDeSanteEpisode {
  final List<MonHistoireDeSanteItemDispositifsMedicaux> items;

  const MonHistoireDeSanteEpisodeDispositifsMedicaux({
    required super.date,
    required super.categorie,
    required this.items,
  });

  @override
  List<Object?> get props => [date, categorie, items];
}

class MonHistoireDeSanteEpisodeVaccin extends MonHistoireDeSanteEpisode {
  final List<MonHistoireDeSanteItemVaccin> items;

  const MonHistoireDeSanteEpisodeVaccin({
    required super.date,
    required super.categorie,
    required this.items,
  });

  @override
  List<Object?> get props => [date, categorie, items];
}

class MonHistoireDeSanteEpisodeVaccination extends MonHistoireDeSanteEpisode {
  final String id;
  final String name;
  final String patologies;

  const MonHistoireDeSanteEpisodeVaccination({
    required super.date,
    required super.categorie,
    required this.id,
    required this.name,
    required this.patologies,
  });

  @override
  List<Object?> get props => [
        date,
        categorie,
        id,
        name,
        patologies,
      ];
}

class MonHistoireDeSanteEpisodeMaladie extends MonHistoireDeSanteEpisode {
  final String id;
  final String nom;
  final String startDate;
  final EpisodeMaladieDateType eventType;
  final String? comment;
  final String? endDate;
  final bool hasOnlyYearInStartDate;
  final bool hasOnlyMonthAndYearInStartDate;
  final bool hasOnlyYearInEndDate;
  final bool hasOnlyMonthAndYearInEndDate;

  const MonHistoireDeSanteEpisodeMaladie({
    required super.date,
    required super.categorie,
    required this.id,
    required this.nom,
    required this.startDate,
    required this.eventType,
    this.comment,
    this.endDate,
    required this.hasOnlyYearInStartDate,
    required this.hasOnlyMonthAndYearInStartDate,
    required this.hasOnlyYearInEndDate,
    required this.hasOnlyMonthAndYearInEndDate,
  });

  String getMaladieEpisodeDate() {
    if (endDate == null) {
      return EnsProfilMedicalDateUtils.getEpisodeSanteTimeInterval(this);
    }
    if (eventType == EpisodeMaladieDateType.START) {
      return 'Date de début: ${EnsDateUtils.formatDDMMYYYYFromYYYYMMDD(startDate)}';
    } else if (eventType == EpisodeMaladieDateType.END && endDate != null) {
      return 'Date de fin: ${EnsDateUtils.formatDDMMYYYYFromYYYYMMDD(endDate!)}';
    } else if (eventType == EpisodeMaladieDateType.FULL && endDate != null) {
      return 'Du ${EnsDateUtils.formatDDMMYYYYFromYYYYMMDD(startDate)} au ${EnsDateUtils.formatDDMMYYYYFromYYYYMMDD(endDate!)}';
    } else {
      return '';
    }
  }

  @override
  List<Object?> get props => [
        date,
        categorie,
        id,
        nom,
        startDate,
        eventType,
        comment,
        endDate,
        hasOnlyYearInStartDate,
        hasOnlyMonthAndYearInStartDate,
        hasOnlyYearInEndDate,
        hasOnlyMonthAndYearInEndDate,
      ];
}

enum EpisodeSanteCategorie {
  BIOLOGIE,
  SOINS,
  MEDICAMENTS,
  HOSPITALISATION,
  DISPOSITIFS_MEDICAUX,
  RADIOLOGIE,
  VACCIN,
  VACCINATION,
  MALADIE;

  String get toLabel {
    return switch (this) {
      EpisodeSanteCategorie.BIOLOGIE => 'Biologie',
      EpisodeSanteCategorie.SOINS => 'Soins médicaux et dentaires',
      EpisodeSanteCategorie.MEDICAMENTS => 'Délivrance de médicaments et vaccins',
      EpisodeSanteCategorie.VACCIN => 'Délivrance de médicaments et vaccins',
      EpisodeSanteCategorie.HOSPITALISATION => 'Hospitalisation',
      EpisodeSanteCategorie.RADIOLOGIE => 'Radiologie',
      EpisodeSanteCategorie.DISPOSITIFS_MEDICAUX => 'Prescription de dispositifs médicaux',
      EpisodeSanteCategorie.VACCINATION => 'Vaccination',
      EpisodeSanteCategorie.MALADIE => 'Maladies et sujets de santé',
    };
  }
}

extension EpisodeSanteCategoryGrouping on Iterable<EpisodeSanteCategorie> {
  List<EpisodeSanteCategorie> removeDuplicates() {
    return where((category) => category != EpisodeSanteCategorie.VACCIN || !contains(EpisodeSanteCategorie.MEDICAMENTS))
        .toList();
  }
}

enum EpisodeMaladieDateType {
  START,
  END,
  FULL,
  UNKNOWN,
}
