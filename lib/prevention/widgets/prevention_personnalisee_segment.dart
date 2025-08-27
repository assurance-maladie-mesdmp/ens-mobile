/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/cupertino.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/infra/injection/ens_module_container.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/prevention/screens/prevention_detail_screen.dart';
import 'package:fr_cnamts_ens/prevention/screens/prevention_link.dart';
import 'package:fr_cnamts_ens/prevention/screens/viewmodels/prevention_personnalisee_segment_view_model.dart';
import 'package:fr_cnamts_ens/questionnaire_ages_cles/data/questionnaire_ages_cles_mapper.dart';
import 'package:fr_cnamts_ens/tags/tags_prevention.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_html.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_ink_well.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/utils/webpage_utils.dart';

class PreventionPersonnaliseeSegment extends StatelessWidget {
  const PreventionPersonnaliseeSegment();

  @override
  Widget build(BuildContext context) {
    return StoreConnector<EnsState, PreventionPersonnaliseeSegmentViewModel>(
      converter: (store) => PreventionPersonnaliseeSegmentViewModel.from(store),
      onInitialBuild: (vm) {
        context.tagAction(TagsPrevention.tag_2357_prevention);
      },
      builder: (BuildContext context, vm) {
        return Column(
          children: vm.actuSanteDisplayModels
              .map(
                (displayModel) => ColoredBox(
                  color: EnsColors.body,
                  child: _CardItem(
                    id: displayModel.id,
                    background: displayModel.backgroundColor,
                    image: displayModel.image,
                    imageActuSantePage: displayModel.imageActuSantePage,
                    title: displayModel.title ?? '',
                    body: displayModel.body,
                    imageFromCms: displayModel.imageFromCms,
                    link: displayModel.link,
                    textLink: displayModel.textLink,
                    hasDetailArticle: displayModel.hasDetailArticle,
                    questionnaireCode: displayModel.questionnaireCode,
                  ),
                ),
              )
              .toList(),
        );
      },
    );
  }
}

class _CardItem extends StatelessWidget {
  final String id;
  final String background;
  final String? image;
  final String? imageActuSantePage;
  final String title;
  final String? body;
  final bool imageFromCms;
  final String? link;
  final String? textLink;
  final bool hasDetailArticle;
  final QuestionnaireCode? questionnaireCode;

  const _CardItem({
    required this.id,
    required this.background,
    this.image,
    this.imageActuSantePage,
    required this.title,
    this.body,
    this.link,
    this.textLink,
    required this.hasDetailArticle,
    required this.imageFromCms,
    this.questionnaireCode,
  });

  @override
  Widget build(BuildContext context) {
    final cmsUrl = EnsModuleContainer.currentInjector.getUrlsConfig().cmsUrl;
    const imagePath = '/sites/default/files/';
    return EnsInkWell(
      color: EnsColors.light,
      onTap: () {
        if (hasDetailArticle) {
          Navigator.pushNamed(
            context,
            PreventionDetailScreen.routeName,
            arguments: PreventionDetailScreenArgument(articleId: id, isGenerique: false),
          );
        } else if (link != null) {
          launchUrlOrInternalLink(link!);
        }
      },
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                if (!imageFromCms)
                  if (imageActuSantePage != null || image != null)
                    EnsSvg(imageActuSantePage ?? image!, fit: BoxFit.fill),
                if (imageFromCms)
                  EnsInkWell(
                    customBorder: RoundedRectangleBorder(borderRadius: _cardBorder(topBorder: 8)),
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: EnsColors.neutral100,
                        borderRadius: _cardBorder(topBorder: 8),
                        border: Border.all(
                          color: EnsColors.neutral200,
                          width: 1,
                        ),
                      ),
                      child: const Text(
                        'Suggéré par Mon espace santé',
                        style: EnsTextStyle.text14_w600_normal_primary_underline,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                Stack(
                  fit: StackFit.passthrough,
                  children: [
                    ClipRRect(
                      borderRadius: _cardBorder(bottomBorder: 8),
                      child: EnsSvg(background, fit: BoxFit.cover),
                    ),
                    Center(
                      child: Container(
                        margin: const EdgeInsets.symmetric(vertical: 40),
                        height: 80,
                        width: 80,
                        child: SvgPicture.network(
                          'https://$cmsUrl$imagePath$image',
                          height: 80,
                          width: 90,
                          excludeFromSemantics: true,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                if (title.isNotEmpty)
                  Text(
                    title,
                    style: EnsTextStyle.text16_w600_title,
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                  ),
                const SizedBox(height: 8),
                EnsHtml(
                  data: body ?? '',
                  lineHeight: 1.4,
                  maxLines: 3,
                ),
                const SizedBox(height: 8),
                if (textLink != null)
                  PreventionLink(
                    linkUrl: link,
                    linkName: textLink,
                    style: EnsTextStyle.text14_w700_normal_primary_underline,
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  BorderRadius _cardBorder({double topBorder = 0, double bottomBorder = 0}) {
    return BorderRadius.only(
      topLeft: Radius.circular(topBorder),
      topRight: Radius.circular(topBorder),
      bottomLeft: Radius.circular(bottomBorder),
      bottomRight: Radius.circular(bottomBorder),
    );
  }
}
