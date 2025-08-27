/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/parameters/gestion_profil/domain/partager_profil_gestionnaire.dart';
import 'package:fr_cnamts_ens/parameters/gestion_profil/redux/partager_profil_redux.dart';
import 'package:fr_cnamts_ens/user/redux/user_selectors.dart';
import 'package:fr_cnamts_ens/utils/all_purposes_status.dart';
import 'package:redux/redux.dart';

class PartagerProfilViewModel extends Equatable {
  final AllPurposesStatus status;
  final List<String> gestionnairesNames;
  final List<String> gestionnairesEnAttenteNames;
  final String patientName;
  final bool canShare;
  final void Function() loadGestionnaires;

  const PartagerProfilViewModel._({
    required this.status,
    required this.gestionnairesNames,
    required this.gestionnairesEnAttenteNames,
    required this.patientName,
    required this.canShare,
    required this.loadGestionnaires,
  });

  factory PartagerProfilViewModel(Store<EnsState> store) {
    final partagerProfilState = store.state.partagerProfilState;
    return PartagerProfilViewModel._(
      status: partagerProfilState.status,
      gestionnairesNames: partagerProfilState.gestionnaires
          .where((gestionnaire) => gestionnaire.status == PartagerProfilGestionnaireStatus.VALIDE)
          .map((gestionnaire) => '${gestionnaire.firstName} ${gestionnaire.lastName}')
          .toList(),
      gestionnairesEnAttenteNames: partagerProfilState.gestionnaires
          .where((gestionnaire) => gestionnaire.status == PartagerProfilGestionnaireStatus.EN_ATTENTE)
          .map((gestionnaire) => '${gestionnaire.firstName} ${gestionnaire.lastName}')
          .toList(),
      patientName: UserSelectors.getFirstName(store.state) ?? '',
      canShare: partagerProfilState.status.isSuccess() && partagerProfilState.gestionnaires.length < 2,
      loadGestionnaires: () => store.dispatch(FetchPartagerProfilGestionnairesAction()),
    );
  }

  @override
  List<Object?> get props => [status, gestionnairesNames, gestionnairesEnAttenteNames, patientName, canShare];
}
