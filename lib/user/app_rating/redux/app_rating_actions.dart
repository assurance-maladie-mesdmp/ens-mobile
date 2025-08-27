/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

class ShouldDisplayAppRatingAction {}

class ProcessShouldDisplayAppRatingAction {
  bool result;

  ProcessShouldDisplayAppRatingAction(this.result);
}

class ProcessLoadedNumberSuccessfulActionsAction {
  int result;

  ProcessLoadedNumberSuccessfulActionsAction(this.result);
}

class AddSuccessfulRatingAction {}

class ProcessLoadedNextAppRatingDateAction {
  DateTime? result;

  ProcessLoadedNextAppRatingDateAction(this.result);
}

class OnAppRatingRefusedAction {}

class ProcessLoadedShouldShowAppRatingAction {
  bool result;

  ProcessLoadedShouldShowAppRatingAction(this.result);
}

class OnAppRated {}

class ResetAppRatingFeatureAction {}
