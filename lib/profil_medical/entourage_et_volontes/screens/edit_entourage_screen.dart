/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/guestmode/guest_mode_helper.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/parameters/phone/ens_phone_display_model.dart';
import 'package:fr_cnamts_ens/profil_medical/entourage_et_volontes/domain/entourage_contact.dart';
import 'package:fr_cnamts_ens/profil_medical/entourage_et_volontes/domain/entourage_relation_type.dart';
import 'package:fr_cnamts_ens/profil_medical/entourage_et_volontes/screens/entourage_en_savoir_plus_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/entourage_et_volontes/screens/viewModels/edit_entourage_screen_view_model.dart';
import 'package:fr_cnamts_ens/tags/pml/tags_entourage_et_volontes.dart';
import 'package:fr_cnamts_ens/ui/widgets/action_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/champs_obligatoires_widget.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_checkbox_title_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_form.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_pop_scope.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/counted_text_input.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/ens_code_postal_input.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/ens_drop_down.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/ens_email_input.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/ens_telephone_input.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/validators.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';
import 'package:fr_cnamts_ens/ui/widgets/shake_widget.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:fr_cnamts_ens/utils/extensions/form_extensions.dart';
import 'package:fr_cnamts_ens/utils/navigation_utils.dart';

sealed class EditEntourageScreenArguments extends Equatable {
  const EditEntourageScreenArguments();

  factory EditEntourageScreenArguments.add(
    EntourageContactType contactType, {
    bool shouldPrefillWithCurrentUserData = false,
  }) =>
      AddContactModeArgument(contactType, shouldPrefillWithCurrentUserData);

  factory EditEntourageScreenArguments.edit(EntourageContact entourageContact) =>
      EditContactModeArgument(entourageContact);
}

class AddContactModeArgument extends EditEntourageScreenArguments {
  final EntourageContactType contactType;
  final bool prefillWithCurrentUserData;

  const AddContactModeArgument(this.contactType, this.prefillWithCurrentUserData);

  @override
  List<Object?> get props => [contactType, prefillWithCurrentUserData];
}

class EditContactModeArgument extends EditEntourageScreenArguments {
  final EntourageContact entourageContact;

  const EditContactModeArgument(this.entourageContact);

  @override
  List<Object?> get props => [entourageContact];
}

class EditEntourageScreen extends StatelessWidget {
  static const routeName = '/medical/profil/entourage/edit';

  static const bool POP_VALUE = true;

  final ScrollController _scrollController = ScrollController();
  final _AddEntourageEtVolonteController _formController = _AddEntourageEtVolonteController();

  @override
  Widget build(BuildContext context) {
    final arg = ModalRoute.of(context)!.settings.arguments! as EditEntourageScreenArguments;
    return StoreConnector<EnsState, EditEntourageScreenViewModel>(
      converter: (store) => EditEntourageScreenViewModel.from(store, arg),
      onInitialBuild: (_) {
        GuestModeHelper.showGuestModeBottomSheetWithConnexionIfGuestMode(context: context, onAuthenticatedMode: () {});
      },
      onWillChange: (oldVm, vm) {
        if (oldVm?.status.isNotSuccess() == true && vm.status.isSuccess()) {
          Navigator.pop(context, POP_VALUE);
        }
      },
      builder: (_, vm) => EnsPopScope.shouldNotPop(
        onPopInvoked: (navigator) async {
          if (_formController.isEmpty()) {
            navigator.pop();
          } else {
            context.tagAction(TagsEntourageEtVolontes.tag_popin_ajouter_entourage_volonte_quitter);
            final shouldPop = await NavigationUtils.onWillPop(
              context,
              'Quitter la page ?',
              'En quittant cette page, toutes vos modifications seront perdues.',
              'Quitter',
              positiveButtonHandler: () {
                context.tagAction(TagsEntourageEtVolontes.tag_popin_ajouter_entourage_volonte_valider);
              },
              negativeButtonHandler: () {
                context.tagAction(TagsEntourageEtVolontes.tag_button_ajouter_entourage_volonte_quitter_annuler);
              },
            );
            if (shouldPop) {
              navigator.pop();
            }
          }
        },
        child: Scaffold(
          appBar: EnsAppBarSubLevel(
            title: vm.formHeaderTitle,
            action: ActionButton(
              icon: const EnsSvg(EnsImages.ic_info_circle_outlined),
              tooltip: 'En savoir plus',
              onTap: () {
                Navigator.pushNamed(context, EntourageEnSavoirPlusScreen.routeName);
                context.tagAction(TagsEntourageEtVolontes.tag_link_aide_entourage_et_volontes);
              },
            ),
          ),
          body: ScrollviewWithScrollbar(
            controller: _scrollController,
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                _Content(vm, _scrollController, _formController),
                const SizedBox(height: 32),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _Content extends StatefulWidget {
  final EditEntourageScreenViewModel vm;
  final ScrollController scrollController;
  final _AddEntourageEtVolonteController _formController;

  const _Content(this.vm, this.scrollController, this._formController);

  @override
  State<_Content> createState() => _ContentState();
}

class _ContentState extends State<_Content> {
  final _formKey = GlobalKey<FormState>();
  final _shakeKey = GlobalKey<ShakeWidgetState>();
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    final editContactMode = widget.vm.contactFormMode;
    switch (editContactMode) {
      case final AddContactMode mode:
        widget._formController.initForCreation(mode.prefillDisplayModel);
      case final EditContactMode mode:
        widget._formController.initForModification(mode.entourageContact);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: EnsForm(
        formKey: _formKey,
        shakeKey: _shakeKey,
        scrollController: _scrollController,
        padding: EdgeInsets.zero,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 32),
              child: ChampsObligatoiresFormTextWidget(displayFullText: true),
            ),
            CountedTextInput.withBorders(
              label: 'Nom',
              maxCharacters: 50,
              description: 'Ex. : Dupont',
              controller: widget._formController.nameTextInputController,
              validatorCallback: (value) => textFieldValidator(value: value),
            ),
            const SizedBox(height: 32),
            CountedTextInput.withBorders(
              label: 'Prénom',
              maxCharacters: 50,
              description: 'Ex. : Pierre',
              controller: widget._formController.firstNameTextInputController,
              validatorCallback: (value) => textFieldValidator(value: value, fieldLabel: 'le prénom'),
            ),
            const SizedBox(height: 32),
            EnsDropDown(
              context: context,
              borderRadius: BorderRadius.circular(4),
              hint: '- Sélectionnez un lien -',
              label: 'Lien avec ce contact',
              items: EntourageRelationType.values,
              controller: widget._formController.linkTextInputController,
              itemFormater: (EntourageRelationType? item) => item?.name ?? '',
              validator: (type) => type == null ? 'Sélectionner le lien avec ce contact' : null,
            ),
            const SizedBox(height: 32),
            EnsTelephoneInput(
              label: 'Téléphone 1',
              phoneController: widget._formController.number1Controller,
            ),
            const SizedBox(height: 32),
            EnsTelephoneInput(
              isRequired: false,
              label: 'Téléphone 2',
              phoneController: widget._formController.number2Controller,
            ),
            const SizedBox(height: 32),
            EnsEmailInput(
              isRequired: false,
              emailController: widget._formController.emailTextInputController,
            ),
            const SizedBox(height: 32),
            CountedTextInput.withBorders(
              label: 'Adresse postale',
              maxCharacters: 100,
              controller: widget._formController.addressTextInputController,
              validatorCallback: (value) => textFieldValidator(
                value: value,
                fieldLabel: 'l\'adresse postale',
                maxLength: 100,
              ),
              keyboardType: TextInputType.streetAddress,
              hint: '',
            ),
            const SizedBox(height: 32),
            EnsCodePostalInput(
              controller: widget._formController.postalCodeTextInputController,
            ),
            const SizedBox(height: 32),
            CountedTextInput.withBorders(
              label: 'Ville',
              maxCharacters: 50,
              hint: '',
              controller: widget._formController.cityTextInputController,
              validatorCallback: (value) => textFieldValidator(value: value, fieldLabel: 'le nom de la ville'),
              keyboardType: TextInputType.streetAddress,
            ),
            const SizedBox(height: 32),
            CountedTextInput.withBorders(
              label: 'Pays (facultatif)',
              maxCharacters: 50,
              hint: '',
              controller: widget._formController.countryTextInputController,
              validatorCallback: (value) => textFieldValidator(value: value, isRequired: false),
              keyboardType: TextInputType.streetAddress,
            ),
            if (widget.vm.contactFormMode is AddContactMode) ...[
              const SizedBox(height: 32),
              _EntourageTypeFormField(
                controller: widget._formController.extraContactTypeInputController,
                extraContactTypeCheckBoxList: (widget.vm.contactFormMode as AddContactMode).extraContactTypeCheckBox,
              ),
            ],
            const SizedBox(height: 40),
            Row(
              children: [
                Expanded(
                  child: EnsButton(
                    label: 'Valider',
                    onTap: () {
                      context.tagAction(TagsEntourageEtVolontes.tag_button_valider_ajout_entourage_volonte);
                      _validateAndSend(widget.vm);
                    },
                    isLoading: widget.vm.status.isLoading(),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _validateAndSend(EditEntourageScreenViewModel vm) {
    final validation = _formKey.validate();
    validation.onValid(() {
      final contactTypes = [
        ...widget._formController.extraContactTypeInputController.value
            .map((checkBoxContact) => checkBoxContact.contactType),
        vm.contactFormMode.formContactType,
      ];

      final editingEntourageContact = EditingEntourageContact(
        lastName: widget._formController.nameTextInputController.text,
        firstName: widget._formController.firstNameTextInputController.text,
        link: widget._formController.linkTextInputController.value!,
        phone1: widget._formController.number1Controller.text,
        phone2: widget._formController.number2Controller.text.isNotEmpty
            ? widget._formController.number2Controller.text
            : null,
        email: widget._formController.emailTextInputController.text,
        address: widget._formController.addressTextInputController.text,
        postalCode: widget._formController.postalCodeTextInputController.text,
        city: widget._formController.cityTextInputController.text,
        country: widget._formController.countryTextInputController.text,
        contactType: contactTypes,
      );
      widget.vm.sendEntourageContact(editingEntourageContact);
    }).onInvalid(() {
      _shakeKey.currentState?.shake();
      Future.delayed(const Duration(milliseconds: 300)).then(
        (_) => widget.scrollController.animateTo(
          0,
          duration: const Duration(milliseconds: 300),
          curve: Curves.fastOutSlowIn,
        ),
      );
    });
  }
}

class _EntourageTypeFormField extends FormField<List<AdditionnalContactCheckBox>> {
  final ValueNotifier<List<AdditionnalContactCheckBox>> controller;
  final List<CheckBoxAdditionnalContactOption> extraContactTypeCheckBoxList;

  _EntourageTypeFormField({required this.controller, required this.extraContactTypeCheckBoxList})
      : super(
          initialValue: controller.value,
          builder: (FormFieldState<List<AdditionnalContactCheckBox>> state) => Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              for (final (index, checkBox) in extraContactTypeCheckBoxList.indexed) ...[
                if (index != 0) const SizedBox(height: 32),
                EnsCheckboxTitleButton.withCardDescription(
                  label: checkBox.title,
                  description: checkBox.description,
                  paddingBetweenBoxAndTitle: 16,
                  onChange: (selectionStatus) {
                    final currentValue = controller.value;
                    if (selectionStatus && !currentValue.contains(checkBox.type)) {
                      currentValue.add(checkBox.type);
                    } else if (!selectionStatus && currentValue.contains(checkBox.type)) {
                      currentValue.remove(checkBox.type);
                    }
                    controller.value = currentValue;
                    state.didChange(currentValue);
                  },
                  value: controller.value.contains(checkBox.type),
                  withCard: true,
                ),
              ],
            ],
          ),
        );
}

class _AddEntourageEtVolonteController {
  final nameTextInputController = TextEditingController();
  final firstNameTextInputController = TextEditingController();
  final linkTextInputController = ValueNotifier<EntourageRelationType?>(null);
  final extraContactTypeInputController = ValueNotifier<List<AdditionnalContactCheckBox>>([]);
  final emailTextInputController = TextEditingController();
  final addressTextInputController = TextEditingController();
  final postalCodeTextInputController = TextEditingController();
  final cityTextInputController = TextEditingController();
  final countryTextInputController = TextEditingController();
  final number1Controller = TextEditingController();
  final indicatif1Controller = ValueNotifier<Indicatif>(Indicatif.PLUS_33);
  final number2Controller = TextEditingController();
  final indicatif2Controller = ValueNotifier<Indicatif>(Indicatif.PLUS_33);

  bool isEmpty() {
    return nameTextInputController.text.isEmpty &&
        firstNameTextInputController.text.isEmpty &&
        linkTextInputController.value == null &&
        extraContactTypeInputController.value.isEmpty &&
        emailTextInputController.text.isEmpty &&
        addressTextInputController.text.isEmpty &&
        postalCodeTextInputController.text.isEmpty &&
        cityTextInputController.text.isEmpty &&
        countryTextInputController.text.isEmpty &&
        number1Controller.text.isEmpty &&
        number2Controller.text.isEmpty;
  }

  void initForCreation(PrefillDisplayModel? prefillDisplayModel) {
    nameTextInputController.text = prefillDisplayModel?.lastName ?? '';
    firstNameTextInputController.text = prefillDisplayModel?.firstName ?? '';
    emailTextInputController.text = prefillDisplayModel?.email ?? '';
    number1Controller.text = prefillDisplayModel?.telephone ?? '';
  }

  void initForModification(EntourageContact? entourageContact) {
    nameTextInputController.text = entourageContact?.lastName ?? '';
    firstNameTextInputController.text = entourageContact?.firstName ?? '';
    addressTextInputController.text = entourageContact?.address ?? '';
    cityTextInputController.text = entourageContact?.city ?? '';
    countryTextInputController.text = entourageContact?.country ?? '';
    emailTextInputController.text = entourageContact?.email ?? '';
    extraContactTypeInputController.value = [];
    number1Controller.text = entourageContact?.phone1 ?? '';
    number2Controller.text = entourageContact?.phone2 ?? '';
    postalCodeTextInputController.text = entourageContact?.postalCode ?? '';
    linkTextInputController.value = entourageContact?.link;
  }
}
