/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/habitudes_de_vie/domain/models/habitude_de_vie.dart';
import 'package:fr_cnamts_ens/profil_medical/habitudes_de_vie/domain/models/habitude_de_vie_enum.dart';
import 'package:fr_cnamts_ens/profil_medical/habitudes_de_vie/redux/habitudes_de_vie_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/habitudes_de_vie/screens/viewModels/habitudes_de_vie_display_model.dart';
import 'package:fr_cnamts_ens/profils_rattaches/screens/profils_utils.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:fr_cnamts_ens/utils/screen_status.dart';
import 'package:redux/redux.dart';

class HabitudesDeVieScreenViewModel extends Equatable {
  final ScreenStatus habitudesDeVieStatus;
  final List<HabitudesDeVieCategoryDisplayModel> habitudesDeVieDisplayModels;
  final void Function() loadHabitudesVie;
  final bool isProfilPrincipal;

  const HabitudesDeVieScreenViewModel._internal({
    required this.habitudesDeVieStatus,
    required this.habitudesDeVieDisplayModels,
    required this.loadHabitudesVie,
    required this.isProfilPrincipal,
  });

  factory HabitudesDeVieScreenViewModel(Store<EnsState> store) {
    final habitudesDeVieState = store.state.habitudesDeVieState.habitudesDeVieListState;
    final habitudesDeVieStatus = ScreenStatus.getFromAllPurposesStatus(habitudesDeVieState.status);
    final habitudesDeVie = habitudesDeVieState.categories;

    final isProfilPrincipal = ProfilsUtils.getCurrentProfilType(store.state).isProfilPrincipal;

    return HabitudesDeVieScreenViewModel._internal(
      habitudesDeVieStatus: habitudesDeVieStatus,
      habitudesDeVieDisplayModels:
          habitudesDeVie.map((habitudeVie) => _buildItemDisplayModel(habitudeVie)).nonNulls.toList(),
      loadHabitudesVie: () => store.dispatch(FetchHabitudesDeVieAction()),
      isProfilPrincipal: isProfilPrincipal,
    );
  }

  static HabitudesDeVieCategoryDisplayModel? _buildItemDisplayModel(HabitudeDeVieCategory habitudeVie) {
    switch (habitudeVie.code) {
      case HabitudeDeVieCategoryCode.TOBACCO:
        return HabitudesDeVieCategoryDisplayModel(
          title: habitudeVie.label,
          image: EnsImages.tabac,
          code: HabitudeDeVieCategoryCode.TOBACCO,
          lastModifiedDateLabel: habitudeVie.lastModifiedDate,
        );
      case HabitudeDeVieCategoryCode.PHYSICAL_ACTIVITY:
        return HabitudesDeVieCategoryDisplayModel(
          title: habitudeVie.label,
          image: EnsImages.activite_physique,
          code: HabitudeDeVieCategoryCode.PHYSICAL_ACTIVITY,
          lastModifiedDateLabel: habitudeVie.lastModifiedDate,
        );
      case HabitudeDeVieCategoryCode.FOOD:
        return HabitudesDeVieCategoryDisplayModel(
          title: habitudeVie.label,
          image: EnsImages.alimentation,
          code: HabitudeDeVieCategoryCode.FOOD,
          lastModifiedDateLabel: habitudeVie.lastModifiedDate,
        );
      case HabitudeDeVieCategoryCode.SOMMEIL:
        return HabitudesDeVieCategoryDisplayModel(
          title: habitudeVie.label,
          image: EnsImages.activite_sommeil,
          code: HabitudeDeVieCategoryCode.SOMMEIL,
          lastModifiedDateLabel: habitudeVie.lastModifiedDate,
        );
      case HabitudeDeVieCategoryCode.ALCOOL:
        return HabitudesDeVieCategoryDisplayModel(
          title: habitudeVie.label,
          image: EnsImages.activite_alcool,
          code: HabitudeDeVieCategoryCode.ALCOOL,
          lastModifiedDateLabel: habitudeVie.lastModifiedDate,
        );
      case HabitudeDeVieCategoryCode.ECRANS:
        return HabitudesDeVieCategoryDisplayModel(
          title: habitudeVie.label,
          image: EnsImages.activite_ecran,
          code: HabitudeDeVieCategoryCode.ECRANS,
          lastModifiedDateLabel: habitudeVie.lastModifiedDate,
        );
    }
  }

  @override
  List<Object?> get props => [
        habitudesDeVieStatus,
        habitudesDeVieDisplayModels,
        isProfilPrincipal,
      ];
}
