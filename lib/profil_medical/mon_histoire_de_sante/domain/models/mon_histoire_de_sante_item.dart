/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/utils/extensions/string_extensions.dart';
import 'package:intl/intl.dart';

sealed class MonHistoireDeSanteItem extends Equatable {
  final String nom;

  const MonHistoireDeSanteItem({required this.nom});

  String get capitalizedNom => nom.capitalizeName();
}

class MonHistoireDeSanteItemSoins extends MonHistoireDeSanteItem {
  final EpisodeActeurSante? auteur;

  const MonHistoireDeSanteItemSoins({
    required super.nom,
    required this.auteur,
  });

  @override
  List<Object?> get props => [nom, auteur];
}

class MonHistoireDeSanteItemBiologie extends MonHistoireDeSanteItem {
  final EpisodeActeurSante? auteur;

  const MonHistoireDeSanteItemBiologie({
    required super.nom,
    required this.auteur,
  });

  @override
  List<Object?> get props => [nom, auteur];
}

class MonHistoireDeSanteItemMedicaments extends MonHistoireDeSanteItem {
  final DateTime dateDelivrance;
  final String? groupeTherapeutique;
  final double quantiteDeliveree;
  final EpisodeActeurSante? prescripteur;
  final EpisodeActeurSante? delivreur;

  const MonHistoireDeSanteItemMedicaments({
    required super.nom,
    required this.dateDelivrance,
    this.groupeTherapeutique,
    required this.quantiteDeliveree,
    required this.prescripteur,
    required this.delivreur,
  });

  @override
  List<Object?> get props => [
        dateDelivrance,
        nom,
        groupeTherapeutique,
        quantiteDeliveree,
        prescripteur,
        delivreur,
      ];
}

enum TraitementInMedicamentStatus {
  LOADING,
  ADDED,
  NOT_ADDED,
}

class MonHistoireDeSanteItemRadiologie extends MonHistoireDeSanteItem {
  final EpisodeActeurSante? auteur;

  const MonHistoireDeSanteItemRadiologie({
    required super.nom,
    required this.auteur,
  });

  @override
  List<Object?> get props => [
        nom,
        auteur,
      ];
}

class MonHistoireDeSanteItemDispositifsMedicaux extends MonHistoireDeSanteItem {
  final DateTime dateDelivrance;
  final double quantiteDelivree;
  final EpisodeActeurSante? prescripteur;
  final EpisodeActeurSante? delivreur;

  const MonHistoireDeSanteItemDispositifsMedicaux({
    required super.nom,
    required this.dateDelivrance,
    required this.quantiteDelivree,
    required this.prescripteur,
    required this.delivreur,
  });

  @override
  List<Object?> get props => [
        dateDelivrance,
        nom,
        quantiteDelivree,
        prescripteur,
        delivreur,
      ];
}

class MonHistoireDeSanteItemVaccin extends MonHistoireDeSanteItem {
  final String? vaccineValencia;
  final double? typeCodage;
  final String? codeCIP;
  final EpisodeActeurSante? prescripteur;
  final EpisodeActeurSante? delivreur;

  const MonHistoireDeSanteItemVaccin({
    required super.nom,
    this.vaccineValencia,
    this.typeCodage,
    this.codeCIP,
    required this.prescripteur,
    required this.delivreur,
  });

  @override
  List<Object?> get props => [
        nom,
        vaccineValencia,
        typeCodage,
        codeCIP,
        prescripteur,
        delivreur,
      ];
}

sealed class EpisodeActeurSante extends Equatable {
  final String id;
  final String nom;

  const EpisodeActeurSante({required this.id, required this.nom});
}

class EpisodePs extends EpisodeActeurSante {
  final List<String> profession;
  final List<String> specialites;

  const EpisodePs({
    required super.id,
    required super.nom,
    required this.profession,
    required this.specialites,
  });

  @override
  List<Object?> get props => [id, nom, profession, specialites];
}

class EpisodeEs extends EpisodeActeurSante {
  const EpisodeEs({required super.id, required super.nom});

  @override
  List<Object?> get props => [id, nom];
}

extension FormattedTitleListHistory on Iterable<MonHistoireDeSanteItem> {
  String getFormattedActeTitle() {
    return Intl.plural(
      length,
      one: 'Nom de l\'acte',
      other: 'Nom des actes',
    );
  }
}
