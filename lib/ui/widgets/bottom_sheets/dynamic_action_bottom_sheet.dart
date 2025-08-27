/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/analytics/domain/ens_analytics.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/ens_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_ink_well.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';

class DynamicActionBottomSheet extends StatelessWidget {
  final List<BottomSheetAction> actions;
  final String title;
  final TextStyle titleStyle;
  final EnsTag? pageTag;
  final String? description;
  final void Function()? closeButtonHandler;

  const DynamicActionBottomSheet._internal({
    required this.actions,
    required this.title,
    required this.pageTag,
    required this.titleStyle,
    this.description,
    this.closeButtonHandler,
  });

  @override
  Widget build(BuildContext context) {
    return EnsBottomSheet(
      closeButtonHandler: closeButtonHandler,
      pageTag: pageTag,
      contentPadding: EdgeInsets.zero,
      content: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            title,
            style: titleStyle,
            textAlign: TextAlign.center,
          ),
        ),
        if (description != null)
          Container(
            margin: const EdgeInsets.only(top: 16),
            child: Text(
              description!,
              style: EnsTextStyle.text14_w600_normal_body,
              textAlign: TextAlign.center,
            ),
          ),
        const SizedBox(height: 24),
        BottomSheetActionBuilder(actions: actions),
        const SizedBox(height: 8),
      ],
      stretch: true,
    );
  }

  static Future<void> showOptionsBottomSheet(
    List<BottomSheetAction> actions,
    BuildContext context, {
    String title = 'Sélectionner une action',
    EnsTag? pageTag,
    String? description,
    TextStyle titleStyle = EnsTextStyle.text26_w400_normal_title,
    void Function()? closeButtonHandler,
  }) async {
    final BottomSheetAction? choice = await showModalBottomSheet<BottomSheetAction?>(
      context: context,
      isScrollControlled: true,
      builder: (context) => DynamicActionBottomSheet._internal(
        pageTag: pageTag,
        actions: actions,
        title: title,
        titleStyle: titleStyle,
        description: description,
        closeButtonHandler: closeButtonHandler,
      ),
    );
    choice?.execution();
  }
}

class BottomSheetActionBuilder extends StatelessWidget {
  final List<BottomSheetAction> actions;

  const BottomSheetActionBuilder({required this.actions, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: actions
          .expand(
            (action) => [
              const Divider(color: EnsColors.neutral200, height: 2),
              _BottomSheetActionWidget(action: action),
            ],
          )
          .toList(),
    );
  }
}

class BottomSheetAction {
  final String assetName;
  final String label;
  final TextStyle labelTextStyle;
  final String? description;
  final TextStyle descriptionTextStyle;
  final void Function() execution;

  BottomSheetAction({
    this.labelTextStyle = EnsTextStyle.text16_w700,
    this.description,
    this.descriptionTextStyle = EnsTextStyle.text14_w400_normal_primary,
    required this.assetName,
    required this.label,
    required this.execution,
  });
}

class _BottomSheetActionWidget extends StatelessWidget {
  final BottomSheetAction action;

  const _BottomSheetActionWidget({
    required this.action,
  });

  @override
  Widget build(BuildContext context) {
    return EnsInkWell(
      color: EnsColors.light,
      onTap: () => Navigator.pop(context, action),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: Row(
          children: [
            EnsSvg(action.assetName, color: EnsColors.primary, width: 24, height: 24),
            const SizedBox(width: 16),
            Expanded(
              child: ShaderMask(
                blendMode: BlendMode.srcIn,
                shaderCallback: (bounds) =>
                    const LinearGradient(colors: [EnsColors.primary, Color(0xFF1058D1)]).createShader(
                  const Rect.fromLTWH(0.0, 0.0, 200.0, 70.0),
                ),
                child: action.description != null
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(action.label, style: action.labelTextStyle),
                          const SizedBox(height: 4),
                          Text(action.description!, style: action.descriptionTextStyle),
                        ],
                      )
                    : Text(action.label, style: action.labelTextStyle),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
