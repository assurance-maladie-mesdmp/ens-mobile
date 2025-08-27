/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/documents/redux/documents_redux.dart';
import 'package:fr_cnamts_ens/documents/screens/viewmodels/create_document_from_attachment_view_model.dart';
import 'package:fr_cnamts_ens/documents/widgets/create_document_loading_screen.dart';
import 'package:fr_cnamts_ens/documents/widgets/edit_document_form.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/messagerie/home_messagerie/domain/conversation_content.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';

class CreateDocumentFromAttachmentScreen extends StatelessWidget {
  static const routeName = '/createDocumentFromAttachment';

  const CreateDocumentFromAttachmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final argument = ModalRoute.of(context)!.settings.arguments as CreateDocumentFromAttachmentArgument?;

    return Scaffold(
      appBar: const EnsAppBarSubLevel(title: 'Ajouter un document'),
      body: StoreConnector<EnsState, CreateDocumentFromAttachmentViewModel>(
        distinct: true,
        converter: (store) => CreateDocumentFromAttachmentViewModel(store, argument!),
        builder: (BuildContext context, CreateDocumentFromAttachmentViewModel vm) => _Content(vm),
        onInit: (store) => store.dispatch(InitDocumentEditionAction()),
        onDidChange: (_, vm) {
          _goBackIfNeeded(context, vm);
        },
      ),
    );
  }

  void _goBackIfNeeded(BuildContext context, CreateDocumentFromAttachmentViewModel vm) {
    if (vm.status == CreateDocumentFromAttachmentStatus.SUCCESS) {
      Navigator.pop(context);
    }
  }
}

class CreateDocumentFromAttachmentArgument {
  final AttachmentContent attachmentContent;

  CreateDocumentFromAttachmentArgument(this.attachmentContent);
}

class _Form extends StatelessWidget {
  final CreateDocumentFromAttachmentViewModel vm;

  const _Form(this.vm);

  @override
  Widget build(BuildContext context) {
    return EditDocumentForm(
      onValidate: vm.sendDoc,
      editingDocument: vm.initialDoc,
      isUpdatingDocument: false,
    );
  }
}

class _Content extends StatelessWidget {
  final CreateDocumentFromAttachmentViewModel vm;

  const _Content(this.vm);

  @override
  Widget build(BuildContext context) {
    switch (vm.status) {
      case CreateDocumentFromAttachmentStatus.INIT:
        return _Form(vm);
      case CreateDocumentFromAttachmentStatus.UPLOADING:
        return const CreateDocumentLoadingScreen();
      case CreateDocumentFromAttachmentStatus.SUCCESS:
        return Container();
    }
  }
}
