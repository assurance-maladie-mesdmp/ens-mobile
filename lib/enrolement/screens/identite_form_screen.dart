/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/enrolement/redux/enrolement_redux.dart';
import 'package:fr_cnamts_ens/enrolement/screens/cas_jumeaux_screen.dart';
import 'package:fr_cnamts_ens/enrolement/screens/code_provisoire_screen.dart';
import 'package:fr_cnamts_ens/enrolement/screens/compte_existant_screen.dart';
import 'package:fr_cnamts_ens/enrolement/screens/compte_non_activable_screen.dart';
import 'package:fr_cnamts_ens/enrolement/screens/coordonees_screen.dart';
import 'package:fr_cnamts_ens/enrolement/screens/informations_numero_securite_sociale_screen.dart';
import 'package:fr_cnamts_ens/enrolement/screens/informations_numero_serie_screen.dart';
import 'package:fr_cnamts_ens/enrolement/screens/scanner_carte_vitale_enrolement_screen.dart';
import 'package:fr_cnamts_ens/enrolement/screens/session_expiree_screen.dart';
import 'package:fr_cnamts_ens/enrolement/screens/viewmodels/identite_form_screen_view_model.dart';
import 'package:fr_cnamts_ens/enrolement/screens/widgets/enrolement_header.dart';
import 'package:fr_cnamts_ens/infra/injection/ens_module_container.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_initial_state.dart';
import 'package:fr_cnamts_ens/scanner/domain/type_scan.dart';
import 'package:fr_cnamts_ens/scanner/screens/widgets/scan_button.dart';
import 'package:fr_cnamts_ens/tags/tags_enrolement.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_divider.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_form.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_ink_well.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_pop_scope.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/ens_input_date.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/ens_input_date_validator.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/ens_numero_secu_input_text.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/ens_numero_serie_avec_photo_input.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/ens_numero_serie_sans_photo_input.dart';
import 'package:fr_cnamts_ens/ui/widgets/shake_widget.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:fr_cnamts_ens/utils/extensions/form_extensions.dart';
import 'package:fr_cnamts_ens/utils/feature_flags_helper.dart';
import 'package:fr_cnamts_ens/utils/mask_utils.dart';
import 'package:redux/redux.dart';

class IdentiteFormScreen extends StatelessWidget {
  static const routeName = 'enrolement/identite';

  final void Function(String) onNextCall;
  final void Function(int) changeStepperMaxValue;

  const IdentiteFormScreen(this.onNextCall, this.changeStepperMaxValue);

  @override
  Widget build(BuildContext context) {
    return EnsPopScope.shouldPop(
      onScreenClosedInvoked: () {
        StoreProvider.of<EnsInitialState>(context).dispatch(ResetScanCarteVitaleInformationAction());
      },
      child: _Body(onNextCall, changeStepperMaxValue),
    );
  }
}

class _Body extends StatelessWidget {
  final void Function(String) onNextCall;
  final void Function(int) changeStepperMaxValue;

  const _Body(this.onNextCall, this.changeStepperMaxValue);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const EnrolementHeader(
          pictoPath: EnsImages.pieces_administratives,
          title: 'Mon identité',
          subtitle: 'Je renseigne les informations de ma carte Vitale.',
        ),
        _Form(onNextCall, changeStepperMaxValue),
      ],
    );
  }
}

class _Form extends StatefulWidget {
  final void Function(String) onNextCall;
  final void Function(int) changeStepperMaxValue;

  const _Form(this.onNextCall, this.changeStepperMaxValue);

  @override
  State<_Form> createState() => _FormState();
}

class _FormState extends State<_Form> {
  final _formKey = GlobalKey<FormState>();
  final _shakeKey = GlobalKey<ShakeWidgetState>();
  final _scrollController = ScrollController();
  final _birthDateController = ValueNotifier<DateTime?>(null);
  final _numeroSecuController = TextEditingController();
  final _numeroSerieCarteVitaleController = TextEditingController();
  bool _isInfosNumSecuFromScan = false;
  bool _isInfosNumSerieFromScan = false;

  @override
  void dispose() {
    _scrollController.dispose();
    _birthDateController.dispose();
    _numeroSecuController.dispose();
    _numeroSerieCarteVitaleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var maskNumeroSecu = numeroSecuMaskFormatter(_numeroSecuController.text);
    var maskNumeroSerie = numeroSerieAvecPhotoMaskFormatter(_numeroSerieCarteVitaleController.text);

    return StoreConnector<EnsInitialState, IdentiteFormScreenViewModel>(
      converter: (Store<EnsInitialState> store) =>
          IdentiteFormScreenViewModel(store, EnsModuleContainer.currentInjector.getAppConfig()),
      onInitialBuild: (vm) {
        context.tagInitialAction(TagsEnrolement.tag_2300_enrolement_identification);
        setState(() {
          _birthDateController.value = vm.birthDate;
        });
      },
      onDidChange: (_, vm) {
        setState(() {
          _isInfosNumSecuFromScan = vm.isInfosCarteVitaleFromScan;
          _isInfosNumSerieFromScan = vm.isInfosCarteVitaleFromScan;

          if (vm.generatedCarteVitale != null) {
            _birthDateController.value = vm.generatedCarteVitale!.birthDate;

            if (vm.generatedCarteVitale!.nir != null) {
              _numeroSecuController.text = numeroSecuMaskFormatter(vm.generatedCarteVitale!.nir!).getMaskedText();
              maskNumeroSecu = numeroSecuMaskFormatter(_numeroSecuController.text);
            }

            if (vm.typeCarteVitale.isAvecPhoto()) {
              if (vm.generatedCarteVitale!.numeroSerie != null) {
                _numeroSerieCarteVitaleController.text =
                    numeroSerieAvecPhotoMaskFormatter(vm.generatedCarteVitale!.numeroSerie!).getMaskedText();
                maskNumeroSerie = numeroSerieAvecPhotoMaskFormatter(_numeroSerieCarteVitaleController.text);
              }
            } else {
              _numeroSerieCarteVitaleController.text = vm.generatedCarteVitale!.numeroSerie ?? '';
            }
          } else {
            if (vm.numeroSecu != null) {
              _numeroSecuController.text = numeroSecuMaskFormatter(vm.numeroSecu!).getMaskedText();
              maskNumeroSecu = numeroSecuMaskFormatter(_numeroSecuController.text);
            }
            if (vm.numeroSerieCarteVitale != null && vm.typeCarteVitale.isAvecPhoto()) {
              _numeroSerieCarteVitaleController.text =
                  numeroSerieAvecPhotoMaskFormatter(vm.numeroSerieCarteVitale!).getMaskedText();
              maskNumeroSerie = numeroSerieAvecPhotoMaskFormatter(_numeroSerieCarteVitaleController.text);
            } else {
              _numeroSerieCarteVitaleController.text = vm.numeroSerieCarteVitale ?? '';
            }
          }
        });
      },
      onWillChange: (oldVm, vm) {
        if (oldVm?.status == UserContactStatus.LOADING) {
          if (vm.status == UserContactStatus.SUCCESS) {
            if (vm.isJumeaux) {
              widget.onNextCall(CasJumeauxScreen.routeName);
            } else {
              widget.changeStepperMaxValue(8);
              widget.onNextCall(CoordonneesScreen.routeName);
            }
          } else if (vm.status == UserContactStatus.COMPTE_NON_ACTIVABLE) {
            Navigator.pushNamed(context, CompteNonActivableScreen.routeName);
          } else if (vm.status == UserContactStatus.COMPTE_EXISTANT) {
            Navigator.pushNamed(context, CompteExistantScreen.routeName);
          } else if (vm.status == UserContactStatus.COMPTE_SANS_CORDONEES) {
            widget.onNextCall(CodeProvisoireFormScreen.routeName);
          } else if (vm.status == UserContactStatus.SESSION_TIMED_OUT) {
            Navigator.pushNamed(context, SessionExpireeScreen.routeName);
          }
        }
      },
      builder: (context, vm) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ColoredBox(
              color: EnsColors.light,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 32),
                child: EnsForm(
                  formKey: _formKey,
                  shakeKey: _shakeKey,
                  scrollController: _scrollController,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      EnsInputDate(
                        label: 'Date de naissance',
                        description: 'Si cela concerne mon enfant, j’indique sa date de naissance.',
                        controller: _birthDateController,
                        context: context,
                        validator: (value) => EnsInputDateValidator().validate(
                          _birthDateController.value,
                          emptyMessage: 'Saisir la date de naissance',
                        ),
                        lastDate: DateTime.now(),
                        startWithKeyboardInput: true,
                      ),
                      if (!vm.isInfosCarteVitaleFromScan && isScanCarteVitaleEnabled) ...[
                        const EnsDivider(paddingBottom: 24, paddingTop: 24),
                        ScanButton(
                          padding: EdgeInsets.zero,
                          typeScan: TypeScan.SCAN_CARTE_VITALE_ENROLEMENT,
                          onTap: () {
                            context.tagInitialAction(TagsEnrolement.tag_2460_button_scan_carte_vitale_formulaire);
                            Navigator.pushNamed(context, ScannerCarteVitaleEnrolementScreen.routeName);
                          },
                        ),
                      ],
                      const SizedBox(height: 24),
                      EnsNumeroSecuInputText(
                        label: 'Mon numéro de sécurité sociale',
                        controller: _numeroSecuController,
                        onTextDidChange: (text) {
                          setState(() {
                            _isInfosNumSecuFromScan = vm.numeroSecu == text;
                          });
                        },
                        isInfosNumSecuFromScan: _isInfosNumSecuFromScan,
                      ),
                      EnsInkWell(
                        onTap: () {
                          context.tagInitialAction(TagsEnrolement.tag_2301_button_trouver_numero_securite_sociale);
                          Navigator.pushNamed(
                            context,
                            InformationsNumeroSecuriteSocialeScreen.routeName,
                            arguments: vm.typeCarteVitale,
                          );
                        },
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 8),
                            Text(
                              'Où trouver mon numéro de sécurité sociale ?',
                              style: EnsTextStyle.text14_w700_normal_primary_underline,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 32),
                      if (vm.typeCarteVitale.isSansPhoto())
                        EnsNumeroSerieSansPhotoInput(
                          controller: _numeroSerieCarteVitaleController,
                          isNumSerieFromScan: _isInfosNumSerieFromScan,
                          onTextDidChange: (value) {
                            setState(() {
                              _isInfosNumSerieFromScan = vm.numeroSerieCarteVitale == value;
                            });
                          },
                        ),
                      if (vm.typeCarteVitale.isAvecPhoto())
                        EnsNumeroSerieAvecPhotoInput(
                          controller: _numeroSerieCarteVitaleController,
                          isNumSerieFromScan: _isInfosNumSerieFromScan,
                          mask: maskNumeroSerie,
                          onTextDidChange: (value) => setState(() {
                            _isInfosNumSerieFromScan =
                                vm.numeroSerieCarteVitale == numeroSerieAvecPhotoMaskFormatter(value).getUnmaskedText();
                          }),
                        ),
                      EnsInkWell(
                        onTap: () {
                          context.tagInitialAction(TagsEnrolement.tag_2302_button_trouver_numero_carte_vitale);
                          Navigator.pushNamed(
                            context,
                            InformationsNumeroSerieScreen.routeName,
                            arguments: vm.typeCarteVitale,
                          );
                        },
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 8),
                            Text(
                              'Où trouver mon numéro de série ?',
                              style: EnsTextStyle.text14_w700_normal_primary_underline,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 24),
              child: EnsButton(
                isEnrolement: true,
                label: 'Valider',
                isLoading: vm.status == UserContactStatus.LOADING,
                onTap: () {
                  if (vm.typeCarteVitale.isAvecPhoto()) {
                    _validateAndSend(maskNumeroSecu.getUnmaskedText(), maskNumeroSerie.getUnmaskedText(), vm);
                  } else if (vm.typeCarteVitale.isSansPhoto()) {
                    _validateAndSend(maskNumeroSecu.getUnmaskedText(), _numeroSerieCarteVitaleController.text, vm);
                  }
                },
              ),
            ),
          ],
        );
      },
    );
  }

  void _validateAndSend(String noSecuriteSociale, String noSerie, IdentiteFormScreenViewModel vm) {
    final validation = _formKey.validate();
    validation.onValid(() {
      vm.sendForm(_birthDateController.value!, noSecuriteSociale, noSerie);
    }).onInvalid(() {
      _shakeKey.currentState?.shake();
    });
  }
}
