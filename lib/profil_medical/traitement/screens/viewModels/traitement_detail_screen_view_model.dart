/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:clock/clock.dart';
import 'package:collection/collection.dart';
import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/allergies/domain/models/ens_allergie.dart';
import 'package:fr_cnamts_ens/profil_medical/domain/ens_profil_medical_date_utils.dart';
import 'package:fr_cnamts_ens/profil_medical/maladies/domain/models/ens_maladie.dart';
import 'package:fr_cnamts_ens/profil_medical/traitement/domain/models/ens_traitement.dart';
import 'package:fr_cnamts_ens/profil_medical/traitement/redux/traitements_actions.dart';
import 'package:fr_cnamts_ens/profil_medical/traitement/screens/traitement_detail_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/traitement/screens/viewModels/traitement_link_display_from.dart';
import 'package:fr_cnamts_ens/profils_rattaches/screens/profils_utils.dart';
import 'package:fr_cnamts_ens/utils/screen_status.dart';
import 'package:intl/intl.dart';
import 'package:redux/redux.dart';

class TraitementDetailScreenViewModel extends Equatable {
  final ScreenStatus screenStatus;
  final void Function() deleteTraitement;
  final void Function() loadTraitements;
  final TraitementDetailDisplayModel? traitementDetailDisplayModel;
  final TraitementLinkDisplayFrom displayFrom;
  final ProfilType profilType;
  final List<LinkedAllergieDisplayModel> linkedAllergieDisplayModels;
  final List<LinkedMaladieDisplayModel> linkedMaladieDisplayModels;

  const TraitementDetailScreenViewModel._internal({
    required this.screenStatus,
    required this.deleteTraitement,
    required this.loadTraitements,
    this.traitementDetailDisplayModel,
    required this.displayFrom,
    required this.profilType,
    required this.linkedAllergieDisplayModels,
    required this.linkedMaladieDisplayModels,
  });

  factory TraitementDetailScreenViewModel.from(Store<EnsState> store, TraitementDetailScreenArgument arg) {
    final traitement = store.state.traitementsState.traitementsListState.traitements
        .where((traitement) => traitement.id == arg.traitementId)
        .firstOrNull;

    TraitementDetailDisplayModel? dm;
    List<LinkedAllergieDisplayModel> linkedAllergies = [];
    List<LinkedMaladieDisplayModel> linkedMaladies = [];

    if (traitement != null) {
      final maladies = store.state.maladiesState.maladiesListState.maladies;
      final allergies = store.state.allergiesState.allergiesListState.allergies;

      dm = TraitementDetailDisplayModel(
        id: traitement.id,
        name: traitement.name,
        startDate: EnsProfilMedicalDateUtils.formatDateWithPlainTextMonth(traitement.startDate),
        endDate: EnsProfilMedicalDateUtils.formatDateWithPlainTextMonth(traitement.endDate),
        dosage: traitement.dosage,
        comment: traitement.comment?.trim(),
      );

      linkedMaladies = arg.displayFrom != TraitementLinkDisplayFrom.traitement
          ? []
          : _buildMaladieDisplayModels(maladies, traitement.linkedMaladieIds);
      linkedAllergies = arg.displayFrom != TraitementLinkDisplayFrom.traitement
          ? []
          : _buildAllergieDisplayModels(allergies, traitement.linkedAllergieIds);
    }

    return TraitementDetailScreenViewModel._internal(
      screenStatus: traitement != null ? ScreenStatus.SUCCESS : ScreenStatus.ERROR,
      deleteTraitement: () => _deleteTraitement(store, traitement),
      loadTraitements: () => store.dispatch(const FetchTraitementsAction()),
      traitementDetailDisplayModel: dm,
      displayFrom: arg.displayFrom,
      profilType: ProfilsUtils.getCurrentProfilType(store.state),
      linkedAllergieDisplayModels: linkedAllergies,
      linkedMaladieDisplayModels: linkedMaladies,
    );
  }

  static void _deleteTraitement(Store<EnsState> store, EnsTraitement? traitement) {
    if (traitement != null) {
      store.dispatch(DeleteTraitementAction(traitementId: traitement.id));
    }
  }

  static List<LinkedMaladieDisplayModel> _buildMaladieDisplayModels(
    Map<String, EnsMaladie> maladieEntities,
    List<String> linkedMaladieIds,
  ) {
    return linkedMaladieIds
        .map((linkedMaladieId) {
          final maladie = maladieEntities[linkedMaladieId];
          if (maladie == null) return null;
          final DateTime? startDate = maladie.startDate.toDateTime();
          final duration =
              startDate != null ? (maladie.endDate?.toDateTime() ?? clock.now()).difference(startDate).inDays : null;
          return LinkedMaladieDisplayModel(
            id: maladie.id,
            name: maladie.name,
            dateInfo: EnsProfilMedicalDateUtils.formatDateWithPlainTextMonth(maladie.startDate),
            durationInfo: duration != null ? '$duration ${Intl.plural(duration, one: 'jour', other: 'jours')}' : '',
            comment: maladie.comment,
          );
        })
        .nonNulls
        .toList();
  }

  static List<LinkedAllergieDisplayModel> _buildAllergieDisplayModels(
    List<EnsAllergie> allergieEntities,
    List<String> linkedAllergieIds,
  ) =>
      linkedAllergieIds
          .map((id) => allergieEntities.firstWhereOrNull((allergies) => allergies.id == id))
          .nonNulls
          .map(
            (allergie) => LinkedAllergieDisplayModel(id: allergie.id, name: allergie.name, comment: allergie.comment),
          )
          .toList();

  @override
  List<Object?> get props => [
        screenStatus,
        traitementDetailDisplayModel,
        displayFrom,
        profilType,
        linkedAllergieDisplayModels,
        linkedMaladieDisplayModels,
      ];
}

class TraitementDetailDisplayModel extends Equatable {
  final String id;
  final String name;
  final String startDate;
  final String endDate;
  final String? dosage;
  final String? comment;

  const TraitementDetailDisplayModel({
    required this.id,
    required this.name,
    required this.startDate,
    required this.endDate,
    this.dosage,
    this.comment,
  });

  @override
  List<Object?> get props => [id, name, startDate, endDate, dosage, comment];
}

sealed class LinkedDisplayModel extends Equatable {
  final String id;
  final String name;
  final String? comment;

  const LinkedDisplayModel({required this.id, required this.name, required this.comment});
}

class LinkedMaladieDisplayModel extends LinkedDisplayModel {
  final String dateInfo;
  final String? durationInfo;

  const LinkedMaladieDisplayModel({
    required super.id,
    required super.name,
    required this.dateInfo,
    required this.durationInfo,
    super.comment,
  });

  @override
  List<Object?> get props => [id, name, dateInfo, durationInfo, comment];
}

class LinkedAllergieDisplayModel extends LinkedDisplayModel {
  const LinkedAllergieDisplayModel({
    required super.id,
    required super.name,
    super.comment,
  });

  @override
  List<Object?> get props => [id, name, comment];
}
