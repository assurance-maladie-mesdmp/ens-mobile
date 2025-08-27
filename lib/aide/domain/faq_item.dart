/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';

class FaqItem extends Equatable {
  final String id;
  final String title;
  final String image;
  final List<FaqQuestion> questions;

  const FaqItem({
    required this.id,
    required this.title,
    required this.image,
    required this.questions,
  });

  @override
  List<Object?> get props => [id, title, image, questions];
}

class FaqQuestion extends Equatable {
  final String question;
  final String response;

  const FaqQuestion({
    required this.question,
    required this.response,
  });

  @override
  List<Object?> get props => [question, response];
}
