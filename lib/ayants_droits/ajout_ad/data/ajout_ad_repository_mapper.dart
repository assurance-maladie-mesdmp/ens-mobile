/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:collection/collection.dart';
import 'package:fr_cnamts_ens/ayants_droits/ajout_ad/domain/ad_to_add.dart';
import 'package:fr_cnamts_ens/ayants_droits/ajout_ad/domain/non_activable_ad.dart';
import 'package:fr_cnamts_ens/ayants_droits/ajout_ad/domain/profile_activation_result.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_ajout_ad.fragment.data.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_ajout_ad_result.fragment.data.gql.dart';

class AjoutAdRepositoryMapper {
  static List<NonActivableAd> toAdNonActivable(List<GprofilMobile>? list) {
    return list
            ?.map(
              (profil) => NonActivableAd(
                firstName: profil.firstName,
                lastName: profil.lastName,
                status: _getStatus(profil.statutProfile),
              ),
            )
            .toList() ??
        [];
  }

  static List<AdToAdd> toAdAAjouter(List<GprofilMobile>? list) {
    return list
            ?.map(
              (profil) => AdToAdd(
                id: profil.index.toInt(),
                firstName: profil.firstName,
                lastName: profil.lastName,
                status: _getStatus(profil.statutProfile),
                hasDeleteRequest: profil.hasDeleteRequest,
              ),
            )
            .toList() ??
        [];
  }

  static List<ProfileActivationResult> toActivationProfilResultat(List<GactivationProfilResult>? list) {
    return list
            ?.mapIndexed(
              (index, profile) => ProfileActivationResult(
                index: profile.index,
                patientId: profile.idEns?.toStringAsFixed(0) ?? '',
                firstName: profile.firstName,
                lastName: profile.lastName,
              ),
            )
            .where((profileActivationResult) => profileActivationResult.patientId != '')
            .toList() ??
        [];
  }

  static AdToAddStatus _getStatus(String status) {
    return switch (status) {
      'opposed' => AdToAddStatus.OPPOSE,
      'not_created' => AdToAddStatus.EN_ATTENTE,
      _ => AdToAddStatus.CLOTURE
    };
  }
}
