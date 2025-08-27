/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/user/app_rating/data/app_rating_repository.dart';

class GuestAppRatingRepository extends IAppRatingRepository {
  @override
  void addSuccessfulAction() {}

  @override
  DateTime? getNextAppRatingDate() {
    return DateTime.now().add(const Duration(days: 2));
  }

  @override
  int getNumberSuccessfulActions() {
    return 0;
  }

  @override
  void resetSuccessfulActions() {}

  @override
  void setNextAppRatingDate() {}

  @override
  void setShouldNeverShowAppRatingAgain() {}

  @override
  bool shouldShowAppRatingAgain() {
    return false;
  }

  @override
  void resetAppRatingFeature() {}
}
