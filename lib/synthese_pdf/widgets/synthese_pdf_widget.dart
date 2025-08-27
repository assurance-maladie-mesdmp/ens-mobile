/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/files/domain/models/ens_file_content.dart';
import 'package:fr_cnamts_ens/profil_medical/vaccinations/screens/vaccinations_screen.dart';
import 'package:fr_cnamts_ens/tags/tags_onboarding.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/ens_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/multi_action_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/multi_action_illustration_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_expansion_panel.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:fr_cnamts_ens/utils/ens_date_utils.dart';
import 'package:fr_cnamts_ens/utils/opacity_utils.dart';
import 'package:pdfrx/pdfrx.dart';

class SynthesePdfWidget extends StatefulWidget {
  final String semanticLabel;
  final EnsFileContent synthesePdf;
  final String bottomTitle;
  final Widget bottomContent;
  final DateTime? bottomSubtitle;

  const SynthesePdfWidget({
    required this.semanticLabel,
    required this.synthesePdf,
    required this.bottomTitle,
    required this.bottomContent,
    this.bottomSubtitle,
  });

  @override
  State<SynthesePdfWidget> createState() => _SynthesePdfWidgetState();
}

class _SynthesePdfWidgetState extends State<SynthesePdfWidget> {
  bool _isPanelExpanded = true;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _Pdf(
          filename: widget.synthesePdf.filename,
          pdfFile: widget.synthesePdf.base64Content,
          semanticsLabel: widget.semanticLabel,
          closePanel: _closePanel,
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: SafeArea(
            bottom: !Platform.isIOS,
            child: _BottomTile(
              bottomTitle: widget.bottomTitle,
              updateDate: widget.bottomSubtitle,
              content: widget.bottomContent,
              isExpanded: _isPanelExpanded,
              expansionCallback: (_, __) => setState(() => _isPanelExpanded = !_isPanelExpanded),
            ),
          ),
        ),
      ],
    );
  }

  void _closePanel() {
    if (_isPanelExpanded) {
      setState(() {
        _isPanelExpanded = false;
      });
    }
  }
}

class _Pdf extends StatelessWidget {
  final String filename;
  final String pdfFile;
  final String semanticsLabel;
  final void Function() closePanel;

  const _Pdf({required this.filename, required this.pdfFile, required this.semanticsLabel, required this.closePanel});

  @override
  Widget build(BuildContext context) {
    return Semantics(
      image: true,
      label: semanticsLabel,
      child: PdfViewer.data(
        base64Decode(pdfFile),
        sourceName: filename,
        params: PdfViewerParams(
          onInteractionStart: (_) {
            closePanel();
          },
        ),
      ),
    );
  }
}

class _BottomTile extends StatelessWidget {
  final String bottomTitle;
  final Widget content;
  final bool isExpanded;
  final EnsExpansionPanelCallback? expansionCallback;
  final DateTime? updateDate;

  const _BottomTile({
    required this.bottomTitle,
    required this.content,
    required this.isExpanded,
    required this.expansionCallback,
    this.updateDate,
  });

  @override
  Widget build(BuildContext context) {
    return ScrollviewWithScrollbar(
      child: EnsExpansionPanelList(
        expansionCallback: expansionCallback,
        elevation: 24,
        animationDuration: const Duration(milliseconds: 600),
        expandedHeaderPadding: EdgeInsets.zero,
        children: [
          EnsExpansionPanel(
            isExpanded: isExpanded,
            iconColor: EnsColors.title,
            canTapOnHeader: true,
            shadow: isExpanded
                ? [
                    BoxShadow(
                      color: const Color(0x00192038).withAlpha(OpacityUtils.getAlpha(0.24)),
                      blurRadius: 48,
                      spreadRadius: 12,
                    ),
                  ]
                : [],
            headerBuilder: (_, __) => Padding(
              padding: const EdgeInsets.only(left: 24, top: 24, bottom: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    bottomTitle,
                    style: EnsTextStyle.text14_w700_normal_title,
                  ),
                  if (updateDate != null)
                    Text(
                      'Mis à jour le ${EnsDateUtils.formatddmmyyyy(updateDate!)}',
                      style: EnsTextStyle.text14_w400_normal_body,
                    ),
                ],
              ),
            ),
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: [
                  content,
                  const SizedBox(height: 36),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void showConfidentialiteBottomSheet({
  required BuildContext context,
  required String title,
  required String description,
  void Function()? tagOnPositive,
  void Function()? tagOnNegative,
  void Function()? tagOnClose,
  required void Function(bool) addSyntheseToDoc,
  required void Function() reset,
}) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    builder: (_) => MultiActionIllustrationBottomSheet(
      image: EnsImages.confidentialite_telechargement_des_donnees,
      width: 160,
      height: 160,
      title: title,
      helpText: description,
      actionOptions: [
        EnsMultiActionOption(
          buttonTitle: 'Rendre visible',
          buttonClickHandler: () {
            tagOnPositive?.call();
            addSyntheseToDoc(true);
            reset();
          },
          isPrimaryAction: true,
        ),
        EnsMultiActionOption(
          buttonTitle: 'Masquer',
          buttonClickHandler: () {
            tagOnNegative?.call();
            addSyntheseToDoc(false);
            reset();
          },
          isPrimaryAction: false,
        ),
      ],
      closeButtonHandler: () {
        tagOnClose?.call();
        reset();
      },
    ),
  );
}

void showIncitationVaccinationBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    builder: (_) => EnsIllustrationBottomSheet(
      title: 'Gérer le carnet de vaccination de mon enfant',
      subtitle:
          'Je peux ajouter des vaccinations au carnet de vaccination de mon enfant et anticiper ses prochaines vaccinations. Ce carnet est visible par le professionnel de santé autorisé. ',
      asset: EnsImages.vaccinations,
      positiveButtonLabel: 'Consulter la rubrique Vaccinations',
      positiveButtonHandler: () {
        context.tagAction(TagsOnboarding.tag_2642_button_consulter_la_rubrique_vaccination);
        Navigator.pushNamedAndRemoveUntil(context, VaccinationsScreen.routeName, (route) => route.isFirst);
      },
    ),
  );
}
