/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/entourage_et_volontes/redux/entourage_et_volontes_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/incitation/redux/incitation_pml_selectors.dart';
import 'package:intl/intl.dart';
import 'package:redux/redux.dart';

class IncitationEntourageEtVolonteCardViewModel extends Equatable {
  final String description;
  final bool isChecked;

  const IncitationEntourageEtVolonteCardViewModel._({
    required this.description,
    required this.isChecked,
  });

  factory IncitationEntourageEtVolonteCardViewModel.from(
    Store<EnsState> store,
    EnsEntourageEtVolonteIncitationType incitationType,
  ) {
    return IncitationEntourageEtVolonteCardViewModel._(
      description: _getDescription(incitationType, store.state.entourageEtVolontesState),
      isChecked: _isChecked(store, incitationType),
    );
  }

  static String _getDescription(
    EnsEntourageEtVolonteIncitationType incitationType,
    EntourageEtVolontesState entourageEtVolontesState,
  ) {
    switch (incitationType) {
      case EnsEntourageEtVolonteIncitationType.ENTOURAGE:
        return _getEntourageDescription(incitationType, entourageEtVolontesState);
      case EnsEntourageEtVolonteIncitationType.DON_ORGANE:
        return _getDonOrganeDescription(incitationType, entourageEtVolontesState);
    }
  }

  static String _getEntourageDescription(
    EnsEntourageEtVolonteIncitationType type,
    EntourageEtVolontesState entourageEtVolontesState,
  ) {
    final entourageContacts = entourageEtVolontesState.entourageContacts;
    if (entourageContacts.isEmpty) {
      return 'Souhaitez-vous ajouter des contacts ?';
    } else {
      return Intl.plural(
        entourageContacts.length,
        one: '1 contact renseigné',
        other: '${entourageContacts.length} contacts renseignés',
      );
    }
  }

  static String _getDonOrganeDescription(
    EnsEntourageEtVolonteIncitationType type,
    EntourageEtVolontesState entourageEtVolontesState,
  ) {
    final consent = entourageEtVolontesState.consent;
    if (!consent) {
      return 'Connaissez-vous les dispositions réglementaires ?';
    } else {
      return 'J\'ai pris connaissances des dispositions réglementaires';
    }
  }

  static bool _isChecked(Store<EnsState> store, EnsEntourageEtVolonteIncitationType incitationType) {
    switch (incitationType) {
      case EnsEntourageEtVolonteIncitationType.ENTOURAGE:
        return IncitationPmlSelectors.isEntourageContactsCompleted(store.state);
      case EnsEntourageEtVolonteIncitationType.DON_ORGANE:
        return IncitationPmlSelectors.isDonOrganeCompleted(store.state);
    }
  }

  @override
  List<Object?> get props => [
        description,
        isChecked,
      ];
}

enum EnsEntourageEtVolonteIncitationType { ENTOURAGE, DON_ORGANE }
