/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:clock/clock.dart';
import 'package:collection/collection.dart';
import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/agenda/domain/models/exam_recommander_date_utils.dart';
import 'package:fr_cnamts_ens/agenda/domain/models/examen_recommande.dart';
import 'package:fr_cnamts_ens/agenda/domain/models/examen_recommande_extension.dart';
import 'package:fr_cnamts_ens/agenda/redux/agenda_redux.dart';
import 'package:fr_cnamts_ens/agenda/redux/examens_selectors.dart';
import 'package:fr_cnamts_ens/agenda/screens/viewModels/agenda_screen_view_model.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profils_rattaches/screens/profils_utils.dart';
import 'package:fr_cnamts_ens/user/redux/user_selectors.dart';
import 'package:fr_cnamts_ens/utils/ens_date_utils.dart';
import 'package:fr_cnamts_ens/utils/extensions/datetime_extension.dart';
import 'package:redux/redux.dart';

class ExamensRecommandesViewModel extends Equatable {
  final bool isMainProfile;
  final bool showExamensBefore18YearsOldButton;
  final List<ExamenRecommandeItemDisplayModel> displayModels;
  final int filtersNumber;
  final void Function() onResetFilters;
  final ProfilType profilType;

  const ExamensRecommandesViewModel({
    required this.isMainProfile,
    required this.showExamensBefore18YearsOldButton,
    required this.displayModels,
    required this.filtersNumber,
    required this.onResetFilters,
    required this.profilType,
  });

  factory ExamensRecommandesViewModel.from(Store<EnsState> store) {
    final examensState = store.state.agendaState.examensRecommandesState;
    final now = clock.now().toLocal();
    final isMainProfile = store.state.userState.isMainProfile;

    final examensRecommandes = ExamensSelectors.getFilteredExamens(
      examensState: examensState,
      isMainProfile: isMainProfile,
      birthDate: UserSelectors.getBirthdate(store.state),
    );

    final profilType = ProfilsUtils.getCurrentProfilType(store.state);

    final examens = examensRecommandes.sorted(sortExamenRecommande).map(
      (examen) {
        final inFuture = examen.endDate.isAfter(now) &&
            examen.status == ExamenStatus.A_PLANIFIER &&
            examen.startDate.isBefore(DateTime(now.year + 2, 1, 1));
        final shouldDisplayChip = examen.startDate.isBefore(now) || examen.status != ExamenStatus.A_PLANIFIER;
        final thisYear =
            ExamRecommanderDateUtils.hasExamPeriodeStartedOrIsStartingThisYear(examen.startDate, examen.endDate);

        return ExamenRecommandeItemDisplayModel(
          id: examen.id,
          title: examen.title,
          dateDebut: examen.startDate,
          status: examen.status,
          inFuture: inFuture,
          thisYear: thisYear,
          dateLabel:
              'Du ${EnsDateUtils.formatddmmyyyy(examen.startDate)} au ${EnsDateUtils.formatddmmyyyy(examen.endDate)}',
          chipStatus: shouldDisplayChip ? examen.toChipLabel() : null,
        );
      },
    ).toList();
    return ExamensRecommandesViewModel(
      isMainProfile: store.state.userState.isMainProfile,
      showExamensBefore18YearsOldButton: ExamensSelectors.shouldShowExamensBefore18YearsOldButton(
        examensState: examensState,
        isMainProfile: isMainProfile,
        birthDate: UserSelectors.getBirthdate(store.state),
      ),
      displayModels: examens,
      filtersNumber: examensState.filteredTypes.length + examensState.filteredStatus.length,
      onResetFilters: () {
        store.dispatch(ReinitializeExamensRecommandesFiltersAction());
      },
      profilType: profilType,
    );
  }

  @override
  List<Object?> get props =>
      [isMainProfile, showExamensBefore18YearsOldButton, displayModels, filtersNumber, profilType];
}

class ExamenRecommandeItemDisplayModel extends AgendaScreenItemDisplayModel {
  final String id;
  final String title;
  final DateTime dateDebut;
  final String dateLabel;
  final ExamenStatus status;
  final bool inFuture;
  final String? chipStatus;
  final bool thisYear;

  ExamenRecommandeItemDisplayModel({
    required this.id,
    required this.title,
    required this.dateDebut,
    required this.dateLabel,
    required this.status,
    required this.inFuture,
    required this.thisYear,
    this.chipStatus,
  });

  @override
  List<Object?> get props => [id, title, dateDebut, dateLabel, status, inFuture, thisYear, chipStatus];
}

int sortExamenRecommande(ExamenRecommande examenRecommande1, ExamenRecommande examenRecommande2) {
  if (examenRecommande1.startDate.isSameDate(examenRecommande2.startDate)) {
    return examenRecommande1.endDate.compareTo(examenRecommande2.endDate);
  }
  return examenRecommande1.startDate.compareTo(examenRecommande2.startDate);
}
