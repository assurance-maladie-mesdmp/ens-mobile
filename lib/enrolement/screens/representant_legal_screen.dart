/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/enrolement/screens/activation_screen.dart';
import 'package:fr_cnamts_ens/enrolement/screens/representant_legal_error_screen.dart';
import 'package:fr_cnamts_ens/enrolement/screens/representant_legal_infos_screen.dart';
import 'package:fr_cnamts_ens/enrolement/screens/viewmodels/representant_legal_screen_view_model.dart';
import 'package:fr_cnamts_ens/enrolement/screens/widgets/enrolement_header.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_initial_state.dart';
import 'package:fr_cnamts_ens/tags/tags_enrolement.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_error_text.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_ink_well.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/ens_radio_button.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';

class RepresentantLegalScreen extends StatelessWidget {
  static const routeName = '/enrolement/representant_legal';

  final void Function(String) onNextCall;

  const RepresentantLegalScreen(this.onNextCall);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<EnsInitialState, RepresentantLegalScreenViewModel>(
      converter: (store) => RepresentantLegalScreenViewModel(store),
      onInit: (_) {
        context.tagInitialAction(TagsEnrolement.tag_2324_enrolement_dashboard_monprofil);
      },
      builder: (_, vm) => Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          EnrolementHeader(
            title: 'Représentant légal',
            pictoPath: EnsImages.information,
            subtitle: 'Afin de poursuivre le processus, vous devez nous confirmer être le représentant légal de ',
            subtitleMotGras: vm.fullName,
          ),
          _Body(onNextCall: onNextCall, fullName: vm.fullName),
        ],
      ),
    );
  }
}

class _Body extends StatefulWidget {
  final void Function(String) onNextCall;
  final String fullName;

  const _Body({required this.onNextCall, required this.fullName});

  @override
  State<_Body> createState() => _BodyState();
}

class _BodyState extends State<_Body> {
  bool? isCertifie;
  bool hasError = false;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            if (hasError == true) const EnsErrorText(text: 'Sélectionner un choix'),
            EnsRadioButton.card(
              value: true,
              groupValue: isCertifie,
              label: 'Je certifie être le représentant légal de ${widget.fullName}.',
              subLabel: 'J’accède au dossier médical, aux documents et aux mesures de santé du profil.',
              hasError: hasError,
              onSelected: () {
                setState(() {
                  if (hasError == true) hasError = false;
                  isCertifie = true;
                });
              },
            ),
            const SizedBox(height: 16),
            EnsRadioButton.card(
              value: false,
              groupValue: isCertifie,
              label: 'Je ne suis pas le représentant légal de ${widget.fullName}.',
              subLabel: 'Je ne peux pas accéder au dossier médical, aux documents et aux mesures de santé du profil.',
              hasError: hasError,
              onSelected: () {
                setState(() {
                  if (hasError == true) hasError = false;
                  isCertifie = false;
                });
              },
            ),
            const SizedBox(height: 16),
            EnsInkWell(
              child: const Text(
                'Qui est représentant légal d\'un mineur ?',
                style: EnsTextStyle.text14_w700_normal_primary_underline,
              ),
              onTap: () {
                Navigator.pushNamed(context, RepresentantLegalInfosScreen.routeName);
              },
            ),
            const Spacer(),
            const SizedBox(height: 16),
            EnsButton(
              label: 'Continuer',
              onTap: () {
                if (isCertifie == null) {
                  setState(() {
                    hasError = true;
                  });
                } else if (isCertifie == true) {
                  widget.onNextCall(ActivationScreen.routeName);
                } else if (isCertifie == false) {
                  Navigator.pushNamed(context, RepresentantLegalErrorScreen.routeName, arguments: widget.fullName);
                }
              },
            ),
            const SizedBox(height: 54),
          ],
        ),
      ),
    );
  }
}
