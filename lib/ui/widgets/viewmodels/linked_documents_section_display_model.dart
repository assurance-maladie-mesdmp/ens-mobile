/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/messagerie/widgets/file_attachment_widget.dart';

class LinkedDocumentsSectionDisplayModel extends Equatable {
  final List<FileAttachmentDisplayModel> linkedDocuments;
  final String? interruptionServiceSnackbarMessage;

  const LinkedDocumentsSectionDisplayModel({
    required this.linkedDocuments,
    required this.interruptionServiceSnackbarMessage,
  });

  @override
  List<Object?> get props => [linkedDocuments, interruptionServiceSnackbarMessage];
}
