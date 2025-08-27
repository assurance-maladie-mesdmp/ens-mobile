/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/snackbar/redux/snackbar_states.dart';

abstract class EnsGenericState extends Equatable {
  final SnackbarContainerState snackbarContainerState;

  const EnsGenericState({required this.snackbarContainerState});

  @override
  List<Object?> get props => [snackbarContainerState];
}
