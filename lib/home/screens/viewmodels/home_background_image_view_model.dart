/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:redux/redux.dart';

class HomeBackgroundImageViewModel extends Equatable {
  final String backgroundImageName;

  const HomeBackgroundImageViewModel._internal(this.backgroundImageName);

  factory HomeBackgroundImageViewModel(Store<EnsState> store) {
    final age = int.tryParse(store.state.userState.currentProfile?.age ?? '');
    String backgroundImageName = EnsImages.sdv_adulte;

    if (age != null) {
      backgroundImageName = age < 3
          ? EnsImages.sdv_0_3
          : age < 6
              ? EnsImages.sdv_3_6
              : age < 12
                  ? EnsImages.sdv_6_12
                  : age < 18
                      ? EnsImages.sdv_12_18
                      : age < 60
                          ? EnsImages.sdv_adulte
                          : EnsImages.sdv_senior;
    }

    return HomeBackgroundImageViewModel._internal(backgroundImageName);
  }

  @override
  List<Object?> get props => [backgroundImageName];
}
