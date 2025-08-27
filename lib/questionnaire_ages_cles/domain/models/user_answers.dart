/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';

class UserAnswers extends Equatable {
  final String? id;
  final bool isDraft;
  final int questionToDisplayIndex;
  final Map<String, List<String>> answers;
  final DateTime? lastUpdateDate;

  const UserAnswers({
    required this.id,
    required this.isDraft,
    required this.questionToDisplayIndex,
    required this.answers,
    this.lastUpdateDate,
  });

  @override
  List<Object?> get props => [isDraft, id, questionToDisplayIndex, answers, lastUpdateDate];
}
