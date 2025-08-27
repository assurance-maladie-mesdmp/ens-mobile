/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';

class EnsMatriceTypeDocument extends Equatable {
  final String libelle;
  final String codeType;

  const EnsMatriceTypeDocument({
    required this.libelle,
    required this.codeType,
  });

  @override
  List<Object?> get props => [libelle, codeType];
}
