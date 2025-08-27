/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/enrolement/domain/generated_carte_vitale.dart';
import 'package:fr_cnamts_ens/enrolement/domain/type_carte_vitale_enum.dart';
import 'package:fr_cnamts_ens/enrolement/redux/enrolement_redux.dart';
import 'package:fr_cnamts_ens/infra/app_config.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_initial_state.dart';
import 'package:redux/redux.dart';

class IdentiteFormScreenViewModel extends Equatable {
  final UserContactStatus status;
  final CodeProvisoireStatus codeProvisoireStatus;
  final DateTime? birthDate;
  final String? numeroSecu;
  final String? numeroSerieCarteVitale;
  final TypeCarteVitale typeCarteVitale;
  final void Function(DateTime birthDate, String numeroSecu, String numeroSerieCarteVitale) sendForm;
  final bool isJumeaux;
  final bool isInfosCarteVitaleFromScan;
  final bool? shouldShowNirGenerationIcon;
  final GeneratedCarteVitale? generatedCarteVitale;

  const IdentiteFormScreenViewModel._({
    required this.status,
    required this.codeProvisoireStatus,
    required this.birthDate,
    required this.numeroSecu,
    required this.numeroSerieCarteVitale,
    required this.typeCarteVitale,
    required this.sendForm,
    required this.isJumeaux,
    required this.isInfosCarteVitaleFromScan,
    this.generatedCarteVitale,
    this.shouldShowNirGenerationIcon,
  });

  factory IdentiteFormScreenViewModel(Store<EnsInitialState> store, AppConfig appConfig) {
    final enrolementState = store.state.enrolementState;
    final bool isInfosCarteVitaleFromScan = enrolementState.userIdentite.isInfosCarteVitaleFromScan;

    return IdentiteFormScreenViewModel._(
      status: enrolementState.userContactStatus,
      typeCarteVitale: enrolementState.typeCarteVitale,
      codeProvisoireStatus: enrolementState.validationCodeProvisoireStatus,
      birthDate: enrolementState.userIdentite.birthDate,
      numeroSecu: enrolementState.userIdentite.numeroSecu,
      numeroSerieCarteVitale: enrolementState.userIdentite.numeroSerieCarteVitale,
      sendForm: (birthDate, numeroSecu, numeroSerieCarteVitale) {
        store.dispatch(
          FetchUserContactAction(
            birthDate: birthDate,
            numeroSecu: numeroSecu,
            numeroSerieCarteVitale: numeroSerieCarteVitale,
          ),
        );
      },
      isJumeaux: enrolementState.jumeaux.isNotEmpty,
      isInfosCarteVitaleFromScan: isInfosCarteVitaleFromScan,
      shouldShowNirGenerationIcon: appConfig.enableNirGeneration,
      generatedCarteVitale:
          appConfig.enableNirGeneration && !isInfosCarteVitaleFromScan ? enrolementState.generatedCarteVitale : null,
    );
  }

  @override
  List<Object?> get props => [
        status,
        codeProvisoireStatus,
        birthDate,
        numeroSecu,
        numeroSerieCarteVitale,
        typeCarteVitale,
        isJumeaux,
        isInfosCarteVitaleFromScan,
        shouldShowNirGenerationIcon,
        generatedCarteVitale,
      ];
}
