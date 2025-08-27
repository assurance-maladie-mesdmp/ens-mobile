/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fr_cnamts_ens/infra/injection/ens_module_container.dart';
import 'package:fr_cnamts_ens/prevention/domain/models/article_detail.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_card.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_external_link.dart';

class CmsActionButtonItem extends StatelessWidget {
  final String title;
  final String content;
  final String linkLabel;
  final String link;
  final bool isExternalLink;
  final void Function() onTap;
  final String? image;

  const CmsActionButtonItem({
    required this.title,
    required this.content,
    required this.linkLabel,
    required this.link,
    required this.isExternalLink,
    required this.onTap,
    this.image,
  });

  CmsActionButtonItem.fromCmsActionButton({
    required ArticleActionButton actionButton,
    required Function() this.onTap,
  })  : title = actionButton.title,
        content = actionButton.content,
        linkLabel = actionButton.linkLabel,
        link = actionButton.link,
        isExternalLink = actionButton.isExternalLink,
        image = actionButton.image;

  @override
  Widget build(BuildContext context) {
    final cmsUrl = EnsModuleContainer.currentInjector.getUrlsConfig().cmsUrl;
    const imagePath = '/sites/default/files/';
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: EnsCard(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: const BorderSide(color: EnsColors.neutral200, width: 1),
        ),
        padding: const EdgeInsets.fromLTRB(16, 16, 12, 16),
        onTap: onTap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (image != null)
              Padding(
                padding: const EdgeInsets.only(right: 8),
                child: SvgPicture.network(
                  'https://$cmsUrl$imagePath$image',
                  height: 60,
                  width: 60,
                  excludeFromSemantics: true,
                ),
              ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title, style: EnsTextStyle.text16_w400_primary),
                    const SizedBox(height: 8),
                    Text(content, style: EnsTextStyle.text14_w400_normal_body),
                    const SizedBox(height: 8),
                    if (isExternalLink)
                      EnsExternalLink.withoutRedirection(linkText: linkLabel)
                    else
                      Text(
                        linkLabel,
                        style: EnsTextStyle.text14_w700_normal_primary_underline,
                        overflow: TextOverflow.visible,
                        softWrap: true,
                      ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
