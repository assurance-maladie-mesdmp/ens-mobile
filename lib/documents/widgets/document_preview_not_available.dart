/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of '../screens/document_preview_screen.dart';

class _DocumentPreviewNotAvailable extends StatelessWidget {
  final void Function() onTap;
  final String title;

  const _DocumentPreviewNotAvailable.protectedPdf({
    required this.onTap,
  }) : title = 'Document protégé';

  const _DocumentPreviewNotAvailable.formatNotSupported({
    required this.onTap,
  }) : title = 'Aperçu non disponible';

  @override
  Widget build(BuildContext context) => Column(
        children: [
          const Spacer(flex: 1),
          Container(
            decoration: BoxDecoration(
              color: EnsColors.neutral200,
              borderRadius: BorderRadius.circular(12),
            ),
            margin: const EdgeInsets.symmetric(horizontal: 24),
            padding: const EdgeInsets.symmetric(horizontal: 24),
            width: double.infinity,
            child: Column(
              children: [
                const SizedBox(height: 40),
                const EnsSvg(EnsImages.document_information, height: 160, width: 160),
                Text(title, style: EnsTextStyle.text20_w400_normal_title),
                const SizedBox(height: 20),
                const Text(
                  'Aucun aperçu disponible pour ce type de document.',
                  style: EnsTextStyle.text16_w400_normal_body,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 40),
              ],
            ),
          ),
          const SizedBox(height: 24),
          EnsButton(
            label: 'Télécharger le document',
            onTap: onTap,
          ),
          const Spacer(flex: 2),
        ],
      );
}
