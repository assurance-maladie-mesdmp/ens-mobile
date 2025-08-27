/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';

class HandicapsDisplayModelForList extends Equatable {
  final String id;
  final String name;
  final List<String> types;

  const HandicapsDisplayModelForList({required this.id, required this.name, required this.types});

  @override
  List<Object?> get props => [id, name, types];
}
