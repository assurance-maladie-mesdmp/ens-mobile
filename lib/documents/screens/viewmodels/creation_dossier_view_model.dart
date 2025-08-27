/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/documents/redux/documents_redux.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:redux/redux.dart';

class CreationDossierViewModel extends Equatable {
  final DossierStatus createDossierStatus;
  final List<String> alreadyExistingDossierNames;
  final void Function() init;
  final void Function() resetState;
  final void Function(String) createDossier;

  const CreationDossierViewModel._({
    required this.createDossierStatus,
    required this.alreadyExistingDossierNames,
    required this.init,
    required this.resetState,
    required this.createDossier,
  });

  factory CreationDossierViewModel.from(Store<EnsState> store) {
    List<String> alreadyExistingDossierNames = [];
    final createDossierStatus = store.state.documentsState.createDossierStatus;
    final documentsListState = store.state.documentsState.documentsListState;
    if (documentsListState.status.isSuccess()) {
      alreadyExistingDossierNames =
          documentsListState.dossiers.values.map((dossier) => dossier.name.trim().toLowerCase()).toList();
    }
    return CreationDossierViewModel._(
      createDossierStatus: createDossierStatus,
      alreadyExistingDossierNames: alreadyExistingDossierNames,
      init: () => store.dispatch(ResetCreateDossierAction()),
      resetState: () {
        if (createDossierStatus.isDossierNameError) {
          store.dispatch(ResetCreateDossierAction());
        }
      },
      createDossier: (folderName) => store.dispatch(CreateDossierAction(folderName)),
    );
  }

  @override
  List<Object?> get props => [createDossierStatus, alreadyExistingDossierNames];
}
