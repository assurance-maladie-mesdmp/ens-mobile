/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'entourage_et_volontes_redux.dart';

class EntourageEtVolontesState extends Equatable {
  final AllPurposesStatus entourageContactsStatus;
  final List<EntourageContact> entourageContacts;
  final bool consent;
  final AllPurposesStatus createOrUpdateEntourageContactStatus;
  final AllPurposesStatus deleteEntourageContactStatus;
  final bool isUpdateConsentLoading;

  const EntourageEtVolontesState({
    this.entourageContactsStatus = AllPurposesStatus.NOT_LOADED,
    this.entourageContacts = const [],
    this.consent = false,
    this.createOrUpdateEntourageContactStatus = AllPurposesStatus.NOT_LOADED,
    this.deleteEntourageContactStatus = AllPurposesStatus.NOT_LOADED,
    this.isUpdateConsentLoading = false,
  });

  EntourageEtVolontesState clone({
    AllPurposesStatus? entourageContactsStatus,
    List<EntourageContact>? entourageContacts,
    bool? consent,
    AllPurposesStatus? createOrUpdateEntourageContactStatus,
    AllPurposesStatus? deleteEntourageContactStatus,
    bool? isUpdateConsentLoading,
  }) {
    return EntourageEtVolontesState(
      entourageContactsStatus: entourageContactsStatus ?? this.entourageContactsStatus,
      entourageContacts: entourageContacts ?? this.entourageContacts,
      consent: consent ?? this.consent,
      createOrUpdateEntourageContactStatus:
          createOrUpdateEntourageContactStatus ?? this.createOrUpdateEntourageContactStatus,
      deleteEntourageContactStatus: deleteEntourageContactStatus ?? this.deleteEntourageContactStatus,
      isUpdateConsentLoading: isUpdateConsentLoading ?? this.isUpdateConsentLoading,
    );
  }

  @override
  List<Object?> get props => [
        entourageContactsStatus,
        entourageContacts,
        consent,
        createOrUpdateEntourageContactStatus,
        deleteEntourageContactStatus,
        isUpdateConsentLoading,
      ];
}
