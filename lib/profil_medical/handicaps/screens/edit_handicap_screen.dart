/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/domain/ens_analytics.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/guestmode/guest_mode_helper.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/handicaps/domain/ens_handicap.dart';
import 'package:fr_cnamts_ens/profil_medical/handicaps/screens/handicaps_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/handicaps/screens/viewmodels/edit_handicap_screen_view_model.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/champs_obligatoires_widget.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_form.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_pop_scope.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/counted_text_input.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/ens_drop_down.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/ens_multiple_selector_form_field.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/ens_radio_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/validators.dart';
import 'package:fr_cnamts_ens/ui/widgets/shake_widget.dart';
import 'package:fr_cnamts_ens/utils/extensions/form_extensions.dart';
import 'package:fr_cnamts_ens/utils/navigation_utils.dart';

class EditHandicapScreen extends StatefulWidget {
  static const routeName = '/handicapForm';

  @override
  _EditHandicapScreenState createState() => _EditHandicapScreenState();
}

class _EditHandicapScreenState extends State<EditHandicapScreen> {
  final _formKey = GlobalKey<FormState>();
  final _shakeKey = GlobalKey<ShakeWidgetState>();
  final ScrollController _scrollController = ScrollController();
  final _nameTextInputController = TextEditingController();
  final _handicapTypeController = ValueNotifier<HandicapTypeEnum?>(null);
  final _handicapRateController = ValueNotifier<EnsDisabilityRate?>(null);
  final _technicalHelpController = TextEditingController();
  final _commentController = TextEditingController();
  bool? _humanHelp;
  List<HandicapTypeEnum> _handicapsTypes = [];
  bool _initialized = false;
  final _handicapLabelFocus = FocusNode();

  @override
  void dispose() {
    _nameTextInputController.dispose();
    _handicapTypeController.dispose();
    _handicapRateController.dispose();
    _technicalHelpController.dispose();
    _commentController.dispose();
    _scrollController.dispose();
    _handicapLabelFocus.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!_initialized) {
      _initialized = true;
      final handicap = ModalRoute.of(context)!.settings.arguments as EnsHandicap?;
      if (handicap != null) {
        _nameTextInputController.text = handicap.name;
        _handicapsTypes = handicap.types;
        _handicapRateController.value = handicap.disabilityRate;
        _technicalHelpController.text = handicap.technicalHelp ?? '';
        _commentController.text = handicap.comment ?? '';
        _humanHelp = handicap.humanHelp == EnsHumanHelp.YES
            ? true
            : handicap.humanHelp == EnsHumanHelp.NO
                ? false
                : null;
      }
    }
    return StoreConnector<EnsState, EditHandicapScreenViewModel>(
      converter: (store) => EditHandicapScreenViewModel.from(store),
      onInitialBuild: (vm) {
        GuestModeHelper.showGuestModeBottomSheetWithConnexionIfGuestMode(
          context: context,
          onAuthenticatedMode: () => _tagDialog(context),
        );
      },
      distinct: true,
      onWillChange: (oldVm, newVm) {
        if (oldVm?.handicapEditStatus.isNotSuccess() == true && newVm.handicapEditStatus.isSuccess()) {
          Navigator.popUntil(context, (route) => route.settings.name == HandicapsScreen.routeName);
        }
      },
      builder: (context, vm) {
        final isModifying = (ModalRoute.of(context)!.settings.arguments as EnsHandicap?) != null;
        return EnsPopScope.shouldNotPop(
          onPopInvoked: (navigator) async {
            if (_noDataEntered()) {
              navigator.pop();
            } else {
              final shouldPop = await NavigationUtils.onWillPop(
                context,
                'Quitter la page ?',
                'En quittant cette page, toutes vos modifications seront perdues.',
                'Quitter',
              );
              if (shouldPop) {
                navigator.pop();
              }
            }
          },
          child: Scaffold(
            appBar: EnsAppBarSubLevel(
              title: isModifying ? 'Modifier un handicap' : 'Ajouter un handicap',
            ),
            body: EnsForm(
              formKey: _formKey,
              shakeKey: _shakeKey,
              scrollController: _scrollController,
              padding: const EdgeInsets.all(24),
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const SizedBox(height: 8),
                    ChampsObligatoiresFormTextWidget(
                      displayFullText: true,
                      focusNode: _handicapLabelFocus,
                    ),
                    const SizedBox(height: 32),
                    EnsMultipleSelectorFormField<HandicapTypeEnum>(
                      context: context,
                      borderRadius: BorderRadius.circular(4),
                      label: 'Type de handicap',
                      hint: _getHandicapTypeHint(),
                      labelMapper: (type) => type.label,
                      controller: _handicapTypeController,
                      validator: _requiredHandicapTypeFieldValidator,
                      preSelectedCategories: _handicapsTypes,
                      selectableFilters: HandicapTypeEnum.values
                          .where(
                            (element) => element != HandicapTypeEnum.UNKNOWN,
                          )
                          .toList(),
                      onSelected: (selectedFilters) {
                        setState(() {
                          _handicapsTypes = selectedFilters;
                        });
                      },
                      onTap: () {
                        _tagOnFormClick(context, 'input_type_handicap');
                      },
                    ),
                    const SizedBox(height: 28),
                    CountedTextInput.withBorders(
                      label: 'Nom du handicap',
                      description: 'Ex. : Surdité',
                      controller: _nameTextInputController,
                      deniedRegExp: '[@<>\\?:/€\\*#\\|%~\\+£\\\$!§¤]',
                      validatorCallback: (value) => textFieldValidator(
                        value: value,
                        fieldLabel: 'le nom du handicap',
                      ),
                      onFocus: () {
                        _tagOnFormClick(context, 'input_nom_handicap');
                      },
                    ),
                    const SizedBox(height: 24),
                    EnsDropDown(
                      context: context,
                      borderRadius: BorderRadius.circular(4),
                      label: 'Taux d\'incapacité',
                      description:
                          'La Commission des Droits et de l’Autonomie des Personnes Handicapées (CDAPH) ne fixe pas un taux précis d’incapacité mais une “fourchette” comprenant des degrés d’incapacité légers, modérés et majeurs.',
                      hint: '- Sélectionnez un taux - ',
                      controller: _handicapRateController,
                      items: EnsDisabilityRate.values.toList(),
                      itemFormater: (EnsDisabilityRate? handicapTaux) => handicapTaux != null ? handicapTaux.label : '',
                      validator: _requiredHandicapTauxFieldValidator,
                    ),
                    const SizedBox(height: 28),
                    CountedTextInput.withBorders(
                      label: 'Aide technique (facultatif)',
                      description: 'Ex : appareil auditif, fauteuil roulant...',
                      controller: _technicalHelpController,
                      maxCharacters: 50,
                      maxLines: 5,
                      validatorCallback: (value) => limitCharactersFieldValidator(
                        value: value,
                        maxCharacters: 50,
                        errorMessage: 'l\'aide technique est limité à 50 caractères',
                      ),
                      textInputAction: TextInputAction.newline,
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Aide humaine (facultatif)',
                      style: EnsTextStyle.text16_w600_title,
                    ),
                    const SizedBox(height: 10),
                    EnsRadioButton.card(
                      label: 'Oui, je bénéficie d\'une aide humaine',
                      groupValue: _humanHelp,
                      value: true,
                      onSelected: () {
                        if (_humanHelp != true) {
                          setState(() {
                            _humanHelp = true;
                          });
                        }
                      },
                    ),
                    const SizedBox(height: 16),
                    EnsRadioButton.card(
                      label: 'Non, je ne bénéficie d\'aucune aide humaine',
                      groupValue: _humanHelp,
                      value: false,
                      onSelected: () {
                        if (_humanHelp != false) {
                          setState(() {
                            _humanHelp = false;
                          });
                        }
                      },
                    ),
                    const SizedBox(height: 24),
                    CountedTextInput.withBorders(
                      label: 'Commentaire (facultatif)',
                      description:
                          'Précisez ce qui va faciliter ou compliquer le soin (fragilités particulières, modes de communication, échelle de douleur…)',
                      controller: _commentController,
                      maxCharacters: 3000,
                      maxLines: 7,
                      validatorCallback: (value) => limitCharactersFieldValidator(
                        value: value,
                        maxCharacters: 3000,
                        errorMessage: 'le commentaire est limité à 3000 caractères',
                      ),
                      textInputAction: TextInputAction.newline,
                      onFocus: () {
                        _tagOnFormClick(context, 'input_ajout_commentaire');
                      },
                    ),
                    const SizedBox(height: 24),
                    EnsButton(
                      label: 'Valider',
                      isLoading: vm.handicapEditStatus.isLoading(),
                      onTap: () {
                        _validateAndSend(context, vm);
                      },
                    ),
                    const SizedBox(height: 40),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  void _validateAndSend(BuildContext context, EditHandicapScreenViewModel vm) {
    final validation = _formKey.validate();
    validation.onValid(() {
      final handicap = ModalRoute.of(context)!.settings.arguments as EnsHandicap?;
      _tagOnFormClick(
        context,
        handicap?.id != null ? 'button_valider_modification_handicap' : 'button_valider_ajout_handicap',
      );
      final editingHandicap = EditingHandicap(
        id: handicap?.id,
        name: _nameTextInputController.text,
        comment: _commentController.text,
        technicalHelp: _technicalHelpController.text,
        humanHelp: _getHumanHelp(),
        disabilityRate: _handicapRateController.value,
        types: _handicapsTypes,
      );
      vm.onValidate(editingHandicap);
    }).onInvalid(() {
      _shakeKey.currentState?.shake();
      final isAccessibilityEnabled = WidgetsBinding.instance.accessibilityFeatures.accessibleNavigation;
      if (!isAccessibilityEnabled) {
        Future.delayed(const Duration(milliseconds: 300)).then(
          (_) => _scrollController.animateTo(
            0,
            duration: const Duration(milliseconds: 300),
            curve: Curves.fastOutSlowIn,
          ),
        );
      } else {
        _handicapLabelFocus.requestFocus();
      }
    });
  }

  EnsHumanHelp _getHumanHelp() {
    switch (_humanHelp) {
      case null:
        return EnsHumanHelp.NONE;
      case false:
        return EnsHumanHelp.NO;
      case true:
        return EnsHumanHelp.YES;
    }
  }

  String _getHandicapTypeHint() {
    if (_handicapsTypes.isEmpty) {
      return '- Sélectionnez un type - ';
    } else if (_handicapsTypes.length == 1) {
      return '1 type sélectionné';
    } else {
      return '${_handicapsTypes.length} types sélectionnés';
    }
  }

  String? _requiredHandicapTypeFieldValidator(HandicapTypeEnum? handicapType) {
    if (_handicapsTypes.isEmpty) {
      return 'Sélectionner le type de handicap';
    }
    return null;
  }

  String? _requiredHandicapTauxFieldValidator(EnsDisabilityRate? handicapTaux) {
    if (handicapTaux == null) {
      return 'Choisir un taux d\'incapacité dans la liste';
    }
    return null;
  }

  bool _noDataEntered() {
    return _nameTextInputController.text.isEmpty &&
        _handicapsTypes.isEmpty &&
        _handicapRateController.value == null &&
        _technicalHelpController.text.isEmpty &&
        _commentController.text.isEmpty &&
        _humanHelp == null;
  }

  void _tagDialog(BuildContext context) {
    final isModifying = (ModalRoute.of(context)!.settings.arguments as EnsHandicap?) != null;
    context.tagAction(
      EnsTag(
        name: isModifying ? 'handicaps_modification' : 'popin_handicap_ajout',
        category: EnsAnalyticsCategory.PAGE,
        level1: 'profil_medical',
        level2: 'handicaps',
      ),
    );
  }

  void _tagOnFormClick(BuildContext context, String onClick) {
    final isModifying = (ModalRoute.of(context)!.settings.arguments as EnsHandicap?) != null;
    context.tagAction(
      EnsTag(
        name: onClick,
        category: EnsAnalyticsCategory.CLICK,
        level1: 'profil_medical',
        level2: 'handicaps',
        level3: isModifying ? 'handicaps_modification' : 'handicaps_ajout',
      ),
    );
  }
}

extension HandicapTauxDisplay on EnsDisabilityRate {
  String get label {
    switch (this) {
      case EnsDisabilityRate.LESS_THAN_50:
        return 'Inférieur à 50%';
      case EnsDisabilityRate.BETWEEN_50_AND_70:
        return 'Compris entre 50% et 79%';
      case EnsDisabilityRate.BIGGER_THAN_80_OR_EQUAL:
        return 'Supérieur ou égal à 80%';
      case EnsDisabilityRate.UNKNOWN:
        return 'Inconnu';
    }
  }
}

enum HandicapTypeEnum {
  SENSORY,
  NEURO_DEVELOPMENTAL,
  PSYCHIC,
  ENGINE,
  POLY,
  DISABLING_DISEASE,
  OTHERS,
  UNKNOWN,
}

extension HandicapTypeDisplay on HandicapTypeEnum {
  String get label {
    switch (this) {
      case HandicapTypeEnum.SENSORY:
        return 'Sensoriel';
      case HandicapTypeEnum.PSYCHIC:
        return 'Psychique';
      case HandicapTypeEnum.ENGINE:
        return 'Moteur';
      case HandicapTypeEnum.POLY:
        return 'Polyhandicap';
      case HandicapTypeEnum.UNKNOWN:
        return 'Inconnu';
      case HandicapTypeEnum.OTHERS:
        return 'Autres';
      case HandicapTypeEnum.NEURO_DEVELOPMENTAL:
        return 'Troubles du neuro-développement (TND)';
      case HandicapTypeEnum.DISABLING_DISEASE:
        return 'Maladies invalidantes';
    }
  }
}
