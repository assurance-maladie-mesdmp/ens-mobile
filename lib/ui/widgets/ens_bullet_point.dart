/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_html.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_rich_text.dart';

class EnsBulletPoint extends StatelessWidget {
  final double margin;
  final String text;
  final TextStyle textStyle;
  final bool isHtml;

  const EnsBulletPoint({
    super.key,
    required this.text,
    this.textStyle = EnsTextStyle.text14_w400_normal_body,
    this.margin = 16,
    this.isHtml = false,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(width: margin),
        const ExcludeSemantics(child: Text('\u2022')),
        const SizedBox(width: 8),
        Expanded(child: isHtml ? EnsHtml(data: text) : Text(text, style: textStyle)),
      ],
    );
  }
}

class EnsBulletPointStartWithBoldText extends StatelessWidget {
  final String boldText;
  final String text;

  const EnsBulletPointStartWithBoldText({
    required this.boldText,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ExcludeSemantics(child: Text('\u2022')),
        const SizedBox(width: 8),
        Expanded(
          child: EnsRichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: boldText,
                  style: EnsTextStyle.text16_w700_body,
                ),
                TextSpan(
                  text: text,
                  style: EnsTextStyle.text16_w400_normal_body,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class EnsBulletPointEndWithBoldText extends StatelessWidget {
  final String boldText;
  final String text;

  const EnsBulletPointEndWithBoldText({
    required this.boldText,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ExcludeSemantics(child: Text('\u2022')),
        const SizedBox(width: 8),
        Expanded(
          child: EnsRichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: text,
                  style: EnsTextStyle.text14_w400_normal_body,
                ),
                TextSpan(
                  text: boldText,
                  style: EnsTextStyle.text14_w700_normal_body,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class EnsRichBulletPoint extends StatelessWidget {
  final TextSpan text;

  const EnsRichBulletPoint({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ExcludeSemantics(child: Text('\u2022')),
        const SizedBox(width: 8),
        Expanded(child: EnsRichText(text: text)),
      ],
    );
  }
}
