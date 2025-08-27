/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/user/redux/user_selectors.dart';
import 'package:redux/redux.dart';

class HelloWidgetViewModel extends Equatable {
  final bool shouldDisplay;

  const HelloWidgetViewModel._internal(this.shouldDisplay);

  factory HelloWidgetViewModel(Store<EnsState> store) {
    return HelloWidgetViewModel._internal(
      UserSelectors.shouldDisplayOnboarding(store.state),
    );
  }

  @override
  List<Object?> get props => [shouldDisplay];
}
