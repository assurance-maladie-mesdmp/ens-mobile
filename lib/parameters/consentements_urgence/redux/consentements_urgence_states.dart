/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/parameters/consentements_urgence/domain/models/ens_consentements_urgence.dart';
import 'package:fr_cnamts_ens/utils/all_purposes_status.dart';

class ConsentementsUrgenceState extends Equatable {
  final AllPurposesStatus status;
  final EnsConsentementsUrgence? consentementsUrgence;

  const ConsentementsUrgenceState({
    this.status = AllPurposesStatus.NOT_LOADED,
    this.consentementsUrgence,
  });

  bool get isSuccessWithData => status.isSuccess() && consentementsUrgence != null;

  bool get isErrorOrSuccessWithoutData => status.isError() || (status.isSuccess() && consentementsUrgence == null);

  ConsentementsUrgenceState clone({
    AllPurposesStatus? status,
    EnsConsentementsUrgence? consentementsUrgence,
  }) {
    return ConsentementsUrgenceState(
      status: status ?? this.status,
      consentementsUrgence: consentementsUrgence ?? this.consentementsUrgence,
    );
  }

  @override
  List<Object?> get props => [status, consentementsUrgence];
}

class ConsentementsUrgenceEditState extends Equatable {
  final AllPurposesStatus status;

  const ConsentementsUrgenceEditState({
    this.status = AllPurposesStatus.NOT_LOADED,
  });

  ConsentementsUrgenceEditState clone({
    AllPurposesStatus? status,
  }) {
    return ConsentementsUrgenceEditState(
      status: status ?? this.status,
    );
  }

  @override
  List<Object?> get props => [status];
}
