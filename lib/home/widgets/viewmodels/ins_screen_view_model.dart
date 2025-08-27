/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/user/domain/model/ens_profil.dart';
import 'package:fr_cnamts_ens/utils/ens_date_utils.dart';
import 'package:fr_cnamts_ens/utils/extensions/string_extensions.dart';
import 'package:redux/redux.dart';

class InsScreenViewModel extends Equatable {
  final String lastName;
  final String firstName;
  final String birthDate;
  final String? inseeCode;
  final String ins;
  final String? sex;

  const InsScreenViewModel._internal({
    required this.lastName,
    required this.firstName,
    required this.birthDate,
    this.inseeCode,
    required this.ins,
    this.sex,
  });

  factory InsScreenViewModel.from(Store<EnsState> store) {
    final EnsProfil? currentProfile = store.state.userState.currentProfile;
    final mainUserDataState = store.state.userState.mainUserDataState;

    if (mainUserDataState.isSuccessWithData) {
      final lastName = currentProfile?.nom.replaceAllDiacritics().capitalizeName();
      final firstName = currentProfile?.prenom.replaceAllDiacritics().capitalizeName();
      final birthDate = currentProfile?.dateNaissance;
      final inseeCode = currentProfile?.codeInsee;
      final ins = currentProfile?.ins;
      final sex = currentProfile?.sexe?.label == 'Homme' ? 'M' : 'F';

      return InsScreenViewModel._internal(
        lastName: lastName!,
        firstName: firstName!,
        birthDate: EnsDateUtils.formatddmmyyyy(birthDate!),
        ins: ins != null ? ins.formatIns() : '',
        inseeCode: inseeCode,
        sex: sex,
      );
    } else if (mainUserDataState.status.isNotLoadedOrLoading()) {
      return const InsScreenViewModel._internal(
        lastName: '',
        firstName: '',
        birthDate: '',
        inseeCode: '',
        ins: '',
        sex: '',
      );
    }
    return const InsScreenViewModel._internal(
      lastName: '',
      firstName: '',
      birthDate: '',
      inseeCode: '',
      ins: '',
      sex: '',
    );
  }

  @override
  List<Object?> get props => [
        lastName,
        firstName,
        birthDate,
        inseeCode,
        ins,
        sex,
      ];
}
