/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/aidants_aides/domain/acteur_aidant_aide.dart';

class DelegationsPourAide extends Equatable {
  final List<DelegationEnCours> delegationsEnCours;
  final List<DelegationEnAttente> delegationsEnAttente;

  const DelegationsPourAide({required this.delegationsEnCours, required this.delegationsEnAttente});

  @override
  List<Object?> get props => [delegationsEnCours, delegationsEnAttente];
}

class DelegationsPourAidant extends Equatable {
  final List<DelegationEnCours> delegationsEnCours;

  const DelegationsPourAidant({required this.delegationsEnCours});

  @override
  List<Object?> get props => [delegationsEnCours];
}

class DelegationEnCours extends Equatable {
  final String id;
  final ActeurAidantAide acteur;
  final DateTime startDate;
  final DateTime endDate;

  const DelegationEnCours({
    required this.id,
    required this.acteur,
    required this.startDate,
    required this.endDate,
  });

  @override
  List<Object?> get props => [id, acteur, startDate, endDate];
}

class DelegationEnAttente extends Equatable {
  final String id;
  final ActeurAidantAide acteur;
  final DateTime creationDate;
  final DateTime expirationDate;

  const DelegationEnAttente({
    required this.id,
    required this.acteur,
    required this.creationDate,
    required this.expirationDate,
  });

  @override
  List<Object?> get props => [id, acteur, creationDate, expirationDate];
}

enum DelegationActeurType { AIDE, AIDANT }
