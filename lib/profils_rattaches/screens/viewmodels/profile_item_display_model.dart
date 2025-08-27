/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/profils_rattaches/screens/viewmodels/profile_display_model.dart';

sealed class ProfileItemDisplayModel extends Equatable {
  const ProfileItemDisplayModel._();

  const factory ProfileItemDisplayModel.profile(ProfileDisplayModel profile) = ProfileDisplayModelProfile;

  const factory ProfileItemDisplayModel.ajouterUnProfilButton() = ProfileDisplayModelAddButton;

  const factory ProfileItemDisplayModel.expandButton() = ProfileDisplayModelExpandButton;

  const factory ProfileItemDisplayModel.collapseButton() = ProfileDisplayModelCollapseButton;
}

class ProfileDisplayModelProfile extends ProfileItemDisplayModel {
  final ProfileDisplayModel profile;

  const ProfileDisplayModelProfile(this.profile) : super._();

  @override
  List<Object?> get props => [profile];
}

class ProfileDisplayModelAddButton extends ProfileItemDisplayModel {
  const ProfileDisplayModelAddButton() : super._();

  @override
  List<Object?> get props => [];
}

class ProfileDisplayModelExpandButton extends ProfileItemDisplayModel {
  const ProfileDisplayModelExpandButton() : super._();

  @override
  List<Object?> get props => [];
}

class ProfileDisplayModelCollapseButton extends ProfileItemDisplayModel {
  const ProfileDisplayModelCollapseButton() : super._();

  @override
  List<Object?> get props => [];
}
