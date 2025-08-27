/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:collection/collection.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/aidants_aides/domain/invitation_from_aide.dart';
import 'package:fr_cnamts_ens/aidants_aides/redux/aidants_aides_redux.dart';
import 'package:fr_cnamts_ens/ayants_droits/domain/ayants_droits_pending_invitation.dart';
import 'package:fr_cnamts_ens/ayants_droits/domain/confirmation_partage_profil_statut.dart';
import 'package:fr_cnamts_ens/ayants_droits/redux/ayants_droits_redux.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/messagerie/home_messagerie/screens/messagerie_datetime_formater.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:fr_cnamts_ens/utils/all_purposes_status.dart';
import 'package:fr_cnamts_ens/utils/ens_date_utils.dart';
import 'package:fr_cnamts_ens/utils/extensions/string_extensions.dart';
import 'package:redux/redux.dart';

class ProfilsRattachesInvitationsViewModel extends Equatable {
  final AllPurposesStatus screenStatus;
  final void Function() loadInvitations;
  final List<AyantDroitInvitationDisplayModel> adDisplayModels;
  final AllPurposesStatus confirmationAdInvitationStatus;
  final void Function(String adPatientId, ConfirmationPartageProfilStatut) confirmAdInvitation;
  final List<AideInvitationDisplayModel> aidantsAidesDisplayModels;
  final void Function(String invitationId) acceptInvitationFromAide;
  final void Function(String invitationId) refuseInvitationFromAide;
  final AcceptOrRefuseInvitationStatus acceptOrRefuseInvitationFromAideStatus;

  const ProfilsRattachesInvitationsViewModel._({
    required this.screenStatus,
    required this.loadInvitations,
    required this.adDisplayModels,
    required this.confirmationAdInvitationStatus,
    required this.confirmAdInvitation,
    required this.aidantsAidesDisplayModels,
    required this.acceptInvitationFromAide,
    required this.refuseInvitationFromAide,
    required this.acceptOrRefuseInvitationFromAideStatus,
  });

  factory ProfilsRattachesInvitationsViewModel.from(
    Store<EnsState> store, {
    required bool isAidantsAidesEnabled,
    LocaleHelper localeHelper = const LocaleHelper(),
  }) {
    final ayantsDroitsPendingInvitationsState = store.state.ayantsDroitsPendingInvitationsState;
    final adDisplayModels = _buildAyantsDroitsDisplayModels(
      ayantsDroitsPendingInvitationsState.pendingInvitationsFromAyantsDroits,
      localeHelper,
    );

    final aidantState = store.state.aidantState;
    final invitationsFromAidesState = aidantState.invitationsFromAidesState;
    final aidantsAidesDisplayModels = isAidantsAidesEnabled
        ? _buildAidantsAidesDisplayModels(
            invitationsFromAidesState.pendingInvitationsFromAides,
            localeHelper,
          )
        : List<AideInvitationDisplayModel>.empty();

    return ProfilsRattachesInvitationsViewModel._(
      screenStatus: _buildScreenStatus(
        invitationsFromAyantsDroitsStatus: ayantsDroitsPendingInvitationsState.pendingInvitationsFromAyantsDroitsStatus,
        invitationsFromAidesStatus: invitationsFromAidesState.fetchInvitationsFromAidesStatus,
      ),
      loadInvitations: () {
        store.dispatch(FetchProfilsRattachesAndAdPendingInvitationsAction());
        if (isAidantsAidesEnabled) {
          store.dispatch(FetchInvitationsFromAidesAction());
        }
      },
      adDisplayModels: adDisplayModels,
      confirmAdInvitation: (adPatientId, confirmationPartageStatut) {
        final currentAdInvitation = ayantsDroitsPendingInvitationsState.pendingInvitationsFromAyantsDroits
            .firstWhere((invitation) => invitation.adPartageProfile.patientId == adPatientId);
        store.dispatch(
          SendAyantDroitInvitationConfirmationAction(
            adPartageProfil: currentAdInvitation.adPartageProfile,
            confirmationPartageStatut: confirmationPartageStatut,
          ),
        );
      },
      confirmationAdInvitationStatus: ayantsDroitsPendingInvitationsState.confirmationRequestStatus,
      aidantsAidesDisplayModels: aidantsAidesDisplayModels,
      acceptInvitationFromAide: (invitationId) {
        final currentInvitationFromAide = invitationsFromAidesState.pendingInvitationsFromAides
            .firstWhere((invitation) => invitation.invitationId == invitationId);
        store.dispatch(AcceptInvitationFromAideAction(invitationFromAide: currentInvitationFromAide));
      },
      refuseInvitationFromAide: (invitationId) {
        store.dispatch(RefuseInvitationFromAideAction(invitationId: invitationId));
      },
      acceptOrRefuseInvitationFromAideStatus:
          invitationsFromAidesState.acceptOrRefuseInvitationState.acceptOrRefuseStatus,
    );
  }

  static AllPurposesStatus _buildScreenStatus({
    required AllPurposesStatus invitationsFromAyantsDroitsStatus,
    required AllPurposesStatus invitationsFromAidesStatus,
  }) {
    if (invitationsFromAyantsDroitsStatus.isSuccess() && invitationsFromAidesStatus.isSuccess()) {
      return AllPurposesStatus.SUCCESS;
    } else if (invitationsFromAyantsDroitsStatus.isError() || invitationsFromAidesStatus.isError()) {
      return AllPurposesStatus.ERROR;
    } else {
      return AllPurposesStatus.LOADING;
    }
  }

  static List<AyantDroitInvitationDisplayModel> _buildAyantsDroitsDisplayModels(
    List<AyantsDroitsPendingInvitation> pendingInvitationsFromAyantsDroits,
    LocaleHelper localeHelper,
  ) {
    return pendingInvitationsFromAyantsDroits.mapIndexed(
      (index, invitation) {
        final adPartageProfile = invitation.adPartageProfile;
        return AyantDroitInvitationDisplayModel(
          profilColor: adPartageProfile.color,
          name: '${adPartageProfile.firstName.capitalize()} ${adPartageProfile.lastName.capitalize()}',
          date: EnsDateUtils.formatDayPlainTextMonthAndYearWithHelper(invitation.endDate, localeHelper),
          patientId: adPartageProfile.patientId,
        );
      },
    ).toList();
  }

  static List<AideInvitationDisplayModel> _buildAidantsAidesDisplayModels(
    List<InvitationFromAide> pendingInvitationsFromAides,
    LocaleHelper localeHelper,
  ) {
    return pendingInvitationsFromAides
        .mapIndexed(
          (index, invitation) => AideInvitationDisplayModel(
            profilColor: invitation.aide.color,
            name: invitation.aide.fullName,
            date: EnsDateUtils.formatDayPlainTextMonthAndYearWithHelper(invitation.expirationDate, localeHelper),
            invitationId: invitation.invitationId,
          ),
        )
        .toList();
  }

  @override
  List<Object?> get props => [
        screenStatus,
        adDisplayModels,
        confirmationAdInvitationStatus,
        aidantsAidesDisplayModels,
        acceptOrRefuseInvitationFromAideStatus,
      ];
}

sealed class ProfilInvitationDisplayModel extends Equatable {
  final Color profilColor;
  final String name;
  final String date;
  final ProfilInvitationType type;

  const ProfilInvitationDisplayModel({
    required this.profilColor,
    required this.name,
    required this.date,
    required this.type,
  });

  @override
  List<Object?> get props => [profilColor, name, date, type];
}

class AyantDroitInvitationDisplayModel extends ProfilInvitationDisplayModel {
  final String patientId;

  const AyantDroitInvitationDisplayModel({
    required super.profilColor,
    required super.name,
    required super.date,
    super.type = ProfilInvitationType.AYANT_DROIT,
    required this.patientId,
  });

  @override
  List<Object?> get props => [...super.props, patientId];
}

class AideInvitationDisplayModel extends ProfilInvitationDisplayModel {
  final String invitationId;

  const AideInvitationDisplayModel({
    required super.profilColor,
    required super.name,
    required super.date,
    super.type = ProfilInvitationType.AIDANT_AIDE,
    required this.invitationId,
  });

  @override
  List<Object?> get props => [...super.props, invitationId];
}

enum ProfilInvitationType {
  AYANT_DROIT,
  AIDANT_AIDE;

  String getLabel() {
    switch (this) {
      case ProfilInvitationType.AYANT_DROIT:
        return 'représentant légal';
      case ProfilInvitationType.AIDANT_AIDE:
        return 'proche aidant';
    }
  }

  String getIcon() {
    switch (this) {
      case ProfilInvitationType.AYANT_DROIT:
        return EnsImages.ic_user;
      case ProfilInvitationType.AIDANT_AIDE:
        return EnsImages.ic_user_heart;
    }
  }
}
