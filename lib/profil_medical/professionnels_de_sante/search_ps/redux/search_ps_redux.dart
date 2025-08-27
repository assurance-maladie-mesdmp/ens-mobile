/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:collection/collection.dart';
import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/professional_activities/domain/ens_professional_activity.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/redux/professionnels_de_sante_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/search_ps/data/search_ps_repository.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/search_ps/domain/models/code_postaux.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/search_ps/domain/models/professionnel_de_sante.dart';
import 'package:fr_cnamts_ens/snackbar/redux/snackbar_actions.dart';
import 'package:fr_cnamts_ens/utils/all_purposes_status.dart';
import 'package:redux/redux.dart';

part 'search_ps_actions.dart';
part 'search_ps_middlewares.dart';
part 'search_ps_reducers.dart';
part 'search_ps_states.dart';
