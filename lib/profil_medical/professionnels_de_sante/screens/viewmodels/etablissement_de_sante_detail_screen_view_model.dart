/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:collection/collection.dart';
import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/interruption_services/domain/interruption_de_service_info.dart';
import 'package:fr_cnamts_ens/interruption_services/redux/interruption_selectors.dart';
import 'package:fr_cnamts_ens/messagerie/home_messagerie/redux/messagerie_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/redux/etablissements_de_sante_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/screens/etablissement_de_sante_detail_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/screens/viewmodels/called_es_or_ps_detail_screen_from.dart';
import 'package:fr_cnamts_ens/search_es/domain/models/etablissement_de_sante.dart';
import 'package:fr_cnamts_ens/utils/screen_status.dart';
import 'package:redux/redux.dart';

class EtablissementDeSanteDetailViewModel extends Equatable {
  final ScreenStatus viewStatus;
  final CalledESorPSDetailScreenFrom fromScreen;
  final EtablissementDeSante? es;
  final String? idNat;
  final bool isEsPatientAdded;
  final void Function() createContact;
  final bool isEsListLoading;
  final bool isAddEsLoading;
  final String? interruptionServiceSnackbarMessage;
  final void Function() addEtablissementDeSante;
  final void Function() removeEtablissementDeSante;

  const EtablissementDeSanteDetailViewModel._internal({
    required this.viewStatus,
    required this.fromScreen,
    this.es,
    this.idNat,
    required this.isEsPatientAdded,
    required this.createContact,
    this.isEsListLoading = false,
    this.isAddEsLoading = false,
    this.interruptionServiceSnackbarMessage,
    required this.addEtablissementDeSante,
    required this.removeEtablissementDeSante,
  });

  factory EtablissementDeSanteDetailViewModel.from(Store<EnsState> store, EtablissementDeSanteArgument arg) {
    final idNat = arg.idNat;
    final fromScreen = arg.calledFrom;
    final etablissementsDeSanteState = store.state.etablissementsDeSanteState;
    final esAlreadyAddListState = etablissementsDeSanteState.etablissementDeSanteListState;
    final esDetailsState = etablissementsDeSanteState.etablissementsDeSanteDetailsStates[arg.idNat];
    final addEsStatus = etablissementsDeSanteState.addEsStatus;
    final isEsListLoading = esAlreadyAddListState.status.isNotLoadedOrLoading();
    final isAddEsLoading = addEsStatus.isLoading();

    final interruptionServiceSnackbarMessage = InterruptionSelectors.getCurrentInterruptionInfos(
      state: store.state,
      domaine: DomaineInterruption.MESSAGERIE,
    )?.messageSnackbar;

    EtablissementDeSante? es;
    ScreenStatus status = ScreenStatus.LOADING;
    bool isEsPatientAdded = false;

    if (esDetailsState != null) {
      if (esDetailsState.isErrorOrSuccessWithoutData) {
        status = ScreenStatus.ERROR;
      } else if (esDetailsState.isSuccessWithData) {
        status = ScreenStatus.SUCCESS;
        es = esDetailsState.etablissementDeSante;

        if (esAlreadyAddListState.status.isSuccess()) {
          final etablissementDeSanteInList = esAlreadyAddListState.etablissementsDeSante.firstWhereOrNull(
            (addedEs) => addedEs.idNat == idNat,
          );
          isEsPatientAdded = etablissementDeSanteInList != null;
          if (isEsPatientAdded) {
            es = etablissementDeSanteInList;
          }
        }
      }
    }

    final formattedEsName = es?.formattedNameWithAlias ?? '';

    return EtablissementDeSanteDetailViewModel._internal(
      viewStatus: status,
      fromScreen: fromScreen,
      es: es,
      idNat: idNat,
      isEsPatientAdded: isEsPatientAdded,
      createContact: es != null
          ? () => store.dispatch(CreateContactAction(email: es!.mail!, fullName: formattedEsName, esId: idNat))
          : () {},
      isEsListLoading: isEsListLoading,
      isAddEsLoading: isAddEsLoading,
      interruptionServiceSnackbarMessage: interruptionServiceSnackbarMessage,
      addEtablissementDeSante: () {
        if (es != null) {
          store.dispatch(AddEsAction(es.idNat));
        }
      },
      removeEtablissementDeSante: () {
        if (es != null) {
          store.dispatch(RemoveEsAction(es.organizationId));
        }
      },
    );
  }

  @override
  List<Object?> get props => [
        fromScreen,
        es,
        idNat,
        viewStatus,
        isEsPatientAdded,
        isEsListLoading,
        isAddEsLoading,
        interruptionServiceSnackbarMessage,
      ];
}
