/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:collection/collection.dart';
import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/allergies/domain/models/ens_allergie.dart';
import 'package:fr_cnamts_ens/profil_medical/allergies/redux/allergies_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/maladies/screen/viewModels/edit_maladie_screen_view_model.dart';
import 'package:fr_cnamts_ens/profil_medical/screens/viewmodels/link_traitement_display_model.dart';
import 'package:fr_cnamts_ens/profil_medical/traitement/domain/models/traitement_temporaire.dart';
import 'package:fr_cnamts_ens/utils/all_purposes_status.dart';
import 'package:redux/redux.dart';

typedef EditAllergieFunction = void Function({
  required String name,
  required String? comment,
  required List<String> linkedTraitementsIds,
  required List<TraitementTemporaire> traitementToCreateAndLink,
});

class EditAllergieScreenViewModel extends Equatable {
  final AllPurposesStatus editStatus;
  final bool isUserTraitementsNotEmpty;
  final EnsAllergie? allergie;
  final List<LinkedTraitementDisplayModel> linkedTraitementsDisplayModels;
  final EditAllergieFunction editAllergie;

  const EditAllergieScreenViewModel._internal({
    required this.editStatus,
    required this.allergie,
    required this.isUserTraitementsNotEmpty,
    required this.linkedTraitementsDisplayModels,
    required this.editAllergie,
  });

  factory EditAllergieScreenViewModel.from(Store<EnsState> store, {required String? allergieId}) {
    final allergiesEditStatus = store.state.allergiesState.allergiesEditStatus;
    final traitementEntities = store.state.traitementsState.traitementsListState.traitements;
    final allergie = store.state.allergiesState.allergiesListState.allergies.firstWhereOrNull(
      (allergie) => allergie.id == allergieId,
    );

    return EditAllergieScreenViewModel._internal(
      editStatus: allergiesEditStatus,
      allergie: allergie,
      isUserTraitementsNotEmpty: traitementEntities.isNotEmpty,
      linkedTraitementsDisplayModels: getTraitementDisplayModels(traitementEntities, allergie?.linkedTraitementIds),
      editAllergie: ({
        required name,
        required comment,
        required linkedTraitementsIds,
        required traitementToCreateAndLink,
      }) {
        final action = allergieId != null
            ? UpdateAllergieAction(
                id: allergieId,
                name: name,
                comment: comment,
                traitementsLinks: linkedTraitementsIds,
                traitementToCreateAndLink: traitementToCreateAndLink,
              )
            : AddAllergieAction(
                name: name,
                comment: comment,
                traitementsInMesToLink: linkedTraitementsIds,
                newTraitementsToLink: traitementToCreateAndLink,
              );
        store.dispatch(action);
      },
    );
  }

  @override
  List<Object?> get props => [editStatus, allergie, isUserTraitementsNotEmpty, linkedTraitementsDisplayModels];
}

class EditAllergieArgument {
  final EnsAllergie? allergie;
  final bool? fromIncitation;

  EditAllergieArgument({this.allergie, this.fromIncitation});
}
