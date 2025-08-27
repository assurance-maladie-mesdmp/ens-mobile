/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/documents/screens/create_document_from_file_screen.dart';
import 'package:fr_cnamts_ens/documents/screens/images/multi_image_pdf_preview_screen.dart';
import 'package:fr_cnamts_ens/infra/receive_sharing/receive_sharing_view_model.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_initial_state.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/utils/navigation_utils.dart';

class ReceiveSharingContainer extends StatelessWidget {
  final Widget child;

  const ReceiveSharingContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) => StoreConnector<EnsInitialState, ReceiveSharingViewModel>(
        converter: (store) => ReceiveSharingViewModel.from(store),
        distinct: true,
        onInitialBuild: (vm) {
          _goToPreviewScreen(context, vm);
        },
        onWillChange: (_, vm) {
          _goToPreviewScreen(context, vm);
        },
        builder: (_, __) => child,
      );

  void _goToPreviewScreen(BuildContext context, ReceiveSharingViewModel vm) {
    if (vm.hasReceivedSharingFiles) {
      navigateInApp('/documents');
      vm.resetReceiveSharing();
      if (_shouldGoToPreviewScreen(vm)) {
        if (vm.isFirstPageToAdd(StoreProvider.of<EnsState>(context))) {
          vm.addPage(StoreProvider.of<EnsState>(context));
          Navigator.pushNamed(
            context,
            MultiImagesPdfPreviewScreen.routeName,
            arguments: MultiImagesPdfPreviewArgument(),
          );
        } else {
          vm.addPage(StoreProvider.of<EnsState>(context));
        }
      } else {
        Navigator.pushNamed(
          context,
          CreateDocumentFromFileScreen.routeName,
          arguments: CreateDocumentFromFileArgument(ensFileContent: vm.fileContents[0]),
        );
      }
    }
  }

  bool _shouldGoToPreviewScreen(ReceiveSharingViewModel vm) {
    for (final file in vm.fileContents) {
      if (file.mimeType == 'image/jpeg' || file.mimeType == 'image/jpg' || file.mimeType == 'image/png') {
        return true;
      }
    }
    return false;
  }
}
