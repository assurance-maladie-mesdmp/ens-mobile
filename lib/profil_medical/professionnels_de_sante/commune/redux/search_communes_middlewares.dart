/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/commune/data/search_communes_repository.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/commune/redux/search_communes_action.dart';
import 'package:redux/redux.dart';

class SearchCommunesMiddlewares {
  final ISearchCommunesRepository _searchCommunesRepository;

  SearchCommunesMiddlewares(this._searchCommunesRepository);

  static List<Middleware<EnsState>> create(ISearchCommunesRepository searchCommunesRepository) {
    final middlewares = SearchCommunesMiddlewares(searchCommunesRepository);

    return [
      TypedMiddleware<EnsState, SearchCommunesAction>(middlewares.onSearchCommunesAction).call,
    ];
  }

  Future<void> onSearchCommunesAction(Store<EnsState> store, SearchCommunesAction action, NextDispatcher next) async {
    next(action);
    await _searchCommunesRepository.searchCommunes(input: action.input)
      ..onSuccess((success) {
        store.dispatch(ProcessSearchCommunesSuccessAction(communes: success));
      })
      ..onError((domainError) {
        store.dispatch(ProcessSearchCommunesErrorAction());
      });
  }
}
