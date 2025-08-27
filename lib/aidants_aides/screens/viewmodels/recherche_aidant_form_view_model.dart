/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/aidants_aides/domain/potentiel_aidant.dart';
import 'package:fr_cnamts_ens/aidants_aides/redux/aidants_aides_redux.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/utils/all_purposes_status.dart';
import 'package:redux/redux.dart';

class RechercheAidantFormViewModel extends Equatable {
  final AllPurposesStatus formStatus;
  final PotentielAidant? potentielAidant;
  final bool isNumeroSecuFromScan;
  final String? numeroSecuFromScan;
  final void Function({
    required String lastName,
    required String firstName,
    required DateTime birthDate,
    required String numeroSecu,
  }) sendForm;

  const RechercheAidantFormViewModel._({
    required this.formStatus,
    required this.potentielAidant,
    required this.isNumeroSecuFromScan,
    this.numeroSecuFromScan,
    required this.sendForm,
  });

  factory RechercheAidantFormViewModel.from(Store<EnsState> store) {
    final sendInvitationState = store.state.aideState.sendInvitationState;
    return RechercheAidantFormViewModel._(
      formStatus: sendInvitationState.rechercheAidantFormStatus,
      potentielAidant: sendInvitationState.potentielAidant,
      isNumeroSecuFromScan: sendInvitationState.numeroSecuFromScan != null,
      numeroSecuFromScan: sendInvitationState.numeroSecuFromScan,
      sendForm: ({
        required String lastName,
        required String firstName,
        required DateTime birthDate,
        required String numeroSecu,
      }) {
        store.dispatch(
          FetchPotentielAidantAction(
            lastName: lastName,
            firstName: firstName,
            birthDate: birthDate,
            numeroSecu: numeroSecu,
          ),
        );
      },
    );
  }

  @override
  List<Object?> get props => [formStatus, potentielAidant, numeroSecuFromScan, isNumeroSecuFromScan];
}
