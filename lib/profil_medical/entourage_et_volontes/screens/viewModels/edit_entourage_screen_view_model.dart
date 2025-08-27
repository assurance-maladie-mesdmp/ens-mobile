/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/entourage_et_volontes/domain/entourage_contact.dart';
import 'package:fr_cnamts_ens/profil_medical/entourage_et_volontes/redux/entourage_et_volontes_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/entourage_et_volontes/redux/entourage_et_volontes_selector.dart';
import 'package:fr_cnamts_ens/profil_medical/entourage_et_volontes/screens/edit_entourage_screen.dart';
import 'package:fr_cnamts_ens/user/domain/model/user_data.dart';
import 'package:fr_cnamts_ens/utils/all_purposes_status.dart';
import 'package:redux/redux.dart';

class EditEntourageScreenViewModel extends Equatable {
  final AllPurposesStatus status;
  final ContactFormMode contactFormMode;
  final String formHeaderTitle;
  final void Function(EditingEntourageContact entourageContact) sendEntourageContact;

  const EditEntourageScreenViewModel._({
    required this.status,
    required this.sendEntourageContact,
    required this.contactFormMode,
    required this.formHeaderTitle,
  });

  factory EditEntourageScreenViewModel.from(Store<EnsState> store, EditEntourageScreenArguments formMode) {
    final editContactMode = _getContactFormMode(formMode, store);
    return EditEntourageScreenViewModel._(
      status: store.state.entourageEtVolontesState.createOrUpdateEntourageContactStatus,
      sendEntourageContact: (contact) {
        switch (editContactMode) {
          case AddContactMode():
            store.dispatch(CreateEntourageContactAction(contact));
          case EditContactMode():
            store.dispatch(UpdateEntourageContactAction(contact.cloneWith(id: editContactMode.entourageContact.id)));
        }
      },
      formHeaderTitle: editContactMode.title,
      contactFormMode: editContactMode,
    );
  }

  static ContactFormMode _getContactFormMode(EditEntourageScreenArguments formMode, Store<EnsState> store) {
    return switch (formMode) {
      AddContactModeArgument() => ContactFormMode.add(
          formMode.contactType,
          _getCheckBoxList(
            formMode.contactType,
            EntourageEtVolontesSelector.isEmergencyEnabled(store.state.entourageEtVolontesState),
            EntourageEtVolontesSelector.isTrustedEnabled(store.state.entourageEtVolontesState),
          ),
          formMode.prefillWithCurrentUserData ? store.state.userState.mainUserDataState.userData : null,
        ),
      EditContactModeArgument() => ContactFormMode.edit(formMode.entourageContact)
    };
  }

  static List<CheckBoxAdditionnalContactOption> _getCheckBoxList(
    EntourageContactType contactType,
    bool isEmergencyEnabled,
    bool isTrustedEnabled,
  ) {
    final List<CheckBoxAdditionnalContactOption> checkBoxList = [];

    switch (contactType) {
      case EntourageContactType.URGENCE:
        if (isTrustedEnabled) {
          checkBoxList.add(
            const CheckBoxAdditionnalContactOption(
              type: AdditionnalContactCheckBox.CONFIANCE,
              title: 'Ce contact d\'urgence est aussi ma personne de confiance.',
              description: 'Elle connait mes volontés et peut décider si je suis en incapacité de m\'exprimer.',
            ),
          );
        }
        checkBoxList.add(
          const CheckBoxAdditionnalContactOption(
            type: AdditionnalContactCheckBox.AIDANT,
            title: 'Ce contact d\'urgence est aussi mon proche aidant.',
            description:
                'Un proche aidant me vient en aide dans ma vie quotidienne si je suis en situation de dépendance.',
          ),
        );
      case EntourageContactType.CONFIANCE:
        if (isEmergencyEnabled) {
          checkBoxList.add(
            const CheckBoxAdditionnalContactOption(
              type: AdditionnalContactCheckBox.URGENCE,
              title: 'Cette personne de confiance est aussi mon contact d\'urgence.',
              description: 'Elle est à contacter si je me trouve en situation d\'urgence médicale.',
            ),
          );
        }
        checkBoxList.add(
          const CheckBoxAdditionnalContactOption(
            type: AdditionnalContactCheckBox.AIDANT,
            title: 'Cette personne de confiance est aussi mon proche aidant.',
            description:
                'Un proche aidant me vient en aide dans ma vie quotidienne si je suis en situation de dépendance.',
          ),
        );
      case EntourageContactType.AIDANT:
        if (isTrustedEnabled) {
          checkBoxList.add(
            const CheckBoxAdditionnalContactOption(
              type: AdditionnalContactCheckBox.CONFIANCE,
              title: 'Ce proche aidant est aussi ma personne de confiance.',
              description: 'Elle connait mes volontés et peut décider si je suis en incapacité de m\'exprimer.',
            ),
          );
        }
        if (isEmergencyEnabled) {
          checkBoxList.add(
            const CheckBoxAdditionnalContactOption(
              type: AdditionnalContactCheckBox.URGENCE,
              title: 'Ce proche aidant est aussi mon contact d\'urgence.',
              description: 'Elle est à contacter si je me trouve en situation d\'urgence médicale. ',
            ),
          );
        }
      case EntourageContactType.AIDE || EntourageContactType.INCONNUS:
        break;
    }

    return checkBoxList;
  }

  @override
  List<Object?> get props => [status, formHeaderTitle, contactFormMode];
}

class CheckBoxAdditionnalContactOption extends Equatable {
  final AdditionnalContactCheckBox type;
  final String title;
  final String description;

  const CheckBoxAdditionnalContactOption({required this.type, required this.title, required this.description});

  @override
  List<Object?> get props => [type, title, description];
}

enum AdditionnalContactCheckBox {
  URGENCE,
  CONFIANCE,
  AIDANT;

  EntourageContactType get contactType {
    return switch (this) {
      AdditionnalContactCheckBox.URGENCE => EntourageContactType.URGENCE,
      AdditionnalContactCheckBox.CONFIANCE => EntourageContactType.CONFIANCE,
      AdditionnalContactCheckBox.AIDANT => EntourageContactType.AIDANT,
    };
  }
}

sealed class ContactFormMode extends Equatable {
  const ContactFormMode();

  String get title;

  EntourageContactType get formContactType;

  factory ContactFormMode.add(
    EntourageContactType contactType,
    List<CheckBoxAdditionnalContactOption> additionnalcheckBoxContactOption,
    UserData? userData,
  ) =>
      AddContactMode(contactType, additionnalcheckBoxContactOption, userData?.toPrefillDisplayModel());

  factory ContactFormMode.edit(EntourageContact entourageContact) => EditContactMode(entourageContact);
}

extension on UserData {
  PrefillDisplayModel toPrefillDisplayModel() {
    return PrefillDisplayModel(
      lastName: lastName,
      firstName: mainFirstName,
      telephone: phoneNumber,
      email: mail,
    );
  }
}

class AddContactMode extends ContactFormMode {
  final EntourageContactType contactType;
  final List<CheckBoxAdditionnalContactOption> extraContactTypeCheckBox;
  final PrefillDisplayModel? prefillDisplayModel;

  @override
  String get title => contactType.titre;

  @override
  EntourageContactType get formContactType => contactType;

  const AddContactMode(this.contactType, this.extraContactTypeCheckBox, this.prefillDisplayModel);

  @override
  List<Object?> get props => [contactType, extraContactTypeCheckBox, prefillDisplayModel];
}

class EditContactMode extends ContactFormMode {
  final EntourageContact entourageContact;

  @override
  String get title => 'Modifier un contact';

  @override
  EntourageContactType get formContactType => entourageContact.contactType;

  const EditContactMode(this.entourageContact);

  @override
  List<Object?> get props => [entourageContact];
}

class PrefillDisplayModel extends Equatable {
  final String lastName;
  final String firstName;
  final String? telephone;
  final String? email;

  const PrefillDisplayModel({
    required this.lastName,
    required this.firstName,
    required this.telephone,
    this.email,
  });

  @override
  List<Object?> get props => [lastName, firstName, telephone, email];
}
