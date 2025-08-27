/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/domain/models/ens_mesure_type.dart';
import 'package:fr_cnamts_ens/profils_rattaches/screens/profils_utils.dart';
import 'package:fr_cnamts_ens/recommandations/domain/ens_recommandation.dart';
import 'package:fr_cnamts_ens/user/redux/user_selectors.dart';
import 'package:fr_cnamts_ens/utils/all_purposes_status.dart';
import 'package:fr_cnamts_ens/utils/feature_flags_helper.dart';

class IncitationPmlSelectors {
  const IncitationPmlSelectors._();

  static bool isMesureCompleted(EnsState state, EnsMesureType mesureType) {
    return state.mesuresState.mesureStatesByType[mesureType]?.mesure.lastValue != null;
  }

  static bool _isAnyMesureCompleted(EnsState state) {
    for (final mesureType in EnsMesureType.values) {
      if (isMesureCompleted(state, mesureType)) {
        return true;
      }
    }
    return false;
  }

  static bool isAllergiesCompleted(EnsState state) {
    final allergiesListState = state.allergiesState.allergiesListState;
    return allergiesListState.isCompleted;
  }

  static bool isMaladiesCompleted(EnsState state) {
    final maladiesListState = state.maladiesState.maladiesListState;
    return maladiesListState.isCompleted;
  }

  static bool isTraitementsCompleted(EnsState state) {
    final traitementsListState = state.traitementsState.traitementsListState;
    return traitementsListState.isCompleted;
  }

  static bool _isAntecedentsFamiliauxCompleted(EnsState state) {
    final antecedentsFamiliauxListState = state.antecedentsFamiliauxState.antecedentsFamiliauxListState;
    return antecedentsFamiliauxListState.isCompleted;
  }

  static bool _isHabitudesDeVieCompleted(EnsState state) {
    final habitudesDeVieListState = state.habitudesDeVieState.habitudesDeVieListState;
    return habitudesDeVieListState.status.isSuccess() && habitudesDeVieListState.categories.isNotEmpty;
  }

  static bool _isHandicapsCompleted(EnsState state) {
    final handicapsListState = state.handicapsState.handicapsListState;
    return handicapsListState.isCompleted;
  }

  static bool _isHospitalisationsCompleted(EnsState state) {
    final hospitalisationsListState = state.hospitalisationsState.hospitalisationsListState;
    return hospitalisationsListState.isCompleted;
  }

  static bool isEntourageContactsCompleted(EnsState state) {
    final entourageEtVolontesState = state.entourageEtVolontesState;
    return entourageEtVolontesState.entourageContacts.isNotEmpty;
  }

  static bool isDonOrganeCompleted(EnsState state) {
    final entourageEtVolontesState = state.entourageEtVolontesState;
    return entourageEtVolontesState.consent;
  }

  static bool _isPsCompleted(EnsState state) {
    final professionnelDeSanteListState = state.professionnelsDeSanteState.professionnelDeSanteListState;
    return professionnelDeSanteListState.status.isSuccess() &&
        professionnelDeSanteListState.professionnelsDeSante.isNotEmpty;
  }

  static bool isWelcomePageShowed(EnsState state) {
    return !state.incitationPmlState.patientIds.contains(UserSelectors.getPatientId(state));
  }

  static bool isIncitationCompleted(EnsState state) {
    final isAdult = ProfilsUtils.getCurrentProfilType(state).isAdult;
    if (isRefonteEntourageEtVolontesEnabled && isAdult) {
      return _isIncitationCompletedWithoutEntourageEtVolontes(state) &&
          isEntourageContactsCompleted(state) &&
          isDonOrganeCompleted(state);
    } else {
      return _isIncitationCompletedWithoutEntourageEtVolontes(state);
    }
  }

  static bool _isIncitationCompletedWithoutEntourageEtVolontes(EnsState state) {
    final mustCompletePerimetreCranien = UserSelectors.isCurrentProfileUnderFiveYears(state);
    return isMesureCompleted(state, EnsMesureType.POIDS) &&
        isMesureCompleted(state, EnsMesureType.TAILLE) &&
        (!mustCompletePerimetreCranien || isMesureCompleted(state, EnsMesureType.PERIMETRE_CRANIEN)) &&
        isAllergiesCompleted(state) &&
        isMaladiesCompleted(state) &&
        isTraitementsCompleted(state);
  }

  static bool isPmlRempli(EnsState state) {
    return _isAnyMesureCompleted(state) ||
        isAllergiesCompleted(state) ||
        isMaladiesCompleted(state) ||
        isTraitementsCompleted(state) ||
        _isAntecedentsFamiliauxCompleted(state) ||
        _isHabitudesDeVieCompleted(state) ||
        _isHandicapsCompleted(state) ||
        _isHospitalisationsCompleted(state) ||
        isEntourageContactsCompleted(state) ||
        _isPsCompleted(state);
  }

  static AllPurposesStatus getPmlRubriqueLinkToIncitationStatus(EnsState state) {
    final lastMesuresState = state.mesuresState.lastMesuresState;
    final maladiesListState = state.maladiesState.maladiesListState;
    final traitementsListState = state.traitementsState.traitementsListState;
    final allergiesListState = state.allergiesState.allergiesListState;
    final entourageContactsStatus = state.entourageEtVolontesState.entourageContactsStatus;
    final isAdult = ProfilsUtils.getCurrentProfilType(state).isAdult;

    if (lastMesuresState.status.isError() ||
        maladiesListState.status.isError() ||
        traitementsListState.status.isError() ||
        allergiesListState.status.isError() ||
        (isRefonteEntourageEtVolontesEnabled && isAdult && entourageContactsStatus.isError())) {
      return AllPurposesStatus.ERROR;
    } else if (lastMesuresState.status.isSuccess() &&
        (maladiesListState.status.isSuccess() || maladiesListState.isCompleted) &&
        (traitementsListState.status.isSuccess() || traitementsListState.isCompleted) &&
        (allergiesListState.status.isSuccess() || allergiesListState.isCompleted) &&
        (!isRefonteEntourageEtVolontesEnabled || !isAdult || entourageContactsStatus.isSuccess())) {
      return AllPurposesStatus.SUCCESS;
    } else if (lastMesuresState.status.isNotLoadedOrLoading() ||
        maladiesListState.status.isNotLoadedOrLoading() ||
        traitementsListState.status.isNotLoadedOrLoading() ||
        allergiesListState.status.isNotLoadedOrLoading() ||
        (isRefonteEntourageEtVolontesEnabled && isAdult && entourageContactsStatus.isNotLoadedOrLoading())) {
      return AllPurposesStatus.LOADING;
    }
    return AllPurposesStatus.NOT_LOADED;
  }

  static IncitationPmlStatus getIncitationPmlStatus(EnsState state) {
    final recommandationState = state.recommandationsState;
    if (recommandationState.status.isSuccess()) {
      if (recommandationState.recommandations
          .contains(const EnsRecommandation(recommandationCode: RecommandationCode.INCITER_COMPLETER_PML))) {
        return IncitationPmlStatus.INCITER_COMPLETER_PML;
      } else if (recommandationState.recommandations
          .contains(const EnsRecommandation(recommandationCode: RecommandationCode.INCITER_ENREGISTRER_SYNTHESE_PML))) {
        return IncitationPmlStatus.INCITER_ENREGISTRER_SYNTHESE_PML;
      } else if (recommandationState.recommandations
          .contains(const EnsRecommandation(recommandationCode: RecommandationCode.INCITER_RAFRAICHIR_SYNTHESE_PML))) {
        return IncitationPmlStatus.INCITER_RAFRAICHIR_SYNTHESE_PML;
      }
    }
    return IncitationPmlStatus.SYNTHESE_ENREGISTRER;
  }

  static bool pmlStatusChanged(EnsState state) {
    final bool isInciterCompleterPml = getIncitationPmlStatus(state) == IncitationPmlStatus.INCITER_COMPLETER_PML;
    return (isInciterCompleterPml && isPmlRempli(state)) || (!isInciterCompleterPml && !isPmlRempli(state));
  }
}

enum IncitationPmlStatus {
  INCITER_COMPLETER_PML,
  INCITER_ENREGISTRER_SYNTHESE_PML,
  INCITER_RAFRAICHIR_SYNTHESE_PML,
  SYNTHESE_ENREGISTRER,
}
