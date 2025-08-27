/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/domain/models/mon_histoire_de_sante_episode.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/domain/models/mon_histoire_de_sante_item.dart';

sealed class MonHistoireDeSanteDisplayModel extends Equatable {
  const MonHistoireDeSanteDisplayModel._();

  const factory MonHistoireDeSanteDisplayModel.episode({
    required MonHistoireDeSanteEpisode episode,
    EpisodeActeurSante? auteur,
    EpisodeActeurSante? delivreur,
  }) = MonHistoireDeSanteEpisodeDisplayModel;

  const factory MonHistoireDeSanteDisplayModel.year(String year) = MonHistoireDeSanteYearDisplayModel;

  const factory MonHistoireDeSanteDisplayModel.date(String date) = MonHistoireDeSanteDateDisplayModel;

  const factory MonHistoireDeSanteDisplayModel.displayMoreButton() = MonHistoireDeSanteDisplayMoreButtonDisplayModel;
}

class MonHistoireDeSanteEpisodeDisplayModel extends MonHistoireDeSanteDisplayModel {
  final MonHistoireDeSanteEpisode episode;
  final EpisodeActeurSante? auteur;
  final EpisodeActeurSante? delivreur;

  const MonHistoireDeSanteEpisodeDisplayModel({
    required this.episode,
    this.auteur,
    this.delivreur,
  }) : super._();

  @override
  List<Object?> get props => [episode, auteur, delivreur];
}

class MonHistoireDeSanteYearDisplayModel extends MonHistoireDeSanteDisplayModel {
  final String year;

  const MonHistoireDeSanteYearDisplayModel(
    this.year,
  ) : super._();

  @override
  List<Object?> get props => [year];
}

class MonHistoireDeSanteDateDisplayModel extends MonHistoireDeSanteDisplayModel {
  final String date;

  const MonHistoireDeSanteDateDisplayModel(
    this.date,
  ) : super._();

  @override
  List<Object?> get props => [date];
}

class MonHistoireDeSanteDisplayMoreButtonDisplayModel extends MonHistoireDeSanteDisplayModel {
  const MonHistoireDeSanteDisplayMoreButtonDisplayModel() : super._();

  @override
  List<Object?> get props => [];
}

extension MonHistoireDeSanteEpisodeDisplayModelExtension on MonHistoireDeSanteEpisodeDisplayModel {
  bool hasNoPs() {
    return auteur == null && delivreur == null;
  }
}
