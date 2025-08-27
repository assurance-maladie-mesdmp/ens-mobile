/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/messagerie/conversation_content/screens/viewmodels/conversation_content_screen_view_model.dart';
import 'package:fr_cnamts_ens/messagerie/conversation_reply/screens/choose_attachment_action_controller.dart';
import 'package:fr_cnamts_ens/messagerie/widgets/file_attachment_widget.dart';
import 'package:fr_cnamts_ens/messagerie/widgets/message_header_widget.dart';
import 'package:fr_cnamts_ens/tags/tags_messagerie.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/utils/text_scale_utils.dart';
import 'package:fr_cnamts_ens/utils/webpage_utils.dart';

class MessageItem extends StatelessWidget {
  final MessageItemDisplayModel messageItemDisplayModel;

  const MessageItem({required this.messageItemDisplayModel});

  @override
  Widget build(BuildContext context) {
    final textScaleFactor = TextScaleUtils.getTextScaleFactor(context);
    final htmlContent = textScaleFactor > 1
        ? messageItemDisplayModel.content.replaceAll(RegExp('(;font-size:\\d\\dpt)'), '')
        : messageItemDisplayModel.content;

    final htmlFormatted = htmlContent
        .replaceAll('<blockquote>', '')
        .replaceAll('</blockquote>', '')
        .replaceAll('<br /></div>', '</div>')
        .replaceAll('<p><br /></p>', '<br />')
        .replaceAll('<p><b><br /></b></p>', '<br />');

    return ColoredBox(
      color: EnsColors.light,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(24, 24, 24, 32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            MessageHeaderWidget(
              fromContact: messageItemDisplayModel.fromContact,
              dateLabel: messageItemDisplayModel.dateLabel,
              toRecipients: messageItemDisplayModel.recipients,
              withDraftIndicator: messageItemDisplayModel.withDraftIndicator,
            ),
            if (messageItemDisplayModel.attachments.isNotEmpty) const SizedBox(height: 24),
            ...messageItemDisplayModel.attachments.map(
              (dm) => Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: FileAttachmentWidget(
                  dm: dm,
                  onTap: () {
                    context.tagAction(TagsMessagerie.tag_button_consulter_PJ);
                    ChooseAttachmentActionController.openChooseAttachmentActionBottomSheet(context, dm);
                  },
                ),
              ),
            ),
            const SizedBox(height: 24),
            const Divider(height: 2, color: EnsColors.neutral200),
            const SizedBox(height: 24),
            Align(
              alignment: Alignment.topLeft,
              child: MediaQuery(
                data: MediaQuery.of(context).copyWith(textScaler: TextScaler.noScaling),
                child: HtmlWidget(
                  htmlFormatted,
                  onTapUrl: (url) {
                    launchInternalLink(url, context);
                    return true;
                  },
                  textStyle: TextStyle(fontSize: textScaleFactor * 14),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
