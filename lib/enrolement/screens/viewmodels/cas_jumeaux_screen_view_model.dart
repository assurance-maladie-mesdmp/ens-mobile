/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/enrolement/redux/enrolement_redux.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_initial_state.dart';
import 'package:fr_cnamts_ens/utils/extensions/string_extensions.dart';
import 'package:redux/redux.dart';

class CasJumeauxScreenViewModel {
  final List<DisplayableProfile> displayableProfiles;
  final Function(DisplayableProfile adSelected) validate;
  final UserContactStatus userContactStatus;

  const CasJumeauxScreenViewModel._({
    required this.displayableProfiles,
    required this.validate,
    required this.userContactStatus,
  });

  factory CasJumeauxScreenViewModel(Store<EnsInitialState> store) {
    final enrolementState = store.state.enrolementState;
    final jumeaux = enrolementState.jumeaux;
    return CasJumeauxScreenViewModel._(
      displayableProfiles: jumeaux
          .map(
            (ad) => DisplayableProfile(
              nom: '${ad.firstName} ${ad.lastName}'.capitalizeName(),
              numeroSecu: ad.numeroSecu ?? '',
            ),
          )
          .toList(),
      validate: (DisplayableProfile adSelected) {
        store.dispatch(
          FetchUserContactAction(
            birthDate: enrolementState.userIdentite.birthDate!,
            numeroSecu: enrolementState.userIdentite.numeroSecu!,
            numeroSerieCarteVitale: enrolementState.userIdentite.numeroSerieCarteVitale!,
            numeroSecuAd: adSelected.numeroSecu,
          ),
        );
      },
      userContactStatus: store.state.enrolementState.userContactStatus,
    );
  }
}

class DisplayableProfile extends Equatable {
  final String nom;
  final String numeroSecu;

  const DisplayableProfile({required this.nom, required this.numeroSecu});

  @override
  List<Object?> get props => [nom, numeroSecu];
}
