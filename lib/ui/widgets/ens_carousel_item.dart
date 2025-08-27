/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fr_cnamts_ens/home/widgets/viewmodels/raccourcis_widget_view_model.dart';
import 'package:fr_cnamts_ens/infra/injection/ens_module_container.dart';
import 'package:fr_cnamts_ens/prevention/screens/old_prevention_screen.dart';
import 'package:fr_cnamts_ens/prevention/screens/prevention_detail_screen.dart';
import 'package:fr_cnamts_ens/prevention/screens/prevention_link.dart';
import 'package:fr_cnamts_ens/profil_medical/traitement/screens/traitements_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/vaccinations/screens/vaccinations_screen.dart';
import 'package:fr_cnamts_ens/questionnaire_ages_cles/data/questionnaire_ages_cles_mapper.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_html.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_ink_well.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:fr_cnamts_ens/utils/opacity_utils.dart';
import 'package:fr_cnamts_ens/utils/text_scale_utils.dart';
import 'package:fr_cnamts_ens/utils/webpage_utils.dart';

abstract class EnsCarouselItem extends StatelessWidget {}

class EnsCarouselItemHomeActu extends EnsCarouselItem {
  final String id;
  final String? image;
  final String backgroundColor;
  final String? link;
  final String? linkName;
  final bool hasDetailArticle;
  final String content;
  final bool imageFromCms;
  final void Function()? tagOnTap;
  final bool shouldShowDetails;
  final bool shouldShowVisiteMedicaleBottomSheet;
  final QuestionnaireCode? questionnaireCode;

  EnsCarouselItemHomeActu({
    required this.id,
    required this.image,
    required this.backgroundColor,
    required this.link,
    required this.linkName,
    required this.hasDetailArticle,
    required this.content,
    this.imageFromCms = true,
    this.tagOnTap,
    this.shouldShowDetails = true,
    this.shouldShowVisiteMedicaleBottomSheet = false,
    this.questionnaireCode,
  });

  @override
  Widget build(BuildContext context) {
    final cmsUrl = EnsModuleContainer.currentInjector.getUrlsConfig().cmsUrl;
    const imagePath = '/sites/default/files/';
    return MergeSemantics(
      child: Padding(
        padding: const EdgeInsets.only(left: 18, top: 8, bottom: 8),
        child: DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: EnsColors.info.withAlpha(OpacityUtils.getAlpha(0.1)),
                blurRadius: 4,
                spreadRadius: 1,
                offset: const Offset(4, 4),
              ),
            ],
          ),
          child: EnsInkWell(
            color: EnsColors.light,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
              side: const BorderSide(color: EnsColors.light, width: 1),
            ),
            borderRadius: BorderRadius.circular(20),
            onTap: !shouldShowDetails
                ? null
                : () {
                    tagOnTap?.call();
                    if (hasDetailArticle) {
                      Navigator.pushNamed(
                        context,
                        PreventionDetailScreen.routeName,
                        arguments: PreventionDetailScreenArgument(articleId: id, isGenerique: false),
                      );
                    } else if (shouldShowVisiteMedicaleBottomSheet) {
                      showVisiteMedicaleBottomSheet(context, questionnaireCode);
                    } else if (link != null) {
                      launchUrlOrInternalLink(link!);
                    }
                  },
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: LayoutBuilder(
                builder: (context, constraints) {
                  final scaleFactor = TextScaleUtils.getTextScaleFactor(context);
                  const imageNormalHeight = 160;
                  const paddingHeight = 48;
                  final imageHeight = (imageNormalHeight + paddingHeight) * scaleFactor - paddingHeight;
                  final shouldShowImage = scaleFactor < 1.5;
                  return Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      if ((image == null && shouldShowImage) || !imageFromCms)
                        Center(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: SizedBox(
                              height: imageHeight,
                              width: 80,
                              child: Stack(
                                children: [
                                  EnsSvg(
                                    imageFromCms ? EnsImages.actu_sante_default : image!,
                                    fit: BoxFit.fitWidth,
                                    height: imageHeight,
                                    width: 52,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      else if (shouldShowImage)
                        Stack(
                          fit: StackFit.passthrough,
                          children: [
                            Center(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: SizedBox(
                                  height: imageHeight,
                                  width: 68,
                                  child: EnsSvg(
                                    backgroundColor,
                                    height: imageHeight,
                                    width: 68,
                                    fit: BoxFit.fitHeight,
                                  ),
                                ),
                              ),
                            ),
                            Center(
                              child: Container(
                                margin: const EdgeInsets.symmetric(horizontal: 8),
                                height: 52,
                                width: 52,
                                child: SvgPicture.network(
                                  'https://$cmsUrl$imagePath$image',
                                  height: 52,
                                  width: 52,
                                  excludeFromSemantics: true,
                                ),
                              ),
                            ),
                          ],
                        ),
                      const SizedBox(width: 16),
                      Flexible(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: EnsHtml(
                                data: content,
                                fontSize: 14,
                                lineHeight: 1.4,
                                fontWeight: FontWeight.w400,
                                maxLines: 6,
                              ),
                            ),
                            if (shouldShowDetails) PreventionLink(linkUrl: link, linkName: linkName),
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class EnsCarouselItemRaccourcis extends EnsCarouselItem {
  final RaccourcisWidgetViewModel vm;
  final String imagePath;
  final String label;
  final String? formattedMetricValue;
  final String? unit;
  final String? formattedDate;
  final void Function()? onTap;

  EnsCarouselItemRaccourcis({
    required this.vm,
    required this.imagePath,
    required this.label,
    this.formattedMetricValue,
    this.unit,
    this.formattedDate,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18, top: 8, bottom: 8),
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: EnsColors.info.withAlpha(OpacityUtils.getAlpha(0.1)),
              blurRadius: 4,
              spreadRadius: 1,
              offset: const Offset(4, 4),
            ),
          ],
        ),
        child: EnsInkWell(
          color: EnsColors.light,
          borderRadius: BorderRadius.circular(20),
          onTap: () {
            if (label == 'Ajouter un traitement' && vm.isAddTraitementForFirstTime) {
              vm.onAddTraitementFirstTime();
              showAddTraitementBottomSheetFirstTime(context);
            } else if (label == 'Ajouter une vaccination' && vm.isAddTraitementForFirstTime) {
              vm.onAddVaccinationFirstTime();
              showAddVaccinationBottomSheetFirstTime(context);
            } else {
              onTap?.call();
            }
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            child: _EnsCarouselItemRaccourcisContent(
              imagePath: imagePath,
              label: label,
              formattedMetricValue: formattedMetricValue,
              unit: unit,
              formattedDate: formattedDate,
            ),
          ),
        ),
      ),
    );
  }
}

class _EnsCarouselItemRaccourcisContent extends StatelessWidget {
  final String imagePath;
  final String label;
  final String? formattedMetricValue;
  final String? unit;
  final String? formattedDate;

  const _EnsCarouselItemRaccourcisContent({
    required this.imagePath,
    required this.label,
    this.formattedMetricValue,
    this.unit,
    this.formattedDate,
  });

  @override
  Widget build(BuildContext context) {
    if (formattedMetricValue != null && unit != null && formattedDate != null) {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.max,
        children: [
          EnsSvg(imagePath, height: 48, width: 48),
          const SizedBox(width: 8),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  label,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: EnsTextStyle.text14_w600_normal_title,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      formattedMetricValue!,
                      style: EnsTextStyle.text22_w700_normal_primary,
                    ),
                    if (unit! != '') const SizedBox(width: 4),
                    Text(
                      unit!,
                      style: EnsTextStyle.text14_w400_normal_title,
                    ),
                  ],
                ),
                Text(
                  formattedDate!,
                  style: EnsTextStyle.text12_w400_normal_body,
                ),
              ],
            ),
          ),
        ],
      );
    } else {
      return Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          EnsSvg(imagePath, height: 48, width: 48),
          const SizedBox(height: 8),
          Flexible(
            child: Text(
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              label,
              style: EnsTextStyle.text14_w600_normal_title,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      );
    }
  }
}

class EnsCarouselHomeEndItem extends EnsCarouselItem {
  final String label;
  final EdgeInsetsGeometry padding;
  final void Function() onTapAction;

  EnsCarouselHomeEndItem({
    required this.label,
    this.padding = const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
    required this.onTapAction,
  });

  @override
  Widget build(BuildContext context) {
    return MergeSemantics(
      child: Padding(
        padding: padding,
        child: DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(color: EnsColors.neutral200, blurRadius: 12, spreadRadius: 2, offset: Offset(4, 4)),
            ],
          ),
          child: EnsInkWell(
            color: EnsColors.light,
            borderRadius: BorderRadius.circular(20),
            onTap: onTapAction,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              child: Center(
                widthFactor: 1,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const EnsSvg(EnsImages.ic_arrow_short_right, width: 16, height: 12, color: EnsColors.primary),
                    const SizedBox(height: 16),
                    Text(
                      label,
                      textAlign: TextAlign.center,
                      style: EnsTextStyle.text16_w700_normal_primary,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class EnsCarouselItemImage extends EnsCarouselItem {
  final Image image;

  EnsCarouselItemImage(this.image);

  @override
  Widget build(BuildContext context) => image;
}
