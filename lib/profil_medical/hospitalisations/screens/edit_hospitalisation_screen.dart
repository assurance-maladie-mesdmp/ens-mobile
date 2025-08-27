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
import 'package:fr_cnamts_ens/profil_medical/domain/models/ens_duration.dart';
import 'package:fr_cnamts_ens/profil_medical/domain/models/ens_pml_section.dart';
import 'package:fr_cnamts_ens/profil_medical/hospitalisations/domain/models/editing_hospitalisation.dart';
import 'package:fr_cnamts_ens/profil_medical/hospitalisations/screens/viewModels/edit_hospitalisation_screen_view_model.dart';
import 'package:fr_cnamts_ens/profil_medical/screens/widgets/form_document_section.dart';
import 'package:fr_cnamts_ens/profils_rattaches/screens/profils_utils.dart';
import 'package:fr_cnamts_ens/tags/pml/tags_hospitalisations.dart';
import 'package:fr_cnamts_ens/ui/widgets/champs_obligatoires_widget.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_form.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_pop_scope.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/counted_text_input.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/ens_date_input_fields.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/ens_date_input_fields_validator.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/ens_hospitalisation_duration_input_fields.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/form_helper.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/validators.dart';
import 'package:fr_cnamts_ens/ui/widgets/shake_widget.dart';
import 'package:fr_cnamts_ens/utils/extensions/form_extensions.dart';
import 'package:fr_cnamts_ens/utils/extensions/value_notifier_extensions.dart';
import 'package:fr_cnamts_ens/utils/navigation_utils.dart';

class EditHospitalisationScreen extends StatelessWidget {
  static const routeName = '/editHospitalisation';

  @override
  Widget build(BuildContext context) {
    final hospitalisationId = ModalRoute.of(context)!.settings.arguments as String?;

    return StoreConnector<EnsState, EditHospitalisationScreenViewModel>(
      converter: (store) => EditHospitalisationScreenViewModel.from(store, hospitalisationId: hospitalisationId),
      onInitialBuild: (vm) {
        GuestModeHelper.showGuestModeBottomSheetWithConnexionIfGuestMode(
          context: context,
          onAuthenticatedMode: () => _tagPage(context, vm.isEditingHospitalisation),
        );
      },
      onWillChange: (oldVm, vm) {
        if (oldVm?.editStatus.isNotSuccess() == true && vm.editStatus.isSuccess()) {
          Navigator.pop(context);
        }
      },
      distinct: true,
      builder: (context, vm) {
        return _Form(vm);
      },
    );
  }

  void _tagPage(BuildContext context, bool isEditingHospitalisation) {
    if (isEditingHospitalisation) {
      context.tagAction(TagsHospitalisations.tag_431_popin_modif_hospitalisation);
    } else {
      context.tagAction(TagsHospitalisations.tag_429_popin_ajout_hospitalisation);
    }
  }
}

class _Form extends StatefulWidget {
  final EditHospitalisationScreenViewModel vm;

  const _Form(this.vm);

  @override
  State<_Form> createState() => _FormState();
}

class _FormState extends State<_Form> {
  static const _COMMENT_MAX_CHARACTERS = 3000;

  final _scrollController = ScrollController();
  final _nameTextInputController = TextEditingController();
  final _commentController = TextEditingController();
  final _startDateController = ValueNotifier<EnsDate?>(null);
  final _durationController = ValueNotifier<EnsHospitalisationDuration?>(null);

  final _formKey = GlobalKey<FormState>();
  final _shakeKey = GlobalKey<ShakeWidgetState>();
  final _hospitalisationLabelFocus = FocusNode();

  List<LinkedDocumentDisplayModel> _linkedDocumentsFromExistingMES = [];

  @override
  void initState() {
    super.initState();
    final hospitalisation = widget.vm.initialHospitalisation;
    _linkedDocumentsFromExistingMES = widget.vm.linkedDocsDisplayModels;
    if (hospitalisation != null) {
      _nameTextInputController.text = hospitalisation.name;
      _commentController.text = hospitalisation.comment ?? '';
      _startDateController.value = hospitalisation.startDate;
      _durationController.value = hospitalisation.duration;
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _nameTextInputController.dispose();
    _startDateController.dispose();
    _commentController.dispose();
    _durationController.dispose();
    _hospitalisationLabelFocus.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return EnsPopScope.shouldNotPop(
      onPopInvoked: (navigator) async {
        await _onPopInvoked(navigator, context);
      },
      child: Scaffold(
        appBar: EnsAppBarSubLevel(
          title: widget.vm.isEditingHospitalisation ? 'Modifier une hospitalisation' : 'Ajouter une hospitalisation',
        ),
        body: SafeArea(
          child: EnsForm(
            formKey: _formKey,
            shakeKey: _shakeKey,
            scrollController: _scrollController,
            padding: EdgeInsets.zero,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 32),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    children: [
                      ChampsObligatoiresFormTextWidget(
                        displayFullText: true,
                        focusNode: _hospitalisationLabelFocus,
                      ),
                      const SizedBox(height: 32),
                      _NameInput(nameTextInputController: _nameTextInputController),
                      const SizedBox(height: 32),
                      _DateDebutInput(startDateController: _startDateController, birthDate: widget.vm.birthDate),
                      const SizedBox(height: 32),
                      _DurationInput(durationController: _durationController),
                      const SizedBox(height: 32),
                      _CommentaireInput(commentController: _commentController, maxCaracteres: _COMMENT_MAX_CHARACTERS),
                    ],
                  ),
                ),
                const SizedBox(height: 32),
                _LinkedDocuments(
                  linkedDocumentsFromExistingMES: _linkedDocumentsFromExistingMES,
                  linkedDocumentsToCreate: widget.vm.linkedDocumentsToCreate,
                  onDocumentsSelected: (selectedDocs) {
                    setState(
                      () {
                        _linkedDocumentsFromExistingMES = selectedDocs
                            .map(
                              (doc) => LinkedDocumentDisplayModel(doc.id, doc.title),
                            )
                            .toList();
                      },
                    );
                  },
                  onRemoveLinkedDocument: (linkedDocumentId) {
                    setState(() {
                      _linkedDocumentsFromExistingMES.removeWhere((dm) => linkedDocumentId == dm.id);
                    });
                  },
                  onRemoveDocumentEditionCreation: widget.vm.removeDocument,
                  interruptionServiceSnackbarMessage: widget.vm.interruptionServiceSnackbarMessage,
                  profilType: widget.vm.profilType,
                ),
                const SizedBox(height: 32),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: EnsButton(
                    label: 'Valider',
                    onTap: () {
                      _tagValidateClick(widget.vm.isEditingHospitalisation);
                      _validateAndSend(editHospitalisation: widget.vm.editHospitalisation);
                    },
                    isLoading: widget.vm.editStatus.isLoading(),
                  ),
                ),
                const SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _onPopInvoked(NavigatorState navigator, BuildContext context) async {
    if (_noDataEntered()) {
      navigator.pop();
    } else {
      final shouldPop = await NavigationUtils.onWillPop(
        context,
        'Quitter la page ?',
        'En quittant cette page, toutes vos modifications seront perdues.',
        'Quitter',
        positiveButtonHandler: () {
          widget.vm.cleanDocumentToCreate();
        },
      );
      if (shouldPop) {
        navigator.pop();
      }
    }
  }

  bool _noDataEntered() {
    return _nameTextInputController.text.isEmpty && _startDateController.isNull() && _commentController.text.isEmpty;
  }

  void _tagValidateClick(bool isEditingHospitalisation) {
    if (isEditingHospitalisation) {
      context.tagAction(TagsHospitalisations.tag_432_button_valider_modification_hospitalisation);
    } else {
      context.tagAction(TagsHospitalisations.tag_430_button_valider_ajout_hospitalisation);
    }
  }

  void _validateAndSend({required void Function(EditingHospitalisation) editHospitalisation}) {
    final validation = _formKey.validate();
    validation.onValid(() {
      editHospitalisation(
        EditingHospitalisation(
          name: _nameTextInputController.text,
          comment: _commentController.text,
          startDay: _startDateController.value!.day,
          startMonth: _startDateController.value!.month,
          startYear: _startDateController.value!.year,
          duration: _durationController.value?.duration,
          durationUnit: _durationController.value?.unit,
          linkedDocumentsIds: _linkedDocumentsFromExistingMES.map((dm) => dm.id).toList(),
        ),
      );
    }).onInvalid(() {
      FormHelper.handleValidationError(
        scrollController: _scrollController,
        shakeCurrentState: _shakeKey.currentState,
        isAccessibleNavigationEnabled: WidgetsBinding.instance.accessibilityFeatures.accessibleNavigation,
        focusNode: _hospitalisationLabelFocus,
      );
    });
  }
}

class _CommentaireInput extends StatelessWidget {
  final TextEditingController commentController;
  final int maxCaracteres;

  const _CommentaireInput({required this.commentController, required this.maxCaracteres});

  @override
  Widget build(BuildContext context) {
    return CountedTextInput.withBorders(
      label: 'Informations complémentaires (facultatif)',
      hint: 'Ex. : posologie, maladie associée, effets secondaires\u2026',
      controller: commentController,
      maxCharacters: maxCaracteres,
      maxLines: 7,
      validatorCallback: (value) => limitCharactersFieldValidator(
        value: value,
        maxCharacters: maxCaracteres,
        errorMessage: 'les informations complémentaires sont limitées à $maxCaracteres caractères',
      ),
      textInputAction: TextInputAction.newline,
    );
  }
}

class _DurationInput extends StatelessWidget {
  final ValueNotifier<EnsHospitalisationDuration?> durationController;

  const _DurationInput({required this.durationController});

  @override
  Widget build(BuildContext context) {
    return EnsHospitalisationDurationInputField(
      context: context,
      label: 'Durée du séjour (facultatif)',
      controller: durationController,
      initialValue: durationController.value,
    );
  }
}

class _DateDebutInput extends StatelessWidget {
  final ValueNotifier<EnsDate?> startDateController;
  final DateTime? birthDate;

  const _DateDebutInput({
    required this.startDateController,
    required this.birthDate,
  });

  @override
  Widget build(BuildContext context) {
    return EnsDateInputFields(
      label: 'Date d\'admission (année obligatoire)',
      controller: startDateController,
      validator: (value) => EnsDateInputFieldsValidator().validate(
        value,
        anteriorDate: birthDate,
        anteriorDateErrorText: 'Saisir une date de début d\'hospitalisation postérieure à la date de naissance',
      ),
      initialValue: startDateController.value,
    );
  }
}

class _NameInput extends StatelessWidget {
  final TextEditingController nameTextInputController;

  const _NameInput({required this.nameTextInputController});

  @override
  Widget build(BuildContext context) {
    return CountedTextInput.withBorders(
      label: 'Motif',
      description: 'Ex. : Appendicite',
      controller: nameTextInputController,
      deniedRegExp: '[@<>\\?:/€\\*#\\|%~\\+£\\\$!§¤]',
      validatorCallback: (value) => textFieldValidator(value: value, fieldLabel: 'le motif'),
    );
  }
}

class _LinkedDocuments extends StatelessWidget {
  final List<LinkedDocumentDisplayModel> linkedDocumentsFromExistingMES;
  final List<DocumentEditionCreation> linkedDocumentsToCreate;
  final void Function(List<EnsDocument>) onDocumentsSelected;
  final void Function(String) onRemoveLinkedDocument;
  final void Function(DocumentEditionCreation) onRemoveDocumentEditionCreation;
  final String? interruptionServiceSnackbarMessage;
  final ProfilType profilType;

  const _LinkedDocuments({
    required this.linkedDocumentsFromExistingMES,
    required this.linkedDocumentsToCreate,
    required this.onDocumentsSelected,
    required this.onRemoveLinkedDocument,
    required this.onRemoveDocumentEditionCreation,
    required this.interruptionServiceSnackbarMessage,
    required this.profilType,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        child: FormDocumentsSection(
          linkedDocumentsFromExistingMES: linkedDocumentsFromExistingMES,
          linkedDocumentToCreate: linkedDocumentsToCreate,
          onDocumentSelected: onDocumentsSelected,
          onRemoveLinkedDoc: onRemoveLinkedDocument,
          onRemoveDocumentEditionCreation: onRemoveDocumentEditionCreation,
          displayLocation: EnsPmlSection.HOSPITALISATIONS,
          interruptionServiceSnackbarMessage: interruptionServiceSnackbarMessage,
          profilType: profilType,
        ),
      ),
    );
  }
}
