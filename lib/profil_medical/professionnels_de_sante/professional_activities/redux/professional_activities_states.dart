/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'professional_activities_redux.dart';

class ProfessionalActivitiesState extends Equatable {
  final AllPurposesStatus status;
  final List<EnsProfessionalActivity> professionalActivities;

  const ProfessionalActivitiesState({
    this.status = AllPurposesStatus.NOT_LOADED,
    this.professionalActivities = const [],
  });

  @override
  List<Object?> get props => [status, professionalActivities];
}
