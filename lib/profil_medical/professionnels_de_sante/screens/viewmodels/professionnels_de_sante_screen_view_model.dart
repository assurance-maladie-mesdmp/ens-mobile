/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:collection/collection.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/infra/remote_config_wrapper.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/professionnels_de_sante_name_helper.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/redux/etablissements_de_sante_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/redux/professionnels_de_sante_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/screens/professionnel_de_sante_display_model_role_enum.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/screens/viewmodels/acteur_de_sante_suggestion_display_model.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/search_ps/domain/models/professionnel_de_sante.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/search_ps/domain/models/type_of_ps_profession.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/search_ps/screens/viewModels/add_ps_typedef.dart';
import 'package:fr_cnamts_ens/profils_rattaches/screens/profils_utils.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:fr_cnamts_ens/utils/extensions/profil_extension.dart';
import 'package:fr_cnamts_ens/utils/extensions/string_extensions.dart';
import 'package:redux/redux.dart';

class ProfessionnelsDeSanteScreenViewModel extends Equatable {
  final ActeurDeSanteListStatus listStatus;
  final List<ActeurDeSanteCardDisplayModel> acteursDeSanteReferenceDisplayModels;
  final bool shouldDisplayBottomSheetPsHorsRef;
  final List<ActeurDeSanteSuggestionDisplayModel> asSuggestionsDisplayModels;
  final bool hasAMedecinTraitant;
  final bool displayMedecinTraitantCard;
  final VoidCallback updateNonRefPsInfoViewDisplayed;
  final bool isPsRoleFeatureEnable;
  final ProfilType profilType;
  final String mainFirstName;
  final AddPsFunction addPs;
  final void Function({bool force}) load;
  final void Function(String psId) removeProfessionnelDeSante;
  final void Function(String organizationId) removeEtablissementDeSante;
  final void Function(String esId) addEs;

  const ProfessionnelsDeSanteScreenViewModel._internal({
    required this.listStatus,
    required this.acteursDeSanteReferenceDisplayModels,
    required this.shouldDisplayBottomSheetPsHorsRef,
    required this.asSuggestionsDisplayModels,
    required this.hasAMedecinTraitant,
    required this.displayMedecinTraitantCard,
    required this.updateNonRefPsInfoViewDisplayed,
    required this.isPsRoleFeatureEnable,
    required this.profilType,
    required this.addPs,
    required this.load,
    required this.removeProfessionnelDeSante,
    required this.removeEtablissementDeSante,
    required this.addEs,
    required this.mainFirstName,
  });

  factory ProfessionnelsDeSanteScreenViewModel.from(Store<EnsState> store, RemoteConfigWrapper remoteConfigWrapper) {
    final psListState = store.state.professionnelsDeSanteState.professionnelDeSanteListState;
    final esListState = store.state.etablissementsDeSanteState.etablissementDeSanteListState;
    final acteurDeSanteSuggestionsStates = store.state.professionnelsDeSanteState.acteurDeSanteSuggestionsStates;
    bool hasPsHorsRef = false;
    ActeurDeSanteListStatus listStatus = ActeurDeSanteListStatus.LOADING;
    final List<ActeurDeSanteCardDisplayModel> acteursDeSanteReferenceDisplayModels = [];
    final List<ActeurDeSanteSuggestionDisplayModel> asSuggestionsDisplayModels = [];

    if (psListState.status.isSuccess()) {
      for (final ps in psListState.professionnelsDeSante) {
        final formattedPsFirstName = ProfessionnelsDeSanteInformationHelper.capitalizeAsNames(ps.firstName);
        final formattedPsLastName = ProfessionnelsDeSanteInformationHelper.capitalizeAsNames(ps.lastName);
        final acteurSante = ActeurDeSanteCardDisplayModel(
          id: ps.idForDelete,
          idNat: ps.nationalId ?? '',
          isMedecinTraitantDeclare: ps.isMedecinTraitantDeclare,
          isReferenced: ps.nationalId != null,
          displayedName: '$formattedPsFirstName $formattedPsLastName',
          firstName: ps.firstName.capitalizeName(),
          lastName: ps.lastName.capitalizeName(),
          description: ps.exercices
              ?.map(
                (exercice) => ActeurDeSanteDescriptionItem(title: exercice.profession, subtitle: exercice.specialites),
              )
              .toList(),
          type: TypeOfActeurDeSante.PS,
          role: _psRoleMapper(ps, psListState, ps.role),
          active: ps.active,
        );
        if (ps.nationalId != null && ps.firstName.isNotEmpty && ps.lastName.isNotEmpty) {
          acteursDeSanteReferenceDisplayModels.add(acteurSante);
        } else {
          hasPsHorsRef = true;
        }
      }
    }

    if (esListState.status.isSuccess()) {
      acteursDeSanteReferenceDisplayModels.addAll(
        esListState.etablissementsDeSante.map((es) {
          final formattedEsDisplayedName = ProfessionnelsDeSanteInformationHelper.capitalizeAsNames(es.nameWithAlias);
          return ActeurDeSanteCardDisplayModel(
            id: es.organizationId ?? '',
            idNat: es.idNat,
            isMedecinTraitantDeclare: false,
            isReferenced: true,
            displayedName: formattedEsDisplayedName,
            description: es.activity != null ? [ActeurDeSanteDescriptionItem(title: es.activity!)] : null,
            type: TypeOfActeurDeSante.ES,
            active: es.active,
          );
        }),
      );
    }

    acteursDeSanteReferenceDisplayModels.sort((acteurSante1, acteurSante2) {
      final priority1 = acteurSante1.sortPriority;
      final priority2 = acteurSante2.sortPriority;
      if (priority1 != priority2) {
        return priority1 - priority2;
      }
      return acteurSante1.displayedName.toLowerCase().compareTo(acteurSante2.displayedName.toLowerCase());
    });

    final displayMedecinTraitantCard = acteursDeSanteReferenceDisplayModels.isNotEmpty &&
        (acteursDeSanteReferenceDisplayModels.none((ps) => ps.isMedecinTraitant));

    if (acteurDeSanteSuggestionsStates.status.isSuccess()) {
      asSuggestionsDisplayModels.addAll(acteurDeSanteSuggestionsStates.suggestions.toDisplayModels());
    }

    if (psListState.status.isError() || esListState.status.isError()) {
      listStatus = ActeurDeSanteListStatus.ERROR;
    } else if (psListState.status.isNotLoadedOrLoading() ||
        esListState.status.isNotLoadedOrLoading() ||
        acteurDeSanteSuggestionsStates.status.isNotLoadedOrLoading()) {
      listStatus = ActeurDeSanteListStatus.LOADING;
    } else if (acteursDeSanteReferenceDisplayModels.isEmpty &&
        (asSuggestionsDisplayModels.isEmpty || acteurDeSanteSuggestionsStates.status.isError())) {
      listStatus = ActeurDeSanteListStatus.EMPTY;
    } else if (acteursDeSanteReferenceDisplayModels.isEmpty && acteurDeSanteSuggestionsStates.suggestions.isNotEmpty) {
      listStatus = ActeurDeSanteListStatus.EMPTY_WITH_SUGGESTIONS;
    } else if (psListState.status.isSuccess() || esListState.status.isSuccess()) {
      listStatus = ActeurDeSanteListStatus.LISTE_SUCCESS;
    }

    final shouldDisplayBottomSheetPsHorsRef =
        hasPsHorsRef && store.state.professionnelsDeSanteState.shouldDisplayPsHorsRefInfoBottomSheet;

    final hasAMedecinTraitant = acteursDeSanteReferenceDisplayModels.any((ps) => ps.isMedecinTraitant);
    return ProfessionnelsDeSanteScreenViewModel._internal(
      listStatus: listStatus,
      acteursDeSanteReferenceDisplayModels: acteursDeSanteReferenceDisplayModels,
      asSuggestionsDisplayModels: asSuggestionsDisplayModels,
      shouldDisplayBottomSheetPsHorsRef: shouldDisplayBottomSheetPsHorsRef,
      hasAMedecinTraitant: hasAMedecinTraitant,
      displayMedecinTraitantCard: displayMedecinTraitantCard,
      profilType: ProfilsUtils.getCurrentProfilType(store.state),
      updateNonRefPsInfoViewDisplayed: () {
        store.dispatch(UpdateNonRefPsInfoViewDisplayAction());
      },
      isPsRoleFeatureEnable: remoteConfigWrapper.isEnabled(Feature.psRoleSfrPc),
      addPs: ({required String id, PsRoleDisplayModel? role}) {
        store.dispatch(AddPsAction(professionnelSanteId: id, role: role?.psRoleDomaine));
      },
      load: ({force = false}) {
        store.dispatch(FetchProfessionnelsDeSanteSynchroMedecinTraitantAction(force: force));
        store.dispatch(FetchEtablissementsDeSanteAction(force: force));
        store.dispatch(FetchAsSuggestionsAction(force: force));
      },
      removeProfessionnelDeSante: (psId) => store.dispatch(RemovePsAction(psId)),
      removeEtablissementDeSante: (organizationId) => store.dispatch(RemoveEsAction(organizationId)),
      addEs: (esId) => store.dispatch(AddEsAction(esId)),
      mainFirstName: store.state.userState.currentProfile.mainFirstName,
    );
  }

  static bool _isMedecinTraitant(ProfessionnelDeSante ps, ProfessionnelDeSanteListState psListState) {
    return ps.isMedecinTraitantDeclare ||
        ps.role?.isMedecinTraitant == true &&
            (psListState.status.isSuccess() &&
                psListState.professionnelsDeSante.none(
                  (addedPs) => addedPs.isMedecinTraitantDeclare && addedPs.idForDelete != ps.idForDelete,
                ));
  }

  static PsRoleDisplayModel? _psRoleMapper(
    ProfessionnelDeSante ps,
    ProfessionnelDeSanteListState psListState,
    PsRoleDomaine? role,
  ) {
    if (role != null) {
      return role.psRoleDisplayModel;
    } else {
      return _isMedecinTraitant(ps, psListState) ? PsRoleDisplayModel.MEDECIN_TRAITANT : null;
    }
  }

  @override
  List<Object?> get props => [
        listStatus,
        acteursDeSanteReferenceDisplayModels,
        shouldDisplayBottomSheetPsHorsRef,
        displayMedecinTraitantCard,
        asSuggestionsDisplayModels,
        hasAMedecinTraitant,
        displayMedecinTraitantCard,
        isPsRoleFeatureEnable,
        profilType,
        mainFirstName,
      ];
}

enum ActeurDeSanteListStatus { LOADING, ERROR, EMPTY, EMPTY_WITH_SUGGESTIONS, LISTE_SUCCESS }

class ActeurDeSanteCardDisplayModel extends Equatable {
  final String id;
  final String idNat;
  final bool isMedecinTraitantDeclare;
  final bool isReferenced;
  final String displayedName;
  final String firstName;
  final String lastName;
  final List<ActeurDeSanteDescriptionItem>? description;
  final TypeOfActeurDeSante type;
  final PsRoleDisplayModel? role;
  final bool active;

  bool get isMedecinTraitant => role == PsRoleDisplayModel.MEDECIN_TRAITANT;

  int get sortPriority {
    if (isMedecinTraitant) return 0;
    if (role == PsRoleDisplayModel.PHARMACIEN_CORRESPONDANT) return 1;
    if (role == PsRoleDisplayModel.SAGE_FEMME_REFERENTE) return 2;
    if (active) return 3;
    return 4;
  }

  const ActeurDeSanteCardDisplayModel({
    required this.id,
    required this.idNat,
    required this.isMedecinTraitantDeclare,
    required this.isReferenced,
    required this.displayedName,
    this.firstName = '',
    this.lastName = '',
    this.description,
    required this.type,
    this.role,
    required this.active,
  });

  @override
  List<Object?> get props => [
        id,
        idNat,
        isMedecinTraitantDeclare,
        isReferenced,
        displayedName,
        firstName,
        lastName,
        description,
        type,
        role,
        active,
      ];
}

class ActeurDeSanteDescriptionItem extends Equatable {
  final String title;
  final String? subtitle;

  const ActeurDeSanteDescriptionItem({required this.title, this.subtitle});

  @override
  List<Object?> get props => [title, subtitle];
}

enum TypeOfActeurDeSante {
  ES,
  PS;

  String get icon {
    return switch (this) { ES => EnsImages.ic_building, PS => EnsImages.ic_user };
  }
}

class PsSuggestionDisplayModel extends Equatable {
  final String id;
  final TypeOfActeurDeSante type;
  final String name;
  final String subtitle;
  final PsProfessionLinkToRole? professionType;

  const PsSuggestionDisplayModel({
    required this.id,
    required this.type,
    required this.name,
    required this.subtitle,
    this.professionType,
  });

  @override
  List<Object?> get props => [
        id,
        type,
        name,
        subtitle,
        professionType,
      ];
}
