/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/parameters/gestion_profil/data/partager_profil_repository.dart';
import 'package:fr_cnamts_ens/parameters/gestion_profil/domain/partager_profil_gestionnaire.dart';
import 'package:fr_cnamts_ens/user/redux/user_selectors.dart';
import 'package:fr_cnamts_ens/utils/all_purposes_status.dart';
import 'package:redux/redux.dart';

part 'partager_profil_actions.dart';

part 'partager_profil_middlewares.dart';

part 'partager_profil_reducers.dart';

part 'partager_profil_state.dart';
