/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'partager_profil_redux.dart';

class FetchPartagerProfilGestionnairesAction {}

class _ProcessPartagerProfilGestionnairesSuccessAction {
  final List<PartagerProfilGestionnaire> gestionnaires;

  _ProcessPartagerProfilGestionnairesSuccessAction({required this.gestionnaires});
}

class _ProcessPartagerProfilGestionnairesErrorAction {}
