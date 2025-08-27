/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/incitation/redux/incitation_pml_selectors.dart';
import 'package:fr_cnamts_ens/recommandations/redux/recommandations_redux.dart';
import 'package:redux/redux.dart';

class MessageSynthesePmlViewModel extends Equatable {
  final IncitationPmlStatus incitationPmlStatus;
  final bool isIncitationCompleted;
  final void Function() getRecommandation;

  const MessageSynthesePmlViewModel._internal({
    required this.isIncitationCompleted,
    required this.incitationPmlStatus,
    required this.getRecommandation,
  });

  factory MessageSynthesePmlViewModel.from(Store<EnsState> store) {
    return MessageSynthesePmlViewModel._internal(
      isIncitationCompleted: IncitationPmlSelectors.isIncitationCompleted(store.state),
      incitationPmlStatus: IncitationPmlSelectors.getIncitationPmlStatus(store.state),
      getRecommandation: () => store.dispatch(const FetchRecommandationsAction()),
    );
  }

  @override
  List<Object?> get props => [incitationPmlStatus, isIncitationCompleted];
}
