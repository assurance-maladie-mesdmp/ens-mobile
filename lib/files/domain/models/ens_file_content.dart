/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';

class EnsFileContent extends Equatable {
  final String filename;
  final String base64Content;
  final String mimeType;
  final DateTime? updateDate;
  final List<String> mesureIds;

  const EnsFileContent({
    required this.filename,
    required this.base64Content,
    required this.mimeType,
    this.updateDate,
    this.mesureIds = const [],
  });

  @override
  List<Object?> get props => [filename, base64Content, mimeType, updateDate, mesureIds];
}
