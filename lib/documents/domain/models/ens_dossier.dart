/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';

class EnsDossier extends Equatable {
  final String id;
  final String name;

  const EnsDossier({required this.id, required this.name});

  const EnsDossier.createRootFolder({this.id = 'Aucun dossier', this.name = 'Aucun dossier'});

  bool get isRootFolder => id == 'Aucun dossier';

  @override
  List<Object?> get props => [id, name];

  EnsDossier clone({
    String? id,
    required String? name,
  }) {
    return EnsDossier(
      id: id ?? this.id,
      name: name ?? this.name,
    );
  }
}
