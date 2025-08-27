/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';

class EnsMesurePermissions extends Equatable {
  final bool canAddValue;
  final bool canViewHistory;

  const EnsMesurePermissions({required this.canAddValue, required this.canViewHistory});

  const EnsMesurePermissions.all() : this(canAddValue: true, canViewHistory: true);

  const EnsMesurePermissions.noAdd() : this(canAddValue: false, canViewHistory: true);

  @override
  List<Object?> get props => [canAddValue, canViewHistory];
}
