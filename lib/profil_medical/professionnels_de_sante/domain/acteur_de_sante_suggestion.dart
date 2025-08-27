/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';

sealed class ActeurDeSanteSuggestion extends Equatable {
  final String id;
  final String? name;
  final String? email;
  final String? adresse;

  const ActeurDeSanteSuggestion({
    required this.id,
    required this.name,
    required this.adresse,
    required this.email,
  });
}

class EtablissementDeSanteSuggestion extends ActeurDeSanteSuggestion {
  const EtablissementDeSanteSuggestion({
    required super.id,
    required super.name,
    required super.adresse,
    required super.email,
  });

  @override
  List<Object?> get props => [id, name, adresse, email];
}

class ProfessionelDeSanteSuggestion extends ActeurDeSanteSuggestion {
  final String? profession;

  const ProfessionelDeSanteSuggestion({
    required super.id,
    required super.name,
    required super.adresse,
    required super.email,
    required this.profession,
  });

  @override
  List<Object?> get props => [id, name, adresse, profession, email];
}
