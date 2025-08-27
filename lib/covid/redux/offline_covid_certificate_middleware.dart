/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/covid/data/offline_covid_certificate_repository.dart';
import 'package:fr_cnamts_ens/covid/redux/covid_certificate_actions.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_initial_state.dart';
import 'package:redux/redux.dart';

class OfflineCovidCertificateMiddlewares {
  final IOfflineCovidCertificateRepository offlineCovidCertificateRepository;

  OfflineCovidCertificateMiddlewares._(
    this.offlineCovidCertificateRepository,
  );

  static List<Middleware<EnsInitialState>> create(
    IOfflineCovidCertificateRepository offlineCovidCertificateRepository,
  ) {
    final middlewares = OfflineCovidCertificateMiddlewares._(offlineCovidCertificateRepository);
    return [
      TypedMiddleware<EnsInitialState, WipeCovidCertificateAction>(
        middlewares._onWipeCovidCertificateAction,
      ).call,
    ];
  }

  void _onWipeCovidCertificateAction(
    Store<EnsInitialState> store,
    WipeCovidCertificateAction action,
    NextDispatcher next,
  ) {
    next(action);
    offlineCovidCertificateRepository.wipeCovidCertificateFromSecureStorage();
    offlineCovidCertificateRepository.wipeQrCodeFromSecureStorage();
  }
}
