/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';

class EnsServiceImage extends Equatable {
  final String file;
  final String? type;

  const EnsServiceImage({
    required this.file,
    required this.type,
  });

  @override
  List<Object?> get props => [file, type];
}
