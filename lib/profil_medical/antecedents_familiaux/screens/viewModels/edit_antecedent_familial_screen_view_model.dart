/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/antecedents_familiaux/domain/models/editing_antecedent_familial.dart';
import 'package:fr_cnamts_ens/profil_medical/antecedents_familiaux/domain/models/ens_antecedent_familial.dart';
import 'package:fr_cnamts_ens/profil_medical/antecedents_familiaux/redux/antecedents_familiaux_redux.dart';
import 'package:fr_cnamts_ens/utils/all_purposes_status.dart';
import 'package:redux/redux.dart';

class EditAntecedentFamilialScreenViewModel extends Equatable {
  final AllPurposesStatus editStatus;
  final void Function(
    String? id,
    String name,
    String? comment,
    EnsFamilyRelationship? familyRelationship,
    bool isUpdateAction,
  ) editAntecedentFamilial;

  const EditAntecedentFamilialScreenViewModel._internal({
    required this.editStatus,
    required this.editAntecedentFamilial,
  });

  factory EditAntecedentFamilialScreenViewModel.from(Store<EnsState> store) {
    final antecedentsFamiliauxEditStatus = store.state.antecedentsFamiliauxState.antecedentsFamiliauxEditStatus;
    return EditAntecedentFamilialScreenViewModel._internal(
      editStatus: antecedentsFamiliauxEditStatus,
      editAntecedentFamilial: (id, name, comment, familyRelationship, isUpdateAction) {
        final editingAntecedentFamilial = EditingAntecedentFamilial(
          id: id,
          name: name,
          comment: comment,
          familyRelationship: familyRelationship,
        );
        if (isUpdateAction) {
          store.dispatch(UpdateAntecedentFamilialAction(editingAntecedentFamilial));
        } else {
          store.dispatch(AddAntecedentFamilialAction(editingAntecedentFamilial));
        }
      },
    );
  }

  String getAppBarTitle(bool isUpdate) {
    if (isUpdate) {
      return 'Modifier un antécédent';
    } else {
      return 'Ajouter un antécédent';
    }
  }

  @override
  List<Object?> get props => [editStatus];
}
