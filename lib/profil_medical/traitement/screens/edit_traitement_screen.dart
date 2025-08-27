/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/guestmode/guest_mode_helper.dart';
import 'package:fr_cnamts_ens/infra/injection/ens_module_container.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/domain/models/ens_date.dart';
import 'package:fr_cnamts_ens/profil_medical/scanner/screens/scanner_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/traitement/domain/models/traitement_temporaire.dart';
import 'package:fr_cnamts_ens/profil_medical/traitement/redux/traitements_actions.dart';
import 'package:fr_cnamts_ens/profil_medical/traitement/screens/traitements_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/traitement/screens/viewModels/edit_traitement_screen_view_model.dart';
import 'package:fr_cnamts_ens/scanner/domain/type_scan.dart';
import 'package:fr_cnamts_ens/scanner/screens/widgets/scan_button.dart';
import 'package:fr_cnamts_ens/tags/pml/tags_incitation.dart';
import 'package:fr_cnamts_ens/tags/pml/tags_traitements.dart';
import 'package:fr_cnamts_ens/ui/utils/snackbar_utils.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/information_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/champs_obligatoires_widget.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_checkbox_title_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_form.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_info_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_pop_scope.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/counted_text_input.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/ens_date_input_fields.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/ens_date_input_fields_validator.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/validators.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';
import 'package:fr_cnamts_ens/ui/widgets/shake_widget.dart';
import 'package:fr_cnamts_ens/ui/widgets/skeletons.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:fr_cnamts_ens/utils/extensions/form_extensions.dart';
import 'package:fr_cnamts_ens/utils/extensions/value_notifier_extensions.dart';
import 'package:fr_cnamts_ens/utils/navigation_utils.dart';

class EditTraitementScreenArguments extends Equatable {
  final TraitementFormulaireMode launchMode;
  final bool fromIncitation;

  const EditTraitementScreenArguments({required this.launchMode, this.fromIncitation = false});

  @override
  List<Object?> get props => [launchMode, fromIncitation];
}

class EditTraitementScreen extends StatelessWidget {
  static const routeName = '/editTraitement';

  final _shakeKey = GlobalKey<ShakeWidgetState>();
  final _scrollController = ScrollController();
  final _nameTextInputController = TextEditingController();
  final _startDateController = ValueNotifier<EnsDate?>(null);
  final _endDateController = ValueNotifier<EnsDate?>(null);
  final _dosageController = TextEditingController();
  final _commentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final TraitementFormulaireMode launchMode =
        (ModalRoute.of(context)!.settings.arguments! as EditTraitementScreenArguments).launchMode;
    final bool fromIncitation =
        (ModalRoute.of(context)!.settings.arguments! as EditTraitementScreenArguments).fromIncitation;

    return StoreConnector<EnsState, EditTraitementScreenViewModel>(
      converter: (store) {
        return EditTraitementScreenViewModel(store: store, editionMode: launchMode);
      },
      onWillChange: (oldVm, vm) {
        _popIfSuccess(context, vm);
        if (oldVm?.isTraitementNameTruncated != true && vm.isTraitementNameTruncated) {
          _showSnackbarNomTronque(context);
        }
      },
      onInit: (store) {
        store.dispatch(InitTraitementEditionAction());
      },
      onInitialBuild: (vm) {
        GuestModeHelper.showGuestModeBottomSheetWithConnexionIfGuestMode(
          context: context,
          onAuthenticatedMode: () => _tagPage(context, vm, fromIncitation),
        );
        if (vm.isTraitementNameTruncated) {
          _showSnackbarNomTronque(context);
        }
      },
      distinct: true,
      builder: (_, vm) {
        return EnsPopScope.shouldNotPop(
          onPopInvoked: (navigator) async {
            if (_noDataEntered()) {
              navigator.pop();
            } else {
              _tagQuitAddTraitementPop(context, vm);
              final shouldPop = await NavigationUtils.onWillPop(
                context,
                'Quitter la page ?',
                'En quittant cette page, toutes vos modifications seront perdues.',
                'Quitter',
                positiveButtonHandler: () {
                  vm.resetTraitementScannerStatus();
                  _tagValidateQuitAddTraitementClick(context, vm);
                },
                negativeButtonHandler: () {
                  _tagCancelQuitAddTraitementClick(context, vm);
                },
              );
              if (shouldPop) {
                navigator.pop();
              }
            }
          },
          child: Scaffold(
            appBar: EnsAppBarSubLevel(
              title: vm.isInTraitementEditingMode ? 'Modifier un traitement' : 'Ajouter un traitement',
              action: EnsInfoButton(
                onTap: () {
                  context.tagAction(TagsTraitements.tag_2366_button_information_traitement_formulaire);
                  _displayInfoBottomSheet(context);
                },
              ),
            ),
            body: _Content(
              vm: vm,
              shakeKey: _shakeKey,
              scrollController: _scrollController,
              nameTextInputController: _nameTextInputController,
              startDateController: _startDateController,
              endDateController: _endDateController,
              dosageController: _dosageController,
              commentController: _commentController,
              fromIncitation: fromIncitation,
            ),
          ),
        );
      },
    );
  }

  void _tagPage(BuildContext context, EditTraitementScreenViewModel vm, bool fromIncitation) {
    if (fromIncitation) {
      context.tagAction(TagsIncitation.tag_920_popin_ajout_traitement);
    } else {
      if (vm.isInTraitementEditingMode) {
        context.tagAction(TagsTraitements.tag_718_popin_modif_traitement);
      } else {
        context.tagAction(TagsTraitements.tag_popin_ajout_traitement);
      }
    }
  }

  bool _noDataEntered() {
    return _nameTextInputController.text.isEmpty &&
        _startDateController.isNull() &&
        _endDateController.isNull() &&
        _dosageController.text.isEmpty &&
        _commentController.text.isEmpty;
  }

  void _popIfSuccess(BuildContext context, EditTraitementScreenViewModel vm) {
    if (vm.editStatus == TraitementsEditStatus.ADD_OR_UPDATE_SUCCESS) {
      final navigatorKey = EnsModuleContainer.currentInjector.getNavigatorKey();
      navigatorKey.currentState?.pop(true);
      if (vm.isCreatingTraitementFromMhs) {
        Navigator.pushNamed(context, TraitementsScreen.routeName, arguments: const TraitementsScreenArguments());
      }
    }
  }

  void _showSnackbarNomTronque(BuildContext context) {
    showSnackbarInfo(
      context,
      'Le nom du traitement dépasse le nombre de caractères autorisés, son nom complet est précisé en commentaire',
      extraVerticalPadding: 18,
      verylongDuration: true,
    );
  }

  void _tagQuitAddTraitementPop(BuildContext context, EditTraitementScreenViewModel vm) {
    if (!vm.isInTraitementEditingMode) {
      context.tagAction(TagsTraitements.tag_216_popin_ajouter_traitement_quitter);
    }
  }

  void _tagValidateQuitAddTraitementClick(BuildContext context, EditTraitementScreenViewModel vm) {
    if (!vm.isInTraitementEditingMode) {
      context.tagAction(TagsTraitements.tag_217_button_ajouter_traitement_quitter_valider);
    }
  }

  void _tagCancelQuitAddTraitementClick(BuildContext context, EditTraitementScreenViewModel vm) {
    if (!vm.isInTraitementEditingMode) {
      context.tagAction(TagsTraitements.tag_218_button_ajouter_traitement_quitter_annuler);
    }
  }

  void _displayInfoBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return const EnsInformationWithIllustrationBottomSheet(
          title: 'Ajouter automatiquement un traitement',
          description:
              'Je scanne le QR code situé sur le côté de la boîte de médicament pour l’ajouter automatiquement.',
          asset: EnsImages.datamatrix,
        );
      },
    );
  }
}

class _Content extends StatelessWidget {
  final EditTraitementScreenViewModel vm;
  final GlobalKey<ShakeWidgetState> shakeKey;
  final ScrollController scrollController;
  final TextEditingController nameTextInputController;
  final ValueNotifier<EnsDate?> startDateController;
  final ValueNotifier<EnsDate?> endDateController;
  final TextEditingController dosageController;
  final TextEditingController commentController;
  final bool fromIncitation;

  const _Content({
    required this.vm,
    required this.shakeKey,
    required this.scrollController,
    required this.nameTextInputController,
    required this.startDateController,
    required this.endDateController,
    required this.dosageController,
    required this.commentController,
    required this.fromIncitation,
  });

  @override
  Widget build(BuildContext context) {
    return switch (vm.editStatus) {
      TraitementsEditStatus.LOADING => const PmlFormSkeleton(),
      _ => ScrollviewWithScrollbar(
          controller: scrollController,
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: _Form(
            shakeKey,
            scrollController,
            nameTextInputController,
            startDateController,
            endDateController,
            dosageController,
            commentController,
            fromIncitation,
            vm,
          ),
        )
    };
  }
}

class _Form extends StatefulWidget {
  final GlobalKey<ShakeWidgetState> _shakeKey;
  final ScrollController _scrollController;
  final TextEditingController _nameTextInputController;
  final ValueNotifier<EnsDate?> _startDateController;
  final ValueNotifier<EnsDate?> _endDateController;
  final TextEditingController _dosageController;
  final TextEditingController _commentController;
  final bool _fromIncitation;
  final EditTraitementScreenViewModel vm;

  const _Form(
    this._shakeKey,
    this._scrollController,
    this._nameTextInputController,
    this._startDateController,
    this._endDateController,
    this._dosageController,
    this._commentController,
    this._fromIncitation,
    this.vm,
  );

  @override
  State<_Form> createState() => _FormState();
}

class _FormState extends State<_Form> {
  static const _POSOLOGIE_MAX_CHARACTERS = 1000;
  static const _COMMENT_MAX_CHARACTERS = 3000;
  final _formKey = GlobalKey<FormState>();
  bool _isActiveTraitement = true;
  late FocusNode _traitementLabelFocus;

  @override
  void initState() {
    super.initState();
    _isActiveTraitement = widget.vm.initialActiveTraitementStatus;
    final traitement = widget.vm.initialTraitement;
    if (traitement != null) {
      widget._nameTextInputController.text = traitement.name;
      widget._startDateController.value = traitement.startDate;
      widget._endDateController.value = traitement.endDate;
      widget._dosageController.text = traitement.dosage ?? '';
      widget._commentController.text = traitement.comment ?? '';
    }
    _traitementLabelFocus = FocusNode();
  }

  @override
  void dispose() {
    _traitementLabelFocus.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final dateInputFieldsValidator = EnsDateInputFieldsValidator();
    return SafeArea(
      child: EnsForm(
        formKey: _formKey,
        shakeKey: widget._shakeKey,
        scrollController: widget._scrollController,
        padding: EdgeInsets.zero,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            if (!widget.vm.isCreatingTraitementFromMhs)
              ScanButton(
                padding: const EdgeInsets.only(bottom: 32),
                typeScan: TypeScan.SCAN_BOITE_MEDICAMENT,
                onTap: () {
                  context.tagAction(TagsTraitements.tag_2365_button_scanner_traitement_formulaire);
                  Navigator.pushNamed(
                    context,
                    ScannerScreen.routeName,
                    arguments: ScannerScreenArguments(
                      typeScan: TypeScan.SCAN_BOITE_MEDICAMENT,
                      traitementEditionMode: widget.vm.editionMode,
                      isFromFormulaire: true,
                    ),
                  );
                },
              ),
            ChampsObligatoiresFormTextWidget(
              displayFullText: true,
              focusNode: _traitementLabelFocus,
            ),
            const SizedBox(height: 32),
            CountedTextInput.withBorders(
              label: 'Nom du traitement',
              enabled: !widget.vm.isCreatingTraitementFromMhs,
              description: 'Ex. : Pilule',
              controller: widget._nameTextInputController,
              validatorCallback: (value) => textFieldValidator(
                value: value,
                fieldLabel: 'le nom du traitement',
                isSpecialCharAllowed: true,
              ),
              onFocus: () {
                _tagInputNomTraitementClick(widget.vm);
              },
            ),
            const SizedBox(height: 8),
            EnsCheckboxTitleButton(
              value: _isActiveTraitement,
              onChange: (_) {
                setState(() {
                  _isActiveTraitement = !_isActiveTraitement;
                });
              },
              label: 'Traitement en cours',
            ),
            const SizedBox(height: 24),
            EnsDateInputFields(
              onTap: () {
                context.tagAction(TagsTraitements.tag_2367_input_date_traitement_formulaire);
              },
              label: 'Date de début (année obligatoire)',
              enabled: !widget.vm.isCreatingTraitementFromMhs,
              controller: widget._startDateController,
              validator: (value) => dateInputFieldsValidator.validate(
                value,
                anteriorDate: widget.vm.birthDate,
                anteriorDateErrorText: 'Saisir une date de début de traitement postérieure à la date de naissance',
              ),
              initialValue: widget._startDateController.value,
            ),
            const SizedBox(height: 28),
            Visibility(
              visible: !_isActiveTraitement,
              child: Column(
                children: [
                  EnsDateInputFields(
                    onTap: () {
                      context.tagAction(TagsTraitements.tag_2367_input_date_traitement_formulaire);
                    },
                    label: 'Date de fin (année obligatoire)',
                    controller: widget._endDateController,
                    validator: (value) {
                      return dateInputFieldsValidator.validate(
                        value,
                        anteriorDate: widget._startDateController.value?.toDateTime(),
                      );
                    },
                    initialValue: widget._endDateController.value,
                  ),
                  const SizedBox(height: 28),
                ],
              ),
            ),
            CountedTextInput.withBorders(
              label: 'Posologie (facultatif)',
              hint: 'Ex. : 2 cachets de 1mg par jour, matin et soir après le repas\u2026',
              controller: widget._dosageController,
              maxCharacters: _POSOLOGIE_MAX_CHARACTERS,
              maxLines: 5,
              validatorCallback: (value) => limitCharactersFieldValidator(
                value: value,
                maxCharacters: _POSOLOGIE_MAX_CHARACTERS,
                errorMessage: 'la description de votre posologie est limitée à $_POSOLOGIE_MAX_CHARACTERS caractères',
              ),
              textInputAction: TextInputAction.newline,
              onFocus: () {
                _tagInputPosologieClick(widget.vm);
              },
            ),
            const SizedBox(height: 28),
            CountedTextInput.withBorders(
              label: 'Informations complémentaires (facultatif)',
              hint: 'Ex. : posologie, maladie associée, effets secondaires\u2026',
              controller: widget._commentController,
              maxCharacters: _COMMENT_MAX_CHARACTERS,
              maxLines: 7,
              validatorCallback: (value) => limitCharactersFieldValidator(
                value: value,
                maxCharacters: _COMMENT_MAX_CHARACTERS,
                errorMessage: 'les informations complémentaires sont limitées à $_COMMENT_MAX_CHARACTERS caractères',
              ),
              textInputAction: TextInputAction.newline,
              onFocus: () {
                _tagInputCommentaireClick(widget.vm);
              },
            ),
            const SizedBox(height: 48),
            Row(
              children: [
                Expanded(
                  child: EnsButton(
                    label: 'Valider',
                    onTap: () {
                      _tagValidateClick(widget.vm, widget._fromIncitation);
                      _validateAndSend(widget.vm);
                    },
                    isLoading: widget.vm.editStatus == TraitementsEditStatus.PENDING,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  void _tagValidateClick(EditTraitementScreenViewModel vm, bool fromIncitation) {
    if (fromIncitation) {
      context.tagAction(TagsIncitation.tag_921_button_valider_ajout_traitement);
    } else {
      if (vm.isInTraitementEditingMode) {
        context.tagAction(TagsTraitements.tag_button_valider_modification_traitement);
      } else {
        context.tagAction(TagsTraitements.tag_button_valider_ajout_traitement);
      }
    }
  }

  void _tagInputCommentaireClick(EditTraitementScreenViewModel vm) {
    if (vm.isInTraitementEditingMode) {
      context.tagAction(TagsTraitements.tag_229_input_ajout_commentaire);
    }
  }

  void _tagInputPosologieClick(EditTraitementScreenViewModel vm) {
    if (vm.isInTraitementEditingMode) {
      context.tagAction(TagsTraitements.tag_210_input_ajout_nom_posologie);
    }
  }

  void _tagInputNomTraitementClick(EditTraitementScreenViewModel vm) {
    if (vm.isInTraitementEditingMode) {
      context.tagAction(TagsTraitements.tag_221_input_nom_traitement);
    }
  }

  void _validateAndSend(EditTraitementScreenViewModel vm) {
    final validation = _formKey.validate();
    validation.onValid(() {
      final traitementTemporaire = TraitementTemporaire(
        name: widget._nameTextInputController.text,
        dosage: widget._dosageController.text,
        comment: widget._commentController.text,
        startDay: widget._startDateController.value!.day,
        startMonth: widget._startDateController.value!.month,
        startYear: widget._startDateController.value!.year!,
        endDay: (widget._endDateController.value != null && !_isActiveTraitement)
            ? widget._endDateController.value!.day
            : null,
        endMonth: (widget._endDateController.value != null && !_isActiveTraitement)
            ? widget._endDateController.value!.month
            : null,
        endYear: (widget._endDateController.value != null && !_isActiveTraitement)
            ? widget._endDateController.value!.year
            : null,
      );

      final TraitementFormulaireMode launchMode =
          (ModalRoute.of(context)!.settings.arguments! as EditTraitementScreenArguments).launchMode;
      if (launchMode is CreateTemporaryTraitementMode) {
        Navigator.pop(context, traitementTemporaire);
      } else {
        vm.sendTraitementFormData(traitementTemporaire);
      }
    }).onInvalid(() {
      widget._shakeKey.currentState?.shake();
      final isAccessibilityEnabled = WidgetsBinding.instance.accessibilityFeatures.accessibleNavigation;
      if (!isAccessibilityEnabled) {
        Future.delayed(const Duration(milliseconds: 300)).then(
          (_) => widget._scrollController.animateTo(
            0,
            duration: const Duration(milliseconds: 300),
            curve: Curves.fastOutSlowIn,
          ),
        );
      } else {
        _traitementLabelFocus.requestFocus();
      }
    });
  }
}
