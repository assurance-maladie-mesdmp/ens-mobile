/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';

class EnsRichText extends StatelessWidget {
  final InlineSpan text;
  final TextAlign textAlign;
  final TextDirection? textDirection;
  final bool softWrap;
  final TextOverflow overflow;
  final int? maxLines;

  const EnsRichText({
    super.key,
    required this.text,
    this.textDirection,
    this.maxLines,
    this.textAlign = TextAlign.start,
    this.softWrap = true,
    this.overflow = TextOverflow.clip,
  });

  @override
  Widget build(BuildContext context) {
    // ignore: dont_use_richtext
    return RichText(
      text: text,
      textDirection: textDirection,
      maxLines: maxLines,
      textAlign: textAlign,
      softWrap: softWrap,
      overflow: overflow,
      textScaler: MediaQuery.of(context).textScaler,
    );
  }
}
