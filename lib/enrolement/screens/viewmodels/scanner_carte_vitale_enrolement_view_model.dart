/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/enrolement/domain/type_carte_vitale_enum.dart';
import 'package:fr_cnamts_ens/enrolement/redux/enrolement_redux.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_initial_state.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:platform/platform.dart';
import 'package:redux/redux.dart';

class ScannerCarteVitaleEnrolementViewModel extends Equatable {
  final TypeCarteVitale typeCarteVitale;
  final String Function(bool isNumberSecuriteSocialeValide, bool showValidationScreen) getInstruction;
  final String Function(bool isNumberSecuriteSocialeValide, bool isNumberSerieValide) getImagePath;
  final void Function(String numSecu, String numSerie) saveScanCarteVitaleInfos;
  final void Function() resetScanCarteVitaleInfos;
  final bool Function(bool isNumSecuValide) getIsCasVertical;

  const ScannerCarteVitaleEnrolementViewModel._({
    required this.typeCarteVitale,
    required this.getInstruction,
    required this.getImagePath,
    required this.saveScanCarteVitaleInfos,
    required this.resetScanCarteVitaleInfos,
    required this.getIsCasVertical,
  });

  factory ScannerCarteVitaleEnrolementViewModel.from({
    required Store<EnsInitialState> store,
    required LocalPlatform platform,
  }) {
    final typeCarteVitale = store.state.enrolementState.typeCarteVitale;
    return ScannerCarteVitaleEnrolementViewModel._(
      typeCarteVitale: typeCarteVitale,
      getInstruction: (isNumberSecuriteSocialeValide, showValidationScreen) => _getInstruction(
        isNumberSecuriteSocialeValide,
        showValidationScreen,
        typeCarteVitale,
        platform.isIOS,
      ),
      getImagePath: (isNumberSecuriteSocialeValide, isNumberSerieValide) => _getImagePath(
        isNumberSecuriteSocialeValide,
        isNumberSerieValide,
        typeCarteVitale,
        platform.isIOS,
      ),
      saveScanCarteVitaleInfos: (numSecu, numSerie) {
        store.dispatch(SaveScanCarteVitaleInformationAction(numeroSecuriteSociale: numSecu, numeroSerie: numSerie));
      },
      resetScanCarteVitaleInfos: () {
        store.dispatch(ResetScanCarteVitaleInformationAction());
      },
      getIsCasVertical: (isNumSecuValide) => typeCarteVitale.isAvecPhoto() && platform.isIOS && isNumSecuValide,
    );
  }

  static String _getInstruction(
    bool isNumberSecuriteSocialeValide,
    bool showValidationScreen,
    TypeCarteVitale typeCarteVitale,
    bool isIOS,
  ) {
    if (showValidationScreen) {
      return 'Étape validée';
    }
    if (typeCarteVitale.isAvecPhoto() && isIOS) {
      if (isNumberSecuriteSocialeValide) {
        return 'Placez la carte Vitale verticalement';
      }
      return 'Placez la carte Vitale horizontalement';
    }
    if (typeCarteVitale.isSansPhoto()) {
      if (isNumberSecuriteSocialeValide) {
        return 'Placez l’arrière de la carte Vitale';
      }
    }
    return 'Placez l’avant de la carte Vitale';
  }

  static String _getImagePath(
    bool isNumberSecuriteSocialeValide,
    bool isNumberSerieValide,
    TypeCarteVitale typeCarteVitale,
    bool isIOS,
  ) {
    if (typeCarteVitale.isAvecPhoto()) {
      if (isIOS) {
        if (!isNumberSecuriteSocialeValide) {
          return EnsImages.carte_vitale_avec_photo_numero_secu;
        }
        if (isNumberSecuriteSocialeValide && !isNumberSerieValide) {
          return EnsImages.carte_vitale_avec_photo_numero_serie_vertical;
        }
      } else if (!isNumberSecuriteSocialeValide || !isNumberSerieValide) {
        return EnsImages.carte_vitale_avec_photo_numeros;
      }
    } else if (typeCarteVitale.isSansPhoto()) {
      if (!isNumberSecuriteSocialeValide) {
        return EnsImages.carte_vitale_sans_photo_numero_secu;
      } else if (isNumberSecuriteSocialeValide && !isNumberSerieValide) {
        return EnsImages.carte_vitale_sans_photo_numero_serie;
      }
    }
    return EnsImages.carte_vitale_avec_photo_numeros;
  }

  @override
  List<Object?> get props => [typeCarteVitale];
}
