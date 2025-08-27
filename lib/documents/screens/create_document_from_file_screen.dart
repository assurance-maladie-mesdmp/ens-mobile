/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/documents/domain/models/ens_document.dart';
import 'package:fr_cnamts_ens/documents/domain/models/ens_document_categorie.dart';
import 'package:fr_cnamts_ens/documents/redux/documents_redux.dart';
import 'package:fr_cnamts_ens/documents/screens/dossier_detail_screen.dart';
import 'package:fr_cnamts_ens/documents/screens/viewmodels/create_document_from_file_view_model.dart';
import 'package:fr_cnamts_ens/documents/widgets/create_document_loading_screen.dart';
import 'package:fr_cnamts_ens/documents/widgets/edit_document_form.dart';
import 'package:fr_cnamts_ens/files/domain/models/ens_file_content.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/directives_anticipees/screens/directives_anticipees_screen.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';

class CreateDocumentFromFileScreen extends StatelessWidget {
  static const routeName = '/createDocumentFromFile';

  @override
  Widget build(BuildContext context) {
    final argument = ModalRoute.of(context)!.settings.arguments as CreateDocumentFromFileArgument?;

    return Scaffold(
      appBar: const EnsAppBarSubLevel(title: 'Ajouter un document'),
      body: StoreConnector<EnsState, CreateDocumentFromFileViewModel>(
        onInit: (store) => store.dispatch(InitDocumentEditionFromFileAction(argument!.ensFileContent)),
        distinct: true,
        converter: (store) => CreateDocumentFromFileViewModel(store, argument!),
        builder: (context, vm) => _Content(vm: vm),
        onDidChange: (_, vm) {
          _goBackIfNeeded(context, vm);
        },
      ),
    );
  }

  void _goBackIfNeeded(BuildContext context, CreateDocumentFromFileViewModel vm) {
    if (vm.status == CreateDocumentFromFileStatus.SUCCESS) {
      if (vm.forcedCategory == EnsDocumentCategorie.directivesAnticipees) {
        Navigator.popUntil(context, ModalRoute.withName(DirectivesAnticipeesScreen.routeName));
      } else if (vm.dossierId != null) {
        Navigator.popUntil(context, ModalRoute.withName(DossierDetailScreen.routeName));
      } else {
        Navigator.popUntil(context, (route) => route.isFirst);
      }
    } else if (vm.status == CreateDocumentFromFileStatus.INIT_ERROR) {
      Navigator.pop(context);
    }
  }
}

class _Content extends StatelessWidget {
  final CreateDocumentFromFileViewModel vm;

  const _Content({required this.vm});

  @override
  Widget build(BuildContext context) {
    switch (vm.status) {
      case CreateDocumentFromFileStatus.INIT:
        return const _InitializingContent();
      case CreateDocumentFromFileStatus.INIT_SUCCESS:
      case CreateDocumentFromFileStatus.UPLOADING_ERROR:
        return _Form(vm);
      case CreateDocumentFromFileStatus.UPLOADING:
        return const CreateDocumentLoadingScreen();
      case CreateDocumentFromFileStatus.SUCCESS:
      case CreateDocumentFromFileStatus.INIT_ERROR:
        return Container();
    }
  }
}

class CreateDocumentFromFileArgument {
  final EnsFileContent ensFileContent;
  final EnsDocumentCategorie? forcedCategory;
  final bool isDocumentCreatedToBeLinked;
  final String? dossierId;
  final String? sourceRouteName;

  CreateDocumentFromFileArgument({
    required this.ensFileContent,
    this.forcedCategory,
    this.isDocumentCreatedToBeLinked = false,
    this.dossierId,
    this.sourceRouteName,
  });
}

class _InitializingContent extends StatelessWidget {
  const _InitializingContent();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Analyse du document en cours\u2026'),
          CircularProgressIndicator.adaptive(),
        ],
      ),
    );
  }
}

class _Form extends StatelessWidget {
  final CreateDocumentFromFileViewModel vm;

  const _Form(this.vm);

  @override
  Widget build(BuildContext context) {
    final CreateDocumentFromFileArgument? argument =
        ModalRoute.of(context)!.settings.arguments as CreateDocumentFromFileArgument?;

    return EditDocumentForm(
      dossierId: vm.dossierId,
      editingDocument: vm.initialDoc,
      forcedCategory: vm.forcedCategory,
      onValidate: vm.isDocumentCreatedToBeLinked
          ? (DocumentEdition newDoc) {
              vm.storeLinkDocuments(newDoc);
              argument!.sourceRouteName == null
                  ? Navigator.pop(context)
                  : Navigator.popUntil(context, ModalRoute.withName(argument.sourceRouteName!));
            }
          : vm.sendDoc,
      isUpdatingDocument: false,
    );
  }
}
