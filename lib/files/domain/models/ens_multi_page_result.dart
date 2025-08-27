/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';

import 'package:fr_cnamts_ens/files/domain/models/ens_file_content.dart';

abstract class MultiPageGenerationResult extends Equatable {
  const MultiPageGenerationResult._internal();

  const factory MultiPageGenerationResult.success(EnsFileContent fileContent) = MultiPageGenerationSuccess._internal;

  const factory MultiPageGenerationResult.error() = MultiPageGenerationError._internal;
}

class MultiPageGenerationSuccess extends MultiPageGenerationResult {
  final EnsFileContent fileContent;

  const MultiPageGenerationSuccess._internal(this.fileContent) : super._internal();

  @override
  List<Object?> get props => [fileContent];
}

class MultiPageGenerationError extends MultiPageGenerationResult {
  const MultiPageGenerationError._internal() : super._internal();

  @override
  List<Object?> get props => [];
}
