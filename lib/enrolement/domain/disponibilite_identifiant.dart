/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';

class DisponibiliteIdentifiant extends Equatable {
  final bool? isDisponible;
  final List<String> suggestions;

  const DisponibiliteIdentifiant({required this.isDisponible, required this.suggestions});

  @override
  List<Object?> get props => [isDisponible, suggestions];
}
