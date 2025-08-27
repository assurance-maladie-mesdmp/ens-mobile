/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of '../screens/document_preview_screen.dart';

class _NonDisplayableDocument extends StatelessWidget {
  final EnsDocument document;
  final DocumentPreviewScreenViewModel viewModel;

  const _NonDisplayableDocument({required this.document, required this.viewModel});

  @override
  Widget build(BuildContext context) {
    return StoreConnector<EnsState, AnalyticsViewModel>(
      converter: (store) => AnalyticsViewModel(store),
      distinct: true,
      builder: (context, vm) => ScrollviewWithScrollbar(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 24, right: 24, top: 24, bottom: 16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: DeviceUtils.isSmallDevice(context) ? 8 : 40,
                ),
                SizedBox(
                  width: double.infinity,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: EnsColors.neutral200,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(height: 23),
                          EnsSvg(EnsImages.document_ajout, height: 160, width: 160),
                          SizedBox(height: 4),
                          Text(
                            'Aperçu non disponible',
                            textAlign: TextAlign.center,
                            style: EnsTextStyle.text20_w600_normal_title,
                          ),
                          SizedBox(height: 24),
                          Text(
                            'Aucun aperçu disponible pour ce type de document',
                            style: EnsTextStyle.text16_w400_normal_body,
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 30),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                Row(
                  children: [
                    Expanded(
                      child: EnsButton(
                        label: Platform.isAndroid ? 'Télécharger le document' : 'Ouvrir le document',
                        onTap: () {
                          vm.tagAction(TagsDocuments.tag_button_consulter_un_document_apercu_indisponible_ouvrir);
                          DocumentActionsHelper.downloadDocument(context, docToDisplay: document);
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
