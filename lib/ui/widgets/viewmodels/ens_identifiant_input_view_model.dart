/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/enrolement/domain/disponibilite_identifiant.dart';
import 'package:fr_cnamts_ens/enrolement/redux/enrolement_redux.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_initial_state.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/ens_identifiant_input_validator.dart';
import 'package:redux/redux.dart';

class EnsIdentifiantInputViewModel extends Equatable {
  final DisponibiliteIdentifiant disponibiliteIdentifiant;
  final void Function(String) checkIdentifiant;
  final void Function() clearSuggestions;
  final EnsIdentifiantInputValidator validator;

  const EnsIdentifiantInputViewModel._({
    required this.disponibiliteIdentifiant,
    required this.checkIdentifiant,
    required this.clearSuggestions,
    required this.validator,
  });

  factory EnsIdentifiantInputViewModel.from(Store<EnsInitialState> store) {
    final state = store.state.enrolementState;
    return EnsIdentifiantInputViewModel._(
      disponibiliteIdentifiant: state.disponibiliteIdentifiantState.disponibiliteIdentifiant,
      validator: EnsIdentifiantInputValidator(
        disponibiliteIdentifiant: state.disponibiliteIdentifiantState.disponibiliteIdentifiant,
        numeroSecu: state.userIdentite.numeroSecu,
      ),
      checkIdentifiant: (value) => store.dispatch(FetchDisponibiliteIdentifiantAction(identifiant: value)),
      clearSuggestions: () => store.dispatch(ClearDisponibiliteIdentifiantAction()),
    );
  }

  @override
  List<Object?> get props => [disponibiliteIdentifiant, validator];
}
