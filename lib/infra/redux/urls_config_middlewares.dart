/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/infra/injection/ens_module_container.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_initial_state.dart';
import 'package:fr_cnamts_ens/infra/redux/urls_config_actions.dart';
import 'package:redux/redux.dart';

class UrlsConfigMiddlewares {
  static List<Middleware<EnsInitialState>> create() {
    final middlewares = UrlsConfigMiddlewares();

    return [TypedMiddleware<EnsInitialState, InitUrlsConfigAction>(middlewares._initUrls).call];
  }

  Future<void> _initUrls(Store<EnsInitialState> store, InitUrlsConfigAction action, NextDispatcher next) async {
    final urlConfig = EnsModuleContainer.commonInjector?.getUrlsConfig();
    final urls = EnsModuleContainer.commonInjector?.getRemoteConfigWrapper().getUrls();

    if (urlConfig != null && urls != null) {
      urlConfig.websiteUrl = urls['websiteUrl'] ?? urlConfig.websiteUrl;
      urlConfig.parametersUrl = urls['parametersUrl'] ?? urlConfig.parametersUrl;
      urlConfig.maladiesUrl = urls['maladiesUrl'] ?? urlConfig.maladiesUrl;
      urlConfig.accessibilityInfosUrl = urls['accessibilityInfosUrl'] ?? 'urlConfig.accessibilityInfosUrl';
      urlConfig.cguUrl = urls['cguUrl'] ?? urlConfig.cguUrl;
      urlConfig.privacyInfosUrl = urls['privacyInfosUrl'] ?? urlConfig.privacyInfosUrl;
      urlConfig.helpUrl = urls['helpUrl'] ?? urlConfig.helpUrl;
      urlConfig.helpMedecinTraitant = urls['helpMedecinTraitant'] ?? urlConfig.helpMedecinTraitant;
      urlConfig.historiqueActiviteUrl = urls['historiqueActiviteUrl'] ?? urlConfig.historiqueActiviteUrl;
      urlConfig.profilesActivationUrl = urls['profilesActivationUrl'] ?? urlConfig.profilesActivationUrl;
      urlConfig.contactUrl = urls['contactUrl'] ?? urlConfig.contactUrl;
      urlConfig.guidePratiquePatientDAUrl = urls['guidePratiquePatientDAUrl'] ?? urlConfig.guidePratiquePatientDAUrl;
      urlConfig.finDeVieUrl = urls['finDeVieUrl'] ?? urlConfig.finDeVieUrl;
      urlConfig.directivesAnticipeesUrl = urls['directivesAnticipeesUrl'] ?? urlConfig.directivesAnticipeesUrl;
      urlConfig.bugReportPage = urls['bugReportPage'] ?? urlConfig.bugReportPage;
      urlConfig.userSurveyPage = urls['userSurveyPage'] ?? urlConfig.userSurveyPage;
      urlConfig.suggestionSurveyPage = urls['suggestionSurveyPage'] ?? urlConfig.suggestionSurveyPage;
      urlConfig.cmsUrl = urls['cmsUrl'] ?? urlConfig.cmsUrl;
      urlConfig.doctrineNumeriqueUrl = urls['doctrineNumeriqueUrl'] ?? urlConfig.doctrineNumeriqueUrl;
      urlConfig.biometricHelpUrl = urls['biometricHelpUrl'] ?? urlConfig.biometricHelpUrl;
      urlConfig.ameliorationPage = urls['ameliorationPage'] ?? urlConfig.ameliorationPage;
      urlConfig.registreDesRefusUrl = urls['registreDesRefusUrl'] ?? urlConfig.registreDesRefusUrl;
      urlConfig.donOrganesUrl = urls['donOrganesUrl'] ?? urlConfig.donOrganesUrl;
      urlConfig.matriceHabilitationPdfUrl = urls['matriceHabilitationPdfUrl'] ?? urlConfig.matriceHabilitationPdfUrl;
      urlConfig.enrolementClotureUrl = urls['enrolementClotureUrl'] ?? urlConfig.enrolementClotureUrl;
      urlConfig.recommanderAppUrl = urls['recommanderAppUrl'] ?? urlConfig.recommanderAppUrl;
    }

    next(action);
  }
}
