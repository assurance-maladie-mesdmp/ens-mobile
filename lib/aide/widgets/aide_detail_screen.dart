/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/aide/domain/faq_item.dart';
import 'package:fr_cnamts_ens/aide/widgets/aide_question_detail_screen.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/prevention/data/prevention_repository.dart';
import 'package:fr_cnamts_ens/tags/tags_aide.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_divider.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_html.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_ink_well.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';

class AideDetailScreen extends StatelessWidget {
  final List<FaqQuestion> questions;
  final String title;
  final String id;

  const AideDetailScreen(this.questions, this.title, this.id);

  @override
  Widget build(BuildContext context) {
    context.tagAction(TagsAide.tag2275FaqQuestion(id));
    return Scaffold(
      appBar: EnsAppBarSubLevel(
        title: title,
      ),
      body: SafeArea(
        child: ScrollviewWithScrollbar(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 32),
              ...questions.map((question) => [_QuestionCard(question, title), const EnsDivider()]).flattened,
            ],
          ),
        ),
      ),
    );
  }
}

class _QuestionCard extends StatelessWidget {
  final FaqQuestion question;
  final String title;

  const _QuestionCard(this.question, this.title);

  @override
  Widget build(BuildContext context) {
    return EnsInkWell(
      color: EnsColors.light,
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => AideQuestionDetailScreen(question, title),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.fromLTRB(24, 24, 24, 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Text(
                    question.question,
                    style: EnsTextStyle.text16_w700_normal_title,
                  ),
                ),
                const SizedBox(width: 8),
                const EnsSvg(EnsImages.ic_chevron_right, height: 12, width: 8, color: EnsColors.title),
              ],
            ),
            EnsHtml(
              data: question.response.firstParagraphe(),
              textColor: EnsColors.body,
              fontSize: 14,
              fontWeight: FontWeight.w400,
              maxLines: 3,
            ),
          ],
        ),
      ),
    );
  }
}

extension _Paragraphe on String {
  String firstParagraphe() {
    if (contains('</p>')) {
      return '${substringBefore('</p>')}</p>';
    }
    return this;
  }
}
