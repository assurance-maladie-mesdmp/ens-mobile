/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/professional_activities/data/professional_activities_repository.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/professional_activities/domain/ens_professional_activity.dart';
import 'package:fr_cnamts_ens/snackbar/redux/snackbar_actions.dart';
import 'package:fr_cnamts_ens/utils/all_purposes_status.dart';
import 'package:fr_cnamts_ens/utils/error_helper.dart';
import 'package:redux/redux.dart';

part 'professional_activities_actions.dart';
part 'professional_activities_middlewares.dart';
part 'professional_activities_reducers.dart';
part 'professional_activities_states.dart';
