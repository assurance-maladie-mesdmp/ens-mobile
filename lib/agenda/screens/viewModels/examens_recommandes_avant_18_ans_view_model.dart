/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:collection/collection.dart';
import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/agenda/domain/models/examen_recommande_extension.dart';
import 'package:fr_cnamts_ens/agenda/screens/viewModels/agenda_screen_view_model.dart';
import 'package:fr_cnamts_ens/agenda/screens/viewModels/examens_recommandes_view_model.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/user/redux/user_selectors.dart';
import 'package:fr_cnamts_ens/utils/ens_date_utils.dart';
import 'package:fr_cnamts_ens/utils/extensions/datetime_extension.dart';
import 'package:redux/redux.dart';

class ExamensRecommandesAvant18AnsViewModel extends Equatable {
  final List<AgendaScreenItemDisplayModel> displayModels;

  const ExamensRecommandesAvant18AnsViewModel._({
    required this.displayModels,
  });

  factory ExamensRecommandesAvant18AnsViewModel(Store<EnsState> store) {
    final examensState = store.state.agendaState.examensRecommandesState;
    final birthDate = UserSelectors.getBirthdate(store.state);
    final List<AgendaScreenItemDisplayModel> displayModels = [
      ExamenRecommandeAvant18AnsHeaderDisplayModel(),
    ];
    if (birthDate != null) {
      displayModels.addAll(
        examensState.examens
            .where((examen) => examen.startDate.isBefore(birthDate.addYear(18)))
            .sorted(sortExamenRecommande)
            .map(
          (examen) {
            return ExamenRecommandeItemDisplayModel(
              id: examen.id,
              title: examen.title,
              dateDebut: examen.startDate,
              status: examen.status,
              inFuture: false,
              thisYear: false,
              dateLabel:
                  'Du ${EnsDateUtils.formatddmmyyyy(examen.startDate)} au ${EnsDateUtils.formatddmmyyyy(examen.endDate)}',
              chipStatus: examen.toChipLabel(),
            );
          },
        ),
      );
    }
    return ExamensRecommandesAvant18AnsViewModel._(displayModels: displayModels);
  }

  @override
  List<Object?> get props => [displayModels];
}

class ExamenRecommandeAvant18AnsHeaderDisplayModel extends AgendaScreenItemDisplayModel {}
