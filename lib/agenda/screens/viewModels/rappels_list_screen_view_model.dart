/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:clock/clock.dart';
import 'package:collection/collection.dart';
import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/agenda/domain/models/rappel.dart';
import 'package:fr_cnamts_ens/agenda/domain/models/rappel_item_display_model.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/messagerie/home_messagerie/screens/messagerie_datetime_formater.dart';
import 'package:fr_cnamts_ens/utils/extensions/rappel_extension.dart';
import 'package:redux/redux.dart';

class RappelsListScreenViewModel extends Equatable {
  final List<RappelsListScreenItemDisplayModel> displayModels;
  final LocaleHelper localeHelper;

  const RappelsListScreenViewModel._internal(this.displayModels, this.localeHelper) : super();

  factory RappelsListScreenViewModel.from(Store<EnsState> store, [LocaleHelper localeHelper = const LocaleHelper()]) {
    final rappelsState = store.state.agendaState.rappelsState;
    final now = clock.now().toLocal();
    List<Rappel> rappels = [];
    final List<RappelsListScreenItemDisplayModel> displayModels = [];

    if (rappelsState.status.isSuccess()) {
      rappels = rappelsState.rappels;
    }

    displayModels.add(RappelsListScreenHeaderDisplayModel());
    displayModels.add(RappelsListScreenTitleItemDisplayModel());

    if (rappels.isNotEmpty) {
      rappels.sort((a, b) => a.date.compareTo(b.date));
      _addRappelsDisplayModels(rappels, localeHelper, now, displayModels);
    } else {
      displayModels.add(RappelsListScreenEmptyDisplayModel(true));
      displayModels.add(RappelsListScreenEmptyDisplayModel(false));
    }

    return RappelsListScreenViewModel._internal(displayModels, localeHelper);
  }

  static void _addRappelsDisplayModels(
    List<Rappel> rappels,
    LocaleHelper localeHelper,
    DateTime now,
    List<RappelsListScreenItemDisplayModel> displayModels,
  ) {
    for (int index = 0; index < rappels.length; index++) {
      final rappel = rappels[index];
      final previousRappel = index == 0 ? null : rappels[index - 1];

      if (previousRappel == null ||
          _isItADifferentYear(previousRappel.date, rappel.date, now) ||
          (_isItFirstFutureRappel(previousRappel.date, rappel.date))) {
        displayModels
            .add(RappelsListScreenCardsTitleDisplayModel(rappel.date.year.toString(), rappel.date.isAfter(now)));
      }
      displayModels.add(
        RappelsListScreenRappelDisplayModel(
          EnsRappelDisplayModel(
            rappel.date.isAfter(now),
            rappel.toDisplayModel(localeHelper),
          ),
        ),
      );
    }
    if (rappels.none((rappel) => rappel.date.isAfter(now))) {
      displayModels.add(RappelsListScreenEmptyDisplayModel(true));
    }
    if (rappels.none((rappel) => rappel.date.isBefore(now))) {
      displayModels.add(RappelsListScreenEmptyDisplayModel(false));
    }
  }

  static bool _isItADifferentYear(DateTime previousItemDate, DateTime itemDate, DateTime now) =>
      previousItemDate.year != itemDate.year || (previousItemDate.isAfter(now) && itemDate.isBefore(now));

  static bool _isItFirstFutureRappel(DateTime previousItemDate, DateTime itemDate) {
    final now = clock.now().toLocal();
    return previousItemDate.isBefore(now) && itemDate.isAfter(now);
  }

  @override
  List<Object?> get props => [displayModels, localeHelper];
}

abstract class RappelsListScreenItemDisplayModel extends Equatable {
  @override
  List<Object?> get props => [];
}

class RappelsListScreenHeaderDisplayModel extends RappelsListScreenItemDisplayModel {
  @override
  List<Object?> get props => [];
}

class RappelsListScreenCardsTitleDisplayModel extends RappelsListScreenItemDisplayModel {
  final String title;
  final bool inFuture;

  RappelsListScreenCardsTitleDisplayModel(this.title, this.inFuture);

  @override
  List<Object?> get props => [title, inFuture];
}

class RappelsListScreenTitleItemDisplayModel extends RappelsListScreenItemDisplayModel {
  @override
  List<Object?> get props => [];
}

class RappelsListScreenRappelDisplayModel extends RappelsListScreenItemDisplayModel {
  final EnsRappelDisplayModel rappelDisplayModel;

  RappelsListScreenRappelDisplayModel(this.rappelDisplayModel);

  @override
  List<Object?> get props => [rappelDisplayModel];
}

class RappelsListScreenEmptyDisplayModel extends RappelsListScreenItemDisplayModel {
  final bool inFuture;

  RappelsListScreenEmptyDisplayModel(this.inFuture);

  @override
  List<Object?> get props => [inFuture];
}

class EnsRappelDisplayModel extends Equatable {
  final bool inFuture;
  final RappelItemDisplayModel rappel;

  const EnsRappelDisplayModel(this.inFuture, this.rappel);

  @override
  List<Object?> get props => [inFuture, rappel];
}
