/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/documents/domain/models/ens_document.dart';
import 'package:fr_cnamts_ens/documents/infra/document_edition_view_model.dart';
import 'package:fr_cnamts_ens/interruption_services/widget/interruption_service_helper.dart';
import 'package:fr_cnamts_ens/messagerie/widgets/add_attachment_file_button.dart';
import 'package:fr_cnamts_ens/profil_medical/domain/models/ens_pml_section.dart';
import 'package:fr_cnamts_ens/profil_medical/hospitalisations/screens/edit_hospitalisation_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/maladies/screen/edit_maladie_screen.dart';
import 'package:fr_cnamts_ens/profils_rattaches/screens/profils_utils.dart';
import 'package:fr_cnamts_ens/utils/add_documents_actions_helper.dart';

class AddLinkedDocumentWidget extends StatelessWidget {
  final List<String> alreadySelectedDocsIds;
  final EnsPmlSection pmlSection;
  final Function(List<EnsDocument>) onExistingMESDocsSelectedCallback;
  final bool isAttachedFile;
  final String? interruptionServiceSnackbarMessage;
  final ProfilType profilType;

  const AddLinkedDocumentWidget({
    super.key,
    required this.alreadySelectedDocsIds,
    required this.pmlSection,
    required this.onExistingMESDocsSelectedCallback,
    this.isAttachedFile = false,
    required this.interruptionServiceSnackbarMessage,
    required this.profilType,
  });

  @override
  Widget build(BuildContext context) {
    return AddAttachmentFileButton(
      label: 'Ajouter un document',
      onTap: () {
        InterruptionServiceHelper.showSnackbarOnInterruption(
          context,
          interruptionServiceSnackbarMessage: interruptionServiceSnackbarMessage,
          onNotInterrompu: () {
            AddDocumentsActionsHelper(
              vm: DocumentEditionViewModel(StoreProvider.of(context)),
              sourceRouteName: _getRouteName(),
              isAttachedFile: isAttachedFile,
            ).openAddDocumentActions(
              context: context,
              alreadySelectedDocsIds: alreadySelectedDocsIds,
              mesDocPickerHeaderInfoText: _getMesDocPickerHeaderInfoTextFromSection,
              onExistingMESDocsSelectedCallback: onExistingMESDocsSelectedCallback,
            );
          },
        );
      },
    );
  }

  String get _getMesDocPickerHeaderInfoTextFromSection {
    switch (profilType) {
      case ProfilType.PROFIL_PRINCIPAL:
        return switch (pmlSection) {
          EnsPmlSection.HOSPITALISATIONS => 'Sélectionner les documents à ajouter à votre hospitalisation',
          EnsPmlSection.MALADIES => 'Sélectionner les documents à ajouter à votre maladie ou sujet de santé',
          _ => 'Sélectionner les documents à ajouter à votre messagerie'
        };
      case ProfilType.AIDE:
      case ProfilType.AYANT_DROIT:
        return switch (pmlSection) {
          EnsPmlSection.HOSPITALISATIONS => 'Sélectionner les documents à ajouter à son hospitalisation',
          EnsPmlSection.MALADIES => 'Sélectionner les documents à ajouter à sa maladie ou sujet de santé',
          _ => 'Sélectionner les documents à ajouter à sa messagerie'
        };
    }
  }

  String _getRouteName() {
    return switch (pmlSection) {
      EnsPmlSection.HOSPITALISATIONS => EditHospitalisationScreen.routeName,
      EnsPmlSection.MALADIES => EditMaladieScreen.routeName,
      _ => EditMaladieScreen.routeName
    };
  }
}
