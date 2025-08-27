/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/home/screens/home_screen.dart';
import 'package:fr_cnamts_ens/parameters/services_synchronises/screens/services_synchronises_screen.dart';

enum WebDeeplink {
  NavigationBackAfterSynchronisation,
  ServicesSynchronisesScreenAfterSynchronisation;

  String get value {
    switch (this) {
      case WebDeeplink.NavigationBackAfterSynchronisation:
        return HomeScreen.deeplinkRouteName;
      case WebDeeplink.ServicesSynchronisesScreenAfterSynchronisation:
        return ServicesSynchronisesScreen.deeplinkRouteName;
    }
  }

  static WebDeeplink? fromString(String url) {
    if (url.contains(WebDeeplink.NavigationBackAfterSynchronisation.value)) {
      return WebDeeplink.NavigationBackAfterSynchronisation;
    } else if (url.contains(WebDeeplink.ServicesSynchronisesScreenAfterSynchronisation.value)) {
      return WebDeeplink.ServicesSynchronisesScreenAfterSynchronisation;
    } else {
      return null;
    }
  }
}
