/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'agenda_redux.dart';

class FetchRendezVousEtRappelsEtExamensAction {
  final bool force;

  FetchRendezVousEtRappelsEtExamensAction({this.force = false});
}

class FetchExamenRecommandeByCodeAndDateAction {
  final String code;
  final DateTime date;

  FetchExamenRecommandeByCodeAndDateAction({required this.code, required this.date});
}

class _ProcessFetchExamenRecommandeByCodeAndDateSuccessAction {
  final ExamenRecommande examenRecommande;

  _ProcessFetchExamenRecommandeByCodeAndDateSuccessAction(this.examenRecommande);
}

class _ProcessFetchExamenRecommandeByCodeAndDateErrorAction {}

class FetchExamensRecommandesAction {}
