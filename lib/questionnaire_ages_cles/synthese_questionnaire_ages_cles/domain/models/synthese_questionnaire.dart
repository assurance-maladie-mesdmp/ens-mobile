/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/files/domain/models/ens_file_content.dart';

class SyntheseQuestionnaire extends Equatable {
  final EnsFileContent synthese;
  final String? responseId;

  const SyntheseQuestionnaire({
    required this.synthese,
    required this.responseId,
  });

  @override
  List<Object?> get props => [synthese, responseId];
}
