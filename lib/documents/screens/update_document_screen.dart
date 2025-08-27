/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/documents/domain/models/editing_document.dart';
import 'package:fr_cnamts_ens/documents/domain/models/ens_document.dart';
import 'package:fr_cnamts_ens/documents/domain/models/ens_document_categorie.dart';
import 'package:fr_cnamts_ens/documents/redux/documents_redux.dart';
import 'package:fr_cnamts_ens/documents/screens/viewmodels/update_document_screen_view_model.dart';
import 'package:fr_cnamts_ens/documents/widgets/edit_document_form.dart';
import 'package:fr_cnamts_ens/guestmode/widgets/bottom_sheet_guest_mode.dart';
import 'package:fr_cnamts_ens/infra/injection/ens_module_container.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/tags/tags_documents.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:lottie/lottie.dart';

class UpdateDocumentScreen extends StatelessWidget {
  static const routeName = '/updateDocument';

  const UpdateDocumentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final argument = ModalRoute.of(context)!.settings.arguments as UpdateDocumentScreenArgument?;

    return Scaffold(
      appBar: const EnsAppBarSubLevel(title: 'Modifier un document'),
      body: StoreConnector<EnsState, UpdateDocumentScreenViewModel>(
        distinct: true,
        converter: (store) => UpdateDocumentScreenViewModel(store, argument!),
        builder: (context, vm) => _Content(vm: vm),
        onInit: (store) => store.dispatch(InitDocumentEditionAction()),
        onInitialBuild: (vm) {
          if (vm.docToUpdate.isCovidCertificate) {
            vm.tagAction(TagsDocuments.tag_101_attestation_vaccinale_details_edit);
          }
          if (EnsModuleContainer.currentInjector.isGuestMode()) {
            displayGuestModeBottomSheetWithConnexion(context);
          }
        },
        onWillChange: (oldVm, vm) {
          if (oldVm?.status != UpdateDocumentStatus.SUCCESS && vm.status == UpdateDocumentStatus.SUCCESS) {
            Navigator.pop(context);
          }
        },
      ),
    );
  }
}

class _Content extends StatelessWidget {
  final UpdateDocumentScreenViewModel vm;

  const _Content({required this.vm});

  @override
  Widget build(BuildContext context) {
    switch (vm.status) {
      case UpdateDocumentStatus.INIT:
        return _Form(vm);
      case UpdateDocumentStatus.UPLOADING:
        return const _UploadingContent();
      case UpdateDocumentStatus.SUCCESS:
        return Container();
    }
  }
}

class UpdateDocumentScreenArgument {
  final EnsDocument docToUpdate;
  final EnsDocumentCategorie? forcedCategory;

  UpdateDocumentScreenArgument({required this.docToUpdate, this.forcedCategory});
}

class _UploadingContent extends StatelessWidget {
  const _UploadingContent();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 12),
          Lottie.asset('assets/anims/file_upload.json', fit: BoxFit.contain, height: 166),
          const Text(
            'Modification en cours\u2026',
            textAlign: TextAlign.center,
            style: EnsTextStyle.text14_w700_normal_primary,
          ),
          const SizedBox(height: 42),
        ],
      ),
    );
  }
}

class _Form extends StatelessWidget {
  final UpdateDocumentScreenViewModel vm;

  const _Form(this.vm);

  @override
  Widget build(BuildContext context) {
    return EditDocumentForm(
      onValidate: vm.updateDoc,
      forcedCategory: vm.forcedCategory,
      editingDocument: EditingDocument.fromEnsDocument(vm.docToUpdate),
      isUpdatingDocument: true,
    );
  }
}
