/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/files/domain/models/ens_file_content.dart';
import 'package:fr_cnamts_ens/files/screens/share_bottom_sheet_view_model.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/tags/tags_documents.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/confirmation_bottom_sheet.dart';

void openShareBottomSheet(BuildContext context, String documentId, String documentName) {
  showModalBottomSheet(
    isScrollControlled: true,
    context: context,
    builder: (BuildContext context) {
      return StoreConnector<EnsState, ShareBottomSheetViewModel>(
        converter: (store) => ShareBottomSheetViewModel(store),
        onInitialBuild: (_) {
          _tagWarning(context);
        },
        onDidChange: (oldVm, newVm) {
          if (oldVm?.status.isNotSuccess() == true && newVm.status.isSuccess()) {
            Navigator.pop(context);
            newVm.reInitShareState();
          }
        },
        builder: (context, vm) {
          return ConfirmationBottomSheet(
            title: 'Partager ce document ?',
            content: const Text(
              'Vos documents de santé sont sensibles et sont stockés de manière sécurisée dans Mon espace santé.\nAssurez-vous de limiter leur partage en dehors de Mon espace santé.',
              style: EnsTextStyle.text16_w400_normal_body,
              textAlign: TextAlign.center,
            ),
            positiveButtonLabel: 'Partager',
            positiveButtonColor: EnsColors.primary,
            shouldPopOnPositiveClick: false,
            loading: vm.status.isLoading(),
            negativeButtonHandler: () {
              _tagNegativeClick(context);
            },
            positiveButtonHandler: () {
              _tagPositiveClick(context);
              vm.shareDocument(documentId, documentName);
            },
            setButtonsToVerySmallSize: true,
          );
        },
      );
    },
  );
}

void openShareContentBottomSheet(BuildContext context, EnsFileContent document, String documentName) {
  showModalBottomSheet(
    isScrollControlled: true,
    context: context,
    builder: (BuildContext context) {
      return StoreConnector<EnsState, ShareBottomSheetViewModel>(
        converter: (store) => ShareBottomSheetViewModel(store),
        onInitialBuild: (_) {
          _tagWarning(context);
        },
        onDidChange: (oldvm, newVm) {
          if (oldvm?.status.isNotSuccess() == true && newVm.status.isSuccess()) {
            Navigator.pop(context);
            newVm.reInitShareState();
          }
        },
        builder: (context, vm) {
          return ConfirmationBottomSheet(
            title: 'Partager ce document ?',
            content: const Text(
              'Vos documents de santé sont sensibles et sont stockés de manière sécurisée dans Mon espace santé.\nAssurez-vous de limiter leur partage en dehors de Mon espace santé.',
              style: EnsTextStyle.text16_w400_normal_body,
              textAlign: TextAlign.center,
            ),
            positiveButtonLabel: 'Partager',
            positiveButtonColor: EnsColors.primary,
            shouldPopOnPositiveClick: false,
            loading: vm.status.isLoading(),
            negativeButtonHandler: () {
              _tagNegativeClick(context);
            },
            positiveButtonHandler: () {
              _tagPositiveClick(context);
              vm.shareDocumentContent(document, documentName);
            },
            setButtonsToVerySmallSize: true,
          );
        },
      );
    },
  );
}

void _tagWarning(BuildContext context) {
  context.tagAction(TagsDocuments.tag_774_partager_document_ok);
}

void _tagPositiveClick(BuildContext context) {
  context.tagAction(TagsDocuments.tag_774_partager_document_ok);
}

void _tagNegativeClick(BuildContext context) {
  context.tagAction(TagsDocuments.tag_775_partager_document_cancel);
}
