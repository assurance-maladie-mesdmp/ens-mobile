/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/common/data/request_result.dart';
import 'package:fr_cnamts_ens/parameters/consentements_urgence/domain/models/ens_consentements_urgence.dart';

class FetchConsentementsUrgenceAction {
  final bool force;

  FetchConsentementsUrgenceAction({this.force = false});
}

class ProcessFetchedConsentementsUrgenceAction {
  final RequestResult<EnsConsentementsUrgence> result;

  ProcessFetchedConsentementsUrgenceAction(this.result);
}

class UpdateConsentementUrgenceAction {
  final EnsConsentementsUrgence consentementsUrgence;
  final bool isFromOnboarding;

  UpdateConsentementUrgenceAction(this.consentementsUrgence, this.isFromOnboarding);
}

class ProcessUpdatedConsentementUrgenceAction {
  final RequestResult<EnsConsentementsUrgence> consentementsUrgence;

  ProcessUpdatedConsentementUrgenceAction(this.consentementsUrgence);
}

class InitConsentementUrgenceEditionAction {}
