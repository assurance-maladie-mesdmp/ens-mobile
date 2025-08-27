/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/messagerie/conversation_content/screens/conversation_content_screen.dart';
import 'package:fr_cnamts_ens/messagerie/home_messagerie/screens/viewmodels/messagerie_screen_view_model.dart';
import 'package:fr_cnamts_ens/messagerie/new_conversation/screens/new_conversation_screen.dart';
import 'package:fr_cnamts_ens/messagerie/widgets/attachment_indicator_widget.dart';
import 'package:fr_cnamts_ens/tags/tags_messagerie.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_ink_well.dart';

class ConversationSummaryItem extends StatelessWidget {
  final ConversationSummaryItemDisplayModel displayModel;

  const ConversationSummaryItem({required this.displayModel});

  @override
  Widget build(BuildContext context) {
    final isConversationBeingDeleted = displayModel.isBeingDeleted;
    return _Content(
      displayModel: displayModel,
      onTap: isConversationBeingDeleted
          ? null
          : () {
              if (displayModel.isNewMessage) {
                Navigator.pushNamed(
                  context,
                  NewConversationScreen.routeName,
                  arguments: ConversationArguments(conversationId: displayModel.id),
                );
              } else {
                _goToConversationMessages(context);
              }
            },
      opacity: isConversationBeingDeleted ? 0.3 : 1,
    );
  }

  void _goToConversationMessages(BuildContext context) {
    if (displayModel.withNotReadStyle) {
      context.tagAction(TagsMessagerie.tag_consulter_message_non_lu);
    } else {
      context.tagAction(TagsMessagerie.tag_consulter_message_lu);
    }
    Navigator.pushNamed(
      context,
      ConversationContentScreen.routeName,
      arguments: ConversationContentScreenArguments(conversationId: displayModel.id),
    );
  }
}

class _Content extends StatelessWidget {
  final ConversationSummaryItemDisplayModel displayModel;
  final void Function()? onTap;
  final double opacity;

  const _Content({required this.displayModel, required this.onTap, required this.opacity});

  @override
  Widget build(BuildContext context) {
    final semanticsLabel = displayModel.dateLabel.contains('Hier') || displayModel.dateLabel.contains('Aujourd\'hui')
        ? 'Reçus ${displayModel.dateLabel.replaceAll(':', ' heures')}'
        : 'Reçus le ${displayModel.dateLabel.replaceAll(':', ' heures')}';
    return Semantics(
      button: true,
      child: AnimatedOpacity(
        duration: const Duration(milliseconds: 600),
        curve: Curves.decelerate,
        opacity: opacity,
        child: EnsInkWell(
          color: displayModel.withNotReadStyle ? EnsColors.neutral200 : EnsColors.light,
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(width: 16),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          if (displayModel.withNotReadStyle) ...[
                            Container(
                              width: 8,
                              height: 8,
                              decoration: const BoxDecoration(color: EnsColors.secondary, shape: BoxShape.circle),
                            ),
                            const SizedBox(width: 8),
                            Semantics(
                              label: 'Message non lu,',
                            ),
                          ],
                          if (displayModel.withDraftIndicator) _DraftIndicator(),
                          Expanded(
                            flex: 7,
                            child: Text(
                              displayModel.fromLabel,
                              semanticsLabel: 'Conversation avec : ${displayModel.fromLabel}',
                              style: EnsTextStyle.text16_w700_normal_title,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Text(
                              displayModel.dateLabel,
                              semanticsLabel: semanticsLabel,
                              style: EnsTextStyle.text14_w600_normal_title,
                              textAlign: TextAlign.end,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        displayModel.subject,
                        semanticsLabel: 'Objet : ${displayModel.subject}',
                        overflow: TextOverflow.ellipsis,
                        style: displayModel.withNotReadStyle
                            ? EnsTextStyle.text14_w700_normal_body
                            : EnsTextStyle.text14_w400_normal_body,
                      ),
                    ),
                  ],
                ),
                if (displayModel.withAttachmentIndicator) AttachmentIndicator(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _DraftIndicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(right: 8.0),
      child: Text('Brouillon', style: EnsTextStyle.text16_w700_normal_error),
    );
  }
}
