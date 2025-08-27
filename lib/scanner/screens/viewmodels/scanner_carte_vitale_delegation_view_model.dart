/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/aidants_aides/redux/aidants_aides_redux.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/parameters/gestion_profil/redux/form/partager_profil_form_redux.dart';
import 'package:fr_cnamts_ens/scanner/domain/type_scan.dart';
import 'package:redux/redux.dart';

class ScannerCarteVitaleDelegationViewModel extends Equatable {
  final String Function(bool showValidationScreen) getInstruction;
  final void Function(String numSecu) saveScanCarteVitaleInfos;
  final void Function() resetScanCarteVitaleInfos;
  final WordingsBottomSheetInfo Function() getWordingsBottomSheetInfo;

  const ScannerCarteVitaleDelegationViewModel._({
    required this.getInstruction,
    required this.saveScanCarteVitaleInfos,
    required this.resetScanCarteVitaleInfos,
    required this.getWordingsBottomSheetInfo,
  });

  static String _getInstruction(bool showValidationScreen) {
    if (showValidationScreen) {
      return 'Étape validée';
    }
    return 'Placez l’avant de la carte Vitale';
  }

  static WordingsBottomSheetInfo _getWordingsBottomSheetInfo(TypeScanCarteVitaleDelegation typeScan) {
    return switch (typeScan) {
      TypeScanCarteVitaleDelegation.SCAN_CARTE_VITALE_AIDANT => const WordingsBottomSheetInfo(
          titre: 'Saisir automatiquement le numéro de sécurité sociale',
          description:
              'Pour identifier mon proche aidant, je scanne sa carte Vitale afin de saisir automatiquement son numéro de sécurité sociale.',
        ),
      TypeScanCarteVitaleDelegation.SCAN_CARTE_VITALE_REPRESENTANT_LEGAL => const WordingsBottomSheetInfo(
          titre: 'Saisir automatiquement le numéro de sécurité sociale',
          description:
              'Pour identifier le second représentant légal, je scanne sa carte Vitale afin de saisir automatiquement son numéro de sécurité sociale.',
        )
    };
  }

  factory ScannerCarteVitaleDelegationViewModel.from(Store<EnsState> store, TypeScanCarteVitaleDelegation typeScan) {
    return ScannerCarteVitaleDelegationViewModel._(
      getInstruction: _getInstruction,
      saveScanCarteVitaleInfos: (numeroSecu) {
        switch (typeScan) {
          case TypeScanCarteVitaleDelegation.SCAN_CARTE_VITALE_AIDANT:
            store.dispatch(SaveNumeroSecuFromScanAidantAction(numeroSecu));
          case TypeScanCarteVitaleDelegation.SCAN_CARTE_VITALE_REPRESENTANT_LEGAL:
            store.dispatch(SaveNumeroSecuFromScanRepresentantLegalAction(numeroSecu));
        }
      },
      resetScanCarteVitaleInfos: () {
        switch (typeScan) {
          case TypeScanCarteVitaleDelegation.SCAN_CARTE_VITALE_AIDANT:
            store.dispatch(ResetNumeroSecuFromScanAidantAction());
          case TypeScanCarteVitaleDelegation.SCAN_CARTE_VITALE_REPRESENTANT_LEGAL:
            store.dispatch(ResetNumeroSecuFromScanRepresentantLegalAction());
        }
      },
      getWordingsBottomSheetInfo: () => _getWordingsBottomSheetInfo(typeScan),
    );
  }

  @override
  List<Object?> get props => [];
}

class WordingsBottomSheetInfo extends Equatable {
  final String titre;
  final String description;

  const WordingsBottomSheetInfo({required this.titre, required this.description});

  @override
  List<Object?> get props => [titre, description];
}
