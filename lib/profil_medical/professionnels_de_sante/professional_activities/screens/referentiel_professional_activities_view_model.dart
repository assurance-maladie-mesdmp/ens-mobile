/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/professional_activities/domain/ens_professional_activity.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/professional_activities/redux/professional_activities_redux.dart';
import 'package:redux/redux.dart';

class ReferentielProfessionalActivitiesViewModel extends Equatable {
  final List<ReferentielItemDisplayModel> referentielItems;
  final void Function() loadReferentiel;

  const ReferentielProfessionalActivitiesViewModel._({
    required this.referentielItems,
    required this.loadReferentiel,
  });

  factory ReferentielProfessionalActivitiesViewModel.from(Store<EnsState> store) {
    final professionalActivitiesState = store.state.professionalActivitiesState;
    final professionalActivities = professionalActivitiesState.status.isSuccess()
        ? professionalActivitiesState.professionalActivities
        : List<EnsProfessionalActivity>.empty();

    return ReferentielProfessionalActivitiesViewModel._(
      referentielItems: professionalActivities
          .map(
            (professionalActivity) => ReferentielItemDisplayModel(
              professionalActivity.treCode,
              professionalActivity.label,
            ),
          )
          .toList(),
      loadReferentiel: () {
        store.dispatch(FetchProfessionalActivitiesAction());
      },
    );
  }

  @override
  List<Object?> get props => [referentielItems];
}

class ReferentielItemDisplayModel extends Equatable {
  final String id;
  final String label;

  const ReferentielItemDisplayModel(this.id, this.label);

  @override
  List<Object?> get props => [id, label];
}
