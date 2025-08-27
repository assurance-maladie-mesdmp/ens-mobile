/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/analytics/domain/ens_analytics.dart';
import 'package:fr_cnamts_ens/developpeur_outils/redux/developpeur_outils_redux.dart';
import 'package:fr_cnamts_ens/infra/injection/ens_module_container.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_initial_state.dart';
import 'package:redux/redux.dart';

class AnalyticsHistory implements IAnalyticsHook, InitialStoreDependant {
  late final Store<EnsInitialState> _store;

  AnalyticsHistory();

  @override
  void initForInitialStore(Store<EnsInitialState> store) {
    _store = store;
  }

  @override
  void onSendTag(EnsTag tag) {
    _store.dispatch(LogAnalyticsAction(tag: tag));
  }
}
