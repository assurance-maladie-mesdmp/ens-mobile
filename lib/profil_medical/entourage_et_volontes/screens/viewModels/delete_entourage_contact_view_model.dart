/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/entourage_et_volontes/redux/entourage_et_volontes_redux.dart';
import 'package:fr_cnamts_ens/utils/all_purposes_status.dart';
import 'package:redux/redux.dart';

class DeleteEntourageContactViewModel extends Equatable {
  final void Function(String) onDeleteContact;
  final AllPurposesStatus deleteEntourageContactStatus;

  const DeleteEntourageContactViewModel._({
    required this.onDeleteContact,
    required this.deleteEntourageContactStatus,
  });

  factory DeleteEntourageContactViewModel.from(Store<EnsState> store) {
    final entourageEtVolontesState = store.state.entourageEtVolontesState;
    return DeleteEntourageContactViewModel._(
      onDeleteContact: (contactId) => store.dispatch(DeleteEntourageContactAction(contactId)),
      deleteEntourageContactStatus: entourageEtVolontesState.deleteEntourageContactStatus,
    );
  }

  @override
  List<Object?> get props => [deleteEntourageContactStatus];
}
