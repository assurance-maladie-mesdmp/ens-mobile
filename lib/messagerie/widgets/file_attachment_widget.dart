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
class FileAttachmentWidget extends StatelessWidget {
  final FileAttachmentDisplayModel dm;
  final VoidCallback? onRemove;
  final VoidCallback? onTap;
  final Color backgroundColor;

  const FileAttachmentWidget({
    super.key,
    required this.dm,
    this.onRemove,
    this.onTap,
    this.backgroundColor = EnsColors.neutral100,
  });

  @override
  Widget build(BuildContext context) {
    return EnsInkWell(
      color: backgroundColor,
      borderRadius: const BorderRadius.all(Radius.circular(8)),
      onTap: onTap,
      child: Container(
        height: 48,
        decoration: BoxDecoration(
          border: Border.all(color: EnsColors.neutral200, width: 1),
          borderRadius: const BorderRadius.all(Radius.circular(8)),
        ),
        child: dm.isDeleting || dm.isUploading
            ? _LoadingRow(dm.isUploading)
            : _AttachmentRow(
                isEnabled: dm.isEnabled,
                dm: dm,
                onRemove: onRemove,
                onTap: onTap,
                backgroundColor: backgroundColor,
              ),
      ),
    );
  }
}

class FileAttachmentDisplayModel extends Equatable {
  final String documentId;
  final String name;
  final bool isEnabled;
  final bool isDeleting;
  final bool isUploading;

  const FileAttachmentDisplayModel({
    required this.documentId,
    required this.name,
    this.isEnabled = true,
    this.isDeleting = false,
    this.isUploading = false,
  });

  @override
  List<Object?> get props => [documentId, name, isDeleting, isEnabled, isUploading];
}

class _AttachmentRow extends StatelessWidget {
  final bool isEnabled;
  final FileAttachmentDisplayModel dm;
  final VoidCallback? onRemove;
  final VoidCallback? onTap;
  final Color backgroundColor;

  const _AttachmentRow({
    this.isEnabled = true,
    required this.dm,
    required this.onRemove,
    required this.onTap,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      child: Row(
        children: [
          const SizedBox(width: 8),
          EnsSvg(
            EnsImages.ic_file_blank_filled,
            width: 24,
            height: 24,
            color: isEnabled ? EnsColors.primary : EnsColors.body,
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              dm.name,
              style: isEnabled ? EnsTextStyle.text14_w700_normal_title : EnsTextStyle.text14_w700_normal_body,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const SizedBox(width: 12),
          if (onRemove != null)
            Material(
              borderRadius: BorderRadius.circular(16),
              color: backgroundColor,
              child: Semantics(
                button: true,
                label: 'Fermer la fenêtre',
                child: InkWell(
                  customBorder: const CircleBorder(),
                  onTap: isEnabled ? () => onRemove?.call() : null,
                  child: Ink(
                    padding: const EdgeInsets.all(12),
                    child: EnsSvg(
                      EnsImages.ic_close_small,
                      width: 10,
                      height: 10,
                      color: isEnabled ? EnsColors.title : EnsColors.body,
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

class _LoadingRow extends StatelessWidget {
  final bool isUploading;

  const _LoadingRow(this.isUploading);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: SizedBox(
            width: 16,
            height: 16,
            child: CircularProgressIndicator(
              color: EnsColors.body,
              strokeWidth: 3,
            ),
          ),
        ),
        Expanded(
          child: Text(
            isUploading ? 'Ajout en cours\u2026' : 'Suppression en cours\u2026',
            style: EnsTextStyle.text14_w700_normal_body,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
