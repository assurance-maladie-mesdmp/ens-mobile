/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/documents/domain/models/ens_document.dart';
import 'package:fr_cnamts_ens/documents/redux/documents_selectors.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/directives_anticipees/redux/directives_anticipees_redux.dart';
import 'package:fr_cnamts_ens/profils_rattaches/screens/profils_utils.dart';
import 'package:fr_cnamts_ens/utils/all_purposes_status.dart';
import 'package:fr_cnamts_ens/utils/extensions/profil_extension.dart';
import 'package:redux/redux.dart';

class DirectivesAnticipeesScreenViewModel extends Equatable {
  final ProfilType profilType;
  final String profilFullName;
  final AllPurposesWithEmptyStatus status;
  final EnsDocument? document;
  final void Function({bool force}) fetchDirectivesAnticipees;
  final void Function() deleteDirectivesAnticipees;

  const DirectivesAnticipeesScreenViewModel({
    required this.profilType,
    required this.profilFullName,
    required this.status,
    this.document,
    required this.fetchDirectivesAnticipees,
    required this.deleteDirectivesAnticipees,
  });

  factory DirectivesAnticipeesScreenViewModel.from(Store<EnsState> store) {
    final profilType = ProfilsUtils.getCurrentProfilType(store.state);
    final currentProfile = store.state.userState.currentProfile;
    final profilFullName = currentProfile.nomComplet;

    final directivesAnticipeesState = store.state.directivesAnticipeesState;
    EnsDocument? document;

    if (directivesAnticipeesState.isSuccess) {
      document = DocumentsSelectors.getLoadedDocumentById(store.state, directivesAnticipeesState.documentId!);
    }

    return DirectivesAnticipeesScreenViewModel(
      profilType: profilType,
      profilFullName: profilFullName,
      status: directivesAnticipeesState.status,
      document: document,
      fetchDirectivesAnticipees: ({force = false}) => store.dispatch(FetchDirectivesAnticipeesAction(force: force)),
      deleteDirectivesAnticipees: () => store.dispatch(DeleteDirectivesAnticipeesAction()),
    );
  }

  @override
  List<Object?> get props => [
        profilType,
        profilFullName,
        status,
        document,
      ];
}
