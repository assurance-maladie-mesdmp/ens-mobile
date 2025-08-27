/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'dart:io';

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/auth/domain/model/ens_auth.dart';
import 'package:fr_cnamts_ens/auth/redux/auth_actions.dart';
import 'package:fr_cnamts_ens/files/domain/models/ens_file_content.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_initial_state.dart';
import 'package:fr_cnamts_ens/utils/file_helper.dart';
import 'package:redux/redux.dart';
import 'package:share_handler/share_handler.dart';

part '../receive_sharing_helper.dart';
part 'receive_sharing_actions.dart';
part 'receive_sharing_middlewares.dart';
part 'receive_sharing_reducers.dart';
part 'receive_sharing_state.dart';
