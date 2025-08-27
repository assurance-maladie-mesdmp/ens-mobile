/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/professionnels_de_sante_name_helper.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/search_ps/domain/models/professionnel_de_sante.dart';

class EtablissementDeSante extends Equatable implements Comparable<EtablissementDeSante> {
  final String idNat;
  final String nameWithAlias;
  final String name;
  final String? activity;
  final String? organizationId;
  final ActeurDeSanteAdresse? address;
  final String? mail;
  final bool active;
  final bool isContactable;

  const EtablissementDeSante({
    required this.idNat,
    required this.nameWithAlias,
    required this.name,
    this.activity,
    this.organizationId,
    this.address,
    this.mail,
    this.active = true,
    required this.isContactable,
  });

  @override
  List<Object?> get props => [
        idNat,
        nameWithAlias,
        name,
        activity,
        organizationId,
        address,
        mail,
        active,
        isContactable,
      ];

  @override
  int compareTo(EtablissementDeSante other) {
    final int compareNames = nameWithAlias.compareTo(other.nameWithAlias);
    if (compareNames == 0) {
      final cityZipCodeA = address?.cityZipCode;
      final cityZipCodeB = other.address?.cityZipCode;
      return (cityZipCodeA != null && cityZipCodeB != null) ? cityZipCodeA.compareTo(cityZipCodeB) : 0;
    } else {
      return compareNames;
    }
  }

  String get formattedNameWithAlias {
    return ProfessionnelsDeSanteInformationHelper.capitalizeAsNames(nameWithAlias);
  }
}
