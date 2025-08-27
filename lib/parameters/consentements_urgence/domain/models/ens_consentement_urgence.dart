/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';

class EnsConsentementUrgence extends Equatable {
  final String id;
  final bool isAllowed;

  const EnsConsentementUrgence({required this.id, required this.isAllowed});

  @override
  List<Object?> get props => [id, isAllowed];
}
