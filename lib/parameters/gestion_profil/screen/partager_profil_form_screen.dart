/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/parameters/gestion_profil/domain/partager_profil_form_status.dart';
import 'package:fr_cnamts_ens/parameters/gestion_profil/redux/form/partager_profil_form_redux.dart';
import 'package:fr_cnamts_ens/parameters/gestion_profil/screen/partager_profil_form_confirmation_screen.dart';
import 'package:fr_cnamts_ens/parameters/gestion_profil/view_model/partager_profil_form_view_model.dart';
import 'package:fr_cnamts_ens/scanner/domain/type_scan.dart';
import 'package:fr_cnamts_ens/scanner/screens/scanner_carte_vitale_delegation_screen.dart';
import 'package:fr_cnamts_ens/scanner/screens/widgets/scan_button.dart';
import 'package:fr_cnamts_ens/tags/tags_parameters.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/champs_obligatoires_widget.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_divider.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_form.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_pop_scope.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/counted_text_input.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/ens_checkbox_field.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/ens_input_date.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/ens_input_date_validator.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/ens_numero_secu_input_text.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/validators.dart';
import 'package:fr_cnamts_ens/ui/widgets/shake_widget.dart';
import 'package:fr_cnamts_ens/utils/extensions/form_extensions.dart';
import 'package:fr_cnamts_ens/utils/mask_utils.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class PartagerProfilFormScreen extends StatefulWidget {
  static const routeName = '/partage-du-profil/form';

  @override
  State<PartagerProfilFormScreen> createState() => _PartagerProfilFormScreenState();
}

class _PartagerProfilFormScreenState extends State<PartagerProfilFormScreen> {
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

    return EnsPopScope.shouldPop(
      onScreenClosedInvoked: () {
        StoreProvider.of<EnsState>(context).dispatch(ResetNumeroSecuFromScanRepresentantLegalAction());
      },
      child: StoreConnector<EnsState, PartagerProfilFormViewModel>(
        distinct: true,
        converter: (store) => PartagerProfilFormViewModel(store),
        onWillChange: (_, vm) {
          if (vm.status == PartagerProfilFromStatus.SUCCESS) {
            Navigator.pushNamed(
              context,
              PartagerProfilFormConfirmationScreen.routeName,
              arguments: PartagerProfilFormConfirmationArguments(isSuccess: true, patientName: vm.patientName),
            );
          } else if (vm.status == PartagerProfilFromStatus.ERROR) {
            Navigator.pushNamed(
              context,
              PartagerProfilFormConfirmationScreen.routeName,
              arguments: PartagerProfilFormConfirmationArguments(isSuccess: false, patientName: vm.patientName),
            );
          }
        },
        onDidChange: (oldVm, vm) {
          setState(() {
            _isInfosNumSecuFromScan = vm.isNumeroSecuFromScan;
            if (vm.isNumeroSecuFromScan) {
              numeroSecuController.text = numeroSecuMaskFormatter(vm.numeroSecuFromScan!).getMaskedText();
              maskNumeroSecu = numeroSecuMaskFormatter(numeroSecuController.text);
            }
          });
        },
        builder: (context, vm) {
          return Scaffold(
            appBar: EnsAppBarSubLevel(title: 'Partage du profil de ${vm.patientName}'),
            body: SafeArea(
              child: Stack(
                children: [
                  EnsForm(
                    formKey: _formKey,
                    shakeKey: _shakeKey,
                    scrollController: scrollController,
                    padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        const ChampsObligatoiresFormTextWidget(displayFullText: false),
                        const SizedBox(height: 32),
                        const Text(
                          'Identité du second représentant légal',
                          style: EnsTextStyle.text20_w400_normal_title,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Pour accéder au profil de ${vm.patientName}, le représentant légal doit avoir activé Mon espace santé.',
                          style: EnsTextStyle.text14_w400_normal_body,
                        ),
                        const SizedBox(height: 32),
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
                              context.tagAction(TagsParameters.tag_2584_button_scanner_sa_carte_vitale);
                              Navigator.pushNamed(
                                context,
                                ScannerCarteVitaleDelegationScreen.routeName,
                                arguments: const ScannerCarteVitaleDelegationScreenArguments(
                                  TypeScanCarteVitaleDelegation.SCAN_CARTE_VITALE_REPRESENTANT_LEGAL,
                                ),
                              );
                            },
                          ),
                        ],
                        const SizedBox(height: 24),
                        EnsNumeroSecuInputText(
                          controller: numeroSecuController,
                          onTextDidChange: (unmaskedText) {
                            setState(() {
                              _isInfosNumSecuFromScan = vm.numeroSecuFromScan == unmaskedText;
                            });
                          },
                          isInfosNumSecuFromScan: _isInfosNumSecuFromScan,
                        ),
                        const SizedBox(height: 24),
                        EnsCheckboxFormField(
                          label:
                              'Je déclare que la personne désignée est représentant légal de mon enfant. Elle aura donc accès aux données du profil Mon espace santé de ${vm.patientName}. ',
                          errorType: EnsCheckboxFormFieldErrorType.HIGHLIGHT_ERROR,
                        ),
                        const SizedBox(height: 80),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.all(24),
                      child: Row(
                        children: [
                          Expanded(
                            child: EnsButton(
                              label: 'Partager l’accès',
                              isLoading: vm.status == PartagerProfilFromStatus.LOADING,
                              onTap: () {
                                context.tagAction(TagsParameters.tag_1273_partage_profil_form_button);
                                _validateAndSend(maskNumeroSecu.getUnmaskedText(), vm);
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  void _validateAndSend(String nir, PartagerProfilFormViewModel vm) {
    final validation = _formKey.validate();
    validation.onValid(() {
      vm.sendForm(
        lastNameTextInputController.text,
        firstNameTextInputController.text,
        birthDateController.value!,
        nir,
      );
    }).onInvalid(() {
      _shakeKey.currentState?.shake();
    });
  }
}
