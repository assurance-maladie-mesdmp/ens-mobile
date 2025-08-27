/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/files/domain/models/ens_file_content.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/interruption_services/domain/interruption_de_service_info.dart';
import 'package:fr_cnamts_ens/interruption_services/redux/interruption_selectors.dart';
import 'package:fr_cnamts_ens/profils_rattaches/screens/profils_utils.dart';
import 'package:fr_cnamts_ens/synthese_pdf/redux/synthese_pdf_redux.dart';
import 'package:fr_cnamts_ens/utils/all_purposes_status.dart';
import 'package:redux/redux.dart';

class SynthesePmlViewModel extends Equatable {
  final SynthesePmlStatus synthesePmlStatus;
  final AllPurposesStatus syntheseToDocStatus;
  final EnsFileContent? synthesePml;
  final void Function() loadSynthesePml;
  final void Function() exportSynthese;
  final void Function(bool? isForcedToVisible) addSynthesePmlToDocs;
  final void Function() resetConfidentialiteBottomSheet;
  final bool shouldDisplayConfidentialiteBottomSheet;
  final bool shouldDisplayIncitationVaccinationADBottomSheet;
  final String titleBottomSheet;
  final String descriptionBottomSheet;
  final ProfilType profilType;
  final String? interruptionServiceSnackbarMessage;

  const SynthesePmlViewModel._internal({
    required this.synthesePmlStatus,
    required this.syntheseToDocStatus,
    this.synthesePml,
    required this.loadSynthesePml,
    required this.exportSynthese,
    required this.addSynthesePmlToDocs,
    required this.resetConfidentialiteBottomSheet,
    required this.shouldDisplayConfidentialiteBottomSheet,
    required this.shouldDisplayIncitationVaccinationADBottomSheet,
    required this.titleBottomSheet,
    required this.descriptionBottomSheet,
    required this.profilType,
    required this.interruptionServiceSnackbarMessage,
  });

  factory SynthesePmlViewModel.from(Store<EnsState> store, {required bool isFromOnboarding}) {
    final state = store.state;
    final synthesePdfState = state.synthesePdfState;
    final vaccinationListState = store.state.vaccinationsState.vaccinationsListState;
    bool isVaccinationsEmpty = true;

    SynthesePmlStatus synthesePdfStatus = SynthesePmlStatus.LOADING;
    AllPurposesStatus syntheseToDocStatus = AllPurposesStatus.NOT_LOADED;

    EnsFileContent? synthesePdf;
    bool displayConfidentialiteBottomSheet = false;
    final profilType = ProfilsUtils.getCurrentProfilType(store.state);
    final isAd = ProfilsUtils.getCurrentProfilType(store.state).isAd;

    if (vaccinationListState.status.isSuccess()) {
      isVaccinationsEmpty = vaccinationListState.vaccinations.isEmpty;
    }

    if (synthesePdfState.isSuccessWithData) {
      synthesePdfStatus = SynthesePmlStatus.SUCCESS;
      final data = synthesePdfState.data!;
      syntheseToDocStatus = synthesePdfState.saveDocumentStatus;
      synthesePdf = data.synthesePdf;
      displayConfidentialiteBottomSheet = data.displayConfidentialiteBottomSheet;
    } else if (synthesePdfState.isErrorOrSuccessWithoutData) {
      synthesePdfStatus = SynthesePmlStatus.ERROR;
    }

    final interruptionServiceSnackbarMessage = InterruptionSelectors.getCurrentInterruptionInfos(
      state: state,
      domaine: DomaineInterruption.DOCUMENTS,
    )?.messageSnackbar;

    final shouldDisplayIncitationVaccinationADBottomSheet = !displayConfidentialiteBottomSheet &&
        isAd &&
        isFromOnboarding &&
        isVaccinationsEmpty &&
        syntheseToDocStatus.isSuccess();

    return SynthesePmlViewModel._internal(
      synthesePmlStatus: synthesePdfStatus,
      syntheseToDocStatus: syntheseToDocStatus,
      synthesePml: synthesePdf,
      loadSynthesePml: () {
        store.dispatch(FetchSynthesePMLAction());
      },
      exportSynthese: () {
        store.dispatch(
          ExportSynthesePdfAction(
            synthesePdf!,
            synthesePdf.filename,
          ),
        );
      },
      addSynthesePmlToDocs: (isSetToVisible) {
        store.dispatch(UploadSynthesePmlPdfAction(ensFileContent: synthesePdf!, isForcedToVisible: isSetToVisible));
      },
      resetConfidentialiteBottomSheet: () {
        store.dispatch(DisplayConfidentialiteBottomSheetAction(false));
      },
      shouldDisplayConfidentialiteBottomSheet: displayConfidentialiteBottomSheet,
      shouldDisplayIncitationVaccinationADBottomSheet: shouldDisplayIncitationVaccinationADBottomSheet,
      titleBottomSheet: _getTitleBottomSheet(
        profilType.isProfilPrincipal,
        state.userState.currentProfile?.prenom,
      ),
      descriptionBottomSheet: _getDescriptionBottomSheet(
        profilType.isProfilPrincipal,
        state.userState.currentProfile?.prenom,
      ),
      profilType: profilType,
      interruptionServiceSnackbarMessage: interruptionServiceSnackbarMessage,
    );
  }

  @override
  List<Object?> get props => [
        synthesePmlStatus,
        syntheseToDocStatus,
        synthesePml,
        shouldDisplayConfidentialiteBottomSheet,
        shouldDisplayIncitationVaccinationADBottomSheet,
        titleBottomSheet,
        descriptionBottomSheet,
        profilType,
        interruptionServiceSnackbarMessage,
      ];
}

String _getDescriptionBottomSheet(bool isProfilPrincipal, String? firstName) {
  return 'J’ai précédemment choisi de masquer tous ${isProfilPrincipal ? 'mes' : 'les'} documents aux professionnels de santé. Pour leur permettre d\'accéder à la synthèse ${isProfilPrincipal ? 'de mon profil médical' : 'du profil médical de $firstName'}, je l\'enregistre en la rendant visible.';
}

String _getTitleBottomSheet(bool isProfilPrincipal, String? firstName) {
  return isProfilPrincipal
      ? 'Je rends visible la synthèse de mon profil médical'
      : 'Je rends visible la synthèse du profil médical de $firstName';
}

enum SynthesePmlStatus { LOADING, ERROR, SUCCESS }
