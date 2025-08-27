/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/enrolement/domain/type_contact_code_provisoire_enum.dart';

class UserContact extends Equatable {
  final String? email;
  final String? telephone;
  final String? unmaskedEmail;
  final String? unmaskedTelephone;
  final TypeContactCodeProvisoire? typeContactCodeProvisoire;

  const UserContact({
    this.email,
    this.telephone,
    this.unmaskedEmail,
    this.unmaskedTelephone,
    this.typeContactCodeProvisoire,
  });

  UserContact clone({
    String? email,
    String? telephone,
    String? unmaskedEmail,
    String? unmaskedTelephone,
    TypeContactCodeProvisoire? typeContactCodeProvisoire,
  }) {
    return UserContact(
      email: email ?? this.email,
      telephone: telephone ?? this.telephone,
      unmaskedEmail: unmaskedEmail ?? this.unmaskedEmail,
      unmaskedTelephone: unmaskedTelephone ?? this.unmaskedTelephone,
      typeContactCodeProvisoire: typeContactCodeProvisoire ?? this.typeContactCodeProvisoire,
    );
  }

  @override
  List<Object?> get props => [email, telephone, unmaskedEmail, unmaskedTelephone, typeContactCodeProvisoire];
}
