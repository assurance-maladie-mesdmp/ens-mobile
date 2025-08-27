/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/guestmode/guest_mode_helper.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/antecedents_familiaux/domain/models/editing_antecedent_familial.dart';
import 'package:fr_cnamts_ens/profil_medical/antecedents_familiaux/domain/models/ens_antecedent_familial.dart';
import 'package:fr_cnamts_ens/profil_medical/antecedents_familiaux/screens/viewModels/edit_antecedent_familial_screen_view_model.dart';
import 'package:fr_cnamts_ens/tags/pml/tags_antecedents.dart';
import 'package:fr_cnamts_ens/ui/widgets/champs_obligatoires_widget.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_form.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_pop_scope.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/counted_text_input.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/ens_drop_down.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/validators.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';
import 'package:fr_cnamts_ens/ui/widgets/shake_widget.dart';
import 'package:fr_cnamts_ens/utils/all_purposes_status.dart';
import 'package:fr_cnamts_ens/utils/extensions/form_extensions.dart';
import 'package:fr_cnamts_ens/utils/navigation_utils.dart';

// ignore: must_be_immutable
class EditAntecedentFamilialScreen extends StatefulWidget {
  static const routeName = '/editAntecedentFamilial';

  const EditAntecedentFamilialScreen({super.key});

  @override
  State<EditAntecedentFamilialScreen> createState() => _EditAntecedentFamilialScreenState();
}

class _EditAntecedentFamilialScreenState extends State<EditAntecedentFamilialScreen> {
  final _shakeKey = GlobalKey<ShakeWidgetState>();
  final ScrollController _scrollController = ScrollController();
  final _nameTextInputController = TextEditingController();
  final _commentController = TextEditingController();
  final _familyRelationshipController = ValueNotifier<EnsFamilyRelationship?>(null);
  final _antecedentFamilialLabelFocus = FocusNode();

  EditingAntecedentFamilial? editingAntecedentFamilial;
  bool initialized = false;

  @override
  void dispose() {
    _scrollController.dispose();
    _nameTextInputController.dispose();
    _commentController.dispose();
    _antecedentFamilialLabelFocus.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!initialized) {
      _initializeEditingAntecedentFamilial(context);
    }

    return StoreConnector<EnsState, EditAntecedentFamilialScreenViewModel>(
      converter: (store) => EditAntecedentFamilialScreenViewModel.from(store),
      onWillChange: (oldVm, vm) {
        if (oldVm?.editStatus.isNotSuccess() == true && vm.editStatus.isSuccess()) {
          Navigator.pop(context);
        }
      },
      onInitialBuild: (vm) {
        GuestModeHelper.showGuestModeBottomSheetWithConnexionIfGuestMode(
          context: context,
          onAuthenticatedMode: () {
            context.tagAction(
              editingAntecedentFamilial != null
                  ? TagsAntecedents.tag_popin_modif_antecedent
                  : TagsAntecedents.tag_popin_ajout_antecedent,
            );
          },
        );
      },
      distinct: true,
      builder: (_, vm) => EnsPopScope.shouldNotPop(
        onPopInvoked: (navigator) async {
          if (_noDataEntered()) {
            navigator.pop();
          } else {
            if (editingAntecedentFamilial == null) {
              context.tagAction(TagsAntecedents.tag_240_popin_ajouter_antecedent_quitter);
            }
            final shouldPop = await NavigationUtils.onWillPop(
              context,
              'Quitter la page ?',
              'En quittant cette page, toutes vos modifications seront perdues.',
              'Quitter',
              positiveButtonHandler: () {
                if (editingAntecedentFamilial == null) {
                  context.tagAction(TagsAntecedents.tag_241_button_ajouter_antecedent_quitter_valider);
                }
              },
              negativeButtonHandler: () {
                if (editingAntecedentFamilial == null) {
                  context.tagAction(TagsAntecedents.tag_242_button_ajouter_antecedent_quitter_annuler);
                }
              },
            );
            if (shouldPop) {
              navigator.pop();
            }
          }
        },
        child: Scaffold(
          appBar: EnsAppBarSubLevel(title: vm.getAppBarTitle(editingAntecedentFamilial != null)),
          body: ScrollviewWithScrollbar(
            controller: _scrollController,
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: _Content(
              shakeKey: _shakeKey,
              scrollController: _scrollController,
              nameTextInputController: _nameTextInputController,
              commentController: _commentController,
              familyRelationshipController: _familyRelationshipController,
              editStatus: vm.editStatus,
              editAntecedentFamilial: vm.editAntecedentFamilial,
              editingAntecedentFamilial: editingAntecedentFamilial,
              antecedentFamilialLabelFocus: _antecedentFamilialLabelFocus,
            ),
          ),
        ),
      ),
    );
  }

  bool _noDataEntered() {
    return _nameTextInputController.text.isEmpty && _commentController.text.isEmpty;
  }

  void _initializeEditingAntecedentFamilial(BuildContext context) {
    if (ModalRoute.of(context)!.settings.arguments != null) {
      final antecedentFamilial = ModalRoute.of(context)!.settings.arguments as EnsAntecedentFamilial?;
      editingAntecedentFamilial = EditingAntecedentFamilial(
        id: antecedentFamilial!.id,
        name: antecedentFamilial.name,
        familyRelationship: antecedentFamilial.familyRelationship,
        comment: antecedentFamilial.comment,
      );

      _familyRelationshipController.value = editingAntecedentFamilial!.familyRelationship;
      _nameTextInputController.text = editingAntecedentFamilial!.name ?? '';
      _commentController.text = editingAntecedentFamilial!.comment ?? '';
    }
    initialized = true;
  }
}

class _Content extends StatelessWidget {
  static const _COMMENT_MAX_CHARACTERS = 3000;

  final _formKey = GlobalKey<FormState>();
  final GlobalKey<ShakeWidgetState> shakeKey;
  final ScrollController scrollController;
  final TextEditingController nameTextInputController;
  final TextEditingController commentController;
  final ValueNotifier<EnsFamilyRelationship?> familyRelationshipController;
  final EditingAntecedentFamilial? editingAntecedentFamilial;
  final AllPurposesStatus editStatus;
  final void Function(String?, String, String?, EnsFamilyRelationship?, bool) editAntecedentFamilial;
  final FocusNode antecedentFamilialLabelFocus;

  _Content({
    required this.shakeKey,
    required this.scrollController,
    required this.nameTextInputController,
    required this.commentController,
    required this.familyRelationshipController,
    required this.editStatus,
    required this.editAntecedentFamilial,
    required this.antecedentFamilialLabelFocus,
    this.editingAntecedentFamilial,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: EnsForm(
        formKey: _formKey,
        shakeKey: shakeKey,
        scrollController: scrollController,
        padding: EdgeInsets.zero,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32),
            ChampsObligatoiresFormTextWidget(
              displayFullText: true,
              focusNode: antecedentFamilialLabelFocus,
            ),
            const SizedBox(height: 32),
            CountedTextInput.withBorders(
              label: 'Nom de la maladie',
              description: 'Ex. : Diabète type 1',
              controller: nameTextInputController,
              deniedRegExp: '[@<>\\?:/€\\*#\\|%~\\+£\\\$!§¤]',
              validatorCallback: (value) => textFieldValidator(value: value, fieldLabel: 'le nom de la maladie'),
              onFocus: () {
                if (editingAntecedentFamilial != null) {
                  context.tagAction(TagsAntecedents.tag_245_input_nom_antecedent);
                }
              },
            ),
            const SizedBox(height: 28),
            EnsDropDown(
              context: context,
              borderRadius: BorderRadius.circular(4),
              label: 'Lien familial',
              hint: '- Sélectionnez le lien - ',
              controller: familyRelationshipController,
              items: EnsFamilyRelationship.values
                  .where((relationship) => relationship != EnsFamilyRelationship.UNKNOWN)
                  .toList(),
              itemFormater: (EnsFamilyRelationship? familyRelationship) =>
                  familyRelationship != null ? familyRelationship.label : '',
              validator: _requiredFamilyHistoryFieldValidator,
              onTap: () {
                if (editingAntecedentFamilial != null) {
                  context.tagAction(TagsAntecedents.tag_246_input_lien_familial);
                }
              },
            ),
            const SizedBox(height: 28),
            CountedTextInput.withBorders(
              label: 'Informations complémentaires (facultatif)',
              hint: 'Ex. : diagnostic, sévérité, dates, traitements\u2026',
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
                if (editingAntecedentFamilial != null) {
                  context.tagAction(TagsAntecedents.tag_237_input_ajout_commentaire);
                }
              },
            ),
            const SizedBox(height: 48),
            Row(
              children: [
                Expanded(
                  child: EnsButton(
                    label: 'Valider',
                    onTap: () {
                      context.tagAction(
                        editingAntecedentFamilial != null
                            ? TagsAntecedents.tag_button_valider_modification_antecedent
                            : TagsAntecedents.tag_button_valider_ajout_antecedent,
                      );
                      _validateAndSend();
                    },
                    isLoading: editStatus.isLoading(),
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

  void _validateAndSend() {
    final validation = _formKey.validate();
    validation.onValid(() {
      editAntecedentFamilial(
        editingAntecedentFamilial?.id,
        nameTextInputController.text,
        commentController.text,
        familyRelationshipController.value,
        editingAntecedentFamilial != null,
      );
    }).onInvalid(() {
      shakeKey.currentState?.shake();
      final isAccessibilityEnabled = WidgetsBinding.instance.accessibilityFeatures.accessibleNavigation;
      if (!isAccessibilityEnabled) {
        Future.delayed(const Duration(milliseconds: 300)).then(
          (_) => scrollController.animateTo(
            0,
            duration: const Duration(milliseconds: 300),
            curve: Curves.fastOutSlowIn,
          ),
        );
      }
    });
  }

  String? _requiredFamilyHistoryFieldValidator(EnsFamilyRelationship? familyRelationship) {
    if (familyRelationship == null) {
      return 'Sélectionner le lien familial';
    }
    return null;
  }
}
