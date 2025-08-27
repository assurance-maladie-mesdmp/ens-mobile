/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/groupe_sanguin/domain/groupe_sanguin.dart';
import 'package:fr_cnamts_ens/profil_medical/groupe_sanguin/redux/groupe_sanguin_redux.dart';
import 'package:redux/redux.dart';

class SelectionGroupeSanguinBottomSheetViewModel extends Equatable {
  final bool isLoading;
  final void Function(GroupeSanguin) onValidate;

  const SelectionGroupeSanguinBottomSheetViewModel._internal({
    required this.isLoading,
    required this.onValidate,
  });

  factory SelectionGroupeSanguinBottomSheetViewModel.from(
    Store<EnsState> store,
  ) {
    return SelectionGroupeSanguinBottomSheetViewModel._internal(
      isLoading: store.state.groupeSanguinState.latestOperationStatus.isLoading(),
      onValidate: (GroupeSanguin groupeSanguin) {
        store.dispatch(SendGroupeSanguinAction(groupeSanguin));
      },
    );
  }

  @override
  List<Object?> get props => [isLoading];
}
