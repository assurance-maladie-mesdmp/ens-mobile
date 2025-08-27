/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/consentement_extraction_donnees_sante/screens/consentement_extraction_donnees_utils.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/interruption_services/domain/interruption_de_service_info.dart';
import 'package:fr_cnamts_ens/interruption_services/redux/interruption_selectors.dart';
import 'package:fr_cnamts_ens/parameters/consentements_urgence/domain/models/ens_consentement_urgence.dart';
import 'package:fr_cnamts_ens/parameters/consentements_urgence/domain/models/ens_consentements_urgence.dart';
import 'package:fr_cnamts_ens/parameters/consentements_urgence/redux/consentements_urgence_actions.dart';
import 'package:fr_cnamts_ens/profils_rattaches/screens/profils_utils.dart';
import 'package:redux/redux.dart';

class ConsentementsUrgenceScreenViewModel extends Equatable {
  static const EMPTY_VALUE = '-';

  final EnsConsentementsUrgence? consentements;
  final bool isConsentementSamuEnabled;
  final bool isConsentementAutrePsEnabled;
  final bool isConsentementDocsMasquesEnabled;
  final bool errorDuringDataLoading;
  final bool shouldGoToActivateAds;
  final void Function({required bool force}) loadConsentementsUrgence;
  final void Function({
    required bool isAllowedSAMU,
    required bool isAllowedAutrePS,
    required bool isAllowedDocumentsMasques,
    required bool isFromOnboarding,
  }) updateConsentements;
  final ProfilType profilType;
  final bool shouldDisplayExtractMesureConsentement;
  final String? userMail;

  bool get shouldContinue => shouldGoToActivateAds || shouldDisplayExtractMesureConsentement;

  const ConsentementsUrgenceScreenViewModel._internal({
    required this.consentements,
    required this.isConsentementSamuEnabled,
    required this.isConsentementAutrePsEnabled,
    required this.isConsentementDocsMasquesEnabled,
    required this.errorDuringDataLoading,
    required this.shouldGoToActivateAds,
    required this.loadConsentementsUrgence,
    required this.updateConsentements,
    required this.profilType,
    required this.shouldDisplayExtractMesureConsentement,
    this.userMail,
  });

  factory ConsentementsUrgenceScreenViewModel.from(
    Store<EnsState> store, {
    required bool isConsentementExtractionDonneesEnabled,
  }) {
    final consentementsUrgenceState = store.state.consentementsUrgenceState;
    final consentementsUrgence = consentementsUrgenceState.consentementsUrgence;
    final consentementsUrgenceEditState = store.state.consentementsUrgenceEditState;
    final ajoutAdState = store.state.ajoutAdState;
    final profilType = ProfilsUtils.getCurrentProfilType(store.state);
    final userData = store.state.userState.mainUserDataState.userData;

    final interruptionServiceInfos = InterruptionSelectors.getCurrentInterruptionInfos(
      state: store.state,
      domaine: DomaineInterruption.ENROLEMENT,
    );

    bool isConsentementSamuEnabled = false;
    bool isConsentementAutrePsEnabled = false;
    bool isConsentementDocsMasquesEnabled = false;

    bool errorDuringDataLoading = false;

    if (consentementsUrgenceState.isSuccessWithData) {
      isConsentementSamuEnabled = true;
      isConsentementAutrePsEnabled = true;
      isConsentementDocsMasquesEnabled = consentementsUrgence!.samu.isAllowed || consentementsUrgence.autrePS.isAllowed;
    } else if (consentementsUrgenceState.isErrorOrSuccessWithoutData) {
      errorDuringDataLoading = true;
    }

    if (consentementsUrgenceEditState.status.isLoading()) {
      isConsentementSamuEnabled = false;
      isConsentementAutrePsEnabled = false;
      isConsentementDocsMasquesEnabled = false;
    }

    return ConsentementsUrgenceScreenViewModel._internal(
      consentements: consentementsUrgence,
      isConsentementSamuEnabled: isConsentementSamuEnabled,
      isConsentementAutrePsEnabled: isConsentementAutrePsEnabled,
      isConsentementDocsMasquesEnabled: isConsentementDocsMasquesEnabled,
      errorDuringDataLoading: errorDuringDataLoading,
      shouldGoToActivateAds: ajoutAdState.status.isSuccess() &&
          ajoutAdState.adsToAdd.isNotEmpty &&
          store.state.userState.isMainProfile &&
          interruptionServiceInfos?.message == null,
      loadConsentementsUrgence: ({required force}) => store.dispatch(FetchConsentementsUrgenceAction(force: force)),
      updateConsentements: ({
        required isAllowedSAMU,
        required isAllowedAutrePS,
        required isAllowedDocumentsMasques,
        required isFromOnboarding,
      }) {
        bool finalIsAllowedDocumentsMasques = isAllowedDocumentsMasques;
        if (isAllowedSAMU == false && isAllowedAutrePS == false) {
          finalIsAllowedDocumentsMasques = false;
        }
        store.dispatch(
          UpdateConsentementUrgenceAction(
            EnsConsentementsUrgence(
              samu: EnsConsentementUrgence(
                id: consentementsUrgence!.samu.id,
                isAllowed: isAllowedSAMU,
              ),
              autrePS: EnsConsentementUrgence(
                id: consentementsUrgence.autrePS.id,
                isAllowed: isAllowedAutrePS,
              ),
              documentsMasques: EnsConsentementUrgence(
                id: consentementsUrgence.documentsMasques.id,
                isAllowed: finalIsAllowedDocumentsMasques,
              ),
            ),
            isFromOnboarding,
          ),
        );
      },
      profilType: profilType,
      shouldDisplayExtractMesureConsentement: ConsentementExtractionDonneesUtils.shouldDisplayConsentement(
        isConsentementExtractionDonneesEnabled: isConsentementExtractionDonneesEnabled,
        state: store.state,
      ),
      userMail: userData?.mail ?? EMPTY_VALUE,
    );
  }

  @override
  List<Object?> get props => [
        consentements,
        isConsentementSamuEnabled,
        isConsentementAutrePsEnabled,
        isConsentementDocsMasquesEnabled,
        errorDuringDataLoading,
        shouldGoToActivateAds,
        profilType,
        shouldDisplayExtractMesureConsentement,
        userMail,
      ];
}
