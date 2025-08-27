/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/handicaps/domain/ens_handicap.dart';
import 'package:fr_cnamts_ens/profil_medical/handicaps/redux/handicaps_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/handicaps/screens/edit_handicap_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/handicaps/screens/viewmodels/handicaps_screen_view_model.dart';
import 'package:redux/redux.dart';

class HandicapDetailViewModel extends Equatable {
  final String id;
  final String name;
  final String? technicalHelp;
  final String type;
  final String? disabilityRate;
  final String? humanHelp;
  final String? comment;
  final EnsHandicap argumentForModify;
  final void Function() deleteHandicap;

  const HandicapDetailViewModel._({
    required this.id,
    required this.name,
    required this.technicalHelp,
    required this.type,
    required this.disabilityRate,
    required this.humanHelp,
    required this.comment,
    required this.argumentForModify,
    required this.deleteHandicap,
  });

  factory HandicapDetailViewModel.from(Store<EnsState> store, String handicapId) {
    final handicapsState = store.state.handicapsState;
    final handicap = handicapsState.handicapsListState.handicaps[handicapId]!;
    return HandicapDetailViewModel._(
      id: handicap.id,
      name: handicap.name,
      type: handicap.types.formatList().join(', '),
      technicalHelp: handicap.technicalHelp,
      disabilityRate: handicap.disabilityRate?.label,
      humanHelp: _getHumanHelp(handicap.humanHelp),
      comment: handicap.comment,
      argumentForModify: handicap,
      deleteHandicap: () => store.dispatch(DeleteHandicapAction(handicap.id)),
    );
  }

  static String? _getHumanHelp(EnsHumanHelp humanHelp) {
    if (humanHelp == EnsHumanHelp.NO) {
      return 'Non, je ne bénéficie d\'aucune aide humaine';
    } else if (humanHelp == EnsHumanHelp.YES) {
      return 'Oui, je bénéficie d\'une aide humaine';
    } else {
      return null;
    }
  }

  @override
  List<Object?> get props => [
        id,
        name,
        technicalHelp,
        type,
        disabilityRate,
        humanHelp,
        comment,
        argumentForModify,
      ];
}
