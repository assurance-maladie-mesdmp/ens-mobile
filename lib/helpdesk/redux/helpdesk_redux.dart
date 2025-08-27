/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/files/domain/file_preprocessor.dart';
import 'package:fr_cnamts_ens/files/domain/models/ens_file_content.dart';
import 'package:fr_cnamts_ens/helpdesk/data/helpdesk_repository.dart';
import 'package:fr_cnamts_ens/helpdesk/domain/creating_helpdesk_ticket.dart';
import 'package:fr_cnamts_ens/helpdesk/domain/nouvelle_demande_motif.dart';
import 'package:fr_cnamts_ens/helpdesk/domain/send_signalement_data.dart';
import 'package:fr_cnamts_ens/helpdesk/domain/signalement_information.dart';
import 'package:fr_cnamts_ens/helpdesk/domain/signalement_type.dart';
import 'package:fr_cnamts_ens/helpdesk/screens/nouvelle_demande_formulaire_screen_arguments.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/snackbar/redux/snackbar_actions.dart';
import 'package:fr_cnamts_ens/user/redux/user_selectors.dart';
import 'package:fr_cnamts_ens/utils/all_purposes_status.dart';
import 'package:optional/optional.dart';
import 'package:redux/redux.dart';

part 'helpdesk_actions.dart';
part 'helpdesk_middlewares.dart';
part 'helpdesk_reducers.dart';
part 'helpdesk_states.dart';
