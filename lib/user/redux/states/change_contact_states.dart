/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/user/domain/model/contact_change.dart';
import 'package:fr_cnamts_ens/utils/all_purposes_status.dart';

class ChangeContactState extends Equatable {
  final AllPurposesStatus status;
  final ContactChange? contactChange;

  const ChangeContactState({
    this.status = AllPurposesStatus.NOT_LOADED,
    this.contactChange,
  });

  bool get isSuccessWithData => status.isSuccess() && contactChange != null;

  @override
  List<Object?> get props => [status, contactChange];
}
