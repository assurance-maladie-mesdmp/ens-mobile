/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/files/domain/models/ens_file_content.dart';

class FileState extends Equatable {
  final FileStatus status;
  final FileData? data;

  const FileState({
    this.status = FileStatus.NOT_LOADED,
    this.data,
  });

  bool get isSuccessWithData => status.isSuccess && data != null;

  @override
  List<Object?> get props => [status, data];
}

enum FileStatus {
  NOT_LOADED,
  SUCCESS,
  GENERIC_ERROR,
  NOT_FOUND_ERROR;

  bool get isNotLoaded => this == NOT_LOADED;

  bool get isSuccess => this == SUCCESS;

  bool get isNotFoundError => this == NOT_FOUND_ERROR;
}

class FileData extends Equatable {
  final String documentId;
  final EnsFileContent ensFileContent;

  const FileData({required this.documentId, required this.ensFileContent});

  @override
  List<Object?> get props => [documentId, ensFileContent];
}
