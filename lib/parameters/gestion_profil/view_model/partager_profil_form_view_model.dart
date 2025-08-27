/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/parameters/gestion_profil/domain/partager_profil_form_status.dart';
import 'package:fr_cnamts_ens/parameters/gestion_profil/redux/form/partager_profil_form_redux.dart';
import 'package:fr_cnamts_ens/user/redux/user_selectors.dart';
import 'package:redux/redux.dart';

class PartagerProfilFormViewModel extends Equatable {
  final PartagerProfilFromStatus status;
  final String patientName;
  final bool isNumeroSecuFromScan;
  final String? numeroSecuFromScan;
  final void Function(
    String lastName,
    String firstName,
    DateTime birthDate,
    String securitySocialNumber,
  ) sendForm;

  const PartagerProfilFormViewModel._({
    required this.status,
    required this.patientName,
    required this.isNumeroSecuFromScan,
    this.numeroSecuFromScan,
    required this.sendForm,
  });

  factory PartagerProfilFormViewModel(Store<EnsState> store) {
    final partagerProfilState = store.state.partagerProfilFormState;
    return PartagerProfilFormViewModel._(
      status: partagerProfilState.status,
      patientName: UserSelectors.getFirstName(store.state) ?? '',
      isNumeroSecuFromScan: partagerProfilState.numeroSecuFromScan != null,
      numeroSecuFromScan: partagerProfilState.numeroSecuFromScan,
      sendForm: (lastName, firstName, birthDate, numeroSecu) {
        store.dispatch(
          PartagerProfilFormAction(
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
  List<Object?> get props => [status, patientName, numeroSecuFromScan, isNumeroSecuFromScan];
}
