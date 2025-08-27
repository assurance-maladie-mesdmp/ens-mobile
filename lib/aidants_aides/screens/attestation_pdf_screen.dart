/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/documents/screens/viewmodels/document_actions_helper.dart';
import 'package:fr_cnamts_ens/files/domain/models/ens_file_content.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_ink_well.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:pdfrx/pdfrx.dart';

class AttestationPdfScreen extends StatelessWidget {
  static const routeName = '/aidants_aides/attestation_pdf';

  @override
  Widget build(BuildContext context) {
    final pdf = ModalRoute.of(context)!.settings.arguments! as EnsFileContent;
    return Scaffold(
      appBar: EnsAppBarSubLevel(
        title: pdf.filename,
        action: EnsInkWell(
          child: const EnsSvg(EnsImages.ic_download),
          onTap: () => DocumentActionsHelper.downloadFile(context, file: pdf),
        ),
      ),
      body: Stack(
        children: [
          Semantics(
            image: true,
            label: 'Justificatif au format PDF',
            child: PdfViewer.data(sourceName: pdf.filename, base64Decode(pdf.base64Content)),
          ),
        ],
      ),
    );
  }
}
