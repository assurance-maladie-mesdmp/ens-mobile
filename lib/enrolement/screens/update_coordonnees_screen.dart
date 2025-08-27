/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/enrolement/screens/identifiants_form_screen.dart';
import 'package:fr_cnamts_ens/enrolement/screens/update_user_contact_email_screen.dart';
import 'package:fr_cnamts_ens/enrolement/screens/update_user_contact_phone_screen.dart';
import 'package:fr_cnamts_ens/enrolement/screens/viewmodels/update_coordonnees_view_model.dart';
import 'package:fr_cnamts_ens/enrolement/screens/widgets/enrolement_header.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_initial_state.dart';
import 'package:fr_cnamts_ens/tags/tags_enrolement.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_divider.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_error_text.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_ink_well.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui/widgets/shake_widget.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:redux/redux.dart';

class UpdateCoordonneesScreen extends StatelessWidget {
  static const routeName = 'enrolement/identite/update-coordonnees';

  final void Function(String) onNextCall;

  const UpdateCoordonneesScreen(this.onNextCall);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<EnsInitialState, UpdateCoordonneesViewModel>(
      converter: (Store<EnsInitialState> store) => UpdateCoordonneesViewModel(store),
      onInit: (_) => context.tagInitialAction(TagsEnrolement.tag_2293_enrolement_affichage_coordonnees),
      builder: (context, vm) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const EnrolementHeader(
              title: 'Mes coordonnées',
              subtitle:
                  'Elles me permettent de recevoir mon code à usage unique en cas de connexion via mes identifiants.',
              pictoPath: EnsImages.coordonnees_de_contact,
            ),
            _Body(onNextCall: onNextCall),
          ],
        );
      },
    );
  }
}

class _Body extends StatefulWidget {
  final void Function(String) onNextCall;

  const _Body({required this.onNextCall});

  @override
  State<_Body> createState() => _BodyState();
}

class _BodyState extends State<_Body> {
  bool displayFillEmailError = false;
  final shakeKey = GlobalKey<ShakeWidgetState>();

  @override
  Widget build(BuildContext context) {
    return StoreConnector<EnsInitialState, UpdateCoordonneesViewModel>(
      converter: (Store<EnsInitialState> store) => UpdateCoordonneesViewModel(store),
      onInit: (_) => context.tagInitialAction(TagsEnrolement.tag_2293_enrolement_affichage_coordonnees),
      builder: (context, vm) {
        return Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ShakeWidget(
                key: shakeKey,
                child: _CoordonneeTile(
                  type: CoordonneeEnumType.EMAIL,
                  value: vm.email,
                  hasEmptyEmailError: displayFillEmailError,
                  onTap: () {
                    context.tagInitialAction(TagsEnrolement.tag_2318_button_modifier_adresse_mail);
                    Navigator.pushNamed(
                      context,
                      UpdateUserContactEmailScreen.routeName,
                    );
                  },
                ),
              ),
              const EnsDivider(),
              _CoordonneeTile(
                type: CoordonneeEnumType.TELEPHONE,
                value: vm.telephone,
                onTap: () {
                  context.tagInitialAction(TagsEnrolement.tag_2319_button_modifier_numero_mobile);
                  Navigator.pushNamed(
                    context,
                    UpdateUserContactPhoneScreen.routeName,
                  );
                },
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(left: 24, right: 24, bottom: 40),
                child: EnsButton(
                  label: 'Confirmer',
                  onTap: () {
                    if (vm.email != null) {
                      setState(() {
                        displayFillEmailError = false;
                      });
                      widget.onNextCall(IdentifiantsFormScreen.routeName);
                    } else {
                      setState(() {
                        displayFillEmailError = true;
                        SemanticsService.announce('Saisir une adresse e-mail', TextDirection.ltr);
                        shakeKey.currentState?.shake();
                      });
                    }
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

enum CoordonneeEnumType {
  EMAIL(
    label: 'Adresse e-mail (obligatoire)',
    emptyText: 'Aucune adresse renseignée',
    hint: 'Modifier votre adresse mail',
  ),
  TELEPHONE(
    label: 'Numéro de téléphone',
    emptyText: 'Aucun numéro renseigné',
    hint: 'Modifier votre numéro de téléphone',
  );

  const CoordonneeEnumType({
    required this.label,
    required this.emptyText,
    required this.hint,
  });

  final String label;
  final String emptyText;
  final String hint;
}

class _CoordonneeTile extends StatelessWidget {
  final String? value;
  final CoordonneeEnumType type;
  final bool hasEmptyEmailError;
  final VoidCallback onTap;

  const _CoordonneeTile({
    required this.value,
    this.hasEmptyEmailError = false,
    required this.onTap,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.white,
      child: EnsInkWell(
        semanticHint: type.hint,
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: Row(
            children: [
              Flexible(
                flex: 10,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      type.label,
                      style: EnsTextStyle.text16_w700_normal_title,
                    ),
                    Text(
                      value ?? type.emptyText,
                      style: EnsTextStyle.text14_w400_normal_body,
                    ),
                    if (hasEmptyEmailError)
                      const EnsErrorText(
                        text: 'Saisir une adresse e-mail',
                        padding: EdgeInsets.only(top: 8),
                      ),
                  ],
                ),
              ),
              Flexible(
                flex: 1,
                child: EnsSvg(
                  value != null ? EnsImages.ic_edit : EnsImages.ic_plus,
                  color: EnsColors.body,
                  width: 24,
                  height: 24,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
