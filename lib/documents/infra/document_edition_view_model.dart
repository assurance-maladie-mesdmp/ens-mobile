/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/documents/redux/documents_redux.dart';
import 'package:fr_cnamts_ens/files/domain/models/ens_file_content.dart';
import 'package:fr_cnamts_ens/files/domain/models/ens_file_image_content.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/snackbar/redux/snackbar_actions.dart';
import 'package:redux/redux.dart';

class DocumentEditionViewModel extends AnalyticsViewModel {
  final Store<EnsState> _store;

  const DocumentEditionViewModel(this._store) : super(_store);

  void addPage(List<EnsFileContent> fileContent) {
    _store.dispatch(AddDocumentPageAction(fileContent));
  }

  void addScannedPage(List<OriginalImage> fileContent) {
    _store.dispatch(AddScannedDocumentPageAction(fileContent));
  }

  void showErrorSnackbar() {
    _store.dispatch(
      const DisplaySnackbarAction.error(
        'Une erreur est survenue. Impossible de récupérer votre document.',
      ),
    );
  }

  bool isPagesEmpty() => _store.state.documentsState.multiPagesListState is! MultiPagesListWithPages;
}
