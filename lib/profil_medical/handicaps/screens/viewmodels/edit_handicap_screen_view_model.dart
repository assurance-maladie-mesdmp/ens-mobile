/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/handicaps/domain/ens_handicap.dart';
import 'package:fr_cnamts_ens/profil_medical/handicaps/redux/handicaps_redux.dart';
import 'package:fr_cnamts_ens/utils/all_purposes_status.dart';
import 'package:redux/redux.dart';

class EditHandicapScreenViewModel extends Equatable {
  final AllPurposesStatus handicapEditStatus;
  final Function(EditingHandicap) onValidate;

  const EditHandicapScreenViewModel._({
    required this.handicapEditStatus,
    required this.onValidate,
  });

  factory EditHandicapScreenViewModel.from(Store<EnsState> store) {
    return EditHandicapScreenViewModel._(
      onValidate: (handicap) => store.dispatch(
        SaveHandicapAction(editingHandicap: handicap, isUpdating: handicap.id != null),
      ),
      handicapEditStatus: store.state.handicapsState.handicapEditStatus,
    );
  }

  @override
  List<Object?> get props => [handicapEditStatus];
}
