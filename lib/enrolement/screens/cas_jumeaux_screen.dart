/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/enrolement/redux/enrolement_redux.dart';
import 'package:fr_cnamts_ens/enrolement/screens/code_provisoire_screen.dart';
import 'package:fr_cnamts_ens/enrolement/screens/compte_non_activable_screen.dart';
import 'package:fr_cnamts_ens/enrolement/screens/coordonees_screen.dart';
import 'package:fr_cnamts_ens/enrolement/screens/session_expiree_screen.dart';
import 'package:fr_cnamts_ens/enrolement/screens/viewmodels/cas_jumeaux_screen_view_model.dart';
import 'package:fr_cnamts_ens/enrolement/screens/widgets/enrolement_header.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_initial_state.dart';
import 'package:fr_cnamts_ens/tags/tags_enrolement.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_error_text.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/ens_radio_button.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:redux/redux.dart';

class CasJumeauxScreen extends StatelessWidget {
  static const routeName = '/enrolement/cas_jumeaux';

  final void Function(String) onNextCall;

  const CasJumeauxScreen(this.onNextCall);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const EnrolementHeader(
          title: 'Je choisis pour qui j’active le profil',
          subtitle: 'Plusieurs personnes rattachées à votre carte Vitale ont la même date de naissance.',
          pictoPath: EnsImages.information,
        ),
        StoreConnector<EnsInitialState, CasJumeauxScreenViewModel>(
          converter: (Store<EnsInitialState> store) => CasJumeauxScreenViewModel(store),
          onInitialBuild: (vm) {
            context.tagInitialAction(TagsEnrolement.tag_2292_enrolement_identification_profil_jumeaux);
          },
          onDidChange: (oldVm, vm) {
            if (oldVm?.userContactStatus == UserContactStatus.LOADING) {
              if (vm.userContactStatus == UserContactStatus.SUCCESS) {
                onNextCall(CoordonneesScreen.routeName);
              } else if (vm.userContactStatus == UserContactStatus.COMPTE_NON_ACTIVABLE) {
                Navigator.pushNamed(context, CompteNonActivableScreen.routeName);
              } else if (vm.userContactStatus == UserContactStatus.COMPTE_SANS_CORDONEES) {
                onNextCall(CodeProvisoireFormScreen.routeName);
              } else if (vm.userContactStatus == UserContactStatus.SESSION_TIMED_OUT) {
                Navigator.pushNamed(context, SessionExpireeScreen.routeName);
              }
            }
          },
          builder: (context, vm) {
            return _ProfilListWidget(
              profileNames: vm.displayableProfiles,
              onValidate: vm.validate,
              onNextCall: onNextCall,
            );
          },
        ),
      ],
    );
  }
}

class _ProfilListWidget extends StatefulWidget {
  final List<DisplayableProfile> profileNames;
  final Function(DisplayableProfile) onValidate;
  final Function(String) onNextCall;

  const _ProfilListWidget({
    required this.profileNames,
    required this.onValidate,
    required this.onNextCall,
  });

  @override
  State<_ProfilListWidget> createState() => _ProfilListWidgetState();
}

class _ProfilListWidgetState extends State<_ProfilListWidget> {
  DisplayableProfile? _selectedProfile;
  bool hasError = false;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            if (hasError == true)
              const EnsErrorText(
                text: 'Sélectionner un profil',
                padding: EdgeInsets.only(bottom: 8),
              ),
            ...widget.profileNames.map(
              (profile) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    EnsRadioButton.card(
                      label: profile.nom,
                      value: profile,
                      groupValue: _selectedProfile,
                      onSelected: () {
                        setState(() {
                          _selectedProfile = profile;
                          hasError = false;
                        });
                      },
                      hasError: hasError,
                    ),
                    const SizedBox(height: 16),
                  ],
                );
              },
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 40),
              child: EnsButton(
                onTap: () {
                  if (_selectedProfile == null) {
                    setState(() {
                      hasError = true;
                    });
                  } else {
                    widget.onValidate(_selectedProfile!);
                  }
                },
                label: 'Suivant',
                size: EnsButtonSize.MEDIUM,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
