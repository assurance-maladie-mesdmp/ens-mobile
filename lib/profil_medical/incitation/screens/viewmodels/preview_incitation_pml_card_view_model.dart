/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/incitation/redux/incitation_pml_selectors.dart';
import 'package:fr_cnamts_ens/profil_medical/incitation/screens/viewmodels/incitation_pml_progress_card_view_model.dart';
import 'package:redux/redux.dart';

class PreviewIncitationPmlCardViewModel extends Equatable {
  final IncitationPmlProgressCardViewModel _delegate;
  final bool isProfilPrincipal;
  final bool _isLoaded;

  final bool shouldDisplayWelcomePage;

  int get currentStep => _delegate.currentStep;

  int get totalStep => _delegate.totalStep;

  bool get isVisible => _isLoaded && currentStep != totalStep;

  bool get isProgressing => currentStep > 0;

  String get goToIncitationText => 'Compléter ${isProfilPrincipal ? 'mon' : 'son'} profil médical';

  String get emptyCardBody => 'Et si j\'améliorais ${isProfilPrincipal ? 'mon' : 'son'} suivi médical ?';

  String get progressingCardBody {
    if (currentStep == 1) {
      return 'J\'ai commencé à remplir ${isProfilPrincipal ? 'mon' : 'son'} profil médical.\nJe continue.';
    } else if (currentStep < totalStep - 1) {
      return 'Il me reste encore quelques rubriques de ${isProfilPrincipal ? 'mon' : 'son'} profil médical à compléter.';
    } else {
      return 'Encore une étape et j\'aurai complété ${isProfilPrincipal ? 'mon' : 'son'} profil médical.';
    }
  }

  const PreviewIncitationPmlCardViewModel._({
    required IncitationPmlProgressCardViewModel delegate,
    required this.isProfilPrincipal,
    required bool isLoaded,
    required this.shouldDisplayWelcomePage,
  })  : _delegate = delegate,
        _isLoaded = isLoaded;

  factory PreviewIncitationPmlCardViewModel.from(
    Store<EnsState> store, {
    required bool isRefonteEntourageEtVolontesEnabled,
  }) {
    final delegate = IncitationPmlProgressCardViewModel.from(store, isRefonteEntourageEtVolontesEnabled);

    final shouldDisplayWelcomePage =
        delegate.currentStep <= 1 && IncitationPmlSelectors.isWelcomePageShowed(store.state);

    return PreviewIncitationPmlCardViewModel._(
      delegate: delegate,
      isProfilPrincipal: store.state.userState.isMainProfile,
      isLoaded: IncitationPmlSelectors.getPmlRubriqueLinkToIncitationStatus(store.state).isSuccess(),
      shouldDisplayWelcomePage: shouldDisplayWelcomePage,
    );
  }

  @override
  List<Object?> get props => [_delegate, isProfilPrincipal, shouldDisplayWelcomePage, _isLoaded];
}
