/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';

class Rappel extends Equatable {
  final String id;
  final DateTime date;
  final String title;
  final String? comment;
  final String? authorLabel;

  @override
  List<Object?> get props => [id, date, title, comment, authorLabel];

  const Rappel({
    required this.id,
    required this.date,
    required this.title,
    this.comment,
    this.authorLabel,
  });
}
