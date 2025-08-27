/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/agenda/domain/models/examen_recommande.dart';
import 'package:fr_cnamts_ens/agenda/redux/agenda_redux.dart';
import 'package:fr_cnamts_ens/agenda/redux/examens_selectors.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/user/redux/user_selectors.dart';
import 'package:redux/redux.dart';

class ExamensRecommandesFilterDialogViewModel with EquatableMixin {
  final List<ExamenStatus> availableStatus;
  final List<ExamenStatus> preselectedStatus;
  final List<String> availableTypes;
  final List<String> preselectedTypes;
  final void Function() onResetFilters;
  final void Function(List<String> filters) onUpdateTypeFilters;
  final void Function(List<ExamenStatus> filters) onUpdateStatusFilters;

  const ExamensRecommandesFilterDialogViewModel._({
    required this.availableStatus,
    required this.preselectedStatus,
    required this.availableTypes,
    required this.preselectedTypes,
    required this.onResetFilters,
    required this.onUpdateTypeFilters,
    required this.onUpdateStatusFilters,
  }) : super();

  factory ExamensRecommandesFilterDialogViewModel.from(Store<EnsState> store) {
    final examens = ExamensSelectors.getExamens(
      examensState: store.state.agendaState.examensRecommandesState,
      isMainProfile: store.state.userState.isMainProfile,
      birthDate: UserSelectors.getBirthdate(store.state),
    );

    final availableStatus = examens.map((status) => status.status).toSet().toList();
    final preselectedStatus = store.state.agendaState.examensRecommandesState.filteredStatus;
    final availableTypes = examens.map((type) => type.type).toSet().nonNulls.toList();
    final preselectedTypes = store.state.agendaState.examensRecommandesState.filteredTypes;

    return ExamensRecommandesFilterDialogViewModel._(
      availableStatus: availableStatus,
      preselectedStatus: preselectedStatus,
      availableTypes: availableTypes,
      preselectedTypes: preselectedTypes,
      onResetFilters: () => store.dispatch(ReinitializeExamensRecommandesFiltersAction()),
      onUpdateTypeFilters: (filters) => store.dispatch(UpdateExamensRecommandesTypeExamenFilterAction(filters)),
      onUpdateStatusFilters: (filters) => store.dispatch(UpdateExamensRecommandesStatutFilterAction(filters)),
    );
  }

  @override
  List<Object?> get props => [availableStatus, preselectedStatus, availableTypes, preselectedTypes];
}
