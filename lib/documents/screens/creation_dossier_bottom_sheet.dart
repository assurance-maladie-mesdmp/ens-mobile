/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/documents/screens/viewmodels/creation_dossier_view_model.dart';
import 'package:fr_cnamts_ens/infra/injection/ens_module_container.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/tags/tags_documents.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/ens_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/champs_obligatoires_widget.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_form.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_snackbar_content.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/counted_text_input.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/validators.dart';
import 'package:fr_cnamts_ens/utils/error_helper.dart';
import 'package:fr_cnamts_ens/utils/extensions/form_extensions.dart';

final _formKey = GlobalKey<FormState>();
final _inputKey = GlobalKey();
final _scrollController = ScrollController();

class CreationDossierBottomSheet extends StatelessWidget {
  static const _NAME_MAX_CHARACTERS = 50;
  final TextEditingController folderNameTextInputController;

  const CreationDossierBottomSheet(this.folderNameTextInputController);

  @override
  Widget build(BuildContext context) {
    return EnsBottomSheet(
      withInsetsBottom: true,
      content: [
        const Text(
          'Créer un nouveau dossier',
          style: EnsTextStyle.text26_w400_normal_title,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 16),
        const ChampsObligatoiresFormTextWidget(displayFullText: false),
        const SizedBox(height: 24),
        StoreConnector<EnsState, CreationDossierViewModel>(
          converter: (store) => CreationDossierViewModel.from(store),
          distinct: true,
          onInitialBuild: (vm) {
            vm.init();
            context.tagAction(TagsDocuments.tag_506_popin_ajouter_un_dossier);
          },
          onWillChange: (oldVm, newVm) {
            if (oldVm?.createDossierStatus.isNotSuccess == true && newVm.createDossierStatus.isSuccess) {
              Navigator.pop(context);
            }
          },
          builder: (_, vm) => EnsForm(
            formKey: _formKey,
            scrollController: _scrollController,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: [
                if (vm.createDossierStatus.isGenericError) ...[
                  if (EnsModuleContainer.currentInjector.isGuestMode())
                    EnsSnackBarContent(
                      contentType: EnsSnackbarContentType.INFO,
                      text: GUEST_MODE_ERROR_MESSAGE,
                      showCloseButton: false,
                    )
                  else
                    EnsSnackBarContent(
                      contentType: EnsSnackbarContentType.ERROR,
                      text: GENERIC_ERROR_MESSAGE,
                      showCloseButton: false,
                    ),
                  const SizedBox(height: 24),
                ],
                CountedTextInput.withBorders(
                  key: _inputKey,
                  label: 'Nom du dossier',
                  autofocus: true,
                  controller: folderNameTextInputController,
                  validatorCallback: (value) => requiredFolderNameTextFieldValidator(
                    value?.trim(),
                    _NAME_MAX_CHARACTERS,
                    vm.alreadyExistingDossierNames,
                  ),
                  onTextDidChange: (_) => vm.resetState(),
                  enabled: vm.createDossierStatus.isNotLoading,
                  errorMsgToDisplay: vm.createDossierStatus.isDossierNameError ? USE_OTHER_DOSSIER_NAME_ERROR : null,
                ),
                const SizedBox(height: 24),
                Row(
                  children: [
                    Expanded(
                      child: EnsButton(
                        label: 'Créer le dossier',
                        isDisabled: vm.createDossierStatus.isLoading,
                        isLoading: vm.createDossierStatus.isLoading,
                        loadingText: 'Création du dossier...',
                        size: EnsButtonSize.SMALL,
                        onTap: () {
                          _validateAndSend(vm, context);
                        },
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24),
              ],
            ),
          ),
        ),
      ],
    );
  }

  void _validateAndSend(CreationDossierViewModel vm, BuildContext context) {
    final validation = _formKey.validate();
    validation.onValid(() {
      vm.createDossier(folderNameTextInputController.text.trim());
      context.tagAction(TagsDocuments.tag_699_button_ajouter_un_dossier);
    });
  }
}
