/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:collection/collection.dart';
import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/documents/redux/documents_selectors.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/infra/remote_config_wrapper.dart';
import 'package:fr_cnamts_ens/interruption_services/domain/interruption_de_service_info.dart';
import 'package:fr_cnamts_ens/interruption_services/redux/interruption_selectors.dart';
import 'package:fr_cnamts_ens/messagerie/widgets/file_attachment_widget.dart';
import 'package:fr_cnamts_ens/parameters/historique_activites/redux/historique_activites_selector.dart';
import 'package:fr_cnamts_ens/parameters/historique_activites/screens/viewModels/historique_activites_display_model.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/professionnels_de_sante_name_helper.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/redux/professionnels_de_sante_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/screens/professionnel_de_sante_detail_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/screens/professionnel_de_sante_display_model_role_enum.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/screens/viewmodels/called_es_or_ps_detail_screen_from.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/search_ps/domain/models/professionnel_de_sante.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/search_ps/domain/models/professionnel_de_sante_extension.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/search_ps/domain/models/type_of_ps_profession.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/search_ps/screens/viewModels/add_ps_typedef.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/search_ps/screens/viewModels/recherche_ps_type.dart';
import 'package:fr_cnamts_ens/utils/ens_date_utils.dart';
import 'package:fr_cnamts_ens/utils/extensions/profil_extension.dart';
import 'package:fr_cnamts_ens/utils/screen_status.dart';
import 'package:redux/redux.dart';

class ProfessionnelDeSanteDetailViewModel extends Equatable {
  final ScreenStatus viewStatus;
  final ProfessionnelSanteDisplayModel? psDisplayModel;
  final CalledESorPSDetailScreenFrom fromScreen;
  final bool isPsPatientAdded;
  final ProfessionnelDeSanteTracesDisplayModel tracesDisplayModel;
  final ProfessionnelDeSanteDocumentsDisplayModel documentsDisplayModel;
  final bool shouldDisplayMTNotAnymore;
  final bool shouldAddPsAsMedecinTraitant;
  final bool isPsListLoading;
  final bool isAddPsLoading;
  final bool profilType;
  final String mainFirstName;

  final void Function() removeProfessionnelDeSante;
  final void Function() removeRole;
  final AddPsFunction addPs;
  final void Function() updatePsRole;
  final PsDetailActionButtonType? psDetailActionButtonType;
  final PsDetailRoleButtonType? psDetailRoleButtonType;
  final String? interruptionServiceSnackbarMessage;

  const ProfessionnelDeSanteDetailViewModel._internal({
    required this.viewStatus,
    this.psDisplayModel,
    required this.fromScreen,
    required this.isPsPatientAdded,
    required this.tracesDisplayModel,
    required this.documentsDisplayModel,
    required this.shouldDisplayMTNotAnymore,
    required this.removeProfessionnelDeSante,
    required this.shouldAddPsAsMedecinTraitant,
    required this.removeRole,
    required this.addPs,
    required this.updatePsRole,
    required this.psDetailActionButtonType,
    required this.psDetailRoleButtonType,
    this.interruptionServiceSnackbarMessage,
    this.isPsListLoading = false,
    this.isAddPsLoading = false,
    required this.profilType,
    required this.mainFirstName,
  });

  factory ProfessionnelDeSanteDetailViewModel.from(
    Store<EnsState> store,
    ProfessionnelDeSanteArgument arg,
    RemoteConfigWrapper remoteConfigWrapper,
  ) {
    final fromScreen = arg.calledFrom;
    final idNat = arg.idNat;
    final shouldAddPsAsMedecinTraitant = arg.recherchePsType == RecherchePSType.ADD_MEDECIN_TRAITANT;
    final professionnelDeSanteDetailsState =
        store.state.professionnelsDeSanteState.professionnelsDeSanteDetailsStates[idNat];

    ProfessionnelSanteDisplayModel? psDisplayModel;
    bool isPsPatientAdded = false;
    bool shouldDisplayMTNotAnymore = false;
    ProfessionnelDeSante? psFromList;
    bool isMedecinTraitantDeclared = false;
    final psListState = store.state.professionnelsDeSanteState.professionnelDeSanteListState;
    final psListStatus = psListState.status;
    final isPsListLoading = psListStatus.isNotLoadedOrLoading();
    PsRoleDomaine? rolePS;
    bool isMedecinTraitant = false;
    PsDetailRoleButtonType? psDetailRoleButtonType;

    ScreenStatus status = ScreenStatus.LOADING;
    if (professionnelDeSanteDetailsState != null) {
      if (professionnelDeSanteDetailsState.isSuccessWithData) {
        final psFromDetails = professionnelDeSanteDetailsState.professionnelDeSante!;
        if (psListStatus.isSuccess()) {
          psFromList = psListState.professionnelsDeSante.firstWhereOrNull((addedPs) => addedPs.nationalId == idNat);
          if (psFromList != null) {
            isPsPatientAdded = true;
            shouldDisplayMTNotAnymore = psFromList.isMedecinTraitantRetrograde;
            rolePS = psFromList.role;
            isMedecinTraitant = _isMedecinTraitant(psFromList);
            isMedecinTraitantDeclared = psFromList.isMedecinTraitantDeclare;
          }
        }
        final showAddRoleButton = (_isNotSageFemmeReferente(psFromDetails.typeOfProfession, rolePS) ||
                _isNotPharmacienCorrespondant(psFromDetails.typeOfProfession, rolePS)) &&
            remoteConfigWrapper.isEnabled(Feature.psRoleSfrPc);

        psDetailRoleButtonType = _getPsDetailRoleButtonType(
          isMedecinTraitant: isMedecinTraitant,
          showAddRoleButton: showAddRoleButton,
          isPsPatientAdded: isPsPatientAdded,
        );

        psDisplayModel = _buildProfessionnelSanteDisplayModel(
          ps: psFromDetails,
          rolePS: rolePS,
          isMedecinTraitant: isMedecinTraitant,
          isMedecinTraitantDeclared: isMedecinTraitantDeclared,
          idNat: idNat,
        );

        status = ScreenStatus.SUCCESS;
      } else if (professionnelDeSanteDetailsState.isErrorOrSuccessWithoutData) {
        status = ScreenStatus.ERROR;
      }
    }

    final professionnelDeSanteTracesDisplayModel =
        _buildProfessionnelDeSanteTracesDisplayModel(store: store, idNat: idNat);
    final professionnelDeSanteDocumentsDisplayModel =
        _buildProfessionnelDeSanteDocumentsDisplayModel(store: store, idNat: idNat);

    return ProfessionnelDeSanteDetailViewModel._internal(
      viewStatus: status,
      psDisplayModel: psDisplayModel,
      fromScreen: fromScreen,
      isPsPatientAdded: isPsPatientAdded,
      shouldDisplayMTNotAnymore: shouldDisplayMTNotAnymore,
      tracesDisplayModel: professionnelDeSanteTracesDisplayModel,
      documentsDisplayModel: professionnelDeSanteDocumentsDisplayModel,
      addPs: ({required String id, PsRoleDisplayModel? role}) {
        store.dispatch(AddPsAction(professionnelSanteId: id, role: role?.psRoleDomaine));
      },
      updatePsRole: () => _updatePsRole(psDisplayModel, store),
      removeProfessionnelDeSante: () => _removeProfessionnelDeSante(psFromList, store),
      shouldAddPsAsMedecinTraitant: shouldAddPsAsMedecinTraitant,
      isPsListLoading: isPsListLoading,
      isAddPsLoading: store.state.professionnelsDeSanteState.addPsState.status.isLoading(),
      removeRole: () => _removeRole(psFromList, store),
      psDetailActionButtonType: _getPsDetailActionButtonType(
        role: psDisplayModel?.displayModelRole,
        isPsListLoading: isPsListLoading,
        isPsPatientAdded: isPsPatientAdded,
        isMedecinTraitantDeclared: psDisplayModel?.isMedecinTraitantDeclared == true,
      ),
      psDetailRoleButtonType: psDetailRoleButtonType,
      interruptionServiceSnackbarMessage: InterruptionSelectors.getCurrentInterruptionInfos(
        state: store.state,
        domaine: DomaineInterruption.MESSAGERIE,
      )?.messageSnackbar,
      profilType: store.state.userState.isMainProfile,
      mainFirstName: store.state.userState.currentProfile.mainFirstName,
    );
  }

  static void _updatePsRole(ProfessionnelSanteDisplayModel? psDisplayModel, Store<EnsState> store) {
    final psIdNat = psDisplayModel?.idNat;
    final psRole = psDisplayModel?.professionLinkToRole?.getPsDomainRoleLinkToProfession;
    if (psIdNat != null && psRole != null) {
      store.dispatch(UpdatePsRoleAction(psIdNat: psIdNat, role: psRole));
    }
  }

  static void _removeProfessionnelDeSante(ProfessionnelDeSante? psFromList, Store<EnsState> store) {
    final healthProfessionalId = psFromList?.idForDelete;
    if (healthProfessionalId != null) {
      store.dispatch(RemovePsAction(healthProfessionalId));
    }
  }

  static void _removeRole(ProfessionnelDeSante? psFromList, Store<EnsState> store) {
    final psIdNat = psFromList?.nationalId;
    final psRole = psFromList?.role;
    if (psIdNat != null && psRole != null) {
      store.dispatch(RemoveRoleFromPsAction(psIdNat: psIdNat, role: psRole));
    }
  }

  static ProfessionnelSanteDisplayModel _buildProfessionnelSanteDisplayModel({
    required ProfessionnelDeSante ps,
    required PsRoleDomaine? rolePS,
    required bool isMedecinTraitant,
    required bool isMedecinTraitantDeclared,
    required String idNat,
  }) {
    final formattedPsDetailFirstName = ProfessionnelsDeSanteInformationHelper.capitalizeAsNames(ps.firstName);
    final formattedPsDetailLastName = ProfessionnelsDeSanteInformationHelper.capitalizeAsNames(ps.lastName);

    return ProfessionnelSanteDisplayModel(
      displayableName: '$formattedPsDetailFirstName $formattedPsDetailLastName',
      displayModelRole: _psRoleMapper(role: rolePS, isMedecinTraitant: isMedecinTraitant),
      isMedecinTraitantDeclared: isMedecinTraitantDeclared,
      idNat: ps.nationalId ?? idNat,
      contactId: ps.contactId,
      isContactable: ps.isContactable,
      exercices: ps.exercices,
      addresses: ps.addresses,
      professionLinkToRole: ps.typeOfProfession,
      active: ps.active,
    );
  }

  static PsDetailRoleButtonType? _getPsDetailRoleButtonType({
    required bool isPsPatientAdded,
    required bool showAddRoleButton,
    required bool isMedecinTraitant,
  }) {
    if (isPsPatientAdded) {
      if (isMedecinTraitant) {
        return PsDetailRoleButtonType.MEDECIN_TRAITANT_INFO;
      } else if (showAddRoleButton) {
        return PsDetailRoleButtonType.ADD_ROLE;
      }
    }
    return null;
  }

  static PsDetailActionButtonType? _getPsDetailActionButtonType({
    PsRoleDisplayModel? role,
    required bool isPsListLoading,
    required bool isPsPatientAdded,
    required bool isMedecinTraitantDeclared,
  }) {
    final shouldDisplayDeleteButton = !isPsListLoading && isPsPatientAdded && !isMedecinTraitantDeclared;
    if (shouldDisplayDeleteButton) {
      if (role != null) {
        return PsDetailActionButtonType.REMOVE_PS_AND_ROLE;
      } else {
        return PsDetailActionButtonType.REMOVE_PS_ONLY;
      }
    } else {
      return null;
    }
  }

  static bool _isMedecinTraitant(ProfessionnelDeSante psFromList) =>
      psFromList.isMedecinTraitantDeclare || psFromList.role?.isMedecinTraitant == true;

  static PsRoleDisplayModel? _psRoleMapper({
    required PsRoleDomaine? role,
    required bool isMedecinTraitant,
  }) {
    if (role != null) {
      return role.psRoleDisplayModel;
    } else {
      return isMedecinTraitant ? PsRoleDisplayModel.MEDECIN_TRAITANT : null;
    }
  }

  bool canDeletePS() {
    return !isPsListLoading && isPsPatientAdded && psDisplayModel?.isMedecinTraitantDeclared == false;
  }

  static bool _isNotSageFemmeReferente(
    PsProfessionLinkToRole? typeOfProfession,
    PsRoleDomaine? role,
  ) {
    return typeOfProfession == PsProfessionLinkToRole.SAGE_FEMME && role != PsRoleDomaine.SAGE_FEMME_REFERENTE;
  }

  static bool _isNotPharmacienCorrespondant(
    PsProfessionLinkToRole? typeOfProfession,
    PsRoleDomaine? role,
  ) {
    return typeOfProfession == PsProfessionLinkToRole.PHARMACIEN && role != PsRoleDomaine.PHARMACIEN_CORRESPONDANT;
  }

  static ProfessionnelDeSanteTracesDisplayModel _buildProfessionnelDeSanteTracesDisplayModel({
    required Store<EnsState> store,
    required String idNat,
  }) {
    SectionViewStatus tracesStatus = SectionViewStatus.LOADING;
    final List<HistoriqueActivitesTraceDisplayModel> tracesDisplayModels = [];
    final professionnelDeSanteTracesByIdStates =
        store.state.historiqueActivitesState.professionnelDeSanteTracesByIdStates;
    String? lastTraceDate;
    final currentPsTracesState = professionnelDeSanteTracesByIdStates[idNat];
    if (currentPsTracesState != null) {
      if (currentPsTracesState.status.isError()) {
        tracesStatus = SectionViewStatus.ERROR;
      } else if (currentPsTracesState.status.isSuccess()) {
        tracesStatus = SectionViewStatus.SUCCESS;
        final tracesFromPs = HistoriqueActivitesSelector.getSortedTracesFromPs(store.state, idNat);
        final lastTrace = tracesFromPs.firstOrNull;
        lastTraceDate = lastTrace != null ? EnsDateUtils.formatFullDateWithTime(lastTrace.date) : null;
        for (final trace in tracesFromPs) {
          tracesDisplayModels.add(HistoriqueActivitesTraceDisplayModel.fromTrace(trace));
        }
      }
    }
    return ProfessionnelDeSanteTracesDisplayModel(
      tracesStatus: tracesStatus,
      tracesDisplayModels: tracesDisplayModels,
      lastTraceDate: lastTraceDate,
    );
  }

  static ProfessionnelDeSanteDocumentsDisplayModel _buildProfessionnelDeSanteDocumentsDisplayModel({
    required Store<EnsState> store,
    required String idNat,
  }) {
    SectionViewStatus documentsStatus = SectionViewStatus.LOADING;
    final documentsState = store.state.documentsState.documentsListState;
    List<FileAttachmentDisplayModel> documentsDisplayModels = [];
    if (documentsState.status.isError()) {
      documentsStatus = SectionViewStatus.ERROR;
    } else if (documentsState.status.isSuccess()) {
      documentsStatus = SectionViewStatus.SUCCESS;
      documentsDisplayModels = DocumentsSelectors.getDocumentsLinkedToPs(store.state, idNat);
    }
    return ProfessionnelDeSanteDocumentsDisplayModel(
      documentsStatus: documentsStatus,
      documentsDisplayModels: documentsDisplayModels,
    );
  }

  @override
  List<Object?> get props => [
        psDisplayModel,
        viewStatus,
        isPsPatientAdded,
        fromScreen,
        shouldDisplayMTNotAnymore,
        tracesDisplayModel,
        documentsDisplayModel,
        shouldAddPsAsMedecinTraitant,
        isPsListLoading,
        isAddPsLoading,
        psDetailRoleButtonType,
        psDetailActionButtonType,
        interruptionServiceSnackbarMessage,
        profilType,
        mainFirstName,
      ];
}

enum PsDetailActionButtonType { REMOVE_PS_ONLY, REMOVE_PS_AND_ROLE }

enum SectionViewStatus { LOADING, ERROR, SUCCESS }

enum PsDetailRoleButtonType { ADD_ROLE, MEDECIN_TRAITANT_INFO }

class ProfessionnelDeSanteTracesDisplayModel extends Equatable {
  final SectionViewStatus tracesStatus;
  final List<HistoriqueActivitesTraceDisplayModel> tracesDisplayModels;
  final String? lastTraceDate;

  const ProfessionnelDeSanteTracesDisplayModel({
    required this.tracesStatus,
    required this.tracesDisplayModels,
    required this.lastTraceDate,
  });

  @override
  List<Object?> get props => [tracesStatus, tracesDisplayModels, lastTraceDate];
}

class ProfessionnelDeSanteDocumentsDisplayModel extends Equatable {
  final SectionViewStatus documentsStatus;
  final List<FileAttachmentDisplayModel> documentsDisplayModels;

  const ProfessionnelDeSanteDocumentsDisplayModel({
    required this.documentsStatus,
    required this.documentsDisplayModels,
  });

  @override
  List<Object?> get props => [documentsStatus, documentsDisplayModels];
}

class ProfessionnelSanteDisplayModel extends Equatable {
  final String displayableName;
  final String idNat;
  final String? contactId;
  final PsRoleDisplayModel? displayModelRole;
  final List<ActeurDeSanteAdresse> addresses;
  final List<ProfessionnelDeSanteExercice>? exercices;
  final bool isMedecinTraitantDeclared;
  final bool isContactable;
  final PsProfessionLinkToRole? professionLinkToRole;
  final bool active;

  const ProfessionnelSanteDisplayModel({
    required this.displayableName,
    required this.displayModelRole,
    required this.isMedecinTraitantDeclared,
    required this.idNat,
    required this.contactId,
    required this.isContactable,
    required this.exercices,
    required this.addresses,
    required this.professionLinkToRole,
    required this.active,
  });

  @override
  List<Object?> get props => [
        displayableName,
        displayModelRole,
        isMedecinTraitantDeclared,
        idNat,
        contactId,
        isContactable,
        exercices,
        addresses,
        professionLinkToRole,
        active,
      ];
}
