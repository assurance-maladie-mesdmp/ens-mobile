/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/privacy/redux/privacy_actions.dart';
import 'package:fr_cnamts_ens/profils_rattaches/screens/profils_utils.dart';
import 'package:fr_cnamts_ens/user/redux/user_actions.dart';
import 'package:fr_cnamts_ens/utils/extensions/profil_extension.dart';
import 'package:fr_cnamts_ens/utils/extensions/string_extensions.dart';
import 'package:fr_cnamts_ens/utils/feature_flags_helper.dart';
import 'package:fr_cnamts_ens/utils/screen_status.dart';
import 'package:redux/redux.dart';

class ParametersScreenViewModel extends Equatable {
  static const EMPTY_VALUE = '-';
  static const FAKE_PASSWORD = '*********************';

  final ScreenStatus userDataFetchingStatus;
  final String? userIdentification;
  final String? userName;
  final String? userPassword;
  final String? userMail;
  final String? userPhone;
  final bool showPartagerProfil;
  final bool showGestionAccesProchesAides;
  final bool showGestionAccesProfil;
  final bool showConsentementExtractionDonnees;
  final void Function() reloadData;
  final void Function() openPrivacyCenter;
  final ProfilType profilType;
  final String mainFirstName;

  const ParametersScreenViewModel._internal({
    required this.userDataFetchingStatus,
    this.userName,
    this.userIdentification,
    this.userPassword,
    this.userMail,
    this.userPhone,
    this.showPartagerProfil = false,
    this.showGestionAccesProchesAides = false,
    this.showGestionAccesProfil = false,
    this.showConsentementExtractionDonnees = false,
    required this.reloadData,
    required this.openPrivacyCenter,
    required this.profilType,
    required this.mainFirstName,
  });

  factory ParametersScreenViewModel.from(Store<EnsState> store) {
    final mainUserDataState = store.state.userState.mainUserDataState;
    final username = store.state.userState.currentEnsUser?.username ?? '-';
    final showGestionAccesProchesAides = store.state.aidantState.delegationsState.delegationsEnCours.isNotEmpty;
    final profilType = ProfilsUtils.getCurrentProfilType(store.state);
    final mainFirstName = store.state.userState.currentProfile.mainFirstName;

    if (mainUserDataState.isSuccessWithData) {
      final userData = mainUserDataState.userData!;
      final isProfilPrincipal = store.state.userState.isMainProfile;
      return ParametersScreenViewModel._internal(
        userDataFetchingStatus: ScreenStatus.SUCCESS,
        userIdentification: username,
        userMail: userData.mail ?? EMPTY_VALUE,
        userName: userData.firstName.capitalizeName(),
        userPassword: FAKE_PASSWORD,
        userPhone: userData.phoneNumber ?? EMPTY_VALUE,
        showPartagerProfil: !isProfilPrincipal,
        showGestionAccesProchesAides: isProfilPrincipal && showGestionAccesProchesAides,
        showGestionAccesProfil: isProfilPrincipal,
        showConsentementExtractionDonnees:
            isConsentementExtractionDonneesEnabled && store.state.consentementExtractionDonneesSanteState.isWhitelisted,
        reloadData: () => store.dispatch(FetchUserDataAction()),
        openPrivacyCenter: () => store.dispatch(PrivacyOpenParametersAction()),
        profilType: profilType,
        mainFirstName: mainFirstName,
      );
    } else if (mainUserDataState.status.isNotLoadedOrLoading()) {
      return ParametersScreenViewModel._internal(
        userDataFetchingStatus: ScreenStatus.LOADING,
        reloadData: () {},
        openPrivacyCenter: () {},
        profilType: profilType,
        mainFirstName: mainFirstName,
      );
    }
    return ParametersScreenViewModel._internal(
      userDataFetchingStatus: ScreenStatus.ERROR,
      reloadData: () => store.dispatch(FetchUserDataAction()),
      openPrivacyCenter: () {},
      profilType: profilType,
      mainFirstName: mainFirstName,
    );
  }

  @override
  List<Object?> get props => [
        userDataFetchingStatus,
        userName,
        userIdentification,
        userPassword,
        userMail,
        userPhone,
        showPartagerProfil,
        showGestionAccesProchesAides,
        showGestionAccesProfil,
        showConsentementExtractionDonnees,
        profilType,
        mainFirstName,
      ];
}
