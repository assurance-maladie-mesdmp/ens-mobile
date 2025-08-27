/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/aide/domain/faq_item.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_html.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';

class AideQuestionDetailScreen extends StatelessWidget {
  final FaqQuestion question;
  final String title;

  const AideQuestionDetailScreen(this.question, this.title);

  @override
  Widget build(BuildContext context) {
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
              Padding(
                padding: const EdgeInsets.only(bottom: 8, top: 32, left: 24, right: 24),
                child: Text(
                  question.question,
                  style: EnsTextStyle.text24_w400_normal_title,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 32, left: 24, right: 24),
                child: EnsHtml(
                  data: question.response,
                  textColor: EnsColors.body,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
