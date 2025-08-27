/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'dart:convert';
import 'dart:typed_data';
import 'package:fr_cnamts_ens/files/domain/models/ens_file_content.dart';
import 'package:fr_cnamts_ens/files/domain/models/ens_multi_page_result.dart';
import 'package:fr_cnamts_ens/files/domain/models/mimetype.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

class PdfGenerator {
  Future<MultiPageGenerationResult> toPdf(List<Uint8List?> pages) async {
    try {
      final pdf = pw.Document();
      for (final element in pages) {
        pdf.addPage(
          pw.Page(
            pageFormat: PdfPageFormat.a4,
            build: (context) => pw.Center(
              child: pw.Image(
                pw.MemoryImage(
                  element!,
                ),
              ),
            ),
          ),
        );
      }

      return MultiPageGenerationResult.success(
        EnsFileContent(
          filename: '',
          base64Content: base64Encode(await pdf.save()),
          mimeType: MimeTypeUtils.PDF_LABEL,
        ),
      );
    } catch (e) {
      return const MultiPageGenerationResult.error();
    }
  }
}
