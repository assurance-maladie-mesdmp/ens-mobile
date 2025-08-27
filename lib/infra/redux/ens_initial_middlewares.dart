/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/analytics/domain/ens_analytics.dart';
import 'package:fr_cnamts_ens/analytics/redux/analytics_middlewares.dart';
import 'package:fr_cnamts_ens/auth/domain/auth_interactor.dart';
import 'package:fr_cnamts_ens/auth/redux/auth_middlewares.dart';
import 'package:fr_cnamts_ens/auth/redux/logout_wrapper.dart';
import 'package:fr_cnamts_ens/covid/data/offline_covid_certificate_repository.dart';
import 'package:fr_cnamts_ens/covid/redux/offline_covid_certificate_middleware.dart';
import 'package:fr_cnamts_ens/developpeur_outils/data/developpeur_outils_repository.dart';
import 'package:fr_cnamts_ens/developpeur_outils/redux/developpeur_outils_redux.dart';
import 'package:fr_cnamts_ens/enrolement/data/enrolement_repository.dart';
import 'package:fr_cnamts_ens/enrolement/redux/enrolement_redux.dart';
import 'package:fr_cnamts_ens/infra/passwordless_blacklist.dart';
import 'package:fr_cnamts_ens/infra/receive_sharing/redux/receive_sharing_redux.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_initial_state.dart';
import 'package:fr_cnamts_ens/infra/redux/infra_middlewares.dart';
import 'package:fr_cnamts_ens/infra/redux/urls_config_middlewares.dart';
import 'package:fr_cnamts_ens/infra/wrappers/device_info_wrapper.dart';
import 'package:fr_cnamts_ens/interruption_services/data/interruption_services_repository.dart';
import 'package:fr_cnamts_ens/interruption_services/redux/interruption_services_redux.dart';
import 'package:fr_cnamts_ens/messages_pannes/data/messages_pannes_repository.dart';
import 'package:fr_cnamts_ens/messages_pannes/redux/messages_pannes_redux.dart';
import 'package:fr_cnamts_ens/privacy/domain/ens_privacy.dart';
import 'package:fr_cnamts_ens/privacy/redux/privacy_middlewares.dart';
import 'package:fr_cnamts_ens/user/data/offline_user_data_repository.dart';
import 'package:fr_cnamts_ens/utils/file_helper.dart';
import 'package:redux/redux.dart';

List<Middleware<EnsInitialState>> createEnsInitialMiddlewares(
  AuthInteractor authInteractor,
  IEnsAnalytics analytics,
  IEnsPrivacy ensPrivacy,
  IOfflineCovidCertificateRepository offlineCovidCertificateRepository,
  IOfflineUserDataRepository offlineUserDataRepository,
  IMessagesPannesRepository messagesPannesRepository,
  IInterruptionServiceRepository interruptionServiceRepository,
  ReceiveSharingHelper receiveSharingHelper,
  FileHelper fileHelper,
  IEnrolementRepository enrolementRepository,
  DeviceInfoWrapper deviceInfoWrapper,
  PasswordlessBlacklist passwordlessBlacklist,
  IDeveloppeurOutilsRepository developpeurOutilsRepository,
  IAnalyticsHook analyticsHook,
  LogoutWrapper logoutWrapper,
) =>
    [
      ...InfraMiddlewares.create(),
      ...AuthMiddlewares.create(authInteractor, offlineUserDataRepository, logoutWrapper),
      ...AnalyticsMiddlewares.create(analytics, ensPrivacy, analyticsHook),
      ...PrivacyMiddlewares.create(ensPrivacy),
      ...UrlsConfigMiddlewares.create(),
      ...MessagesPannesMiddlewares.createOffline(messagesPannesRepository),
      ...InterruptionServicesMiddleware.createOffline(interruptionServiceRepository),
      ...ReceiveSharingMiddlewares.create(fileHelper, receiveSharingHelper),
      ...OfflineCovidCertificateMiddlewares.create(offlineCovidCertificateRepository),
      ...EnrolementMiddlewares.create(enrolementRepository),
      ...DeveloppeurOutilsMiddlewares.create(
        developpeurOutilsRepository,
        deviceInfoWrapper,
        passwordlessBlacklist,
      ),
    ];
