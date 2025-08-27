/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:collection/collection.dart';
import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/parameters/consentements_ps/redux/consentements_ps_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/domain/professionnel_sante_confidentialities.dart';
import 'package:fr_cnamts_ens/profils_rattaches/screens/profils_utils.dart';
import 'package:fr_cnamts_ens/utils/all_purposes_status.dart';
import 'package:fr_cnamts_ens/utils/ens_date_utils.dart';
import 'package:fr_cnamts_ens/utils/extensions/profil_extension.dart';
import 'package:redux/redux.dart';

class PsConfidentialityContentViewModel extends Equatable {
  final PsConfidentilityDisplayModel psConfidentialityDisplayModel;
  final void Function() blockPs;
  final void Function() unblockPs;
  final ProfilType profilType;
  final String mainFirstName;

  const PsConfidentialityContentViewModel._internal({
    required this.psConfidentialityDisplayModel,
    required this.blockPs,
    required this.unblockPs,
    required this.profilType,
    required this.mainFirstName,
  });

  factory PsConfidentialityContentViewModel(Store<EnsState> store, {required String idNat}) {
    final psConfidentialitiesState = store.state.professionnelsDeSanteState.psConfidentialitiesState;
    final psConfidentiality = psConfidentialitiesState.psConfidentilities.firstWhereOrNull(
      (confidentiality) => confidentiality.psIdNat == idNat,
    );
    final profilType = ProfilsUtils.getCurrentProfilType(store.state);
    final mainFirstName = store.state.userState.currentProfile.mainFirstName;
    return PsConfidentialityContentViewModel._internal(
      psConfidentialityDisplayModel: _buildPsConfidentilityDisplayModel(
        status: psConfidentialitiesState.status,
        psConfidentiality: psConfidentiality,
        shouldShowCasUrgence: psConfidentialitiesState.shouldShowCasUrgence,
      ),
      blockPs: () => store.dispatch(BlockPsAction(idNat)),
      unblockPs: () {
        if (psConfidentiality != null && psConfidentiality.status == ProfessionnelSanteConfidentialityStatus.BLOCKED) {
          store.dispatch(UnblockPsAction(psIdNat: idNat, consentementId: psConfidentiality.consentId));
        }
      },
      profilType: profilType,
      mainFirstName: mainFirstName,
    );
  }

  static PsConfidentilityDisplayModel _buildPsConfidentilityDisplayModel({
    required AllPurposesStatus status,
    required ProfessionnelSanteConfidentiality? psConfidentiality,
    required bool shouldShowCasUrgence,
  }) {
    switch (status) {
      case AllPurposesStatus.NOT_LOADED:
      case AllPurposesStatus.LOADING:
        return const PsConfidentilityLoadingDisplayModel();
      case AllPurposesStatus.SUCCESS:
        return _buildPsConfidentilitySuccessCaseDisplayModel(psConfidentiality, shouldShowCasUrgence);
      case AllPurposesStatus.ERROR:
        return const PsConfidentilityErrorDisplayModel();
    }
  }

  static PsConfidentilityDisplayModel _buildPsConfidentilitySuccessCaseDisplayModel(
    ProfessionnelSanteConfidentiality? psConfidentiality,
    bool shouldShowCasUrgence,
  ) {
    if (psConfidentiality != null) {
      final formatedStartDate = EnsDateUtils.formatddmmyyyy(psConfidentiality.startDate);
      switch (psConfidentiality.status) {
        case ProfessionnelSanteConfidentialityStatus.CONSENT:
          return PsConfidentilityConsentDisplayModel(startDate: formatedStartDate);
        case ProfessionnelSanteConfidentialityStatus.BLOCKED:
          return PsConfidentilityBlockedDisplayModel(startDate: formatedStartDate);
      }
    } else {
      return PsConfidentilityNotYetConsultedDisplayModel(shouldShowCasUrgence: shouldShowCasUrgence);
    }
  }

  @override
  List<Object?> get props => [psConfidentialityDisplayModel, profilType, mainFirstName];
}

sealed class PsConfidentilityDisplayModel extends Equatable {
  const PsConfidentilityDisplayModel();
}

class PsConfidentilityLoadingDisplayModel extends PsConfidentilityDisplayModel {
  const PsConfidentilityLoadingDisplayModel();

  @override
  List<Object?> get props => [];
}

class PsConfidentilityConsentDisplayModel extends PsConfidentilityDisplayModel {
  final String startDate;

  const PsConfidentilityConsentDisplayModel({required this.startDate});

  @override
  List<Object?> get props => [startDate];
}

class PsConfidentilityBlockedDisplayModel extends PsConfidentilityDisplayModel {
  final String startDate;

  const PsConfidentilityBlockedDisplayModel({required this.startDate});

  @override
  List<Object?> get props => [startDate];
}

class PsConfidentilityNotYetConsultedDisplayModel extends PsConfidentilityDisplayModel {
  final bool shouldShowCasUrgence;

  const PsConfidentilityNotYetConsultedDisplayModel({required this.shouldShowCasUrgence});

  @override
  List<Object?> get props => [shouldShowCasUrgence];
}

class PsConfidentilityErrorDisplayModel extends PsConfidentilityDisplayModel {
  const PsConfidentilityErrorDisplayModel();

  @override
  List<Object?> get props => [];
}
