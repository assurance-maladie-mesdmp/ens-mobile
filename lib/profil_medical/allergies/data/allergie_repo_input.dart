/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';

class AddAllergieInputModel extends Equatable {
  final String? name;
  final String? comment;
  final List<String> linkedTraitementsIds;

  const AddAllergieInputModel({
    this.name,
    this.comment,
    this.linkedTraitementsIds = const [],
  });

  @override
  List<Object?> get props => [name, comment, linkedTraitementsIds];
}

class UpdateAllergieInputModel extends Equatable {
  final String id;
  final String? name;
  final String? comment;
  final Map<String, String> traitementsLinks;

  const UpdateAllergieInputModel({
    required this.id,
    required this.traitementsLinks,
    this.name,
    this.comment,
  });

  @override
  List<Object?> get props => [id, name, comment, traitementsLinks];
}
