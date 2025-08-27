/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';

class InformationsGroupeSanguin extends Equatable {
  final String titre;
  final String description;

  const InformationsGroupeSanguin({required this.titre, required this.description});

  factory InformationsGroupeSanguin.fromJson(Map<String, dynamic> json) {
    final titre = json['titre'] as String?;
    final description = json['description'] as String?;

    if (titre != null && description != null) {
      return InformationsGroupeSanguin(titre: titre, description: description);
    }
    throw const FormatException();
  }

  @override
  List<Object?> get props => [titre, description];
}
