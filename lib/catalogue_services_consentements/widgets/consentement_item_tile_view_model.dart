/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/catalogue_services_consentements/redux/catalogue_services_consentements_redux.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:redux/redux.dart';

class ConsentementItemTileViewModel extends Equatable {
  final void Function(bool isAllowed, String oid, String context) updateConsentement;

  const ConsentementItemTileViewModel._internal({required this.updateConsentement});

  factory ConsentementItemTileViewModel.from(Store<EnsState> store) {
    return ConsentementItemTileViewModel._internal(
      updateConsentement: (bool isAllowed, String oid, String context) {
        if (isAllowed) {
          store.dispatch(AddConsentementForServiceByOidAction(oid, context));
        } else {
          store.dispatch(RemoveConsentementForServiceByOidAction(oid, context));
        }
      },
    );
  }

  @override
  List<Object?> get props => [];
}
