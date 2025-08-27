/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/utils/user_utils.dart';
import 'package:redux/redux.dart';

class RevocationAccesAidantConfirmationViewModel extends Equatable {
  final String firstName;
  final String? attestationDocumentId;

  const RevocationAccesAidantConfirmationViewModel._({
    required this.firstName,
    required this.attestationDocumentId,
  });

  factory RevocationAccesAidantConfirmationViewModel.from(Store<EnsState> store) {
    final deleteDelegationState = store.state.aideState.delegationsState.deleteDelegationState;

    return RevocationAccesAidantConfirmationViewModel._(
      firstName: UserUtils.getFirstName(deleteDelegationState.acteurFirstName),
      attestationDocumentId: deleteDelegationState.attestationDocumentId,
    );
  }

  @override
  List<Object?> get props => [firstName, attestationDocumentId];
}
