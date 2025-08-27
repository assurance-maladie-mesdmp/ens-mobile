/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_external_link.dart';
import 'package:fr_cnamts_ens/utils/text_scale_utils.dart';
import 'package:fr_cnamts_ens/utils/webpage_utils.dart';

class EnsHtml extends StatelessWidget {
  final String data;
  final double lineHeight;
  final Color textColor;
  final int? maxLines;
  final bool shouldPopOnLinkTap;
  final double fontSize;
  final bool showIcon;
  final void Function()? onLinkTap;
  final FontWeight? fontWeight;

  const EnsHtml({
    super.key,
    required this.data,
    this.lineHeight = 1.5,
    this.textColor = EnsColors.body,
    this.maxLines,
    this.shouldPopOnLinkTap = false,
    this.fontSize = 15.75,
    this.showIcon = true,
    this.onLinkTap,
    this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    final textScale = TextScaleUtils.getTextScaleFactor(context, fontSize: fontSize);
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaler: TextScaler.noScaling),
      child: HtmlWidget(
        formattedData,
        onTapUrl: (url) {
          onLinkTap?.call();
          launchUrlOrInternalLink(url);
          if (shouldPopOnLinkTap && isUrlLinkToHome(url)) {
            Navigator.of(context).pop();
          }

          return true;
        },
        customWidgetBuilder: (element) {
          if (element.attributes['href'] != null) {
            return InlineCustomWidget(
              child: Wrap(
                children: [
                  EnsExternalLink.withRedirection(linkUrl: element.attributes['href']!, linkText: element.innerHtml),
                ],
              ),
            );
          }
          return null;
        },
        textStyle: TextStyle(fontSize: fontSize * textScale),
      ),
    );
  }

  String get formattedData {
    final formattedData = _parseNonExternalLink(data, '/medical/profil/bilan-de-prevention');
    return formattedData;
  }

  String _parseNonExternalLink(String data, String pattern) {
    final match = RegExp('https://.*?$pattern').firstMatch(data);
    final group = match?.group(0);

    if (group != null) {
      return data.replaceFirst(group, pattern);
    }
    return data;
  }
}
