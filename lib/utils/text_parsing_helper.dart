/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/painting.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';

TextSpan parseTextWithBoldTag(String input) {
  final validTagRegex = RegExp(r'<\s*b\s*>(.*?)<\s*/\s*b\s*>', caseSensitive: false);

  final malformedTagRegex = RegExp(
    r'<\s*b\s*>[^<]*$|^[^<]*<\s*/\s*b\s*>|<\s*b\s*>[^<]*<\s*b\s*>|<\s*/\s*b\s*>[^<]*<\s*/\s*b\s*>',
    caseSensitive: false,
  );

  if (malformedTagRegex.hasMatch(input)) {
    final cleanedText = input.replaceAll(RegExp('<[^>]*>'), '');
    return TextSpan(
      text: cleanedText,
      style: EnsTextStyle.text14_w400_normal_title,
    );
  }

  final spans = <TextSpan>[];
  int lastMatchEnd = 0;
  final matches = validTagRegex.allMatches(input);

  for (final match in matches) {
    if (match.start > lastMatchEnd) {
      spans.add(
        TextSpan(
          text: input.substring(lastMatchEnd, match.start),
          style: EnsTextStyle.text14_w400_normal_title,
        ),
      );
    }

    spans.add(
      TextSpan(
        text: match.group(1),
        style: EnsTextStyle.text14_w700_normal_title,
      ),
    );

    lastMatchEnd = match.end;
  }

  if (lastMatchEnd < input.length) {
    spans.add(
      TextSpan(
        text: input.substring(lastMatchEnd),
        style: EnsTextStyle.text14_w400_normal_title,
      ),
    );
  }

  return TextSpan(
    children: spans,
    style: EnsTextStyle.text14_w400_normal_title,
  );
}
