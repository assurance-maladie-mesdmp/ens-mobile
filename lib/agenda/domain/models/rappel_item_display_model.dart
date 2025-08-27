/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';

class RappelItemDisplayModel extends Equatable {
  final String id;
  final String titre;
  final DateTime date;
  final String jour;
  final String heure;
  final String? commentaire;
  final String? auteur;

  const RappelItemDisplayModel({
    required this.id,
    required this.date,
    required this.titre,
    required this.jour,
    required this.heure,
    this.commentaire,
    this.auteur,
  });

  @override
  List<Object?> get props => [id, titre, date, jour, heure, commentaire, auteur];
}
