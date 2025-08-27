/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/documents/domain/models/ens_document.dart';
import 'package:fr_cnamts_ens/guestmode/guest_mode_helper.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/domain/models/ens_date.dart';
import 'package:fr_cnamts_ens/profil_medical/domain/models/ens_pml_section.dart';
import 'package:fr_cnamts_ens/profil_medical/maladies/domain/models/editing_maladie.dart';
import 'package:fr_cnamts_ens/profil_medical/maladies/screen/viewModels/edit_maladie_screen_view_model.dart';
import 'package:fr_cnamts_ens/profil_medical/maladies/screen/widget/link_traitements_section_widget.dart';
import 'package:fr_cnamts_ens/profil_medical/screens/viewmodels/link_traitement_display_model.dart';
import 'package:fr_cnamts_ens/profil_medical/screens/widgets/form_document_section.dart';
import 'package:fr_cnamts_ens/profil_medical/traitement/domain/models/traitement_temporaire.dart';
import 'package:fr_cnamts_ens/tags/pml/tags_incitation.dart';
import 'package:fr_cnamts_ens/tags/pml/tags_maladies.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/widgets/champs_obligatoires_widget.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_checkbox_title_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_form.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_pop_scope.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/counted_text_input.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/ens_date_input_fields.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/ens_date_input_fields_validator.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/validators.dart';
import 'package:fr_cnamts_ens/ui/widgets/shake_widget.dart';
import 'package:fr_cnamts_ens/utils/extensions/form_extensions.dart';
import 'package:fr_cnamts_ens/utils/extensions/value_notifier_extensions.dart';
import 'package:fr_cnamts_ens/utils/navigation_utils.dart';

class EditMaladieScreen extends StatelessWidget {
  static const routeName = '/editMaladie';

  final _shakeKey = GlobalKey<ShakeWidgetState>();
  final _nameTextInputController = TextEditingController();
  final _startDateController = ValueNotifier<EnsDate?>(null);
  final _endDateController = ValueNotifier<EnsDate?>(null);
  final _commentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final argument = ModalRoute.of(context)!.settings.arguments as EditMaladieScreenArguments?;

    return ShakeWidget(
      key: _shakeKey,
      child: StoreConnector<EnsState, EditMaladieScreenViewModel>(
        converter: (store) => EditMaladieScreenViewModel.from(store: store, maladieId: argument?.maladieId),
        onWillChange: (oldVm, vm) {
          if (oldVm?.editStatus.isNotSuccess() == true && vm.editStatus.isSuccess()) {
            Navigator.pop(context);
          }
        },
        onInitialBuild: (vm) {
          GuestModeHelper.showGuestModeBottomSheetWithConnexionIfGuestMode(
            context: context,
            onAuthenticatedMode: () => _tagPage(context, argument?.fromIncitation ?? false, vm.isEditingMaladie),
          );
        },
        distinct: true,
        builder: (_, vm) => EnsPopScope.shouldNotPop(
          onPopInvoked: (navigator) async {
            if (_noDataEntered() && vm.linkedDocumentsToCreate.isEmpty) {
              navigator.pop();
            } else {
              _tagConfirmQuitAddMaladiePop(context, vm.isEditingMaladie);
              final shouldPop = await NavigationUtils.onWillPop(
                context,
                'Quitter la page ?',
                'En quittant cette page, toutes vos modifications seront perdues.',
                'Quitter',
                positiveButtonHandler: () {
                  _tagValidateQuitAddMaladieClick(context, vm.isEditingMaladie);
                  vm.cleanEditState();
                },
                negativeButtonHandler: () {
                  _tagCancelQuitAddMaladieClick(context, vm.isEditingMaladie);
                },
              );
              if (shouldPop) {
                navigator.pop();
              }
            }
          },
          child: Scaffold(
            appBar: EnsAppBarSubLevel(
              title: vm.isEditingMaladie
                  ? 'Modifier une maladie \nou sujet de santé'
                  : 'Ajouter une maladie \nou sujet de santé',
            ),
            body: _Form(
              _shakeKey,
              _nameTextInputController,
              _startDateController,
              _endDateController,
              _commentController,
              argument?.fromIncitation,
              vm,
            ),
          ),
        ),
      ),
    );
  }

  void _tagPage(
    BuildContext context,
    bool fromIncitation,
    bool isEditingMaladie,
  ) {
    if (fromIncitation) {
      context.tagAction(TagsIncitation.tag_918_popin_ajout_maladie);
    } else {
      if (isEditingMaladie) {
        context.tagAction(TagsMaladies.tag_200_maladie_modification_maladie);
      } else {
        context.tagAction(TagsMaladies.tag_194_maladies_ajout_maladie);
      }
    }
  }

  bool _noDataEntered() {
    return _nameTextInputController.text.isEmpty &&
        _startDateController.isNull() &&
        _endDateController.isNull() &&
        _commentController.text.isEmpty;
  }

  void _tagConfirmQuitAddMaladiePop(BuildContext context, bool isEditingMaladie) {
    if (isEditingMaladie) {
      context.tagAction(TagsMaladies.tag_195_popin_ajouter_une_maladie_quitter);
    }
  }

  void _tagValidateQuitAddMaladieClick(BuildContext context, bool isEditingMaladie) {
    if (!isEditingMaladie) {
      context.tagAction(TagsMaladies.tag_196_button_ajouter_une_maladie_quitter_valider);
    }
  }

  void _tagCancelQuitAddMaladieClick(BuildContext context, bool isEditingMaladie) {
    if (!isEditingMaladie) {
      context.tagAction(TagsMaladies.tag_197_button_ajouter_une_maladie_quitter_annuler);
    }
  }
}

class _Form extends StatefulWidget {
  final GlobalKey<ShakeWidgetState> _shakeKey;
  final TextEditingController _nameTextInputController;
  final ValueNotifier<EnsDate?> _startDateController;
  final ValueNotifier<EnsDate?> _endDateController;
  final TextEditingController _commentController;
  final bool? _fromIncitation;
  final EditMaladieScreenViewModel vm;

  const _Form(
    this._shakeKey,
    this._nameTextInputController,
    this._startDateController,
    this._endDateController,
    this._commentController,
    this._fromIncitation,
    this.vm,
  );

  @override
  State<_Form> createState() => _FormState();
}

class _FormState extends State<_Form> {
  final _formKey = GlobalKey<FormState>();
  final _shakeKey = GlobalKey<ShakeWidgetState>();
  final _scrollController = ScrollController();
  bool _isActiveMaladie = true;
  List<LinkedDocumentDisplayModel> _linkedDocumentsFromExistingMES = [];
  final List<TraitementTemporaire> _listTraitementTemporaires = [];
  List<LinkedTraitementDisplayModel> _linkedTraitementsFromExistingMES = [];
  String? _dateCustomErrorText;
  final _maladieLabelFocus = FocusNode();

  @override
  void initState() {
    super.initState();
    _isActiveMaladie = widget.vm.initialActiveMaladieStatus;
    _linkedDocumentsFromExistingMES = widget.vm.linkedDocumentDisplayModels;
    _linkedTraitementsFromExistingMES = widget.vm.linkedTraitementDisplayModels;
    final maladie = widget.vm.initialMaladie;
    if (maladie != null) {
      widget._nameTextInputController.text = maladie.name;
      widget._startDateController.value = maladie.startDate;
      widget._endDateController.value = maladie.endDate;
      widget._commentController.text = maladie.comment ?? '';
    }
  }

  @override
  void dispose() {
    _maladieLabelFocus.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return EnsForm(
      formKey: _formKey,
      shakeKey: _shakeKey,
      scrollController: _scrollController,
      padding: EdgeInsets.zero,
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _StandardInputWidget(
              startDateController: widget._startDateController,
              endDateController: widget._endDateController,
              commentController: widget._commentController,
              nameTextInputController: widget._nameTextInputController,
              isCurrentMaladie: _isActiveMaladie,
              creationMode: !widget.vm.isEditingMaladie,
              birthDate: widget.vm.birthDate,
              dateCustomErrorText: _dateCustomErrorText,
              onCurrentMaladieCheckBoxTap: () {
                setState(() {
                  _isActiveMaladie = !_isActiveMaladie;
                });
              },
              resetCustomErrorText: () {
                setState(() {
                  _dateCustomErrorText = null;
                });
              },
              maladieLabelFocus: _maladieLabelFocus,
            ),
            _LinkEntityInputWidget(
              vm: widget.vm,
              isUserTraitementsNotEmpty: widget.vm.isUserTraitementsNotEmpty,
              startDateController: widget._startDateController,
              linkedDocumentsFromExistingMES: _linkedDocumentsFromExistingMES,
              linkedTraitementsFromExistingMES: _linkedTraitementsFromExistingMES,
              listTraitementTemporaires: _listTraitementTemporaires,
              onDocumentSelected: (selectedDocs) {
                setState(
                  () {
                    _linkedDocumentsFromExistingMES =
                        selectedDocs.map((doc) => LinkedDocumentDisplayModel(doc.id, doc.title)).toList();
                  },
                );
              },
              onRemoveLinkedDoc: (linkedDocumentId) {
                setState(() {
                  _linkedDocumentsFromExistingMES.removeWhere((dm) => dm.id == linkedDocumentId);
                });
              },
              onRemoveLinkedTraitement: (linkedTraitementId) {
                setState(() {
                  _linkedTraitementsFromExistingMES.removeWhere((dm) => dm.id == linkedTraitementId);
                });
              },
              addTraitementTemporaire: (traitementTemporaire) {
                setState(() {
                  _listTraitementTemporaires.add(traitementTemporaire);
                });
              },
              onRemoveTraitementTemporaire: (traitement) {
                setState(() => _listTraitementTemporaires.remove(traitement));
              },
              onUpdateLinkedTraitementFromExistingMES: _updateLinkedTraitementFromExistingMES,
              setErrorTextForDateField: (String? errorText) {
                setState(() => _dateCustomErrorText = errorText);
                if (errorText != null) {
                  widget._shakeKey.currentState?.shake();
                  AccessibilityHelper.scrollToTopOrFocus(
                    scrollController: _scrollController,
                    focusNode: _maladieLabelFocus,
                  );
                }
              },
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: EnsButton(
                label: 'Valider',
                onTap: () {
                  _tagValidateClick(context, widget.vm.isEditingMaladie, widget._fromIncitation ?? false);
                  _validateAndSend(widget.vm);
                },
                isLoading: widget.vm.editStatus.isLoading(),
              ),
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  void _tagValidateClick(BuildContext context, bool isEditingMaladie, bool fromIncitation) {
    if (fromIncitation) {
      context.tagAction(TagsIncitation.tag_919_button_valider_ajout_maladie);
    } else {
      if (isEditingMaladie) {
        context.tagAction(TagsMaladies.tag_button_valider_modification_maladie);
      } else {
        context.tagAction(TagsMaladies.tag_button_valider_ajout_maladie);
      }
    }
  }

  void _updateLinkedTraitementFromExistingMES(List<LinkedTraitementDisplayModel> newLinkedTraitementDisplayModel) {
    setState(() {
      _linkedTraitementsFromExistingMES = newLinkedTraitementDisplayModel;
    });
  }

  void _validateAndSend(EditMaladieScreenViewModel vm) {
    final validation = _formKey.validate();
    validation.onValid(() {
      final editionResult = EditingMaladie(
        name: widget._nameTextInputController.text,
        comment: widget._commentController.text,
        startDay: widget._startDateController.value!.day,
        startMonth: widget._startDateController.value!.month,
        startYear: widget._startDateController.value!.year,
        endDay: (widget._endDateController.value != null && !_isActiveMaladie)
            ? widget._endDateController.value!.day
            : null,
        endMonth: (widget._endDateController.value != null && !_isActiveMaladie)
            ? widget._endDateController.value!.month
            : null,
        endYear: (widget._endDateController.value != null && !_isActiveMaladie)
            ? widget._endDateController.value!.year
            : null,
        linkedDocumentIds: _linkedDocumentsFromExistingMES.map((dm) => dm.id).toList(),
        linkedTraitementIds: _linkedTraitementsFromExistingMES.map((dm) => dm.id).toList(),
      );
      vm.editMaladie(editionResult, _listTraitementTemporaires);
    }).onInvalid(() {
      widget._shakeKey.currentState?.shake();
      AccessibilityHelper.scrollToTopOrFocus(
        scrollController: _scrollController,
        focusNode: _maladieLabelFocus,
      );
    });
  }
}

class _StandardInputWidget extends StatelessWidget {
  static const _COMMENT_MAX_CHARACTERS = 3000;

  final ValueNotifier<EnsDate?> startDateController;
  final ValueNotifier<EnsDate?> endDateController;
  final TextEditingController nameTextInputController;
  final TextEditingController commentController;
  final bool isCurrentMaladie;
  final bool creationMode;
  final String? dateCustomErrorText;
  final DateTime? birthDate;
  final void Function() onCurrentMaladieCheckBoxTap;
  final void Function() resetCustomErrorText;
  final FocusNode maladieLabelFocus;

  const _StandardInputWidget({
    required this.startDateController,
    required this.endDateController,
    required this.isCurrentMaladie,
    required this.nameTextInputController,
    required this.commentController,
    required this.creationMode,
    this.dateCustomErrorText,
    this.birthDate,
    required this.onCurrentMaladieCheckBoxTap,
    required this.resetCustomErrorText,
    required this.maladieLabelFocus,
  });

  @override
  Widget build(BuildContext context) {
    final dateInputFieldsValidator = EnsDateInputFieldsValidator();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(height: 32),
          ChampsObligatoiresFormTextWidget(
            displayFullText: true,
            focusNode: maladieLabelFocus,
          ),
          const SizedBox(height: 32),
          CountedTextInput.withBorders(
            label: 'Nom de la maladie ou du sujet de santé',
            description: 'Ex. : Eczéma',
            controller: nameTextInputController,
            deniedRegExp: '[@<>\\?:/€\\*#\\|%~\\+£\\\$!§¤]',
            validatorCallback: (value) => textFieldValidator(
              value: value,
              fieldLabel: 'le nom de la maladie ou du sujet de santé',
            ),
            onFocus: () {
              _tagInputNomMaladieClick(context);
            },
          ),
          const SizedBox(height: 8),
          EnsCheckboxTitleButton(
            value: isCurrentMaladie,
            onChange: (_) {
              onCurrentMaladieCheckBoxTap();
            },
            label: 'Maladie ou sujet de santé en cours',
          ),
          const SizedBox(height: 24),
          EnsDateInputFields(
            label: 'Date de début (année obligatoire)',
            controller: startDateController,
            validator: (value) {
              return dateInputFieldsValidator.validate(
                value,
                anteriorDate: birthDate,
                anteriorDateErrorText: 'La date de début de la maladie doit être supérieure à la date de naissance.',
              );
            },
            initialValue: startDateController.value,
            customErrorText: dateCustomErrorText,
            resetCustomErrorText: resetCustomErrorText,
          ),
          const SizedBox(height: 28),
          AnimatedSwitcher(
            duration: const Duration(milliseconds: 300),
            child: isCurrentMaladie
                ? const SizedBox()
                : Padding(
                    padding: const EdgeInsets.only(bottom: 28),
                    child: EnsDateInputFields(
                      label: 'Date de fin (année obligatoire)',
                      controller: endDateController,
                      validator: (value) => dateInputFieldsValidator.validate(
                        value,
                        anteriorDate: startDateController.value?.toDateTime(),
                      ),
                      initialValue: endDateController.value,
                    ),
                  ),
          ),
          CountedTextInput.withBorders(
            label: 'Informations complémentaires (facultatif)',
            hint: 'Ex. : sévérités, dates, praticiens rencontrés, diagnostic, épisodes médicaux\u2026',
            controller: commentController,
            maxCharacters: _COMMENT_MAX_CHARACTERS,
            maxLines: 7,
            validatorCallback: (value) => limitCharactersFieldValidator(
              value: value,
              maxCharacters: _COMMENT_MAX_CHARACTERS,
              errorMessage: 'les informations complémentaires sont limitées à $_COMMENT_MAX_CHARACTERS caractères',
            ),
            textInputAction: TextInputAction.newline,
            onFocus: () {
              _tagInputCommentaireClick(context);
            },
          ),
          const SizedBox(height: 24),
        ],
      ),
    );
  }

  void _tagInputNomMaladieClick(BuildContext context) {
    if (!creationMode) {
      context.tagAction(TagsMaladies.tag_201_input_nom_maladie);
    }
  }

  void _tagInputCommentaireClick(BuildContext context) {
    if (creationMode) {
      context.tagAction(TagsMaladies.tag_192_input_ajout_commentaire);
    }
  }
}

class _LinkEntityInputWidget extends StatelessWidget {
  final EditMaladieScreenViewModel vm;
  final bool isUserTraitementsNotEmpty;
  final ValueNotifier<EnsDate?> startDateController;
  final List<LinkedTraitementDisplayModel> linkedTraitementsFromExistingMES;
  final List<LinkedDocumentDisplayModel> linkedDocumentsFromExistingMES;
  final List<TraitementTemporaire> listTraitementTemporaires;
  final void Function(List<EnsDocument>) onDocumentSelected;
  final void Function(String) onRemoveLinkedDoc;
  final void Function(String) onRemoveLinkedTraitement;
  final void Function(TraitementTemporaire) onRemoveTraitementTemporaire;
  final void Function(List<LinkedTraitementDisplayModel>) onUpdateLinkedTraitementFromExistingMES;
  final void Function(TraitementTemporaire) addTraitementTemporaire;
  final void Function(String? errorText) setErrorTextForDateField;

  const _LinkEntityInputWidget({
    required this.vm,
    required this.isUserTraitementsNotEmpty,
    required this.startDateController,
    required this.linkedTraitementsFromExistingMES,
    required this.linkedDocumentsFromExistingMES,
    required this.listTraitementTemporaires,
    required this.onDocumentSelected,
    required this.onRemoveLinkedDoc,
    required this.onRemoveLinkedTraitement,
    required this.onRemoveTraitementTemporaire,
    required this.addTraitementTemporaire,
    required this.onUpdateLinkedTraitementFromExistingMES,
    required this.setErrorTextForDateField,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: LinkTraitementsSectionWidget(
                isUserTraitementsNotEmpty: isUserTraitementsNotEmpty,
                traitementsToCreateAndLink: listTraitementTemporaires,
                startDateController: startDateController,
                linkedTraitementsFromExistingMES: linkedTraitementsFromExistingMES,
                onRemoveLinkedTraitement: onRemoveLinkedTraitement,
                setErrorTextForDateField: setErrorTextForDateField,
                onUpdateLinkedTraitementFromExistingMES: onUpdateLinkedTraitementFromExistingMES,
                removeTempTraitement: onRemoveTraitementTemporaire,
                addTraitementTemporaire: addTraitementTemporaire,
              ),
            ),
            const Divider(
              height: 2,
              thickness: 1,
              color: EnsColors.neutral200,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: FormDocumentsSection(
                linkedDocumentsFromExistingMES: linkedDocumentsFromExistingMES,
                linkedDocumentToCreate: vm.linkedDocumentsToCreate,
                onDocumentSelected: onDocumentSelected,
                onRemoveLinkedDoc: onRemoveLinkedDoc,
                onRemoveDocumentEditionCreation: vm.removeDocument,
                displayLocation: EnsPmlSection.MALADIES,
                interruptionServiceSnackbarMessage: vm.interruptionServiceSnackbarMessage,
                profilType: vm.profilType,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AccessibilityHelper {
  static void scrollToTopOrFocus({
    required ScrollController scrollController,
    required FocusNode focusNode,
    Duration scrollDelay = const Duration(milliseconds: 300),
    Duration scrollDuration = const Duration(milliseconds: 300),
    Curve scrollCurve = Curves.fastOutSlowIn,
  }) {
    final isAccessibilityEnabled = WidgetsBinding.instance.accessibilityFeatures.accessibleNavigation;

    if (!isAccessibilityEnabled) {
      Future.delayed(scrollDelay).then((_) {
        scrollController.animateTo(
          0,
          duration: scrollDuration,
          curve: scrollCurve,
        );
      });
    } else {
      focusNode.requestFocus();
    }
  }
}
