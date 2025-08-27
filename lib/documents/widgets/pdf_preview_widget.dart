/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:pdfrx/pdfrx.dart';

class PdfPreviewWidget extends StatefulWidget {
  final Uint8List fileBinary;
  final String sourceName;

  const PdfPreviewWidget({required this.fileBinary, required this.sourceName});

  @override
  State<PdfPreviewWidget> createState() => _PdfPreviewWidgetState();
}

class _PdfPreviewWidgetState extends State<PdfPreviewWidget> {
  late PdfViewerController _pdfViewerController;
  String pageIndicator = '';

  @override
  void initState() {
    _pdfViewerController = PdfViewerController();
    _pdfViewerController.addListener(() {
      if (mounted && _pdfViewerController.isReady) {
        setState(() {
          pageIndicator = '${_pdfViewerController.pageNumber} sur ${_pdfViewerController.pageCount}';
        });
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PdfViewer.data(
          widget.fileBinary,
          sourceName: widget.sourceName,
          controller: _pdfViewerController,
          params: const PdfViewerParams(maxScale: 40, enableTextSelection: true),
        ),
        Align(
          alignment: Alignment.topRight,
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Material(
              color: Colors.transparent,
              shape: const StadiumBorder(),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: EnsColors.success100,
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(pageIndicator, style: EnsTextStyle.text12_w400_normal_body),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
