/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';

class MagicalViewModel {
  final List<MagicalItem> items;

  MagicalViewModel._internal({required this.items});

  factory MagicalViewModel() {
    return MagicalViewModel._internal(items: _setElements());
  }
}

List<MagicalItem> _setElements() {
  return [
    MagicalItem('Alerts / Information ', '🚨', ['EnsPersistentInfoBox']),
    MagicalItem('Bottom sheets', '↕️', [
      'NewFeaturesBottomSheet',
      'OnboardingBottomSheet',
      'ConfirmationBottomSheet',
      'HabitudesVieBottomSheet',
      'DynamicActionBottomSheet',
      'InformationBottomSheet',
    ]),
    MagicalItem('Buttons', '🟢', [
      'EnsButton',
      'EnsButtonSecondary',
      'EnsOutlinedButton',
      'EnsFloatingActionAddButton',
      'IconButton',
      'HomeButton1',
      'HomeButton2',
      'HomeButton3',
    ]),
    MagicalItem('Cards', '🃏', ['HandicapDetailsCard', 'AddressItem', 'ConsentementPsItem']),
    MagicalItem('Carousels', '🎠', ['EnsCarousel']),
    MagicalItem('Checkbox', '☑️', ['EnsCheckbox', 'DocumentSelectionItem', 'EnsCheckboxTitleButton']),
    MagicalItem('Colors', '🧑🏽‍🎨', ['Colors']),
    MagicalItem('Dialogs', '💬', ['EnsFilterButton']),
    MagicalItem('Icons', '📱', [
      ...EnsImages.values.where((svg) => svg.contains('ic_') && !svg.endsWith('.png')),
    ]),
    MagicalItem('Information', 'ℹ️', [
      'VaccinationConfirmation',
      'EnsInformationMarkLabel',
    ]),
    MagicalItem('Input Form texts', '📝', [
      'CountedTextInput',
      'EnsInputDate',
      'EnsDropDown',
      'CountedTextInputWithCheckbox',
      'DateInputFields',
      'CommentTextInput',
      'HospitalisationDurationInput',
      'MultipleSelector',
      'DropDownWithDescription',
      'TextInput',
      'PhoneInput',
      'EnsAutocompleteInput',
    ]),
    MagicalItem('Illustrations', '🖼️', [
      ...EnsImages.values.where((svg) => !svg.contains('ic_') && !svg.endsWith('.png')),
    ]),
    MagicalItem('Links - Internal', '📥', ['InternalLinkSynthese', 'InternalLink']),
    MagicalItem('Links - External', '📤', ['HandicapInformation', 'ExternalLink']),
    MagicalItem('Lists', '🧾', [
      'ProfilMedicalBlocMenu',
      'ProfilMedicalMenuUniqueItem',
      'TraitementItem',
      'MonHistoireDeSante',
    ]),
    MagicalItem('List Headers', '🔝', ['DateListHeader']),
    MagicalItem('Navigation Bars: Top', '🧭 ⬆', ['MainAppBar', 'AppBarSubLevel', 'AppBarSubLevelWithOptions']),
    MagicalItem('Navigation Bars: Bottom', '🧭 ⬇️', ['BottomNavigationBar']),
    MagicalItem('Popups', '🍾 ', ['ParametersPopup']),
    MagicalItem('Radio Buttons', '📻', ['RadioButtonsConfidentiality']),
    MagicalItem('Snack Bars', '🍿', [
      'SnackBarSuccess',
      'SnackBarError',
      'EnsSnackBarLoading',
      'EnsSnackBarSuccess',
      'EnsSnackBarError',
    ]),
    MagicalItem('Switches', '🚦', ['Switch']),
    MagicalItem('Tabs', '↔️', ['TabBar']),
    MagicalItem('Tags', '🏷️', ['EnsEtiquette']),
    MagicalItem('Texts', '📋', ['Text', 'TextVersion', 'TextAccessibility']),
    MagicalItem('Text Styles', '✍', ['Text Styles']),
    MagicalItem('Titles', '👑', ['Title', 'SecondaryTitle', 'ThirdTitle']),
    MagicalItem('Trees', '🌲', ['SanteTree']),
  ];
}

class MagicalItem {
  final String type;
  final String icon;
  final List<String> elements;

  MagicalItem(this.type, this.icon, this.elements);
}
