/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/agenda/screens/viewModels/rendez_vous_details_screen_view_model.dart';

enum RendezVousType {
  PROFESSIONEL_DE_SANTE,
  ETABLISSEMENT_DE_SANTE,
  UNKNOWN,
}

class RendezVous extends Equatable {
  final String id;
  final RendezVousType rdvType;
  final String nomActeurSante;
  final DateTime date;
  final String? title;
  final String? specialiteActeurSante;
  final String? note;
  final String? address;
  final String author;
  final bool isFromUser;
  final RendezVousStatus? status;
  final String? idActeurSante;

  const RendezVous({
    required this.id,
    required this.rdvType,
    required this.date,
    required this.nomActeurSante,
    this.title,
    this.specialiteActeurSante,
    this.note,
    this.address,
    required this.author,
    this.isFromUser = true,
    this.status,
    this.idActeurSante,
  });

  @override
  List<Object?> get props => [
        title,
        date,
        rdvType,
        nomActeurSante,
        specialiteActeurSante,
        note,
        id,
        address,
        status,
        author,
        isFromUser,
        idActeurSante,
      ];
}
