/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fr_cnamts_ens/messagerie/widgets/file_attachment_widget.dart';

class ConversationReplyAttachmentsWidget extends StatelessWidget {
  final List<FileAttachmentDisplayModel> fileAttachmentDisplayModels;
  final void Function(String attachmentId) onDeleteAttachment;

  const ConversationReplyAttachmentsWidget({
    required this.fileAttachmentDisplayModels,
    required this.onDeleteAttachment,
  });

  @override
  Widget build(BuildContext context) {
    if (fileAttachmentDisplayModels.isNotEmpty) {
      return Column(
        children: [
          const SizedBox(height: 24),
          ...fileAttachmentDisplayModels.map(
            (dm) => Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: FileAttachmentWidget(
                dm: dm,
                onRemove: () {
                  onDeleteAttachment.call(dm.documentId);
                },
              ),
            ),
          ),
        ],
      );
    } else {
      return Container();
    }
  }
}
