/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/entourage_et_volontes/domain/entourage_contact.dart';
import 'package:fr_cnamts_ens/profil_medical/entourage_et_volontes/redux/entourage_et_volontes_redux.dart';
import 'package:fr_cnamts_ens/profils_rattaches/screens/profils_utils.dart';
import 'package:fr_cnamts_ens/utils/extensions/profil_extension.dart';
import 'package:fr_cnamts_ens/utils/screen_status.dart';
import 'package:redux/redux.dart';

class EntourageScreenViewModel extends Equatable {
  final ScreenStatus entourageStatus;
  final EntourageProfilInfoDisplayModel profilInfoDisplayModel;
  final EntourageContactsDisplayModel? contactsDisplayModel;
  final void Function({bool force}) fetchEntourageEtVolontes;

  const EntourageScreenViewModel._({
    required this.profilInfoDisplayModel,
    required this.contactsDisplayModel,
    required this.entourageStatus,
    required this.fetchEntourageEtVolontes,
  });

  factory EntourageScreenViewModel.from(Store<EnsState> store) {
    final profilType = ProfilsUtils.getCurrentProfilType(store.state);
    final currentProfile = store.state.userState.currentProfile;
    final nomComplet = currentProfile.nomComplet;
    final prenom = currentProfile.mainFirstName;
    final entourageEtVolontesState = store.state.entourageEtVolontesState;
    final status = ScreenStatus.getFromAllPurposesStatus(entourageEtVolontesState.entourageContactsStatus);

    return EntourageScreenViewModel._(
      entourageStatus: status,
      profilInfoDisplayModel: EntourageProfilInfoDisplayModel(
        profilType: profilType,
        nomComplet: nomComplet,
        displayAidantCartouche: profilType.isAide,
      ),
      contactsDisplayModel: status == ScreenStatus.SUCCESS
          ? _buildDisplayModel(profilType, nomComplet, prenom, entourageEtVolontesState)
          : null,
      fetchEntourageEtVolontes: ({force = false}) => store.dispatch(FetchEntourageEtVolontesAction(force: force)),
    );
  }

  static ProchesAidesDisplayModel _buildProchesAidesDisplayViewModel(List<EntourageContact> entourageContacts) {
    final prochesAides =
        entourageContacts.where((contact) => contact.contactType == EntourageContactType.AIDE).toList();
    return ProchesAidesDisplayModel(entourageContacts: prochesAides);
  }

  static ProchesAidantsDisplayModel _buildProchesAidantsDisplayViewModel(
    List<EntourageContact> entourageContacts,
    ProfilType profilType,
    String prenom,
  ) {
    final prochesAidants =
        entourageContacts.where((contact) => contact.contactType == EntourageContactType.AIDANT).toList();
    final description = profilType.isAd
        ? 'Un proche aidant lui vient en aide dans sa vie quotidienne si $prenom est en situation de dépendance.'
        : 'Un proche aidant me vient en aide dans ma vie quotidienne si je suis en situation de dépendance.';
    return ProchesAidantsDisplayModel(entourageContacts: prochesAidants, description: description);
  }

  static ContactUrgenceDisplayModel _buildContactUrgenceDisplayModel(
    List<EntourageContact> entourageContacts,
    ProfilType profilType,
  ) {
    final contactsUrgence =
        entourageContacts.where((contact) => contact.contactType == EntourageContactType.URGENCE).toList();
    final availableSeats = contactsUrgence.length < 3;
    return ContactUrgenceDisplayModel(
      showLinkAddMyself: profilType.isAd && availableSeats,
      showLinkAddEntourage: availableSeats,
      entourageContacts: contactsUrgence,
    );
  }

  static PersonneDeConfianceDisplayModel? _buildPersonneDeConfianceDisplayModel(
    List<EntourageContact> entourageContacts,
    ProfilType profilType,
    String prenom,
  ) {
    final personnesDeConfiance =
        entourageContacts.where((contact) => contact.contactType == EntourageContactType.CONFIANCE).toList();

    if (personnesDeConfiance.isEmpty && profilType.isAd) {
      return null;
    }

    final description = profilType.isAd
        ? 'La personne qui connait ses volontés et peut décider si $prenom est en incapacité de m\'exprimer.'
        : 'La personne qui connait mes volontés et peut décider si je suis en incapacité de m\'exprimer.';

    return PersonneDeConfianceDisplayModel(
      showLinkAddEntourage: personnesDeConfiance.isEmpty,
      entourageContacts: personnesDeConfiance,
      description: description,
    );
  }

  @override
  List<Object?> get props => [profilInfoDisplayModel, entourageStatus, contactsDisplayModel];

  static EntourageContactsDisplayModel _buildDisplayModel(
    ProfilType profilType,
    String nomComplet,
    String prenom,
    EntourageEtVolontesState entourageEtVolontesState,
  ) {
    final entourageContacts = entourageEtVolontesState.entourageContacts;

    final contactUrgenceDisplayModel = _buildContactUrgenceDisplayModel(entourageContacts, profilType);
    final prochesAidantsDisplayViewModel = _buildProchesAidantsDisplayViewModel(entourageContacts, profilType, prenom);

    final personneDeConfianceDisplayModel =
        _buildPersonneDeConfianceDisplayModel(entourageContacts, profilType, nomComplet);
    final prochesAidesDisplayViewModel = profilType.isAd ? null : _buildProchesAidesDisplayViewModel(entourageContacts);

    return EntourageContactsDisplayModel(
      contactUrgenceDisplayModel: contactUrgenceDisplayModel,
      personneDeConfianceDisplayModel: personneDeConfianceDisplayModel,
      prochesAidantsDisplayModel: prochesAidantsDisplayViewModel,
      prochesAidesDisplayModel: prochesAidesDisplayViewModel,
    );
  }
}

class EntourageProfilInfoDisplayModel extends Equatable {
  final ProfilType profilType;
  final String nomComplet;
  final bool displayAidantCartouche;

  const EntourageProfilInfoDisplayModel({
    required this.profilType,
    required this.nomComplet,
    required this.displayAidantCartouche,
  });

  @override
  List<Object?> get props => [
        profilType,
        nomComplet,
        displayAidantCartouche,
      ];
}

class EntourageContactsDisplayModel extends Equatable {
  final ContactUrgenceDisplayModel contactUrgenceDisplayModel;
  final PersonneDeConfianceDisplayModel? personneDeConfianceDisplayModel;
  final ProchesAidantsDisplayModel prochesAidantsDisplayModel;
  final ProchesAidesDisplayModel? prochesAidesDisplayModel;

  const EntourageContactsDisplayModel({
    required this.contactUrgenceDisplayModel,
    required this.personneDeConfianceDisplayModel,
    required this.prochesAidantsDisplayModel,
    required this.prochesAidesDisplayModel,
  });

  bool get isEmpty =>
      contactUrgenceDisplayModel.entourageContacts.isEmpty &&
      prochesAidantsDisplayModel.entourageContacts.isEmpty &&
      (prochesAidesDisplayModel == null || prochesAidesDisplayModel?.entourageContacts.isEmpty == true) &&
      (personneDeConfianceDisplayModel == null || personneDeConfianceDisplayModel?.entourageContacts.isEmpty == true);

  @override
  List<Object?> get props => [
        contactUrgenceDisplayModel,
        personneDeConfianceDisplayModel,
        prochesAidantsDisplayModel,
        prochesAidesDisplayModel,
      ];
}

class ContactUrgenceDisplayModel extends Equatable {
  final bool showLinkAddMyself;
  final bool showLinkAddEntourage;
  final List<EntourageContact> entourageContacts;

  const ContactUrgenceDisplayModel({
    required this.showLinkAddMyself,
    required this.showLinkAddEntourage,
    required this.entourageContacts,
  });

  @override
  List<Object?> get props => [showLinkAddMyself, showLinkAddEntourage, entourageContacts];
}

class PersonneDeConfianceDisplayModel extends Equatable {
  final bool showLinkAddEntourage;
  final String description;
  final List<EntourageContact> entourageContacts;

  const PersonneDeConfianceDisplayModel({
    required this.showLinkAddEntourage,
    required this.description,
    required this.entourageContacts,
  });

  @override
  List<Object?> get props => [showLinkAddEntourage, description, entourageContacts];
}

class ProchesAidantsDisplayModel extends Equatable {
  final String description;
  final List<EntourageContact> entourageContacts;

  const ProchesAidantsDisplayModel({
    required this.description,
    required this.entourageContacts,
  });

  @override
  List<Object?> get props => [description, entourageContacts];
}

class ProchesAidesDisplayModel extends Equatable {
  final List<EntourageContact> entourageContacts;

  const ProchesAidesDisplayModel({
    required this.entourageContacts,
  });

  @override
  List<Object?> get props => [entourageContacts];
}
