/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/guestmode/guest_mode_helper.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/redux/professionnels_de_sante_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/search_ps/screens/recherche_ps_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/search_ps/screens/viewModels/recherche_ps_screen_view_model.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/search_ps/screens/viewModels/recherche_ps_type.dart';
import 'package:fr_cnamts_ens/profil_medical/scanner/screens/scanner_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/vaccinations/domain/models/editing_vaccination.dart';
import 'package:fr_cnamts_ens/profil_medical/vaccinations/domain/models/ens_vaccin.dart';
import 'package:fr_cnamts_ens/profil_medical/vaccinations/domain/models/ens_vaccination.dart';
import 'package:fr_cnamts_ens/profil_medical/vaccinations/screens/viewModels/edit_vaccination_screen_view_model.dart';
import 'package:fr_cnamts_ens/profil_medical/vaccinations/screens/viewModels/nom_vaccinateur_input_view_model.dart';
import 'package:fr_cnamts_ens/scanner/domain/type_scan.dart';
import 'package:fr_cnamts_ens/scanner/screens/widgets/scan_button.dart';
import 'package:fr_cnamts_ens/tags/pml/tags_vaccinations.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/information_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/champs_obligatoires_widget.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_form.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_info_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_ink_well.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_pop_scope.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/counted_text_input.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/ens_autocomplete_input.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/ens_autocomplete_input_data_display_model.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/ens_input_date.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/ens_input_date_validator.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/ens_radio_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/form_helper.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/validate_field_info_text.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/validators.dart';
import 'package:fr_cnamts_ens/ui/widgets/shake_widget.dart';
import 'package:fr_cnamts_ens/ui/widgets/skeletons.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:fr_cnamts_ens/utils/all_purposes_status.dart';
import 'package:fr_cnamts_ens/utils/ens_date_utils.dart';
import 'package:fr_cnamts_ens/utils/extensions/form_extensions.dart';
import 'package:fr_cnamts_ens/utils/navigation_utils.dart';

class EditVaccinationScreenArguments {
  final EnsVaccination? vaccinationEdit;
  final bool isFromMHS;
  final DateTime? dateDeRealisation;
  final VaccinFromCodeCip? vaccinFromCodeCip;

  const EditVaccinationScreenArguments({
    this.vaccinationEdit,
    this.isFromMHS = false,
    this.dateDeRealisation,
    this.vaccinFromCodeCip,
  });
}

class VaccinFromCodeCip {
  final EnsVaccin? vaccinFromCip;
  final String? lotFromScan;

  VaccinFromCodeCip({
    this.vaccinFromCip,
    this.lotFromScan,
  });
}

class EditVaccinationScreen extends StatelessWidget {
  static const routeName = '/editVaccination';

  const EditVaccinationScreen();

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments as EditVaccinationScreenArguments?;

    return StoreConnector<EnsState, EditVaccinationScreenViewModel>(
      converter: (store) => EditVaccinationScreenViewModel.from(store),
      onInitialBuild: (vm) {
        vm.resetVaccinationEdit();
        vm.fetchVaccins();
        GuestModeHelper.showGuestModeBottomSheetWithConnexionIfGuestMode(
          context: context,
          onAuthenticatedMode: () => context.tagAction(
            arguments?.vaccinationEdit != null
                ? TagsVaccinations.tag_469_popin_vaccination_modif
                : TagsVaccinations.tag_467_popin_vaccination_ajout,
          ),
        );
      },
      onWillChange: (_, vm) {
        if (vm.editStatus.isSuccess()) {
          Navigator.pop(context);
        }
      },
      distinct: true,
      builder: (context, vm) {
        return _Form(vm: vm, arguments: arguments);
      },
    );
  }
}

class _Form extends StatefulWidget {
  final EditVaccinationScreenViewModel vm;
  final EditVaccinationScreenArguments? arguments;

  const _Form({required this.vm, required this.arguments});

  @override
  State<_Form> createState() => _FormState();
}

class _FormState extends State<_Form> {
  static const _COMMENT_MAX_CHARACTERS = 3000;
  static const _LOT_MAX_CHARACTERS = 100;

  final _scrollController = ScrollController();
  final _dateController = ValueNotifier<DateTime?>(null);
  final _vaccinController = ValueNotifier<EnsVaccin?>(null);
  final _displayedNomVaccinController = TextEditingController();
  final _displayedNomVaccinateurController = TextEditingController();
  final _lotNumberController = TextEditingController();
  final _nomVaccinateurController = ValueNotifier<String?>(null);
  final _commentController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  final _shakeKey = GlobalKey<ShakeWidgetState>();

  final _nomVaccinFocus = FocusNode();
  final _nomVaccinateurFocus = FocusNode();

  bool _isLotFromScan = false;
  String? _lotFromScan;
  bool _isVaccinFromScan = false;
  EnsVaccin? _vaccinFromScan;

  TypeOfAdministration _typeOfAdministration = TypeOfAdministration.IMMUNIZ;
  EditingVaccination? _editingVaccination;

  @override
  void initState() {
    super.initState();
    final arguments = widget.arguments;
    if (arguments != null) {
      _dateController.value = arguments.dateDeRealisation;
      if (arguments.vaccinationEdit != null) {
        _initFromEditingVaccinationArguments(arguments.vaccinationEdit!, widget.vm.vaccins);
      }
      if (arguments.vaccinFromCodeCip != null) {
        _initFromScanArguments(arguments.vaccinFromCodeCip!);
      }
    }

    _vaccinController.addListener(() {
      if (_vaccinController.value != null) {
        final currentSelectedValue = _vaccinController.value!;
        _displayedNomVaccinController.text = currentSelectedValue.label;
      }
    });
    _nomVaccinateurController.addListener(() {
      if (_nomVaccinateurController.value != null) {
        final currentSelectedValue = _nomVaccinateurController.value!;
        _displayedNomVaccinateurController.text = currentSelectedValue;
      }
    });
  }

  @override
  void dispose() {
    _nomVaccinFocus.dispose();
    _scrollController.dispose();
    _vaccinController.dispose();
    _dateController.dispose();
    _lotNumberController.dispose();
    _nomVaccinateurController.dispose();
    _commentController.dispose();
    _displayedNomVaccinController.dispose();
    _displayedNomVaccinateurController.dispose();
    _nomVaccinateurFocus.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final vm = widget.vm;
    final isFromMHS = widget.arguments?.isFromMHS ?? false;

    return EnsPopScope.shouldNotPop(
      onPopInvoked: (navigator) async {
        await _onPopInvoked(navigator, context);
      },
      child: Scaffold(
        appBar: EnsAppBarSubLevel(
          title: vm.getAppBarTitle(_editingVaccination != null),
          action: !_isVaccinFromScan && _editingVaccination == null
              ? EnsInfoButton(
                  onTap: () {
                    context.tagAction(TagsVaccinations.tag_966_button_information_formulaire);
                    _displayInfoBottomSheet(context);
                  },
                )
              : null,
        ),
        body: vm.scannerStatus.isLoading()
            ? const PmlFormSkeleton()
            : SafeArea(
                child: EnsForm(
                  formKey: _formKey,
                  scrollController: _scrollController,
                  shakeKey: _shakeKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const SizedBox(height: 32),
                      Visibility(
                        visible: !_isVaccinFromScan && !isFromMHS,
                        child: ScanButton(
                          padding: const EdgeInsets.only(bottom: 24),
                          typeScan: TypeScan.SCAN_BOITE_VACCIN,
                          onTap: () async {
                            context.tagAction(TagsVaccinations.tag_965_button_scanner_vaccin_formulaire);
                            final output = await Navigator.pushNamed(
                              context,
                              ScannerScreen.routeName,
                              arguments: const ScannerScreenArguments(
                                typeScan: TypeScan.SCAN_BOITE_VACCIN,
                                isFromFormulaire: true,
                              ),
                            ) as VaccinFromCodeCip?;
                            if (output != null) {
                              setState(() {
                                _initFromScanArguments(output);
                              });
                            }
                          },
                        ),
                      ),
                      const ChampsObligatoiresFormTextWidget(displayFullText: true),
                      const SizedBox(height: 32),
                      _NomVaccinInput(
                        vaccinKey: GlobalKey(),
                        vaccinInfoMap: vm.vaccinInfoMap,
                        nomVaccinController: _vaccinController,
                        displayedNomVaccinController: _displayedNomVaccinController,
                        nomVaccinFocus: _nomVaccinFocus,
                        isEditing: _editingVaccination != null,
                        isVaccinFromScan: _isVaccinFromScan,
                        onSuggestionSelected: (suggestion) {
                          setState(() {
                            _displayedNomVaccinController.text = suggestion.label.split('-').first;
                            _isVaccinFromScan =
                                '${_vaccinFromScan?.label} - ${_vaccinFromScan?.pathologies}' == suggestion.label;
                          });

                          if (_dateController.value != null) {
                            _formKey.currentState?.validate();
                          }
                        },
                      ),
                      const SizedBox(height: 32),
                      _DateInput(
                        dateController: _dateController,
                        shakeKey: _shakeKey,
                        scrollController: _scrollController,
                        editingVaccination: _editingVaccination,
                        birthDate: vm.birthdate,
                        editStatus: vm.editStatus,
                        firstDate: _vaccinController.value?.marketingStart != null
                            ? _vaccinController.value!.marketingStart!
                            : EnsDateUtils.minimalInputDate,
                        lastDate: _vaccinController.value?.marketingEnd != null
                            ? _vaccinController.value!.marketingEnd!
                            : DateTime.now(),
                      ),
                      const SizedBox(height: 32),
                      _LotInput(
                        lotNumberController: _lotNumberController,
                        isEditing: _editingVaccination != null,
                        isLotFromScan: _isLotFromScan,
                        onTextDidChange: (value) => setState(() {
                          _isLotFromScan = _lotFromScan == value;
                        }),
                      ),
                      const SizedBox(height: 32),
                      _TypeAdministration(
                        typeOfAdministration: _typeOfAdministration,
                        updateTypeOfAdministration: (TypeOfAdministration typeOfAdministration) {
                          if (_typeOfAdministration != typeOfAdministration) {
                            if (_editingVaccination != null) {
                              context.tagAction(TagsVaccinations.tag_285_input_type_vaccin);
                            }
                            setState(() {
                              _typeOfAdministration = typeOfAdministration;
                            });
                          }
                        },
                      ),
                      const SizedBox(height: 32),
                      _NomVaccinateurinput(
                        vaccinateurKey: GlobalKey(),
                        nomVaccinateurController: _nomVaccinateurController,
                        displayedNomVaccinateurController: _displayedNomVaccinateurController,
                        nomVaccinateurFocus: _nomVaccinateurFocus,
                        isEditing: _editingVaccination != null,
                      ),
                      EnsInkWell(
                        onTap: () async {
                          Navigator.pushNamed(
                            context,
                            RecherchePsScreen.routeName,
                            arguments: RecherchePsScreenArgument(psSearchType: RecherchePSType.SELECTION_VACCINATEUR),
                          );
                        },
                        child: ConstrainedBox(
                          constraints: const BoxConstraints(minHeight: 48),
                          child: const Row(
                            children: [
                              EnsSvg(EnsImages.ic_search, color: EnsColors.primary),
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 8),
                                  child: Text(
                                    'Rechercher un professionnel de santé',
                                    style: EnsTextStyle.text14_w700_normal_primary,
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 32),
                      _CommentaireInput(
                        commentController: _commentController,
                        isEditing: _editingVaccination != null,
                      ),
                      const SizedBox(height: 40),
                      Row(
                        children: [
                          Expanded(
                            child: EnsButton(
                              label: 'Valider',
                              onTap: () {
                                context.tagAction(
                                  _editingVaccination != null
                                      ? TagsVaccinations.tag_2489_button_valider_modification_vaccination
                                      : TagsVaccinations.tag_468_button_valider_ajout_vaccination,
                                );
                                vm.resetVaccinationScanner();
                                _validateAndSend(vm.editVaccination);
                              },
                              isLoading: vm.editStatus.isLoading(),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 36),
                    ],
                  ),
                ),
              ),
      ),
    );
  }

  bool _noDataEntered() {
    return _vaccinController.value == null &&
        _dateController.value == null &&
        _lotNumberController.text.isEmpty &&
        _nomVaccinateurController.value == null &&
        _commentController.text.isEmpty;
  }

  Future<void> _onPopInvoked(NavigatorState navigator, BuildContext context) async {
    if (_noDataEntered()) {
      navigator.pop();
    } else {
      if (_editingVaccination == null) {
        context.tagAction(TagsVaccinations.tag_276_popin_ajouter_vaccination_quitter);
      }
      final shouldPop = await NavigationUtils.onWillPop(
        context,
        'Quitter la page ?',
        'En quittant cette page, toutes vos modifications seront perdues.',
        'Quitter',
        positiveButtonHandler: () {
          widget.vm.resetVaccinationScanner();
          if (_editingVaccination == null) {
            context.tagAction(TagsVaccinations.tag_277_button_ajouter_vaccination_quitter_valider);
          }
        },
        negativeButtonHandler: () {
          if (_editingVaccination == null) {
            context.tagAction(TagsVaccinations.tag_278_button_ajouter_vaccination_quitter_annuler);
          }
        },
      );
      if (shouldPop) {
        navigator.pop();
      }
    }
  }

  void _initFromEditingVaccinationArguments(EnsVaccination editingVaccination, List<EnsVaccin> vaccins) {
    _editingVaccination = EditingVaccination(
      id: editingVaccination.id,
      name: editingVaccination.name,
      vaccineRefId: editingVaccination.refId,
      effectiveTime: editingVaccination.effectiveTime,
      typeOfAdministration: editingVaccination.typeOfAdministration,
      nomVaccinateur: editingVaccination.nomVaccinateur,
      comment: editingVaccination.comment,
      lotNumber: editingVaccination.lotNumber,
      pathologies: editingVaccination.pathologies,
    );

    _vaccinController.value = vaccins.firstWhereOrNull(
      (vaccin) => vaccin.vaccineRefId == editingVaccination.refId,
    );
    _displayedNomVaccinController.text = _vaccinController.value?.label ?? '';
    _dateController.value = _editingVaccination!.effectiveTime;
    _lotNumberController.text = _editingVaccination!.lotNumber ?? '';
    _nomVaccinateurController.value = _editingVaccination!.nomVaccinateur ?? '';
    _displayedNomVaccinateurController.text = _editingVaccination!.nomVaccinateur ?? '';
    _commentController.text = _editingVaccination!.comment ?? '';
    _typeOfAdministration = _editingVaccination!.typeOfAdministration ?? TypeOfAdministration.IMMUNIZ;
  }

  void _initFromScanArguments(VaccinFromCodeCip arguments) {
    if (arguments.vaccinFromCip != null) {
      _isVaccinFromScan = true;
      _vaccinFromScan = arguments.vaccinFromCip;
      _vaccinController.value = arguments.vaccinFromCip;
      _displayedNomVaccinController.text = arguments.vaccinFromCip!.label;
    }

    if (arguments.lotFromScan != null) {
      _isLotFromScan = true;
      _lotFromScan = arguments.lotFromScan;
      _lotNumberController.text = arguments.lotFromScan!;
    }
  }

  void _displayInfoBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return const EnsInformationWithIllustrationBottomSheet(
          title: 'Ajouter automatiquement le vaccin',
          description: 'Je scanne le QR code situé sur le côté de la boîte du vaccin pour l’ajouter automatiquement.',
          asset: EnsImages.datamatrix,
        );
      },
    );
  }

  void _validateAndSend(void Function(EditingVaccination, bool) editVaccination) {
    final validation = _formKey.validate();
    validation.onValid(() {
      editVaccination(
        EditingVaccination(
          id: _editingVaccination?.id,
          effectiveTime: _dateController.value,
          vaccineRefId: _vaccinController.value?.vaccineRefId,
          lotNumber: _lotNumberController.text,
          typeOfAdministration: _typeOfAdministration,
          nomVaccinateur: _nomVaccinateurController.value,
          comment: _commentController.text,
          pathologies: _vaccinController.value?.pathologies,
        ),
        _editingVaccination != null,
      );
    }).onInvalid(() {
      FormHelper.handleValidationError(
        shakeCurrentState: _shakeKey.currentState,
        scrollController: _scrollController,
      );
    });
  }
}

class _NomVaccinateurinput extends StatelessWidget {
  final GlobalKey<State<StatefulWidget>> vaccinateurKey;
  final ValueNotifier<String?> nomVaccinateurController;
  final TextEditingController displayedNomVaccinateurController;
  final FocusNode nomVaccinateurFocus;
  final bool isEditing;

  const _NomVaccinateurinput({
    required this.vaccinateurKey,
    required this.nomVaccinateurController,
    required this.displayedNomVaccinateurController,
    required this.nomVaccinateurFocus,
    required this.isEditing,
  });

  @override
  Widget build(BuildContext context) {
    return StoreConnector<EnsState, NomVaccinateurInputViewModel>(
      converter: (store) => NomVaccinateurInputViewModel.from(store),
      distinct: true,
      onInit: (store) {
        store.dispatch(FetchProfessionnelsDeSanteAction());
      },
      onDidChange: (oldVm, vm) {
        final vaccinateur = vm.nomVaccinateur;
        if (oldVm?.nomVaccinateur != vaccinateur && vaccinateur != null) {
          nomVaccinateurController.value = vaccinateur;
        }
      },
      builder: (context, vm) => EnsAutocompleteInput<String?>(
        key: vaccinateurKey,
        data: vm.professionnelsDeSanteMap,
        label: 'Nom du vaccinateur (facultatif)',
        hint: 'Sélectionnez une valeur',
        controller: nomVaccinateurController,
        displayedLabelController: displayedNomVaccinateurController,
        emptyErrorText: 'Saisir le nom du vaccinateur',
        context: context,
        info: 'Ex : Dr Martin',
        focusNode: nomVaccinateurFocus,
        isSelectionRequired: false,
        emptyStateWording: 'Aucun professionnel de santé correspondant',
        onTap: () {
          if (isEditing) {
            context.tagAction(TagsVaccinations.tag_282_input_nom_vaccinateur);
          }
        },
      ),
    );
  }
}

class _CommentaireInput extends StatelessWidget {
  final TextEditingController commentController;
  final bool isEditing;

  const _CommentaireInput({
    required this.commentController,
    required this.isEditing,
  });

  @override
  Widget build(BuildContext context) {
    return CountedTextInput.withBorders(
      label: 'Commentaire (facultatif)',
      description: 'Ex. : Contexte, effets secondaires observés\u2026',
      controller: commentController,
      maxCharacters: _FormState._COMMENT_MAX_CHARACTERS,
      maxLines: 7,
      validatorCallback: (value) => limitCharactersFieldValidator(
        value: value,
        maxCharacters: _FormState._COMMENT_MAX_CHARACTERS,
        errorMessage: 'le commentaire est limité à ${_FormState._COMMENT_MAX_CHARACTERS} caractères',
      ),
      textInputAction: TextInputAction.newline,
      onFocus: () {
        if (isEditing) {
          context.tagAction(TagsVaccinations.tag_189_input_ajout_commentaire);
        }
      },
    );
  }
}

class _LotInput extends StatelessWidget {
  final TextEditingController lotNumberController;
  final bool isEditing;
  final bool isLotFromScan;
  final void Function(String)? onTextDidChange;

  const _LotInput({
    required this.lotNumberController,
    required this.isEditing,
    required this.isLotFromScan,
    required this.onTextDidChange,
  });

  @override
  Widget build(BuildContext context) {
    return CountedTextInput.withBorders(
      label: 'Lot du vaccin (facultatif)',
      description: !isLotFromScan ? 'Ex. : A5247' : null,
      descriptionWidget: isLotFromScan ? ValidateFieldInfoText() : null,
      displayCounter: !isLotFromScan,
      controller: lotNumberController,
      maxCharacters: _FormState._LOT_MAX_CHARACTERS,
      validatorCallback: (value) => limitCharactersFieldValidator(
        value: value,
        maxCharacters: _FormState._LOT_MAX_CHARACTERS,
        errorMessage: 'Le lot est limité à ${_FormState._LOT_MAX_CHARACTERS} caractères',
      ),
      onFocus: () {
        if (isEditing) context.tagAction(TagsVaccinations.tag_283_input_lot_vaccin);
      },
      isSuccess: isLotFromScan,
      onTextDidChange: onTextDidChange,
    );
  }
}

class _DateInput extends StatelessWidget {
  final ValueNotifier<DateTime?> dateController;
  final GlobalKey<ShakeWidgetState> shakeKey;
  final ScrollController scrollController;
  final EditingVaccination? editingVaccination;
  final DateTime? birthDate;
  final AllPurposesStatus editStatus;
  final DateTime? firstDate;
  final DateTime? lastDate;

  const _DateInput({
    required this.dateController,
    required this.shakeKey,
    required this.scrollController,
    required this.editingVaccination,
    required this.birthDate,
    required this.editStatus,
    required this.firstDate,
    required this.lastDate,
  });

  @override
  Widget build(BuildContext context) {
    return EnsInputDate(
      context: context,
      label: 'Date de vaccination',
      controller: dateController,
      validator: (value) => EnsInputDateValidator().validateDateVaccination(
        dateController.value,
        anteriorDate: birthDate,
        anteriorDateErrorText: 'La date de début du vaccin doit être supérieure à la date de naissance.',
        editVaccinationStatus: editStatus,
        firstDate: firstDate,
        lastDate: lastDate,
        onValidationFailed: () {
          dateController.value = null;
          FormHelper.handleValidationError(
            shakeCurrentState: shakeKey.currentState,
            scrollController: scrollController,
          );
        },
      ),
      firstDate: firstDate,
      lastDate: lastDate,
      onTap: () {
        if (editingVaccination != null) {
          context.tagAction(TagsVaccinations.tag_284_input_date_vaccin);
          context.tagAction(TagsVaccinations.tag_967_input_date_formulaire);
        }
      },
    );
  }
}

class _TypeAdministration extends StatelessWidget {
  final TypeOfAdministration typeOfAdministration;
  final void Function(TypeOfAdministration) updateTypeOfAdministration;

  const _TypeAdministration({required this.typeOfAdministration, required this.updateTypeOfAdministration});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Text('Type de vaccination', style: EnsTextStyle.text16_w600_title),
        const SizedBox(height: 16),
        EnsRadioButton.card(
          value: TypeOfAdministration.INITIMMUNIZ,
          groupValue: typeOfAdministration,
          label: 'Première vaccination',
          defaultLabelStyle: EnsTextStyle.text16_w600_title,
          onSelected: () => updateTypeOfAdministration(TypeOfAdministration.INITIMMUNIZ),
        ),
        const SizedBox(height: 16),
        EnsRadioButton.card(
          value: TypeOfAdministration.BOOSTER,
          groupValue: typeOfAdministration,
          label: 'Rappel de vaccination',
          defaultLabelStyle: EnsTextStyle.text16_w600_title,
          onSelected: () => updateTypeOfAdministration(TypeOfAdministration.BOOSTER),
        ),
        const SizedBox(height: 16),
        EnsRadioButton.card(
          value: TypeOfAdministration.IMMUNIZ,
          groupValue: typeOfAdministration,
          label: 'Je ne sais pas',
          defaultLabelStyle: EnsTextStyle.text16_w600_title,
          onSelected: () => updateTypeOfAdministration(TypeOfAdministration.IMMUNIZ),
        ),
      ],
    );
  }
}

class _NomVaccinInput extends StatelessWidget {
  final GlobalKey<State<StatefulWidget>> vaccinKey;
  final Map<EnsAutocompleteInputDataDisplayModel, EnsVaccin> vaccinInfoMap;
  final ValueNotifier<EnsVaccin?> nomVaccinController;
  final TextEditingController displayedNomVaccinController;
  final FocusNode nomVaccinFocus;
  final bool isEditing;
  final void Function(EnsAutocompleteInputDataDisplayModel) onSuggestionSelected;
  final bool isVaccinFromScan;

  const _NomVaccinInput({
    required this.vaccinKey,
    required this.vaccinInfoMap,
    required this.nomVaccinController,
    required this.displayedNomVaccinController,
    required this.nomVaccinFocus,
    required this.isEditing,
    required this.onSuggestionSelected,
    required this.isVaccinFromScan,
  });

  @override
  Widget build(BuildContext context) {
    return EnsAutocompleteInput<EnsVaccin?>(
      key: vaccinKey,
      data: vaccinInfoMap,
      label: 'Nom de la maladie ou du vaccin',
      info: !isVaccinFromScan ? 'Ex. : VAXIGRIPTETRA ou Grippe' : null,
      infoWidget: isVaccinFromScan ? ValidateFieldInfoText() : null,
      hint: 'Sélectionnez une valeur',
      controller: nomVaccinController,
      displayedLabelController: displayedNomVaccinController,
      emptyErrorText: 'Sélectionner un vaccin de la liste',
      context: context,
      focusNode: nomVaccinFocus,
      emptyStateWording: 'Aucun vaccin correspondant',
      maxCharacters: 50,
      onTap: () {
        if (isEditing) {
          context.tagAction(TagsVaccinations.tag_282_input_nom_vaccinateur);
        }
      },
      selector: EditVaccinationScreenViewModel.specificSelector,
      insertOnTop: EditVaccinationScreenViewModel.labelOrPathologiesStartWithPattern,
      isSuccess: isVaccinFromScan,
      onSuggestionSelected: onSuggestionSelected,
    );
  }
}
