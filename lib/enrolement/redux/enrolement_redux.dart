/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/enrolement/data/enrolement_repository.dart';
import 'package:fr_cnamts_ens/enrolement/domain/disponibilite_identifiant.dart';
import 'package:fr_cnamts_ens/enrolement/domain/enrolement_carte_vitale_data.dart';
import 'package:fr_cnamts_ens/enrolement/domain/enrolement_domain_error.dart';
import 'package:fr_cnamts_ens/enrolement/domain/generated_carte_vitale.dart';
import 'package:fr_cnamts_ens/enrolement/domain/profil_rattache.dart';
import 'package:fr_cnamts_ens/enrolement/domain/type_carte_vitale_enum.dart';
import 'package:fr_cnamts_ens/enrolement/domain/type_contact_code_provisoire_enum.dart';
import 'package:fr_cnamts_ens/enrolement/domain/user_contact.dart';
import 'package:fr_cnamts_ens/enrolement/domain/user_contact_change_otp_validation.dart';
import 'package:fr_cnamts_ens/enrolement/domain/user_identite.dart';
import 'package:fr_cnamts_ens/enrolement/redux/enrolement_selectors.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_initial_state.dart';
import 'package:fr_cnamts_ens/snackbar/redux/snackbar_actions.dart';
import 'package:fr_cnamts_ens/user/domain/model/contact_change.dart';
import 'package:fr_cnamts_ens/utils/all_purposes_status.dart';
import 'package:optional/optional_internal.dart';
import 'package:redux/redux.dart';

part 'disponibilite_identifiant_state.dart';
part 'enrolement_actions.dart';
part 'enrolement_middlewares.dart';
part 'enrolement_reducers.dart';
part 'enrolement_state.dart';
part 'user_contact_change_state.dart';
