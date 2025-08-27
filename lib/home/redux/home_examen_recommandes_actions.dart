/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'home_examen_recommandes_redux.dart';

class ProcessFetchedHomeExamenRecommandesAction {
  final RequestResult<int> examensRecommandesAPlanifierLength;

  const ProcessFetchedHomeExamenRecommandesAction({required this.examensRecommandesAPlanifierLength});
}
