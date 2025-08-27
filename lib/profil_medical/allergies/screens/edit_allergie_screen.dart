/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/guestmode/guest_mode_helper.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/allergies/screens/viewModels/edit_allergie_screen_view_model.dart';
import 'package:fr_cnamts_ens/profil_medical/maladies/screen/widget/link_traitements_section_widget.dart';
import 'package:fr_cnamts_ens/profil_medical/screens/viewmodels/link_traitement_display_model.dart';
import 'package:fr_cnamts_ens/profil_medical/traitement/domain/models/traitement_temporaire.dart';
import 'package:fr_cnamts_ens/tags/pml/tags_allergies.dart';
import 'package:fr_cnamts_ens/tags/pml/tags_incitation.dart';
import 'package:fr_cnamts_ens/ui/widgets/champs_obligatoires_widget.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_form.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_pop_scope.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/counted_text_input.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/validators.dart';
import 'package:fr_cnamts_ens/ui/widgets/shake_widget.dart';
import 'package:fr_cnamts_ens/utils/extensions/form_extensions.dart';
import 'package:fr_cnamts_ens/utils/navigation_utils.dart';

class EditAllergieScreen extends StatelessWidget {
  static const routeName = '/editAllergie';
  static const bool POP_VALUE = true;

  const EditAllergieScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments as EditAllergieArgument?;
    final fromIncitation = arguments?.fromIncitation ?? false;
    final bool isEditing = arguments?.allergie != null;

    return StoreConnector<EnsState, EditAllergieScreenViewModel>(
      converter: (store) => EditAllergieScreenViewModel.from(
        store,
        allergieId: arguments?.allergie?.id,
      ),
      onWillChange: (oldVm, vm) {
        if (oldVm?.editStatus.isNotSuccess() == true && vm.editStatus.isSuccess()) {
          Navigator.pop(context, POP_VALUE);
        }
      },
      onInitialBuild: (vm) {
        GuestModeHelper.showGuestModeBottomSheetWithConnexionIfGuestMode(
          context: context,
          onAuthenticatedMode: () {
            if (fromIncitation) {
              context.tagAction(TagsIncitation.tag_916_popin_ajout_allergie);
            } else {
              context.tagAction(
                isEditing ? TagsAllergies.tag_popin_modif_allergie : TagsAllergies.tag_popin_ajout_allergie,
              );
            }
          },
        );
      },
      distinct: true,
      builder: (_, vm) => _Form(vm: vm),
    );
  }
}

class _Form extends StatefulWidget {
  final EditAllergieScreenViewModel vm;

  const _Form({required this.vm});

  @override
  State<_Form> createState() => _FormState();
}

class _FormState extends State<_Form> {
  static const _COMMENT_MAX_CHARACTERS = 3000;

  final _shakeKey = GlobalKey<ShakeWidgetState>();
  final _formKey = GlobalKey<FormState>();

  final ScrollController _scrollController = ScrollController();
  final _nameTextInputController = TextEditingController();
  final _commentController = TextEditingController();

  List<LinkedTraitementDisplayModel> _linkedTraitementsFromExistingMES = [];
  final List<TraitementTemporaire> _traitementsToCreateAndLink = [];

  final _allergieLabelFocus = FocusNode();

  @override
  void initState() {
    final initialAllergie = widget.vm.allergie;
    _nameTextInputController.text = initialAllergie?.name ?? '';
    _commentController.text = initialAllergie?.comment ?? '';
    _linkedTraitementsFromExistingMES = widget.vm.linkedTraitementsDisplayModels;
    super.initState();
  }

  @override
  void dispose() {
    _nameTextInputController.dispose();
    _commentController.dispose();
    _scrollController.dispose();
    _allergieLabelFocus.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments as EditAllergieArgument?;
    final fromIncitation = arguments?.fromIncitation ?? false;
    final bool isEditing = arguments?.allergie != null;

    return EnsPopScope.shouldNotPop(
      onPopInvoked: (navigator) async {
        if (_noDataEntered()) {
          navigator.pop();
        } else {
          if (!isEditing) context.tagAction(TagsAllergies.tag_257_popin_ajouter_allergie_quitter);
          final shouldPop = await displayExitPopup(context, isEditing);
          if (shouldPop) navigator.pop();
        }
      },
      child: Scaffold(
        appBar: EnsAppBarSubLevel(
          title: isEditing ? 'Modifier une allergie' : 'Ajouter une allergie',
        ),
        body: EnsForm(
          formKey: _formKey,
          shakeKey: _shakeKey,
          scrollController: _scrollController,
          padding: EdgeInsets.zero,
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
                  child: Column(
                    children: [
                      const SizedBox(height: 32),
                      ChampsObligatoiresFormTextWidget(
                        displayFullText: true,
                        focusNode: _allergieLabelFocus,
                      ),
                      const SizedBox(height: 32),
                      CountedTextInput.withBorders(
                        label: 'Nom de l\'allergène',
                        description: 'Ex. : Pénicilline',
                        controller: _nameTextInputController,
                        deniedRegExp: '[@<>\\?:/€\\*#\\|%~\\+£\\\$!§¤]',
                        validatorCallback: (value) =>
                            textFieldValidator(value: value, fieldLabel: 'le nom de l’allergène'),
                        onFocus: () {
                          if (!isEditing) context.tagAction(TagsAllergies.tag_262_input_nom_allergie);
                        },
                      ),
                      const SizedBox(height: 24),
                      CountedTextInput.withBorders(
                        label: 'Informations Complémentaires (facultatif)',
                        hint: 'Ex. : date de début de l’allergie, épisodes allergiques, réactions, intolérance\u2026',
                        controller: _commentController,
                        maxCharacters: _COMMENT_MAX_CHARACTERS,
                        maxLines: 7,
                        validatorCallback: (value) => limitCharactersFieldValidator(
                          value: value,
                          maxCharacters: _COMMENT_MAX_CHARACTERS,
                          errorMessage:
                              'Les informations complémentaires sont limitées à $_COMMENT_MAX_CHARACTERS caractères',
                        ),
                        textInputAction: TextInputAction.newline,
                        onFocus: () {
                          if (!isEditing) context.tagAction(TagsAllergies.tag_252_input_ajout_commentaire);
                        },
                      ),
                    ],
                  ),
                ),
                Material(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
                    child: LinkTraitementsSectionWidget(
                      isUserTraitementsNotEmpty: widget.vm.isUserTraitementsNotEmpty,
                      traitementsToCreateAndLink: _traitementsToCreateAndLink,
                      linkedTraitementsFromExistingMES: _linkedTraitementsFromExistingMES,
                      onRemoveLinkedTraitement: (String traitementId) {
                        setState(() {
                          _linkedTraitementsFromExistingMES.removeWhere((dm) => dm.id == traitementId);
                        });
                      },
                      onUpdateLinkedTraitementFromExistingMES: (
                        List<LinkedTraitementDisplayModel> newLinkedTraitementDisplayModel,
                      ) {
                        setState(() => _linkedTraitementsFromExistingMES = newLinkedTraitementDisplayModel);
                      },
                      removeTempTraitement: (TraitementTemporaire traitement) {
                        setState(() => _traitementsToCreateAndLink.remove(traitement));
                      },
                      addTraitementTemporaire: (TraitementTemporaire traitement) {
                        setState(() => _traitementsToCreateAndLink.add(traitement));
                      },
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                EnsButton(
                  paddingAround: const EdgeInsets.symmetric(horizontal: 24),
                  label: 'Valider',
                  onTap: () {
                    if (fromIncitation) {
                      context.tagAction(TagsIncitation.tag_917_button_valider_ajout_allergies);
                    } else {
                      context.tagAction(
                        isEditing
                            ? TagsAllergies.tag_button_valider_modification_allergie
                            : TagsAllergies.tag_button_valider_ajout_allergie,
                      );
                    }
                    _validateAndSend(widget.vm.editAllergie, _shakeKey);
                  },
                  isLoading: widget.vm.editStatus.isLoading(),
                ),
                const SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<bool> displayExitPopup(BuildContext context, bool isEditing) async {
    final shouldPop = NavigationUtils.onWillPop(
      context,
      'Quitter la page ?',
      'En quittant cette page, toutes vos modifications seront perdues.',
      'Quitter',
      positiveButtonHandler: () {
        if (!isEditing) {
          context.tagAction(TagsAllergies.tag_258_button_ajouter_allergie_quitter_valider);
        }
      },
      negativeButtonHandler: () {
        if (!isEditing) {
          context.tagAction(TagsAllergies.tag_259_button_ajouter_allergie_quitter_annuler);
        }
      },
    );
    return shouldPop;
  }

  void _validateAndSend(EditAllergieFunction editAllergie, GlobalKey<ShakeWidgetState> shakeKey) {
    final validation = _formKey.validate();
    validation.onValid(() {
      editAllergie(
        name: _nameTextInputController.text,
        comment: _commentController.text,
        linkedTraitementsIds: _linkedTraitementsFromExistingMES.map((dm) => dm.id).toList(),
        traitementToCreateAndLink: _traitementsToCreateAndLink,
      );
    }).onInvalid(() {
      shakeKey.currentState?.shake();
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
        _allergieLabelFocus.requestFocus();
      }
    });
  }

  bool _noDataEntered() =>
      _nameTextInputController.text.isEmpty &&
      _commentController.text.isEmpty &&
      _linkedTraitementsFromExistingMES.isEmpty &&
      _traitementsToCreateAndLink.isEmpty;
}
