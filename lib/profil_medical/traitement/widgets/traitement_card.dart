/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_ink_well.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';

// ignore_for_file: dont_use_inkwell
class TraitementCardDisplayModel extends Equatable {
  final String name;
  final String durationInfo;

  const TraitementCardDisplayModel({required this.name, required this.durationInfo});

  @override
  List<Object?> get props => [name, durationInfo];
}

class TraitementCard extends StatelessWidget {
  final TraitementCardDisplayModel displayModel;
  final VoidCallback? onTap;
  final VoidCallback? onRemove;

  bool get isClickable => onTap != null;

  const TraitementCard({required this.displayModel, this.onTap, this.onRemove});

  @override
  Widget build(BuildContext context) => MergeSemantics(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: DecoratedBox(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: EnsColors.neutral200,
                width: 1,
              ),
              color: EnsColors.neutral100,
            ),
            child: isClickable
                ? _ClickableCard(
                    onTap: () {
                      onTap?.call();
                    },
                    name: displayModel.name,
                    durationInfo: displayModel.durationInfo,
                  )
                : _Card(
                    name: displayModel.name,
                    durationInfo: displayModel.durationInfo,
                    onRemove: onRemove,
                  ),
          ),
        ),
      );
}

class _ClickableCard extends StatelessWidget {
  final String name;
  final String durationInfo;
  final VoidCallback onTap;

  const _ClickableCard({
    required this.name,
    required this.durationInfo,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return EnsInkWell(
      borderRadius: BorderRadius.circular(8),
      onTap: onTap,
      child: _Card(name: name, durationInfo: durationInfo),
    );
  }
}

class _Card extends StatelessWidget {
  final String name;
  final String durationInfo;
  final VoidCallback? onRemove;

  const _Card({
    required this.name,
    required this.durationInfo,
    this.onRemove,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      child: Row(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 8, top: 12, bottom: 12, right: 12),
            child: EnsSvg(EnsImages.pill, width: 25, height: 25, color: EnsColors.primary),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(name, style: EnsTextStyle.text14_w700_normal_title),
                Text(durationInfo, style: EnsTextStyle.text14_w400_normal_body),
              ],
            ),
          ),
          const SizedBox(width: 12),
          if (onRemove != null)
            Material(
              borderRadius: BorderRadius.circular(16),
              color: EnsColors.neutral100,
              child: Semantics(
                button: true,
                label: 'Fermer la fenêtre',
                child: InkWell(
                  customBorder: const CircleBorder(),
                  onTap: onRemove,
                  child: Ink(
                    padding: const EdgeInsets.all(12),
                    child: const EnsSvg(
                      EnsImages.ic_close_small,
                      width: 10,
                      height: 10,
                      color: EnsColors.title,
                    ),
                  ),
                ),
              ),
            ),
          const SizedBox(width: 2),
        ],
      ),
    );
  }
}
