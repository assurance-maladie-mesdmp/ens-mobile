/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/documents/redux/documents_redux.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:redux/redux.dart';

class RenameDossierViewModel extends Equatable {
  final DossierStatus renameDossierStatus;
  final List<String> alreadyExistingDossierNames;
  final String dossierName;
  final void Function() init;
  final void Function() resetState;
  final void Function(String dossierName) renameDossier;

  const RenameDossierViewModel._({
    required this.renameDossierStatus,
    required this.alreadyExistingDossierNames,
    required this.dossierName,
    required this.init,
    required this.resetState,
    required this.renameDossier,
  });

  factory RenameDossierViewModel.from(Store<EnsState> store, {required String dossierId}) {
    List<String> alreadyExistingDossierNames = [];
    final renameDossierStatus = store.state.documentsState.renameDossierStatus;
    final documentsListState = store.state.documentsState.documentsListState;
    final dossier = store.state.documentsState.documentsListState.dossiers[dossierId];

    if (documentsListState.status.isSuccess()) {
      alreadyExistingDossierNames =
          documentsListState.dossiers.values.map((dossier) => dossier.name.trim().toLowerCase()).toList();
    }
    return RenameDossierViewModel._(
      renameDossierStatus: renameDossierStatus,
      alreadyExistingDossierNames: alreadyExistingDossierNames,
      dossierName: dossier?.name.trim() ?? '',
      init: () => store.dispatch(ResetRenameDossierAction()),
      resetState: () {
        if (renameDossierStatus.isDossierNameError) {
          store.dispatch(ResetRenameDossierAction());
        }
      },
      renameDossier: (dossierName) => store.dispatch(
        RenameDossierAction(dossierId: dossierId, dossierName: dossierName),
      ),
    );
  }

  @override
  List<Object?> get props => [renameDossierStatus, alreadyExistingDossierNames, dossierName];
}
