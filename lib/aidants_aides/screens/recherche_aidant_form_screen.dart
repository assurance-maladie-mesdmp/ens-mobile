/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/aidants_aides/redux/aidants_aides_redux.dart';
import 'package:fr_cnamts_ens/aidants_aides/screens/donner_acces_mon_profil_info_screen.dart';
import 'package:fr_cnamts_ens/aidants_aides/screens/resultat_recherche_aidant_screen.dart';
import 'package:fr_cnamts_ens/aidants_aides/screens/viewmodels/recherche_aidant_form_view_model.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/scanner/domain/type_scan.dart';
import 'package:fr_cnamts_ens/scanner/screens/scanner_carte_vitale_delegation_screen.dart';
import 'package:fr_cnamts_ens/scanner/screens/widgets/scan_button.dart';
import 'package:fr_cnamts_ens/tags/tags_aidants_aides.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/action_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_divider.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_form.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_persistent_info_box.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_pop_scope.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/counted_text_input.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/ens_input_date.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/ens_input_date_validator.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/ens_numero_secu_input_text.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/validators.dart';
import 'package:fr_cnamts_ens/ui/widgets/shake_widget.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:fr_cnamts_ens/utils/all_purposes_status.dart';
import 'package:fr_cnamts_ens/utils/extensions/form_extensions.dart';
import 'package:fr_cnamts_ens/utils/mask_utils.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class RechercheAidantFormScreen extends StatelessWidget {
  static const routeName = '/aidants_aides/recherche_aidant';

  @override
  Widget build(BuildContext context) {
    context.tagAction(TagsAidantsAides.tag_2536_recherche_mon_proche_aidant_aide);
    return EnsPopScope.shouldPop(
      onScreenClosedInvoked: () {
        StoreProvider.of<EnsState>(context).dispatch(ResetNumeroSecuFromScanAidantAction());
      },
      child: Scaffold(
        appBar: EnsAppBarSubLevel(
          title: 'Je recherche mon proche aidant',
          action: ActionButton(
            tooltip: 'Informations',
            icon: const EnsSvg(EnsImages.ic_info_circle_outlined),
            onTap: () {
              Navigator.pushNamed(context, DonnerAccesMonProfilInfoScreen.routeName);
            },
          ),
        ),
        body: const SafeArea(child: _Form()),
      ),
    );
  }
}

class _Form extends StatefulWidget {
  const _Form();

  @override
  State<_Form> createState() => _FormState();
}

class _FormState extends State<_Form> {
  final _formKey = GlobalKey<FormState>();
  final _shakeKey = GlobalKey<ShakeWidgetState>();
  final lastNameTextInputController = TextEditingController();
  final firstNameTextInputController = TextEditingController();
  final ValueNotifier<DateTime?> birthDateController = ValueNotifier<DateTime?>(null);
  final numeroSecuController = TextEditingController();
  final scrollController = ScrollController();
  bool _isInfosNumSecuFromScan = false;

  @override
  void dispose() {
    lastNameTextInputController.dispose();
    firstNameTextInputController.dispose();
    birthDateController.dispose();
    numeroSecuController.dispose();
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    MaskTextInputFormatter maskNumeroSecu = numeroSecuMaskFormatter(numeroSecuController.text);

    return StoreConnector<EnsState, RechercheAidantFormViewModel>(
      converter: (store) => RechercheAidantFormViewModel.from(store),
      distinct: true,
      onDidChange: (oldVm, vm) {
        if (oldVm?.formStatus.isLoading() == true && vm.formStatus.isSuccess() && vm.potentielAidant != null) {
          Navigator.pushNamed(
            context,
            ResultatRechercheAidantScreen.routeName,
            arguments: ResultatRechercheAidantScreenArguments(vm.potentielAidant!),
          );
        }
      },
      onWillChange: (oldVm, vm) {
        setState(() {
          _isInfosNumSecuFromScan = vm.isNumeroSecuFromScan;
          if (vm.isNumeroSecuFromScan) {
            numeroSecuController.text = numeroSecuMaskFormatter(vm.numeroSecuFromScan!).getMaskedText();
            maskNumeroSecu = numeroSecuMaskFormatter(numeroSecuController.text);
          }
        });
      },
      builder: (context, vm) => EnsForm(
        formKey: _formKey,
        shakeKey: _shakeKey,
        scrollController: scrollController,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 24),
            EnsPersistentInfoBox.text(
              'Assurez-vous que votre proche aidant a bien activé son profil Mon espace santé.',
            ),
            const SizedBox(height: 32),
            const Text('Tous les champs sont obligatoires', style: EnsTextStyle.text14_w400_normal_body),
            const SizedBox(height: 24),
            CountedTextInput.withBorders(
              label: 'Nom de naissance',
              description: 'Ex. : Dupont',
              deniedRegExp: '[@<>\\?:/€\\*#\\|%~\\+£\\\$!§¤]',
              validatorCallback: (value) => textFieldValidator(value: value),
              controller: lastNameTextInputController,
              displayCounter: false,
            ),
            const SizedBox(height: 24),
            CountedTextInput.withBorders(
              label: 'Prénom',
              description: 'Ex. : Paul',
              deniedRegExp: '[@<>\\?:/€\\*#\\|%~\\+£\\\$!§¤]',
              validatorCallback: (value) => requiredFirstNameTextFieldValidator(
                value,
                nullErrorMessage: 'Saisir le prénom',
              ),
              controller: firstNameTextInputController,
              displayCounter: false,
            ),
            const SizedBox(height: 24),
            EnsInputDate(
              context: context,
              label: 'Date de naissance (jj/mm/aaaa)',
              controller: birthDateController,
              validator: (value) => EnsInputDateValidator().validate(
                birthDateController.value,
                emptyMessage: 'Saisir la date de naissance',
              ),
              lastDate: DateTime.now(),
              startWithKeyboardInput: true,
            ),
            if (!vm.isNumeroSecuFromScan) ...[
              const EnsDivider(paddingTop: 24, paddingBottom: 24),
              ScanButton(
                typeScan: TypeScan.SCAN_CARTE_VITALE_DELEGATION,
                padding: EdgeInsets.zero,
                onTap: () {
                  context.tagAction(TagsAidantsAides.tag_2583_button_scanner_sa_carte_vitale);
                  Navigator.pushNamed(
                    context,
                    ScannerCarteVitaleDelegationScreen.routeName,
                    arguments: const ScannerCarteVitaleDelegationScreenArguments(
                      TypeScanCarteVitaleDelegation.SCAN_CARTE_VITALE_AIDANT,
                    ),
                  );
                },
              ),
            ],
            const SizedBox(height: 24),
            EnsNumeroSecuInputText(
              controller: numeroSecuController,
              onTextDidChange: (text) {
                setState(() {
                  _isInfosNumSecuFromScan = vm.numeroSecuFromScan == text;
                });
              },
              isInfosNumSecuFromScan: _isInfosNumSecuFromScan,
            ),
            const SizedBox(height: 32),
            EnsButton(
              label: 'Rechercher mon proche aidant',
              isLoading: vm.formStatus == AllPurposesStatus.LOADING,
              onTap: () {
                _validateAndSend(vm, maskNumeroSecu);
              },
            ),
            const SizedBox(height: 36),
          ],
        ),
      ),
    );
  }

  void _validateAndSend(RechercheAidantFormViewModel vm, MaskTextInputFormatter maskNumeroSecu) {
    final validation = _formKey.validate();
    validation.onValid(() {
      vm.sendForm(
        lastName: lastNameTextInputController.text,
        firstName: firstNameTextInputController.text,
        birthDate: birthDateController.value!,
        numeroSecu: maskNumeroSecu.getUnmaskedText(),
      );
    }).onInvalid(() {
      _shakeKey.currentState?.shake();
    });
  }
}
