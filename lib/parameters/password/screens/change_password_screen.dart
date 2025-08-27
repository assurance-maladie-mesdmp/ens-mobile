/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/domain/ens_analytics.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/parameters/password/screens/viewModels/change_password_screen_view_model.dart';
import 'package:fr_cnamts_ens/parameters/password/widgets/ens_password_text_input.dart';
import 'package:fr_cnamts_ens/parameters/password/widgets/password_requirement_text.dart';
import 'package:fr_cnamts_ens/tags/tags_parameters.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_form.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_link_text.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/validators.dart';
import 'package:fr_cnamts_ens/ui/widgets/shake_widget.dart';
import 'package:fr_cnamts_ens/utils/extensions/form_extensions.dart';
import 'package:fr_cnamts_ens/utils/webpage_utils.dart';

class ChangePasswordScreen extends StatelessWidget {
  static const routeName = '/mon-compte/changement-mot-de-passe';

  ChangePasswordScreen({super.key});

  final _shakeKey = GlobalKey<ShakeWidgetState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const EnsAppBarSubLevel(
        title: 'Modifier mon mot de passe',
      ),
      body: StoreConnector<EnsState, ChangePasswordScreenViewModel>(
        converter: (store) => ChangePasswordScreenViewModel(store),
        distinct: true,
        onWillChange: (oldVm, vm) {
          if (oldVm?.changePasswordStatus != ChangePasswordStatus.SUCCESS &&
              vm.changePasswordStatus == ChangePasswordStatus.SUCCESS) {
            Navigator.of(context).pop();
          }
        },
        onInitialBuild: (vm) {
          _tagPage(vm);
        },
        builder: (_, vm) => _Content(
          vm: vm,
          shakeKey: _shakeKey,
        ),
      ),
    );
  }

  void _tagPage(ChangePasswordScreenViewModel vm) {
    vm.tagAction(
      const EnsTag(
        name: 'compte_changement_mot_de_passe',
        category: EnsAnalyticsCategory.PAGE,
        level1: 'compte',
        level2: 'compte_changement_mot_de_passe',
      ),
    );
  }
}

class _Content extends StatefulWidget {
  final ChangePasswordScreenViewModel vm;
  final GlobalKey<ShakeWidgetState> shakeKey;

  const _Content({required this.vm, required this.shakeKey});

  @override
  State<_Content> createState() => _ContentState();
}

class _ContentState extends State<_Content> {
  final _formKey = GlobalKey<FormState>();
  final _shakeKey = GlobalKey<ShakeWidgetState>();
  final ScrollController _scrollController = ScrollController();
  final _currentPasswordTextInputController = TextEditingController();
  final _newPasswordTextInputController = TextEditingController();
  final _confirmPasswordTextInputController = TextEditingController();
  bool _initialized = false;
  late bool _isCurrentPasswordVisible;
  late bool _isNewPasswordVisible;
  late bool _isConfirmPasswordVisible;
  bool _hasAtLeast9Characters = false;
  bool _hasASpecialCharacters = false;
  bool _hasADigit = false;
  bool _hasAnUpperCase = false;
  bool _hasALowerCase = false;

  @override
  void dispose() {
    _scrollController.dispose();
    _currentPasswordTextInputController.dispose();
    _newPasswordTextInputController.dispose();
    _confirmPasswordTextInputController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!_initialized) _initializeFields();
    return EnsForm(
      formKey: _formKey,
      shakeKey: _shakeKey,
      scrollController: _scrollController,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            'Pour garantir la sécurité de vos données de santé, nous vous conseillons de choisir un mot de passe robuste.',
            style: EnsTextStyle.text14_w400_normal_body,
          ),
          const SizedBox(height: 6),
          EnsLinkText(
            label: 'Comment définir un mot de passe robuste ?',
            textPadding: EdgeInsets.zero,
            onTap: () {
              launchUrlOrInternalLink(
                'https://www.monespacesante.fr/questions-frequentes/acceder-a-mon-espace-sante/17',
              );
              context.tagAction(TagsParameters.tag_2389_link_faq_mp_robuste);
            },
          ),
          const SizedBox(height: 24),
          EnsPasswordTextInput(
            label: 'Mot de passe actuel',
            semanticsLabel: 'Mot de passe actuel',
            controller: _currentPasswordTextInputController,
            validator: requiredFieldValidator,
            autofocus: true,
            isPasswordVisible: _isCurrentPasswordVisible,
            onIconClicked: () => switchCurrentPasswordVisibility(),
          ),
          const SizedBox(height: 28),
          EnsPasswordTextInput(
            label: 'Nouveau mot de passe',
            semanticsLabel:
                'Doit contenir au moins 9 caractères dont une minuscule, une majuscule, un chiffre et un caractère spécial',
            controller: _newPasswordTextInputController,
            validator: isPasswordValidValidator,
            autofocus: true,
            isPasswordVisible: _isNewPasswordVisible,
            onIconClicked: () => switchNewPasswordVisibility(),
            onTextChanged: (value) => checkPasswordRequirements(value),
          ),
          const SizedBox(height: 8),
          PasswordRequirementText(label: '9 caractères minimum', isValid: _hasAtLeast9Characters),
          const SizedBox(height: 8),
          PasswordRequirementText(
            label: 'Au moins 1 caractère spécial (!#@;%\u2026)',
            isValid: _hasASpecialCharacters,
          ),
          const SizedBox(height: 8),
          PasswordRequirementText(label: 'Au moins 1 chiffre', isValid: _hasADigit),
          const SizedBox(height: 8),
          PasswordRequirementText(label: 'Au moins 1 majuscule', isValid: _hasAnUpperCase),
          const SizedBox(height: 8),
          PasswordRequirementText(label: 'Au moins 1 minuscule', isValid: _hasALowerCase),
          const SizedBox(height: 20),
          EnsPasswordTextInput(
            label: 'Confirmer le mot de passe',
            semanticsLabel: 'Doit être identique au noiveau mot de passe choisi',
            controller: _confirmPasswordTextInputController,
            validator: (value) => isConfirmPasswordEqualValidator(value, _newPasswordTextInputController.text),
            autofocus: true,
            isPasswordVisible: _isConfirmPasswordVisible,
            onIconClicked: () => switchConfirmPasswordVisibility(),
          ),
          const SizedBox(height: 32),
          Row(
            children: [
              Expanded(
                child: EnsButton(
                  label: 'Valider',
                  onTap: () => _validateAndSend(widget.vm),
                  isLoading: widget.vm.changePasswordStatus == ChangePasswordStatus.PENDING,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _initializeFields() {
    _isCurrentPasswordVisible = false;
    _isNewPasswordVisible = false;
    _isConfirmPasswordVisible = false;
    _initialized = true;
  }

  void checkPasswordRequirements(String value) {
    setState(() {
      _hasAtLeast9Characters = passwordRequirement9CharactersValidator(value) == null;
      _hasASpecialCharacters = passwordRequirementSpecialCharacterValidator(value) == null;
      _hasADigit = passwordRequirementDigitValidator(value) == null;
      _hasAnUpperCase = passwordRequirementUpperCaseValidator(value) == null;
      _hasALowerCase = passwordRequirementLowerCaseValidator(value) == null;
    });
  }

  void _validateAndSend(ChangePasswordScreenViewModel vm) {
    final validation = _formKey.validate();
    validation.onValid(() {
      vm.sendChangePassword(_currentPasswordTextInputController.text, _newPasswordTextInputController.text);
    }).onInvalid(() {
      _shakeKey.currentState?.shake();
      Future.delayed(const Duration(milliseconds: 300)).then(
        (_) => _scrollController.animateTo(0, duration: const Duration(milliseconds: 300), curve: Curves.fastOutSlowIn),
      );
    });
  }

  void switchCurrentPasswordVisibility() {
    setState(() {
      _isCurrentPasswordVisible = !_isCurrentPasswordVisible;
    });
  }

  void switchNewPasswordVisibility() {
    setState(() {
      _isNewPasswordVisible = !_isNewPasswordVisible;
    });
  }

  void switchConfirmPasswordVisibility() {
    setState(() {
      _isConfirmPasswordVisible = !_isConfirmPasswordVisible;
    });
  }
}
