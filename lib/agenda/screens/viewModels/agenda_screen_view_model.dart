/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'dart:math';

import 'package:clock/clock.dart';
import 'package:collection/collection.dart';
import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/agenda/domain/models/examen_recommande.dart';
import 'package:fr_cnamts_ens/agenda/domain/models/examen_recommande_extension.dart';
import 'package:fr_cnamts_ens/agenda/domain/models/rappel.dart';
import 'package:fr_cnamts_ens/agenda/domain/models/rappel_item_display_model.dart';
import 'package:fr_cnamts_ens/agenda/domain/models/rendez_vous.dart';
import 'package:fr_cnamts_ens/agenda/redux/agenda_redux.dart';
import 'package:fr_cnamts_ens/analytics/domain/ens_analytics.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/messagerie/home_messagerie/screens/messagerie_datetime_formater.dart';
import 'package:fr_cnamts_ens/profils_rattaches/screens/profils_utils.dart';
import 'package:fr_cnamts_ens/utils/ens_date_utils.dart';
import 'package:fr_cnamts_ens/utils/extensions/datetime_extension.dart';
import 'package:fr_cnamts_ens/utils/extensions/rappel_extension.dart';
import 'package:redux/redux.dart';

enum AgendaStatus { LOADING, ERROR, SUCCESS }

const RAPPEL_MAX_COUNT = 4;
const SUGGESTION_PS_MAX_COUNT = 4;

class AgendaScreenViewModel extends Equatable {
  final AgendaStatus agendaStatus;
  final List<AgendaScreenItemDisplayModel> displayModels;
  final bool isProfilPrincipal;
  final void Function() loadAgenda;

  final List<AgendaScreenItemDisplayModel> displayLoadingModels = [
    AgendaScreenHeaderDisplayModel(),
    RendezVousCardsTitleDisplayModel('', true),
    RendezVousCardDisplayModel(
      EnsRdvDisplayModel(
        true,
        RendezVous(
          id: '',
          date: DateTime(1818),
          rdvType: RendezVousType.UNKNOWN,
          nomActeurSante: '',
          author: '',
        ),
        true,
      ),
    ),
    RendezVousCardsTitleDisplayModel('', true),
    RendezVousCardDisplayModel(
      EnsRdvDisplayModel(
        true,
        RendezVous(
          id: '',
          date: DateTime(1818),
          rdvType: RendezVousType.UNKNOWN,
          nomActeurSante: '',
          author: '',
        ),
        true,
      ),
    ),
    RendezVousCardDisplayModel(
      EnsRdvDisplayModel(
        true,
        RendezVous(
          id: '',
          date: DateTime(1818),
          rdvType: RendezVousType.UNKNOWN,
          nomActeurSante: '',
          author: '',
        ),
        true,
      ),
    ),
  ];

  AgendaScreenViewModel._internal({
    required this.agendaStatus,
    required this.displayModels,
    required this.loadAgenda,
    required this.isProfilPrincipal,
  });

  factory AgendaScreenViewModel.from(Store<EnsState> store, [LocaleHelper localeHelper = const LocaleHelper()]) {
    final rendezVousState = store.state.agendaState.rendezVousState;
    final rappelsState = store.state.agendaState.rappelsState;
    final examensState = store.state.agendaState.examensRecommandesState;
    final isProfilPrincipal = ProfilsUtils.getCurrentProfilType(store.state).isProfilPrincipal;

    final now = clock.now().toLocal();
    List<RendezVous> rdvs = [];
    List<Rappel> rappels = [];
    List<ExamenRecommande> examens = [];
    final List<AgendaScreenItemDisplayModel> displayModels = [];

    final agendaStatus = _getScreenStatus(rendezVousState, rappelsState, examensState);

    if (rappelsState.status.isSuccess()) {
      rappels = rappelsState.rappels;
    }
    if (rendezVousState.status.isSuccess()) {
      rdvs = rendezVousState.rendezVous;
    }
    if (examensState.status.isSuccess()) {
      examens = (examensState.examens.where(
        (examen) => examen.startDate.isBefore(now.addYear(1)) && examen.status == ExamenStatus.A_PLANIFIER,
      )..sorted((examenA, examenB) => examenA.startDate.compareTo(examenB.startDate)))
          .toList();
    }

    displayModels.add(AgendaScreenHeaderDisplayModel());
    if (rappelsState.status.isNotError() && rappels.isNotEmpty) {
      rappels.sort((a, b) => a.date.compareTo(b.date));
      _addRappelsDisplayModels(rappels, localeHelper, displayModels);
    }

    displayModels.add(RendezVousTitleItemDisplayModel());

    if (examensState.status.isNotError()) {
      _addExamens(displayModels, examens, now);
    }

    if (rendezVousState.status.isNotError()) {
      _addRendezVous(displayModels, rdvs, now);
    }

    return AgendaScreenViewModel._internal(
      agendaStatus: agendaStatus,
      displayModels: displayModels,
      loadAgenda: () => store.dispatch(FetchRendezVousEtRappelsEtExamensAction(force: true)),
      isProfilPrincipal: isProfilPrincipal,
    );
  }

  static void _addRendezVous(
    List<AgendaScreenItemDisplayModel> displayModels,
    List<RendezVous> rdvs,
    DateTime now,
  ) {
    for (int index = 0; index < rdvs.length; index++) {
      final rdv = rdvs[index];
      final previousRdv = index == 0 ? null : rdvs[index - 1];

      if (index == 0) {
        if (_isCurrentMonthInFuture(rdv)) {
          displayModels.add(RendezVousCardsTitleDisplayModel('Prochainement', rdv.date.isAfter(now)));
        } else {
          displayModels.add(RendezVousCardsTitleDisplayModel(rdv.date.year.toString(), rdv.date.isAfter(now)));
        }
      } else {
        if (_isItADifferentYear(previousRdv, rdv, now) ||
            (_isCurrentMonthInFuture(previousRdv!) && _isItADifferentMonth(previousRdv, rdv))) {
          displayModels.add(RendezVousCardsTitleDisplayModel(rdv.date.year.toString(), rdv.date.isAfter(now)));
        }
      }
      final currentMonth = rdv.date.year == now.year && rdv.date.month == now.month;
      displayModels.add(RendezVousCardDisplayModel(EnsRdvDisplayModel(currentMonth, rdv, rdv.date.isAfter(now))));
    }
    if (rdvs.none((rdv) => rdv.date.isAfter(now))) {
      displayModels.add(RendezVousEmptyDisplayModel(true));
    }
    if (rdvs.none((rdv) => rdv.date.isBefore(now))) {
      displayModels.add(RendezVousEmptyDisplayModel(false));
    }
  }

  static void _addExamens(
    List<AgendaScreenItemDisplayModel> displayModels,
    List<ExamenRecommande> examens,
    DateTime now,
  ) {
    displayModels.add(ExamensRecommandeHeaderItem());
    if (examens.isEmpty) {
      displayModels.add(ExamensRecommandesEmptyHeaderItem());
    }
    for (int index = 0; index < min(2, examens.length); index++) {
      final examen = examens[index];
      final shouldDisplayChip = examen.startDate.isBefore(now);

      displayModels.add(
        ExamenRecommandeDisplayModel(
          id: examen.id,
          title: examen.title,
          dateDebut: examen.startDate,
          status: examen.status,
          chipStatus: shouldDisplayChip ? examen.toChipLabel() : null,
          subtitle:
              'Du ${EnsDateUtils.formatddmmyyyy(examen.startDate)} au ${EnsDateUtils.formatddmmyyyy(examen.endDate)}',
        ),
      );
    }
    displayModels.add(ExamensRecommandeFooterItem());
  }

  static void _addRappelsDisplayModels(
    List<Rappel> rappels,
    LocaleHelper localeHelper,
    List<AgendaScreenItemDisplayModel> displayModels,
  ) {
    final now = clock.now();
    final futureRappels = rappels.where((rappel) => rappel.date.isAfter(now)).toList();
    final pastRappels = rappels.where((rappel) => rappel.date.isBefore(now)).toList();
    final isFutureEmpty = futureRappels.isEmpty;
    final isFutureSingle = futureRappels.length == 1;
    final futureRappelsItemDisplayModels = futureRappels.map((rappel) => rappel.toDisplayModel(localeHelper)).toList();
    final shouldHideSeeAll =
        (pastRappels.isNotEmpty && futureRappels.isEmpty) || (pastRappels.isEmpty && futureRappels.length <= 1);
    displayModels.add(RappelScreenTitleItemDisplayModel(seeAll: !shouldHideSeeAll));
    if (isFutureEmpty) {
      displayModels.add(RappelEmptyItemDisplayModel(isPastRappelsEmpty: pastRappels.isEmpty));
    } else if (isFutureSingle) {
      displayModels.add(RappelSingleItemDisplayModel(futureRappels.first.toDisplayModel(localeHelper)));
    } else {
      displayModels.add(RappelListItemDisplayModel(futureRappelsItemDisplayModels));
    }
  }

  static AgendaStatus _getScreenStatus(
    RendezVousState rendezVousState,
    RappelsState rappelsState,
    ExamensRecommandesState examensState,
  ) {
    if (_isLoadingState(rendezVousState, rappelsState, examensState)) {
      return AgendaStatus.LOADING;
    } else if (_isErrorState(rendezVousState, rappelsState, examensState)) {
      return AgendaStatus.ERROR;
    } else {
      return AgendaStatus.SUCCESS;
    }
  }

  static bool _isLoadingState(
    RendezVousState rendezVousState,
    RappelsState rappelsState,
    ExamensRecommandesState examensState,
  ) {
    final isRendezVousLoading = rendezVousState.status.isNotLoadedOrLoading();
    final isRappelsLoading = rappelsState.status.isNotLoadedOrLoading();
    final isExamensLoading = examensState.status.isNotLoadedOrLoading();
    return isRendezVousLoading && isRappelsLoading && isExamensLoading;
  }

  static bool _isErrorState(
    RendezVousState rendezVousState,
    RappelsState rappelsState,
    ExamensRecommandesState examensState,
  ) {
    return rendezVousState.status.isError() && rappelsState.status.isError() && examensState.status.isError();
  }

  static bool _isItADifferentYear(RendezVous? previousRdv, RendezVous rdv, DateTime now) =>
      previousRdv == null ||
      previousRdv.date.year != rdv.date.year ||
      (previousRdv.date.isAfter(now) && rdv.date.isBefore(now));

  static bool _isItADifferentMonth(RendezVous? previousRdv, RendezVous rdv) =>
      previousRdv == null || previousRdv.date.month != rdv.date.month;

  static bool _isCurrentMonthInFuture(RendezVous rdv) {
    final now = clock.now().toLocal();
    return rdv.date.isAfter(now) && rdv.date.year == now.year && rdv.date.month == now.month;
  }

  @override
  List<Object?> get props => [
        agendaStatus,
        displayModels,
        displayLoadingModels,
        isProfilPrincipal,
      ];
}

abstract class AgendaScreenItemDisplayModel extends Equatable {
  @override
  List<Object?> get props => [];
}

class AgendaScreenHeaderDisplayModel extends AgendaScreenItemDisplayModel {
  @override
  List<Object?> get props => [];
}

class RendezVousTitleItemDisplayModel extends AgendaScreenItemDisplayModel {
  @override
  List<Object?> get props => [];
}

class RappelScreenTitleItemDisplayModel extends AgendaScreenItemDisplayModel {
  final bool seeAll;

  RappelScreenTitleItemDisplayModel({required this.seeAll});

  @override
  List<Object?> get props => [seeAll];
}

class RappelListItemDisplayModel extends AgendaScreenItemDisplayModel {
  final List<RappelItemDisplayModel> futureRappels;

  RappelListItemDisplayModel(this.futureRappels);

  @override
  List<Object?> get props => [futureRappels];
}

class RappelSingleItemDisplayModel extends AgendaScreenItemDisplayModel {
  final RappelItemDisplayModel rappel;

  RappelSingleItemDisplayModel(this.rappel);

  @override
  List<Object?> get props => [rappel];
}

class RappelEmptyItemDisplayModel extends AgendaScreenItemDisplayModel {
  final bool isPastRappelsEmpty;

  RappelEmptyItemDisplayModel({required this.isPastRappelsEmpty});

  @override
  List<Object?> get props => [isPastRappelsEmpty];
}

class RendezVousCardsTitleDisplayModel extends AgendaScreenItemDisplayModel {
  final String title;
  final bool inFuture;

  RendezVousCardsTitleDisplayModel(this.title, this.inFuture);

  @override
  List<Object?> get props => [title, inFuture];
}

class RendezVousCardDisplayModel extends AgendaScreenItemDisplayModel {
  final EnsRdvDisplayModel rdvDisplayModel;

  RendezVousCardDisplayModel(this.rdvDisplayModel);

  @override
  List<Object?> get props => [rdvDisplayModel];
}

class RendezVousEmptyDisplayModel extends AgendaScreenItemDisplayModel {
  final bool inFuture;

  RendezVousEmptyDisplayModel(this.inFuture);

  @override
  List<Object?> get props => [inFuture];
}

class EnsRdvDisplayModel extends Equatable {
  final bool currentMonth;
  final bool inFuture;
  final RendezVous rdv;

  const EnsRdvDisplayModel(this.currentMonth, this.rdv, this.inFuture);

  @override
  List<Object?> get props => [currentMonth, rdv, inFuture];
}

class ExamensRecommandeHeaderItem extends AgendaScreenItemDisplayModel {}

class ExamensRecommandesEmptyHeaderItem extends AgendaScreenItemDisplayModel {}

class ExamensRecommandeFooterItem extends AgendaScreenItemDisplayModel {}

class ExamenRecommandeDisplayModel extends AgendaScreenItemDisplayModel {
  final String id;
  final String title;
  final DateTime dateDebut;
  final String subtitle;
  final ExamenStatus status;
  final String? chipStatus;
  final EnsTag? tag;

  ExamenRecommandeDisplayModel({
    required this.id,
    required this.title,
    required this.dateDebut,
    required this.subtitle,
    required this.status,
    this.chipStatus,
    this.tag,
  });

  @override
  List<Object?> get props => [id, title, dateDebut, subtitle, status, chipStatus, tag];
}
