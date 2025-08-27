/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/parameters/consentements_ps/redux/consentements_ps_redux.dart';
import 'package:fr_cnamts_ens/traces/domain/ens_send_trace.dart';
import 'package:fr_cnamts_ens/traces/redux/traces_redux.dart';
import 'package:redux/redux.dart';

class BlockPsViewModel extends Equatable {
  final void Function(String nationalId, String nomPs) blockPs;

  @override
  List<Object?> get props => [];

  const BlockPsViewModel._internal({required this.blockPs});

  factory BlockPsViewModel.from(Store<EnsState> store) {
    return BlockPsViewModel._internal(
      blockPs: (nationalId, nomPs) {
        store.dispatch(BlockPsAction(nationalId));
        store.dispatch(
          SendTraceAction(EnsSendTrace(EnsTraceType.RETRAIT_STATUT_MEDECIN_ADMIN, params: {'nomPS': nomPs})),
        );
      },
    );
  }
}
