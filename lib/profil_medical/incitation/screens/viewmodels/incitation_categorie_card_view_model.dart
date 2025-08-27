/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/allergies/redux/allergies_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/incitation/redux/incitation_pml_category/incitation_pml_category_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/maladies/redux/maladies_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/traitement/redux/traitements_states.dart';
import 'package:fr_cnamts_ens/profil_medical/unconcerned/domain/models/ens_unconcerned.dart';
import 'package:fr_cnamts_ens/profil_medical/unconcerned/redux/unconcerned_redux.dart';
import 'package:fr_cnamts_ens/utils/extensions/profil_extension.dart';
import 'package:intl/intl.dart';
import 'package:redux/redux.dart';

class IncitationCategorieCardViewModel extends Equatable {
  final String description;
  final bool isChecked;
  final bool isProfilPrincipal;
  final String firstBottomSheetTitle;
  final String secondBottomSheetTitle;
  final void Function(EnsIncitationType incitationType) setUnconcerned;
  final void Function(EnsIncitationType incitationType) addCategory;
  final void Function() init;

  const IncitationCategorieCardViewModel._({
    required this.description,
    required this.isChecked,
    required this.isProfilPrincipal,
    required this.firstBottomSheetTitle,
    required this.secondBottomSheetTitle,
    required this.setUnconcerned,
    required this.addCategory,
    required this.init,
  });

  factory IncitationCategorieCardViewModel.from(Store<EnsState> store, EnsIncitationType incitationType) {
    final isProfilPrincipal = store.state.userState.isMainProfile;
    final mainFirstName = store.state.userState.currentProfile.mainFirstName;

    return IncitationCategorieCardViewModel._(
      description: _getDescription(store, incitationType, isProfilPrincipal, mainFirstName),
      isChecked: _isChecked(store, incitationType),
      isProfilPrincipal: isProfilPrincipal,
      firstBottomSheetTitle: _getQuestion(incitationType, isProfilPrincipal, mainFirstName),
      secondBottomSheetTitle: _getQuestionAutres(incitationType, isProfilPrincipal, mainFirstName),
      setUnconcerned: (incitationType) => _setUnconcerned(store, incitationType),
      addCategory: (incitationType) => store.dispatch(AddIncitationPmlCategoryAction(incitationType)),
      init: () => store.dispatch(InitIncitationPmlCategoryAction()),
    );
  }

  static String _getDescription(
    Store<EnsState> store,
    EnsIncitationType incitationType,
    bool isOd,
    String mainFirstName,
  ) {
    switch (incitationType) {
      case EnsIncitationType.ALLERGIES:
        final allergiesListState = store.state.allergiesState.allergiesListState;
        return _getDescriptionAllergies(incitationType, allergiesListState, isOd, mainFirstName);
      case EnsIncitationType.MALADIES:
        final maladiesListState = store.state.maladiesState.maladiesListState;
        return _getDescriptionMaladies(incitationType, maladiesListState, isOd, mainFirstName);
      case EnsIncitationType.TRAITEMENTS:
        final traitementsState = store.state.traitementsState;
        return _getDescriptionTraitements(incitationType, traitementsState, isOd, mainFirstName);
    }
  }

  static String _getDescriptionAllergies(
    EnsIncitationType type,
    AllergiesListState allergiesListState,
    bool isProfilPrincipal,
    String mainFirstName,
  ) {
    if (allergiesListState.nonConcerneDepuis != null) {
      return isProfilPrincipal ? 'Je n\'ai pas d\'allergie' : '$mainFirstName n\'a pas d\'allergie';
    } else {
      final allergies = allergiesListState.allergies;
      if (allergies.isEmpty) {
        return _getQuestion(type, isProfilPrincipal, mainFirstName);
      } else {
        return Intl.plural(
          allergies.length,
          one: '1 allergie renseignée',
          other: '${allergies.length} allergies renseignées',
        );
      }
    }
  }

  static String _getDescriptionMaladies(
    EnsIncitationType type,
    MaladiesListState maladiesListState,
    bool isProfilPrincipal,
    String mainFirstName,
  ) {
    if (maladiesListState.nonConcerneDepuis != null) {
      return isProfilPrincipal ? 'Je n’ai pas de maladie' : '$mainFirstName n\'a pas de maladie';
    } else if (maladiesListState.status.isSuccess()) {
      final maladies = maladiesListState.maladies;
      if (maladies.isEmpty) {
        return _getQuestion(type, isProfilPrincipal, mainFirstName);
      } else {
        return Intl.plural(
          maladies.length,
          one: '1 maladie renseignée',
          other: '${maladies.length} maladies renseignées',
        );
      }
    }
    return _getQuestion(type, isProfilPrincipal, mainFirstName);
  }

  static String _getDescriptionTraitements(
    EnsIncitationType type,
    TraitementsState state,
    bool isProfilPrincipal,
    String mainFirstName,
  ) {
    final traitementsListState = state.traitementsListState;
    final traitements = traitementsListState.traitements;
    if (traitementsListState.nonConcerneDepuis != null) {
      return isProfilPrincipal ? 'Je n\'ai pas de traitement' : '$mainFirstName n\'a pas de traitement';
    } else if (traitements.isEmpty) {
      return _getQuestion(type, isProfilPrincipal, mainFirstName);
    } else {
      return Intl.plural(
        traitements.length,
        one: '1 traitement renseigné',
        other: '${traitements.length} traitements renseignés',
      );
    }
  }

  static bool _isChecked(Store<EnsState> store, EnsIncitationType incitationType) {
    switch (incitationType) {
      case EnsIncitationType.ALLERGIES:
        final allergiesListState = store.state.allergiesState.allergiesListState;
        return allergiesListState.isCompleted;
      case EnsIncitationType.MALADIES:
        final maladiesListState = store.state.maladiesState.maladiesListState;
        return maladiesListState.isCompleted;
      case EnsIncitationType.TRAITEMENTS:
        final traitementsListState = store.state.traitementsState.traitementsListState;
        return traitementsListState.isCompleted;
    }
  }

  static String _getQuestion(EnsIncitationType type, bool isProfilPrincipal, String mainFirstName) {
    switch (type) {
      case EnsIncitationType.ALLERGIES:
        return isProfilPrincipal ? 'Avez-vous des allergies ?' : 'Est-ce que $mainFirstName a des allergies ?';
      case EnsIncitationType.MALADIES:
        return isProfilPrincipal ? 'Avez-vous des maladies ?' : 'Est-ce que $mainFirstName a des maladies ?';
      case EnsIncitationType.TRAITEMENTS:
        return isProfilPrincipal ? 'Avez-vous des traitements ?' : 'Est-ce que $mainFirstName a des traitements ?';
    }
  }

  static String _getQuestionAutres(EnsIncitationType type, bool isProfilPrincipal, String mainFirstName) {
    switch (type) {
      case EnsIncitationType.ALLERGIES:
        return isProfilPrincipal
            ? 'Avez-vous d\'autres allergies ?'
            : 'Est-ce que $mainFirstName a d\'autres allergies ?';
      case EnsIncitationType.MALADIES:
        return isProfilPrincipal
            ? 'Avez-vous d\'autres maladies ?'
            : 'Est-ce que $mainFirstName a d\'autres maladies ?';
      case EnsIncitationType.TRAITEMENTS:
        return isProfilPrincipal
            ? 'Avez-vous d\'autres traitements ?'
            : 'Est-ce que $mainFirstName a d\'autres traitements ?';
    }
  }

  static void _setUnconcerned(Store<EnsState> store, EnsIncitationType incitationType) {
    switch (incitationType) {
      case EnsIncitationType.ALLERGIES:
        store.dispatch(SetUnconcernedAction(SectionUnconcerned.ALLERGIES));
      case EnsIncitationType.MALADIES:
        store.dispatch(SetUnconcernedAction(SectionUnconcerned.MALADIES));
      case EnsIncitationType.TRAITEMENTS:
        store.dispatch(SetUnconcernedAction(SectionUnconcerned.TRAITEMENTS));
    }
    return;
  }

  @override
  List<Object?> get props => [
        description,
        isChecked,
        firstBottomSheetTitle,
        secondBottomSheetTitle,
        isProfilPrincipal,
      ];
}

enum EnsIncitationType { ALLERGIES, MALADIES, TRAITEMENTS }
