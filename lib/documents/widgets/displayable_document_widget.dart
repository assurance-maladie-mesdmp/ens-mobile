/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of '../screens/document_preview_screen.dart';

class _DisplayableDocumentWidget extends StatelessWidget {
  final DocumentPreviewScreenViewModel vm;
  final DocumentDetailDisplayModelDisplayable displayModel;

  const _DisplayableDocumentWidget(this.vm, this.displayModel);

  @override
  Widget build(BuildContext context) {
    return _DocumentDisplayablePreview(
      vm: vm,
      displayModel: displayModel,
      isMesureExtraite: displayModel.ensFileContent.mesureIds.isNotEmpty,
      mesureIds: displayModel.ensFileContent.mesureIds,
    );
  }
}

class _DocumentDisplayablePreview extends StatelessWidget {
  final DocumentPreviewScreenViewModel vm;
  final DocumentDetailDisplayModelDisplayable displayModel;
  final bool isMesureExtraite;
  final List<String> mesureIds;

  const _DocumentDisplayablePreview({
    required this.vm,
    required this.displayModel,
    required this.isMesureExtraite,
    required this.mesureIds,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        if (isMesureExtraite)
          ColoredBox(
            color: EnsColors.neutral200,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(24, 16, 24, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Text(
                    'Des données de ce document ont été ajoutées à vos mesures dans votre Profil médical.',
                    style: EnsTextStyle.text14_w600_normal_title,
                  ),
                  EnsLinkText(
                    label: mesureIds.length == 1 && vm.extractMesuresTypes.length == 1
                        ? 'Voir la mesure'
                        : 'Voir les mesures',
                    textPadding: const EdgeInsets.symmetric(vertical: 16),
                    splashColor: EnsColors.neutral400,
                    highlightColor: EnsColors.neutral400,
                    isLoading: vm.extractMesuresStatus.isLoading(),
                    onTap: () {
                      final extractMesuresTypes = vm.extractMesuresTypes;
                      if (extractMesuresTypes.contains(EnsMesureType.UNKNOWN)) {
                        Navigator.pushNamed(context, LastMesuresScreen.routeName);
                      } else {
                        if (mesureIds.length == 1 && extractMesuresTypes.length == 1) {
                          Navigator.pushNamed(
                            context,
                            MesureHistoryScreen.routeName,
                            arguments: extractMesuresTypes.first,
                          );
                        } else {
                          DynamicActionBottomSheet.showOptionsBottomSheet(
                            _redirectMesuresBottomSheetContent(context, extractMesuresTypes),
                            context,
                            title: 'Voir les mesures',
                            titleStyle: EnsTextStyle.text24_w400_normal_title,
                          );
                        }
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        Expanded(child: _Content(vm: vm, displayModel: displayModel)),
        if (vm.shouldDisplayDocumentSharingPanel) _BottomTileContent(document: displayModel.document),
      ],
    );
  }
}

class _Content extends StatelessWidget {
  final DocumentPreviewScreenViewModel vm;
  final DocumentDetailDisplayModelDisplayable displayModel;

  const _Content({required this.vm, required this.displayModel});

  @override
  Widget build(BuildContext context) {
    if (displayModel.ensFileContent.mimeType == MimeType.PDF.label) {
      return FutureBuilder<bool>(
        future: displayModel.isEncryptedPdf,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return snapshot.data!
                ? _DocumentPreviewNotAvailable.protectedPdf(onTap: () => _onDownloadPreviewNotAvailable(context))
                : PdfPreviewWidget(
                    fileBinary: base64.decode(displayModel.ensFileContent.base64Content.replaceAll(RegExp(r'\s+'), '')),
                    sourceName: displayModel.document.title,
                  );
          }
          if (snapshot.hasError && snapshot.error is PlatformException) {
            final errorDetails = (snapshot.error as PlatformException?)?.details;
            if ((errorDetails as String).contains('password required or incorrect password')) {
              return _DocumentPreviewNotAvailable.protectedPdf(onTap: () => _onDownloadPreviewNotAvailable(context));
            }
          } else if (snapshot.hasError) {
            return _DocumentPreviewNotAvailable.formatNotSupported(
              onTap: () => _onDownloadPreviewNotAvailable(context),
            );
          }
          return const Center(child: CircularProgressIndicator(color: EnsColors.body, strokeWidth: 3));
        },
      );
    }
    return ImagePreviewWidget(
      base64.decode(displayModel.ensFileContent.base64Content.replaceAll(RegExp(r'\s+'), '')),
      displayModel.document.title,
    );
  }

  void _onDownloadPreviewNotAvailable(BuildContext context) {
    DocumentActionsHelper.downloadDocument(
      context,
      docToDisplay: displayModel.document,
      tag: _tagDownloadActionClick(context, vm),
    );
  }
}

List<BottomSheetAction> _redirectMesuresBottomSheetContent(
  BuildContext context,
  List<EnsMesureType> extractMesuresTypes,
) {
  return extractMesuresTypes.map(
    (mesureType) {
      String label = '';
      if (mesureType == EnsMesureType.HEMOGLOBINE_GLYQUEE) {
        label = 'Voir la mesure d\'${mesureType.label}';
      } else {
        label = 'Voir la mesure de ${mesureType.label}';
      }
      return BottomSheetAction(
        assetName: EnsImages.ic_mesure,
        label: label,
        execution: () {
          Navigator.pushNamed(context, MesureHistoryScreen.routeName, arguments: mesureType);
        },
      );
    },
  ).toList();
}

class _BottomTileContent extends StatefulWidget {
  final EnsDocument document;

  const _BottomTileContent({required this.document});

  @override
  State<_BottomTileContent> createState() => _BottomTileContentState();
}

class _BottomTileContentState extends State<_BottomTileContent> {
  bool _isPanelExpanded = true;

  @override
  Widget build(BuildContext context) {
    return EnsExpansionPanelList(
      expansionCallback: (_, __) => setState(() => _isPanelExpanded = !_isPanelExpanded),
      elevation: 24,
      animationDuration: const Duration(milliseconds: 600),
      expandedHeaderPadding: EdgeInsets.zero,
      children: [
        EnsExpansionPanel(
          isExpanded: _isPanelExpanded,
          iconColor: EnsColors.title,
          canTapOnHeader: true,
          headerBuilder: (_, __) => const Padding(
            padding: EdgeInsets.only(left: 24, top: 24, bottom: 24),
            child: Text('Je transmets mon document', style: EnsTextStyle.text14_w700_normal_title),
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    EnsSvg(EnsImages.document_partage, height: 64),
                    SizedBox(width: 12),
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'J’envoie mon avis d’arrêt de travail sous 48 heures à mon employeur (ou à France Travail si je suis au chômage).',
                            style: EnsTextStyle.text14_w400_normal_body,
                          ),
                          EnsExternalLink.withRedirection(
                            linkUrl:
                                'https://www.ameli.fr/yvelines/assure/droits-demarches/maladie-accident-hospitalisation/arret-travail-maladie',
                            linkText: 'En savoir plus',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                EnsButton(
                  leadingIconPath: EnsImagesExtension.icShare,
                  label: 'Partager le document',
                  verticalPadding: 16,
                  onTap: () {
                    context.tagAction(TagsDocuments.tag_2480_button_partager_aat_documents);
                    GuestModeHelper.showUnavailableSnackbarIfGuestMode(
                      context: context,
                      onAuthenticatedMode: () =>
                          openShareBottomSheet(context, widget.document.id, widget.document.title),
                    );
                  },
                ),
                const SizedBox(height: 16),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
