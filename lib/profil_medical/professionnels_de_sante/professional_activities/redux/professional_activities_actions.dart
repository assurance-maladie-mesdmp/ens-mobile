/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'professional_activities_redux.dart';

class FetchProfessionalActivitiesAction {
  final bool force;

  FetchProfessionalActivitiesAction({this.force = false});
}

class _ProcessFetchProfessionalActivitiesSuccessAction {
  final List<EnsProfessionalActivity> professionalActivities;

  _ProcessFetchProfessionalActivitiesSuccessAction(this.professionalActivities);
}

class _ProcessFetchProfessionalActivitiesErrorAction {}
