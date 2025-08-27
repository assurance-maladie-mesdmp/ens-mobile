/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/domain/models/mon_histoire_de_sante_episode.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/screens/displayModel/mon_histoire_de_sante_display_model.dart';

sealed class MonHistoireDeSanteVueMoisDisplayModel extends Equatable {
  @override
  List<Object?> get props => [];
}

class MonHistoireDeSanteVueMoisMonthDisplayModel extends MonHistoireDeSanteVueMoisDisplayModel {
  final String monthLabel;

  MonHistoireDeSanteVueMoisMonthDisplayModel(this.monthLabel);

  @override
  List<Object?> get props => [monthLabel];
}

class MonHistoireDeSanteVueMoisCategoryDisplayModel extends MonHistoireDeSanteVueMoisDisplayModel {
  final List<MonHistoireDeSanteEpisodeDisplayModel> items;
  final EpisodeSanteCategorie category;

  MonHistoireDeSanteVueMoisCategoryDisplayModel(this.items, this.category);

  @override
  List<Object?> get props => [items, category];
}

class MonHistoireDeSanteVueMoisDisplayMoreButtonDisplayModel extends MonHistoireDeSanteVueMoisDisplayModel {}
