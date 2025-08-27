/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_personal_information.fragment.data.gql.dart';
import 'package:fr_cnamts_ens/user/domain/model/cms_last_publication_cgu.dart';
import 'package:fr_cnamts_ens/user/domain/model/user_data.dart';
import 'package:fr_cnamts_ens/utils/extensions/string_extensions.dart';

extension UserDataRepositoryMapper on GpersonalInformation {
  UserData toUserData({CmsLastPublicationCGU? cguLastPublicationAt}) {
    const profilNonEnroleStatut = 'D';
    const profilClotureStatut = 'F';
    return UserData(
      firstName: firstName,
      lastName: lastName,
      birthDate: DateTime.parse(birthDate),
      genre: _mapToGenre(sex),
      ins: ins,
      mail: mail,
      phoneNumber: phoneNumber?.formatPhoneNumber(),
      inseeCode: inseeCode,
      cguAcceptedAt: cguAcceptedAt != null ? DateTime.parse(cguAcceptedAt!) : null,
      cguLastPublicationAt: cguLastPublicationAt?.toRealDateTime(),
      isOnboardingDone: hasConfidentialitySettingsSet && onboarding != null,
      isProfilInactif: ensStatus == profilNonEnroleStatut || ensStatus == profilClotureStatut,
    );
  }
}

Genre? _mapToGenre(String? sex) {
  if (sex == 'M') {
    return Genre.HOMME;
  }
  if (sex == 'F') {
    return Genre.FEMME;
  }
  return null;
}
