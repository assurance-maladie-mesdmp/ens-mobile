/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/enrolement/redux/enrolement_redux.dart';
import 'package:fr_cnamts_ens/enrolement/screens/profil_active_confirmation_screen.dart';
import 'package:fr_cnamts_ens/enrolement/screens/session_expiree_screen.dart';
import 'package:fr_cnamts_ens/enrolement/screens/viewmodels/identifiants_form_screen_view_model.dart';
import 'package:fr_cnamts_ens/enrolement/screens/widgets/choisir_identifiant_bottom_sheet.dart';
import 'package:fr_cnamts_ens/enrolement/screens/widgets/choisir_mot_de_passe_bottom_sheet.dart';
import 'package:fr_cnamts_ens/enrolement/screens/widgets/enrolement_header.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_initial_state.dart';
import 'package:fr_cnamts_ens/parameters/password/widgets/ens_password_text_input.dart';
import 'package:fr_cnamts_ens/parameters/password/widgets/password_requirement_text.dart';
import 'package:fr_cnamts_ens/tags/tags_enrolement.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_form.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_link_text.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/ens_identifiant_input.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/validators.dart';
import 'package:fr_cnamts_ens/ui/widgets/shake_widget.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:fr_cnamts_ens/utils/extensions/form_extensions.dart';

class IdentifiantsFormScreen extends StatelessWidget {
  static const routeName = '/enrolement/identifiants';

  const IdentifiantsFormScreen();

  @override
  Widget build(BuildContext context) {
    return const _Body();
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const EnrolementHeader(
          title: 'Identifiant et mot de passe',
          subtitle: 'Ils me permettront de me connecter à mon profil.',
          pictoPath: EnsImages.coordonnees_de_contact,
        ),
        StoreConnector<EnsInitialState, IdentifiantsFormScreenViewModel>(
          onInitialBuild: (_) {
            context.tagInitialAction(TagsEnrolement.tag_2320_enrolement_choix_identifiants);
          },
          onDidChange: (oldVm, vm) {
            if (oldVm?.createAccountStatus == AllPurposesEnrolementStatus.LOADING) {
              if (vm.createAccountStatus == AllPurposesEnrolementStatus.SUCCESS) {
                Navigator.pushNamed(context, ProfilActiveConfirmationScreen.routeName);
              } else if (vm.createAccountStatus == AllPurposesEnrolementStatus.SESSION_TIMED_OUT) {
                Navigator.pushNamed(context, SessionExpireeScreen.routeName);
              }
            }
          },
          builder: (_, vm) => _Form(vm),
          converter: (store) => IdentifiantsFormScreenViewModel.from(store),
        ),
      ],
    );
  }
}

class _Form extends StatefulWidget {
  final IdentifiantsFormScreenViewModel vm;

  const _Form(this.vm);

  @override
  State<_Form> createState() => _FormState();
}

class _FormState extends State<_Form> {
  bool _isMotDePasseVisible = false;
  bool _isConfirmationMotDePasseVisible = false;
  bool _hasAtLeast9Characters = false;
  bool _hasASpecialCharacters = false;
  bool _hasADigit = false;
  bool _hasAnUpperCase = false;
  bool _hasALowerCase = false;
  final _formKey = GlobalKey<FormState>();
  final _shakeKey = GlobalKey<ShakeWidgetState>();
  final _scrollController = ScrollController();
  final _identifiantController = TextEditingController();
  final _motDePasseController = TextEditingController();
  final _confirmationMotDePasseController = TextEditingController();
  final _identifiantKey = GlobalKey<FormFieldState>();

  @override
  void dispose() {
    _scrollController.dispose();
    _identifiantController.dispose();
    _motDePasseController.dispose();
    _confirmationMotDePasseController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          color: EnsColors.light,
          padding: const EdgeInsets.symmetric(vertical: 24),
          child: EnsForm(
            formKey: _formKey,
            shakeKey: _shakeKey,
            scrollController: _scrollController,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                EnsIdentifiantInput(
                  identifiantController: _identifiantController,
                  identifiantKey: _identifiantKey,
                  numeroSecu: widget.vm.numeroSecu,
                ),
                EnsLinkText(
                  label: 'Comment choisir mon identifiant ?',
                  textPadding: const EdgeInsets.only(top: 8),
                  onTap: () {
                    context.tagInitialAction(TagsEnrolement.tag_2654_button_choisir_identifiant);
                    showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      builder: (context) => ChoisirIdentifiantBottomSheet(),
                    );
                  },
                ),
                const SizedBox(height: 28),
                EnsPasswordTextInput(
                  label: 'Choisir mon mot de passe',
                  semanticsLabel:
                      'Doit contenir au moins 9 caractères dont une minuscule, une majuscule, un chiffre et un caractère spécial',
                  controller: _motDePasseController,
                  validator: (value) => isPasswordValidValidator(value),
                  isPasswordVisible: _isMotDePasseVisible,
                  onIconClicked: () {
                    setState(() {
                      _isMotDePasseVisible = !_isMotDePasseVisible;
                    });
                  },
                  onTextChanged: (value) => _setMotDePasseRequirements(value),
                  isPasswordBottomSheetShown: true,
                ),
                EnsLinkText(
                  label: 'Comment choisir mon mot de passe ?',
                  textPadding: const EdgeInsets.symmetric(vertical: 8),
                  onTap: () {
                    context.tagInitialAction(TagsEnrolement.tag_2390_mp_robuste_ensavoirplus);
                    showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      builder: (context) => ChoisirMotDePasseBottomSheet(),
                    );
                  },
                ),
                PasswordRequirementText(label: '9 caractères minimum', isValid: _hasAtLeast9Characters),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  child: PasswordRequirementText(
                    label: 'Au moins 1 caractère spécial (!#@;%\u2026)',
                    isValid: _hasASpecialCharacters,
                    semanticsLabel: 'Au moins 1 caractère spécial, par exemple point d\'exclamation dièse @ ; %',
                  ),
                ),
                PasswordRequirementText(label: 'Au moins 1 chiffre', isValid: _hasADigit),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  child: PasswordRequirementText(
                    label: 'Au moins 1 majuscule',
                    semanticsLabel: 'Au moins une majuscule',
                    isValid: _hasAnUpperCase,
                  ),
                ),
                PasswordRequirementText(
                  label: 'Au moins 1 minuscule',
                  semanticsLabel: 'Au moins une minuscule',
                  isValid: _hasALowerCase,
                ),
                const SizedBox(height: 24),
                EnsPasswordTextInput(
                  label: 'Confirmer le mot de passe',
                  semanticsLabel: 'Doit être identique au mot de passe choisi',
                  controller: _confirmationMotDePasseController,
                  validator: (value) => isConfirmPasswordEqualValidator(value, _motDePasseController.text),
                  isPasswordVisible: _isConfirmationMotDePasseVisible,
                  onIconClicked: () {
                    setState(() {
                      _isConfirmationMotDePasseVisible = !_isConfirmationMotDePasseVisible;
                    });
                  },
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 24),
          child: EnsButton(
            label: 'Valider',
            onTap: () {
              context.tagInitialAction(TagsEnrolement.tag_2321_link_informations_mp);
              _validateAndSend();
            },
            isEnrolement: true,
            isLoading: widget.vm.createAccountStatus == AllPurposesEnrolementStatus.LOADING,
          ),
        ),
      ],
    );
  }

  void _setMotDePasseRequirements(String value) {
    setState(() {
      _hasAtLeast9Characters = passwordRequirement9CharactersValidator(value) == null;
      _hasASpecialCharacters = passwordRequirementSpecialCharacterValidator(value) == null;
      _hasADigit = passwordRequirementDigitValidator(value) == null;
      _hasAnUpperCase = passwordRequirementUpperCaseValidator(value) == null;
      _hasALowerCase = passwordRequirementLowerCaseValidator(value) == null;
    });
  }

  void _validateAndSend() {
    final validation = _formKey.validate();
    validation.onValid(() {
      widget.vm.sendForm(
        identifiant: _identifiantController.text,
        motDePasse: _motDePasseController.text,
      );
    }).onInvalid(() {
      _shakeKey.currentState?.shake();
    });
  }
}
