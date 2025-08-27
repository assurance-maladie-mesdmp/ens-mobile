/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profils_rattaches/screens/profils_utils.dart';
import 'package:redux/redux.dart';

class ProfilMedicalScreenViewModel extends Equatable {
  final ProfilType profilType;
  final bool isDocumentSuccess;

  const ProfilMedicalScreenViewModel._({
    required this.profilType,
    required this.isDocumentSuccess,
  });

  factory ProfilMedicalScreenViewModel.from(Store<EnsState> store) {
    final isFetchDocumentsSuccess = store.state.documentsState.documentsListState.status.isSuccess();
    final profilType = ProfilsUtils.getCurrentProfilType(store.state);

    return ProfilMedicalScreenViewModel._(
      profilType: profilType,
      isDocumentSuccess: isFetchDocumentsSuccess,
    );
  }

  @override
  List<Object?> get props => [
        profilType,
        isDocumentSuccess,
      ];
}
