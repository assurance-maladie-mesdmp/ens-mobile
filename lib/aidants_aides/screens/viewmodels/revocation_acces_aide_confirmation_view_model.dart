/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/files/domain/models/ens_file_content.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/utils/user_utils.dart';
import 'package:redux/redux.dart';

class RevocationAccesAideConfirmationViewModel extends Equatable {
  final String firstName;
  final EnsFileContent? attestation;

  const RevocationAccesAideConfirmationViewModel._({
    required this.firstName,
    required this.attestation,
  });

  factory RevocationAccesAideConfirmationViewModel.from(Store<EnsState> store) {
    final deleteDelegationState = store.state.aidantState.delegationsState.deleteDelegationState;

    return RevocationAccesAideConfirmationViewModel._(
      firstName: UserUtils.getFirstName(deleteDelegationState.acteurFirstName),
      attestation: deleteDelegationState.attestationPdf,
    );
  }

  @override
  List<Object?> get props => [firstName, attestation];
}
