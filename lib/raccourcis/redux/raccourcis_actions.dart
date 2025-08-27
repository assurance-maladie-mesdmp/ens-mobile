/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'raccourcis_redux.dart';

class FetchRaccourcisItemAction {}

class _ProcessFetchedRaccourcisItemAction {
  final List<Raccourcis> raccourcis;

  _ProcessFetchedRaccourcisItemAction({required this.raccourcis});
}

class FetchRaccourcisItemParCategorieAction {}

class _ProcessFetchedRaccourcisItemParCategorieAction {
  final List<Raccourcis> raccourcisParCategorie;

  const _ProcessFetchedRaccourcisItemParCategorieAction(this.raccourcisParCategorie);
}

class UpdateHomeRaccourcisItemsAction {
  final List<Raccourcis> raccourcis;

  UpdateHomeRaccourcisItemsAction({required this.raccourcis});
}

class _ProcessUpdateHomeRaccourcisItemsSuccessAction {
  final List<Raccourcis> raccourcis;

  const _ProcessUpdateHomeRaccourcisItemsSuccessAction({required this.raccourcis});
}

class AddMesuresToPmlAction {
  final List<Raccourcis> raccourcisMesures;

  const AddMesuresToPmlAction({required this.raccourcisMesures});
}
