/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:collection/collection.dart';
import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/ayants_droits/ajout_ad/data/ajout_ad_repository.dart';
import 'package:fr_cnamts_ens/ayants_droits/ajout_ad/domain/ad_to_add.dart';
import 'package:fr_cnamts_ens/ayants_droits/ajout_ad/domain/non_activable_ad.dart';
import 'package:fr_cnamts_ens/ayants_droits/ajout_ad/domain/profile_activation_result.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profils_rattaches/domain/ens_profil_rattache.dart';
import 'package:fr_cnamts_ens/recommandations/redux/recommandations_redux.dart';
import 'package:fr_cnamts_ens/snackbar/redux/snackbar_actions.dart';
import 'package:fr_cnamts_ens/user/redux/user_selectors.dart';
import 'package:fr_cnamts_ens/utils/all_purposes_status.dart';
import 'package:fr_cnamts_ens/utils/error_helper.dart';
import 'package:redux/redux.dart';

part 'ajout_ad_actions.dart';
part 'ajout_ad_middleware.dart';
part 'ajout_ad_reducers.dart';
part 'ajout_ad_state.dart';
