/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/incitation/redux/incitation_pml_selectors.dart';
import 'package:fr_cnamts_ens/recommandations/redux/recommandations_redux.dart';
import 'package:fr_cnamts_ens/utils/all_purposes_status.dart';
import 'package:redux/redux.dart';

class PmlButtonViewModel extends Equatable {
  final IncitationPmlStatus incitationPml;
  final AllPurposesStatus status;
  final void Function() fetchRecommandations;

  const PmlButtonViewModel._({
    required this.incitationPml,
    required this.status,
    required this.fetchRecommandations,
  });

  factory PmlButtonViewModel.from(Store<EnsState> store) {
    return PmlButtonViewModel._(
      incitationPml: IncitationPmlSelectors.getIncitationPmlStatus(store.state),
      status: store.state.recommandationsState.status,
      fetchRecommandations: () {
        if (IncitationPmlSelectors.pmlStatusChanged(store.state)) {
          store.dispatch(const FetchRecommandationsAction(force: true));
        }
      },
    );
  }

  @override
  List<Object?> get props => [incitationPml, status];
}
