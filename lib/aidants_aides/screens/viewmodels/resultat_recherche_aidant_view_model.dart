/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/aidants_aides/domain/potentiel_aidant.dart';
import 'package:fr_cnamts_ens/aidants_aides/redux/aidants_aides_redux.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/utils/all_purposes_status.dart';
import 'package:intl/intl.dart';
import 'package:redux/redux.dart';

class ResultatRechercheAidantViewModel extends Equatable {
  final PotentielAidantDisplayModel potentielAidantDisplayModel;
  final AllPurposesStatus sendInvitationStatus;
  final void Function() sendInvitation;

  const ResultatRechercheAidantViewModel._({
    required this.potentielAidantDisplayModel,
    required this.sendInvitationStatus,
    required this.sendInvitation,
  });

  factory ResultatRechercheAidantViewModel.from(Store<EnsState> store, PotentielAidant potentielAidant) {
    final displayModel = PotentielAidantDisplayModel(
      fullName: potentielAidant.fullName,
      birthDate: DateFormat('dd/MM/yyyy').format(potentielAidant.birthDate),
      numeroSecu: potentielAidant.numeroSecu,
    );

    return ResultatRechercheAidantViewModel._(
      potentielAidantDisplayModel: displayModel,
      sendInvitationStatus: store.state.aideState.sendInvitationState.sendInvitationToPotentielAidantStatus,
      sendInvitation: () {
        store.dispatch(SendInvitationToPotentielAidantAction());
      },
    );
  }

  @override
  List<Object?> get props => [potentielAidantDisplayModel, sendInvitationStatus];
}

class PotentielAidantDisplayModel extends Equatable {
  final String fullName;
  final String birthDate;
  final String numeroSecu;

  const PotentielAidantDisplayModel({
    required this.fullName,
    required this.birthDate,
    required this.numeroSecu,
  });

  @override
  List<Object?> get props => [fullName, birthDate, numeroSecu];
}
