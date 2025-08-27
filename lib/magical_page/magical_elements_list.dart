/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/agenda/domain/models/examen_recommande.dart';
import 'package:fr_cnamts_ens/bottomsheet_nouvelles_fonctionalites/widgets/nouvelles_fonctionnalites_bottom_sheet.dart';
import 'package:fr_cnamts_ens/catalogue_services/screens/catalogue_services_en_savoir_plus_screen.dart';
import 'package:fr_cnamts_ens/documents/domain/models/ens_document.dart';
import 'package:fr_cnamts_ens/documents/domain/models/ens_document_categorie.dart';
import 'package:fr_cnamts_ens/documents/widgets/document_selection_item.dart';
import 'package:fr_cnamts_ens/documents/widgets/edit_document_form.dart';
import 'package:fr_cnamts_ens/documents/widgets/ens_filter_button.dart';
import 'package:fr_cnamts_ens/home/widgets/home_button.dart';
import 'package:fr_cnamts_ens/infra/injection/ens_module_container.dart';
import 'package:fr_cnamts_ens/magical_page/magical_view_model.dart';
import 'package:fr_cnamts_ens/parameters/consentements_ps/domain/models/ens_consentement_ps.dart';
import 'package:fr_cnamts_ens/parameters/consentements_ps/widgets/consentement_ps_item.dart';
import 'package:fr_cnamts_ens/parameters/phone/ens_phone_display_model.dart';
import 'package:fr_cnamts_ens/parameters/widgets/parameters_toggle_item.dart';
import 'package:fr_cnamts_ens/prevention/domain/models/article.dart';
import 'package:fr_cnamts_ens/profil_medical/domain/models/ens_date.dart';
import 'package:fr_cnamts_ens/profil_medical/domain/models/ens_duration.dart';
import 'package:fr_cnamts_ens/profil_medical/entourage_et_volontes/domain/entourage_contact.dart';
import 'package:fr_cnamts_ens/profil_medical/handicaps/domain/ens_handicap.dart';
import 'package:fr_cnamts_ens/profil_medical/handicaps/screens/edit_handicap_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/handicaps/screens/handicap_details_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/handicaps/screens/handicaps_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/hospitalisations/screens/hospitalisations_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/maladies/screen/maladies_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/domain/models/mon_histoire_de_sante_episode.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/domain/models/mon_histoire_de_sante_item.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/screens/displayModel/mon_histoire_de_sante_display_model.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/screens/mon_histoire_de_sante_filter_dialog.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/screens/viewmodels/mon_histoire_de_sante_category.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/screens/widgets/mon_histoire_de_sante_icon.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/screens/widgets/mon_histoire_de_sante_vue_jours_list_item.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/screens/widgets/mon_histoire_de_sante_vue_mois_list_item.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/redux/professionnels_de_sante_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/screens/professionnel_de_sante_display_model_role_enum.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/screens/professionnels_de_sante_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/screens/viewmodels/called_es_or_ps_detail_screen_from.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/search_ps/domain/models/professionnel_de_sante.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/widget/address_item.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/widget/ps_role_badge.dart';
import 'package:fr_cnamts_ens/profil_medical/screens/widgets/profil_medical_menu_item.dart';
import 'package:fr_cnamts_ens/profil_medical/synthese_pml/widgets/message_synthese_pml_widget.dart';
import 'package:fr_cnamts_ens/profil_medical/traitement/screens/traitements_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/traitement/screens/viewModels/traitements_screen_view_model.dart';
import 'package:fr_cnamts_ens/profil_medical/traitement/widgets/traitement_item.dart';
import 'package:fr_cnamts_ens/profil_medical/vaccinations/domain/models/ens_vaccin.dart';
import 'package:fr_cnamts_ens/profil_medical/vaccinations/domain/models/ens_vaccination.dart';
import 'package:fr_cnamts_ens/profil_medical/vaccinations/screens/vaccination_detail_screen.dart';
import 'package:fr_cnamts_ens/profils_rattaches/screens/profiles_dialog.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/resources/resource_extension.dart';
import 'package:fr_cnamts_ens/ui/utils/snackbar_utils.dart';
import 'package:fr_cnamts_ens/ui/widgets/action_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/confirmation_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/confirmation_bottom_sheet_default_text_content.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/dynamic_action_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/ens_choix_illustration_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/incitation_pml_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/information_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_bottom_nav_bar.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button_secondary.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_carousel.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_carousel_item.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_checkbox.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_checkbox_title_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_divider.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_dropdown_list.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_etiquette.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_external_link.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_floating_action_add_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_information_mark_label.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_ink_well.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_main_app_bar.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_outlined_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_persistent_info_box.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_rich_text.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/counted_text_input.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/ens_autocomplete_input.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/ens_autocomplete_input_data_display_model.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/ens_date_input_fields.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/ens_drop_down.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/ens_email_input.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/ens_hospitalisation_duration_input_fields.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/ens_input_date.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/ens_multiple_selector_form_field.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/ens_numero_secu_input_text.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/ens_telephone_with_indicatif_input.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/validators.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';

class MagicalElementsListScreen extends StatelessWidget {
  static const routeName = '/magicalElementsList';

  @override
  Widget build(BuildContext context) {
    final item = ModalRoute.of(context)!.settings.arguments! as MagicalItem;
    return Scaffold(
      appBar: EnsAppBarSubLevel(title: '${item.icon} ${item.type}'),
      body: ListViewWithScrollbar.builder(
        scrollDirection: Axis.vertical,
        padding: const EdgeInsets.only(bottom: 76, top: 20, right: 20, left: 20),
        shrinkWrap: true,
        itemCount: item.elements.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 10.0),
          child: _MagicalWidget(item.elements.elementAt(index)),
        ),
      ),
    );
  }
}

class _MagicalWidget extends StatelessWidget {
  final String elementName;

  const _MagicalWidget(this.elementName);

  @override
  Widget build(BuildContext context) {
    if (elementName.contains('ic_')) {
      return ColoredBox(
        color: EnsColors.illustrative10,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              EnsSvg(elementName, width: 40, height: 40),
              const SizedBox(width: 12),
              Expanded(child: Text(elementName.assetName, style: EnsTextStyle.text14_w600_normal_body)),
            ],
          ),
        ),
      );
    } else if (elementName.endsWith('.svg')) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            EnsSvg(elementName),
            Text(elementName.replaceAll('.svg', ''), style: EnsTextStyle.text14_w600_normal_body),
            const SizedBox(width: 12),
          ],
        ),
      );
    }
    switch (elementName) {
      case 'EnsPersistentInfoBox':
        return EnsPersistentInfoBox.text('Tous les champs sont obligatoires.');
      case 'VaccinationConfirmation':
        return const VaccinationConfirmation(author: 'Jean-Luc');
      case 'EnsInformationMarkLabel':
        return const EnsInformationMarkLabel(title: 'Ce professionnel de santé n\'est plus en activité');
      case 'EnsButton':
        return EnsButton(label: 'Primary Button', onTap: () {});
      case 'EnsOutlinedButton':
        return const EnsOutlinedButton(label: 'Outlined Button');
      case 'EnsButtonSecondary':
        return EnsButtonSecondary(label: 'Secondary Button', onTap: () {});
      case 'EnsFloatingActionAddButton':
        return EnsFloatingActionAddButton(onPressed: () {});
      case 'IconButton':
        return IconButton(
          onPressed: () {},
          icon: const EnsSvg(EnsImages.ic_info_circle_outlined),
          splashRadius: 28,
        );
      case 'OnboardingBottomSheet':
        return _OnboardingBottomSheet();
      case 'NewFeaturesBottomSheet':
        return _NewFeaturesBottomSheet();
      case 'ConfirmationBottomSheet':
        return _ConfirmationBottomSheet();
      case 'InformationBottomSheet':
        return _InformationBottomSheet();
      case 'HabitudesVieBottomSheet':
        return _HabitudesVieBottomSheet();
      case 'DynamicActionBottomSheet':
        return _DynamicActionBottomSheet();
      case 'EnsFilterButton':
        return _EnsFilterButton();
      case 'HandicapDetailsCard':
        return _HandicapDetailsCard();
      case 'AddressItem':
        return _AddressItem();
      case 'ConsentementPsItem':
        return _ConsentmentPs();
      case 'EnsCarousel':
        return _Carousel();
      case 'EnsCheckbox':
        return _EnsCheckbox();
      case 'DocumentSelectionItem':
        return _DocumentSelectionItem();
      case 'EnsCheckboxTitleButton':
        return _EnsCheckboxTitleButton();
      case 'MonHistoireDeSanteIcon.BIOLOGIE':
        return const MonHistoireDeSanteIcon(category: EpisodeSanteCategorie.BIOLOGIE, size: 40);
      case 'MonHistoireDeSanteIcon.SOINS':
        return const MonHistoireDeSanteIcon(category: EpisodeSanteCategorie.SOINS, size: 40);
      case 'MonHistoireDeSanteIcon.MEDICAMENTS':
        return const MonHistoireDeSanteIcon(category: EpisodeSanteCategorie.MEDICAMENTS, size: 40);
      case 'MonHistoireDeSanteIcon.HOSPITALISATION':
        return const MonHistoireDeSanteIcon(category: EpisodeSanteCategorie.HOSPITALISATION, size: 40);
      case 'MonHistoireDeSanteIcon.DISPOSITIFS_MEDICAUX':
        return const MonHistoireDeSanteIcon(category: EpisodeSanteCategorie.DISPOSITIFS_MEDICAUX, size: 40);
      case 'MonHistoireDeSanteIcon.RADIOLOGIE':
        return const MonHistoireDeSanteIcon(category: EpisodeSanteCategorie.RADIOLOGIE, size: 40);
      case 'MonHistoireDeSanteIcon.VACCIN':
        return const MonHistoireDeSanteIcon(category: EpisodeSanteCategorie.VACCIN, size: 40);
      case 'MonHistoireDeSanteIcon.VACCINATION':
        return const MonHistoireDeSanteIcon(category: EpisodeSanteCategorie.VACCINATION, size: 40);
      case 'MonHistoireDeSanteIcon.MALADIE':
        return const MonHistoireDeSanteIcon(category: EpisodeSanteCategorie.MALADIE, size: 40);
      case 'CountedTextInput':
        return _CountedTextInput();
      case 'EnsInputDate':
        return _InputDate();
      case 'EnsDropDown':
        return _DropDown();
      case 'CountedTextInputWithCheckbox':
        return _CountedTextInputWithCheckbox();
      case 'DateInputFields':
        return _DateInput();
      case 'CommentTextInput':
        return _CommentTextInput();
      case 'HospitalisationDurationInput':
        return _HospitalisationDurationInput();
      case 'MultipleSelector':
        return _MultipleSelector();
      case 'DropDownWithDescription':
        return _DropDownWithDescription();
      case 'TextInput':
        return _EmailInput();
      case 'PhoneInput':
        return _TelephoneInput();
      case 'EnsAutocompleteInput':
        return _EnsAutocompleteInput();
      case 'HandicapInformation':
        return HandicapInformation(() {});
      case 'ExternalLink':
        return _ExternalLink();
      case 'InternalLinkSynthese':
        return const MessageSynthesePmlWidget();
      case 'InternalLink':
        return _InternalLink();
      case 'ProfilMedicalBlocMenu':
        return _ProfilMedicalBlocMenu();
      case 'ProfilMedicalMenuUniqueItem':
        return _ProfilMedicalMenuUniqueItem();
      case 'TraitementItem':
        return _TraitementItem();
      case 'MonHistoireDeSante':
        return _MonHistoireDeSante();
      case 'DateListHeader':
        return _DateListHeader();
      case 'MainAppBar':
        return const EnsMainAppBar(backgroundColor: EnsColors.light, shadowOpacity: 1);
      case 'AppBarSubLevel':
        return const EnsAppBarSubLevel(title: 'Ajouter un document');
      case 'AppBarSubLevelWithOptions':
        return _AppBarSubLevelWithOptions();
      case 'BottomNavigationBar':
        return _BottomNavigationBar();
      case 'Switch':
        return _Switch();
      case 'Title':
        return const Text('Jacqueline Chantoux', style: EnsTextStyle.text24_w400_normal_title);
      case 'SecondaryTitle':
        return const Text('Consultation médecine générale', style: EnsTextStyle.text16_w700_normal_title);
      case 'ThirdTitle':
        return const Text('Nom de l\'acte', style: EnsTextStyle.text14_w600_normal_body);
      case 'Text':
        return _LongText();
      case 'Text Styles':
        return _TextStyles();
      case 'TextVersion':
        return const Text('Version 1.9.0', style: EnsTextStyle.text14_w400_normal_body);
      case 'TextAccessibility':
        return _TextWithIcon();
      case 'ParametersPopup':
        return _ParametersPopup();
      case 'RadioButtonsConfidentiality':
        return const RadioButtons(confidentiality: KindOfConfidentiality.PATIENT_ONLY);
      case 'SnackBarError':
        return _SnackBarError();
      case 'SnackBarSuccess':
        return _SnackBarSuccess();
      case 'EnsSnackBarError':
        return _EnsSnackBarError();
      case 'EnsSnackBarSuccess':
        return _EnsSnackBarSuccess();
      case 'EnsSnackBarLoading':
        return _EnsSnackBarLoading();
      case 'TabBar':
        return _TabBar();
      case 'EnsEtiquette':
        return const _EnsEtiquettes();
      case 'HomeButton1':
        return _HomeButton1();
      case 'HomeButton2':
        return _HomeButton2();
      case 'HomeButton3':
        return _HomeButton3();
      case 'SanteTree':
        return _SanteTree();
      case 'Colors':
        return _Colors();
      case 'EnsNumeroSecuInputText':
        return EnsNumeroSecuInputText(
          controller: TextEditingController(text: '178010100180139'),
          onTextDidChange: (value) {},
          isInfosNumSecuFromScan: false,
        );
      default:
        return _ElementNotFound(elementName);
    }
  }
}

class _SanteTree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const category = EpisodeSanteCategorie.MEDICAMENTS;
    return EnsDropdownList(
      headerColor: category.color,
      circleColor: EnsColors.light,
      label: category.getLabel(currentMaladie: false),
      leading: const MonHistoireDeSanteIcon(category: category, size: 40),
      items: [
        MonHistoireDeSanteEpisodeDisplayModel(
          episode: MonHistoireDeSanteEpisodeMedicaments(
            date: DateTime(2021, 12, 13),
            categorie: EpisodeSanteCategorie.MEDICAMENTS,
            items: [
              MonHistoireDeSanteItemMedicaments(
                dateDelivrance: DateTime(2021, 12, 13),
                nom: 'Paracétamol 1g',
                groupeTherapeutique: '',
                quantiteDeliveree: 2,
                prescripteur: null,
                delivreur: null,
              ),
              MonHistoireDeSanteItemMedicaments(
                dateDelivrance: DateTime(2021, 12, 13),
                nom: 'Paracétamol 1g',
                groupeTherapeutique: '',
                quantiteDeliveree: 1,
                prescripteur: null,
                delivreur: null,
              ),
            ],
          ),
          auteur: null,
          delivreur: null,
        ),
      ]
          .map(
            (displayModel) =>
                MonHistoireDeSanteDropdownListItem(displayModel: displayModel, isMaladieInProgress: false),
          )
          .toList(),
    );
  }
}

class _Colors extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final colorMap = EnsColors.getAllColors;
    return Column(
      children: [
        ...colorMap.entries.map(
          (entry) => Row(
            children: [
              Expanded(
                child: ColoredBox(
                  color: entry.value,
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Text(entry.key),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _TextStyles extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textStylesMap = EnsTextStyle.getAllTextStyles;
    return Column(
      children: [
        ...textStylesMap.entries.map(
          (entry) => Row(
            children: [
              Expanded(
                child: ColoredBox(
                  color: EnsColors.illustrative10,
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Text(
                      entry.key,
                      style: entry.value,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _HomeButton1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return HomeButton(
      semanticLabel: 'Accéder au catalogue de services',
      content: const EnsRichText(
        text: TextSpan(
          text: 'Accéder',
          style: EnsTextStyle.text14_w700_normal_light,
          children: [
            TextSpan(text: '\nau catalogue de services', style: EnsTextStyle.text14_w400_normal_light),
          ],
        ),
      ),
      iconUri: EnsImages.catalogue_de_services,
      color: EnsColors.primary,
      handler: () {},
    );
  }
}

class _HomeButton2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return HomeButton(
      semanticLabel: 'Compléter mon profil médical',
      content: const EnsRichText(
        text: TextSpan(
          text: 'Compléter',
          style: EnsTextStyle.text14_w700_normal_light,
          children: [TextSpan(text: '\nmon profil médical', style: EnsTextStyle.text14_w400_normal_light)],
        ),
      ),
      iconUri: EnsImages.profil_medical,
      color: EnsColors.tertiary,
      handler: () {},
    );
  }
}

class _HomeButton3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return HomeButton(
      semanticLabel: 'Mon espace santé en bref',
      content: const Text(
        'Mon espace \nsanté en bref',
        style: EnsTextStyle.text12_w700_normal_title,
      ),
      iconUri: EnsImages.recherche,
      color: EnsColors.light,
      radius: 8,
      handler: () {},
    );
  }
}

class _EnsEtiquettes extends StatelessWidget {
  const _EnsEtiquettes();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 16),
          child: Text('Documents', style: EnsTextStyle.text16_w700_normal_title, textAlign: TextAlign.center),
        ),
        ...EnsDocumentCategorie.values.map(
          (categorie) => categorie == EnsDocumentCategorie.unknown
              ? Container()
              : EnsEtiquette(
                  label: categorie.label,
                  backgroundColor: categorie.color,
                  padding: const EdgeInsets.only(bottom: 12),
                ),
        ),
        const EnsDivider(paddingTop: 8),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 16),
          child: Text('Agenda', style: EnsTextStyle.text16_w700_normal_title, textAlign: TextAlign.center),
        ),
        ...ExamenStatus.values.map(
          (categorie) => EnsEtiquette(
            label: categorie.label,
            backgroundColor: categorie.color,
            padding: const EdgeInsets.only(bottom: 12),
          ),
        ),
        const EnsDivider(paddingTop: 8),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 16),
          child: Text('Entourage', style: EnsTextStyle.text16_w700_normal_title, textAlign: TextAlign.center),
        ),
        ...EntourageContactType.values.map(
          (categorie) => categorie == EntourageContactType.INCONNUS
              ? Container()
              : EnsEtiquette(
                  label: categorie.label,
                  backgroundColor: categorie.color,
                  padding: const EdgeInsets.only(bottom: 12),
                ),
        ),
        const EnsDivider(paddingTop: 8),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 16),
          child: Text(
            'Professionnel de santé',
            style: EnsTextStyle.text16_w700_normal_title,
            textAlign: TextAlign.center,
          ),
        ),
        ...PsRoleDisplayModel.values.map(
          (categorie) => Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: PsRoleBadge(categorie),
          ),
        ),
        const EnsDivider(paddingTop: 8),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 16),
          child: Text('Vaccinations', style: EnsTextStyle.text16_w700_normal_title, textAlign: TextAlign.center),
        ),
        ...VaccinationNiveauRecommandation.values.map(
          (categorie) => EnsEtiquette(
            label: categorie.label,
            backgroundColor: categorie.color,
            padding: const EdgeInsets.only(bottom: 12),
          ),
        ),
        const EnsDivider(paddingTop: 8),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 16),
          child: Text('Mesures', style: EnsTextStyle.text16_w700_normal_title, textAlign: TextAlign.center),
        ),
        const EnsEtiquette(
          label: 'Sur les 7 derniers jours',
          backgroundColor: EnsColors.neutral200,
          padding: EdgeInsets.only(bottom: 12),
        ),
      ],
    );
  }
}

class _TabBar extends StatefulWidget {
  @override
  State<_TabBar> createState() => _TabBarState();
}

class _TabBarState extends State<_TabBar> with SingleTickerProviderStateMixin {
  late TabController tabController;
  int selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    tabController = TabController(initialIndex: selectedIndex, length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: EnsColors.neutral200,
            width: 4,
          ),
        ),
      ),
      child: TabBar(
        labelStyle: EnsTextStyle.text16_w700_normal_title,
        labelColor: EnsColors.primary,
        unselectedLabelColor: EnsColors.body,
        unselectedLabelStyle: EnsTextStyle.text16_w700_normal_title,
        indicatorWeight: 4.0,
        indicatorColor: EnsColors.primary,
        tabs: const [Tab(text: 'Jour'), Tab(text: 'Mois')],
        controller: tabController,
        onTap: (int index) {
          setState(() {
            selectedIndex = index;
            tabController.animateTo(index);
          });
        },
      ),
    );
  }
}

class _EnsSnackBarError extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return EnsInkWell(
      onTap: () => showSnackbarError(context, 'Ens Error SnackBar'),
      child: const Text('Ens Error SnackBar', style: EnsTextStyle.text14_w400_normal_error),
    );
  }
}

class _EnsSnackBarSuccess extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return EnsInkWell(
      onTap: () => showSnackbarSuccess(context, 'Ens Success SnackBar'),
      child: const Text('Ens Success SnackBar', style: EnsTextStyle.text14_w600_normal_success),
    );
  }
}

class _EnsSnackBarLoading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return EnsInkWell(
      onTap: () => showSnackbarLoading(context, 'Ens Loading SnackBar'),
      child: const Text('Ens Loading SnackBar', style: EnsTextStyle.text14_w600_normal_primary),
    );
  }
}

class _SnackBarError extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return EnsInkWell(
      onTap: () => _showSnackBar(context),
      child: const Text('Error SnackBar', style: EnsTextStyle.text14_w400_normal_error),
    );
  }

  void _showSnackBar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(backgroundColor: Colors.red, content: Text('Failed to clean temporary files')),
    );
  }
}

class _SnackBarSuccess extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return EnsInkWell(
      onTap: () => _showSnackBar(context),
      child: const Text('Success SnackBar', style: EnsTextStyle.text14_w600_normal_success),
    );
  }

  void _showSnackBar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(backgroundColor: Colors.green, content: Text('Temporary files removed with success.')),
    );
  }
}

class _ParametersPopup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: EnsInkWell(
        semanticLabel: 'acceder aux paramètres du profil de Gabrielle Capanelli ou changer de profil',
        onTap: () {
          showGeneralDialog(
            context: context,
            pageBuilder: (_, __, ___) => SafeArea(child: ProfilesDialog()),
            transitionBuilder: (_, animation1, __, child) => Transform.scale(
              alignment: FractionalOffset.topLeft,
              origin: Offset(
                -MediaQuery.of(context).size.width / 3,
                MediaQuery.of(context).size.height / 20,
              ),
              scale: Curves.easeInOut.transform(animation1.value),
              child: child,
            ),
            transitionDuration: const Duration(milliseconds: 200),
          );
        },
        child: Padding(
          padding: const EdgeInsets.only(left: 8, bottom: 4, right: 8),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8, right: 8),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    EnsSvg(
                      EnsImages.ic_header_main_user_background,
                      color: EnsColors.primary,
                      width: 38,
                      height: 38,
                      placeholderBuilder: (_) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        child: Container(
                          width: 32,
                          height: 32,
                          decoration: BoxDecoration(
                            color: EnsColors.primary,
                            borderRadius: BorderRadius.circular(80),
                          ),
                        ),
                      ),
                    ),
                    const Center(
                      child: EnsSvg(EnsImages.ic_group, width: 16, height: 16),
                    ),
                  ],
                ),
              ),
              const ProfileName('Gabrielle Capanelli'),
            ],
          ),
        ),
      ),
    );
  }
}

class _TextWithIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        EnsSvg(EnsImages.ic_accessibility, height: 16, width: 16),
        SizedBox(width: 12),
        Text('Accessibilité', style: EnsTextStyle.text12_w400_normal_body),
      ],
    );
  }
}

class _LongText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Text(
      '''
Je masque mes documents et ma rubrique histoire de santé.
 • Par défaut mes nouveaux documents sont masqués aux professionnels de santé.
 • Mes documents pourront toujours être consultés par le professionnel qui les a ajoutés.
        ''',
      style: EnsTextStyle.text14_w400_normal_body,
    );
  }
}

class _Switch extends StatefulWidget {
  @override
  State<_Switch> createState() => _SwitchState();
}

class _SwitchState extends State<_Switch> {
  bool _isActive = true;

  @override
  Widget build(BuildContext context) {
    return ParametersToggleItem(
      titre: 'Documents et histoire de santé',
      description: 'Je masque tous mes documents et ma rubrique histoire de santé',
      value: _isActive,
      disabled: false,
      onToggle: (newValue) {
        setState(() {
          _isActive = !_isActive;
        });
      },
    );
  }
}

class _BottomNavigationBar extends StatefulWidget {
  @override
  State<_BottomNavigationBar> createState() => _BottomNavigationBarState();
}

class _BottomNavigationBarState extends State<_BottomNavigationBar> {
  int _selectedPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return EnsBottomNavigationBar(
      activeColor: EnsColors.primary,
      inactiveColor: EnsColors.body,
      onTap: (index) {
        setState(() {
          _selectedPageIndex = index;
        });
      },
      currentIndex: _selectedPageIndex,
      items: const [
        EnsNavigationBarItem(
          title: 'Accueil',
          iconUri: EnsImages.ic_home_alt_outlined,
          selectedIconUri: EnsImages.ic_home_alt_filled,
          semanticLabel: 'Accueil, onglet 1 sur 4',
        ),
        EnsNavigationBarItem(
          title: 'Documents',
          iconUri: EnsImages.ic_folder_open,
          selectedIconUri: EnsImages.ic_folder_open_filled,
          semanticLabel: 'Documents, onglet 2 sur 4',
        ),
        EnsNavigationBarItem(
          title: 'Messages',
          iconUri: EnsImages.ic_mail,
          selectedIconUri: EnsImages.ic_mail_filled,
          semanticLabel: 'Messages, onglet 3 sur 4',
        ),
        EnsNavigationBarItem(
          title: 'Profil médical',
          iconUri: EnsImages.ic_medical_profile_outlined,
          selectedIconUri: EnsImages.ic_medical_profile_filled,
          semanticLabel: 'Profil médical, onglet 4 sur 4',
        ),
        EnsNavigationBarItem(title: '', iconUri: '', selectedIconUri: '', semanticLabel: ''),
      ],
    );
  }
}

class _AppBarSubLevelWithOptions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return EnsAppBarSubLevel(
      title: 'Détails du rendez-vous',
      action: ActionButton(icon: const Icon(Icons.more_vert), tooltip: 'options', onTap: () {}),
    );
  }
}

class _DateListHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(0, 16, 8, 0),
          child: Text('2021', style: EnsTextStyle.text24_w400_normal_title),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(0, 16, 8, 0),
          child: Text('14 décembre', style: EnsTextStyle.text14_w400_normal_body),
        ),
      ],
    );
  }
}

class _TraitementItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TraitementItem(
          displayModel: TraitementsItemDisplayModel(
            id: 'id',
            name: 'Adepal',
            dateInfo: 'Depuis le 23 Octobre 2021',
          ),
        ),
        TraitementItem(
          displayModel: TraitementsItemDisplayModel(
            id: 'id',
            name: 'Doliprane',
            dateInfo: 'Depuis le 22 Octobre 2021',
          ),
        ),
      ],
    );
  }
}

class _MonHistoireDeSante extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MonHistoireDeSanteVueJoursListItem(
          displayModel: MonHistoireDeSanteDisplayModel.episode(
            episode: MonHistoireDeSanteEpisodeBiologie(
              date: DateTime(2022, 2, 2),
              categorie: EpisodeSanteCategorie.BIOLOGIE,
              items: const [],
            ),
            auteur: null,
            delivreur: null,
          ),
          from: FetchProfessionnelSanteDetailFrom.HOME,
        ),
        MonHistoireDeSanteVueJoursListItem(
          displayModel: MonHistoireDeSanteDisplayModel.episode(
            episode: MonHistoireDeSanteEpisodeRadiologie(
              date: DateTime(2022, 2, 2),
              categorie: EpisodeSanteCategorie.RADIOLOGIE,
              items: const [],
            ),
            auteur: null,
            delivreur: null,
          ),
          from: FetchProfessionnelSanteDetailFrom.HOME,
        ),
      ],
    );
  }
}

class _ProfilMedicalMenuUniqueItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const ProfilMedicalMenuUniqueItem(
      title: 'Professionnels de santé',
      destinationPage: ProfessionnelsDeSanteScreen.routeName,
      svgPath: EnsImages.professionnel_de_sante,
    );
  }
}

class _ProfilMedicalBlocMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const ProfilMedicalBlocMenu(
      menuTitle: 'Suivi médical',
      svgPath: EnsImages.suivi_medical,
      svgHeight: 49,
      svgWidth: 49,
      subMenuItems: [
        ProfilMedicalSubMenuItem(title: 'Maladies et sujets de santé', destinationPage: MaladiesScreen.routeName),
        ProfilMedicalSubMenuItem(title: 'Traitements', destinationPage: TraitementsScreen.routeName),
        ProfilMedicalSubMenuItem(title: 'Hospitalisations', destinationPage: HospitalisationsScreen.routeName),
        ProfilMedicalSubMenuItem(title: 'Handicaps', destinationPage: HandicapsScreen.routeName),
      ],
    );
  }
}

class _InternalLink extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, bottom: 12, top: 32, right: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            'Je découvre les services web et les applications référencées pour Mon espace santé qui peuvent m’accompagner dans ma santé.',
            style: EnsTextStyle.text14_w400_normal_body,
          ),
          Align(
            alignment: Alignment.centerLeft,
            heightFactor: 1.5,
            child: EnsInkWell(
              onTap: () {
                final navigatorKey = EnsModuleContainer.currentInjector.getNavigatorKey();
                navigatorKey.currentState?.pushNamed(CatalogueServicesEnSavoirPlusScreen.routeName);
              },
              child: const Text('En savoir plus', style: EnsTextStyle.text14_w700_normal_primary),
            ),
          ),
        ],
      ),
    );
  }
}

class _ExternalLink extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const EnsExternalLink.withRedirection(
      linkUrl: 'https://www.monespacesante.fr/mon-compte/mes-informations',
      linkText: 'Retrouvez toutes les rubriques des Paramètres sur le site Monespacesante.fr',
      extraPadding: EdgeInsets.symmetric(vertical: 16),
      semanticsLabel: 'Retrouvez toutes les rubriques des Paramètres sur le site mon espace santé point fr',
    );
  }
}

class _TelephoneInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final numberController = TextEditingController();
    final indicatifController = ValueNotifier<Indicatif>(Indicatif.PLUS_33);
    return EnsTelephoneWithIndicatifInput(
      context: context,
      numberController: numberController,
      indicatifController: indicatifController,
    );
  }
}

class _EnsAutocompleteInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final vaccinInputController = ValueNotifier<EnsVaccin?>(null);
    final displayedVaccinInputLabelController = TextEditingController();
    final vaccinLabelFocus = FocusNode();
    final vaccinInfoMap = {
      EnsAutocompleteInputDataDisplayModel('Pfizer', 'description'):
          EnsVaccin(vaccineRefId: 'id', label: 'Pfizer', pathologies: 'COVID', cipCodes: []),
      EnsAutocompleteInputDataDisplayModel('Astra Zeneca', 'description'):
          EnsVaccin(vaccineRefId: 'id', label: 'Astra Zeneca', pathologies: 'COVID', cipCodes: []),
      EnsAutocompleteInputDataDisplayModel('Sinovac', 'description'):
          EnsVaccin(vaccineRefId: 'id', label: 'Sinovac', pathologies: 'COVID', cipCodes: []),
      EnsAutocompleteInputDataDisplayModel('Moderna', 'description'):
          EnsVaccin(vaccineRefId: 'id', label: 'Moderna', pathologies: 'COVID', cipCodes: []),
    };
    return EnsAutocompleteInput<EnsVaccin?>(
      key: GlobalKey(),
      data: vaccinInfoMap,
      label: 'Nom du vaccin',
      info: 'Ex. : Grippe',
      hint: 'Sélectionnez une valeur',
      controller: vaccinInputController,
      displayedLabelController: displayedVaccinInputLabelController,
      emptyErrorText: 'Sélectionner un vaccin de la liste',
      context: context,
      focusNode: vaccinLabelFocus,
      emptyStateWording: 'Aucun vaccin correspondant',
      onTap: () {},
    );
  }
}

class _EmailInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final emailTextInputController = TextEditingController();
    return EnsEmailInput(
      emailController: emailTextInputController,
    );
  }
}

class _DropDownWithDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final handicapRateController = ValueNotifier<EnsDisabilityRate?>(null);
    return EnsDropDown(
      context: context,
      borderRadius: BorderRadius.circular(4),
      label: 'Taux d\'incapacité',
      description:
          'La Commission des Droits et de l’Autonomie des Personnes Handicapées (CDAPH) ne fixe pas un taux précis d’incapacité mais une “fourchette” comprenant des degrés d’incapacité légers, modérés et majeurs.',
      hint: '- Sélectionnez un taux - ',
      controller: handicapRateController,
      items: EnsDisabilityRate.values.toList(),
      itemFormater: (EnsDisabilityRate? handicapTaux) => handicapTaux != null ? handicapTaux.label : '',
      validator: _requiredHandicapTauxFieldValidator,
    );
  }

  String? _requiredHandicapTauxFieldValidator(EnsDisabilityRate? handicapTaux) {
    if (handicapTaux == null) {
      return 'Choisir un taux d\'incapacité dans la liste';
    }
    return null;
  }
}

class _MultipleSelector extends StatefulWidget {
  @override
  State<_MultipleSelector> createState() => _MultipleSelectorState();
}

class _MultipleSelectorState extends State<_MultipleSelector> {
  List<HandicapTypeEnum> _handicapsTypes = [];

  @override
  Widget build(BuildContext context) {
    final handicapTypeController = ValueNotifier<HandicapTypeEnum?>(null);
    return EnsMultipleSelectorFormField<HandicapTypeEnum>(
      context: context,
      borderRadius: BorderRadius.circular(4),
      label: 'Type de handicap',
      hint: _getHandicapTypeHint(),
      labelMapper: (type) => type.label,
      controller: handicapTypeController,
      validator: _requiredHandicapTypeFieldValidator,
      preSelectedCategories: _handicapsTypes,
      selectableFilters: HandicapTypeEnum.values.where((element) => element != HandicapTypeEnum.UNKNOWN).toList(),
      onSelected: (selectedFilters) {
        setState(() {
          _handicapsTypes = selectedFilters;
        });
      },
    );
  }

  String? _requiredHandicapTypeFieldValidator(HandicapTypeEnum? handicapType) {
    if (_handicapsTypes.isEmpty) {
      return 'Choisir un type de handicap dans la liste';
    }
    return null;
  }

  String _getHandicapTypeHint() {
    if (_handicapsTypes.isEmpty) {
      return '- Sélectionnez un type - ';
    } else if (_handicapsTypes.length == 1) {
      return '1 type sélectionné';
    } else {
      return '${_handicapsTypes.length} types sélectionnés';
    }
  }
}

class _HospitalisationDurationInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final durationController = ValueNotifier<EnsHospitalisationDuration?>(null);
    return EnsHospitalisationDurationInputField(
      context: context,
      label: 'Durée du séjour (facultatif)',
      controller: durationController,
      initialValue: durationController.value,
    );
  }
}

class _CommentTextInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final commentController = TextEditingController();
    return CountedTextInput.withBorders(
      label: 'Commentaire (facultatif)',
      description: 'Informations complémentaires à cette maladie',
      hint: 'Ex. : diagnostic, sévérité, dates, traitements\u2026',
      controller: commentController,
      maxCharacters: 3000,
      maxLines: 7,
      validatorCallback: (value) => limitCharactersFieldValidator(
        value: value,
        maxCharacters: 3000,
        errorMessage: 'Commentaire limité à 3000 caractères',
      ),
      textInputAction: TextInputAction.newline,
    );
  }
}

class _DateInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final startDateController = ValueNotifier<EnsDate?>(null);
    return EnsDateInputFields(
      label: 'Date de début (année obligatoire)',
      controller: startDateController,
      initialValue: startDateController.value,
    );
  }
}

class _CountedTextInputWithCheckbox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final nameTextInputController = TextEditingController();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CountedTextInput.withBorders(
          label: 'Nom',
          description: 'Ex. : Eczéma',
          controller: nameTextInputController,
          deniedRegExp: '[@<>\\?:/€\\*#\\|%~\\+£\\\$!§¤]',
          validatorCallback: (value) => textFieldValidator(value: value),
        ),
        _EnsCheckbox(),
      ],
    );
  }
}

class _DropDown extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final docTypeController = ValueNotifier<EnsDocumentCategorie?>(null);
    return EnsDropDown<EnsDocumentCategorie>(
      enabled: true,
      context: context,
      borderRadius: BorderRadius.circular(4),
      label: 'Catégorie du document',
      hint: '- Sélectionner une catégorie -',
      controller: docTypeController,
      items: EnsDocumentCategorie.values
          .where(
            (categorie) =>
                categorie != EnsDocumentCategorie.unknown &&
                categorie != EnsDocumentCategorie.syntheseMedicale &&
                categorie != EnsDocumentCategorie.directivesAnticipees,
          )
          .toList(),
      itemFormater: (EnsDocumentCategorie? categorie) => categorie != null ? categorie.label : '',
      validator: requiredFieldValidator,
    );
  }
}

class _InputDate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final docDateController = ValueNotifier<DateTime>(DateTime.now());
    return EnsInputDate(
      enabled: true,
      label: 'Date du document ou date du jour',
      hint: 'jj/mm/aaaa',
      controller: docDateController,
      context: context,
      lastDate: DateTime.now(),
    );
  }
}

class _CountedTextInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final docNameController = TextEditingController(text: 'Arrêt de travail');
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CountedTextInput.withBorders(
          enabled: true,
          label: 'Nom du document',
          description: 'Ex. : Ordonnance de soins n°4',
          controller: docNameController,
          deniedRegExp: '[@<>\\?:/€\\*#\\|%~\\+£\\\$!§¤]',
          validatorCallback: (value) => textFieldValidator(value: value),
          maxCharacters: 50,
        ),
        const Text(
          'Caractères refusés: @<>?:/€*#| %  ~ + £ \$ ! § ¤',
          style: EnsTextStyle.text14_w600_normal_body,
        ),
      ],
    );
  }
}

class _DocumentSelectionItem extends StatefulWidget {
  @override
  State<_DocumentSelectionItem> createState() => _DocumentSelectionItemState();
}

class _DocumentSelectionItemState extends State<_DocumentSelectionItem> {
  bool _isSelected = true;

  @override
  Widget build(BuildContext context) {
    return EnsInkWell(
      onTap: () => setState(() {
        _isSelected = !_isSelected;
      }),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          EnsCheckbox(
            value: _isSelected,
            onChange: (isChecked) {
              setState(() {
                _isSelected = !_isSelected;
              });
            },
          ),
          const SizedBox(width: 16),
          DocumentDetails(
            title: 'Radio du thorax',
            date: DateTime.now(),
            fullName: 'Docteur Delacroix',
            categoryColor: EnsColors.illustrative08,
            categoryLabel: 'Radio, écho, scanner, IRM...',
            dossierName: 'Nom du dossier',
            shouldDisplayFolderName: true,
          ),
        ],
      ),
    );
  }
}

class _EnsCheckboxTitleButton extends StatefulWidget {
  @override
  State<_EnsCheckboxTitleButton> createState() => _EnsCheckboxTitleButtonState();
}

class _EnsCheckboxTitleButtonState extends State<_EnsCheckboxTitleButton> {
  bool _checkBoxValue = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        EnsCheckboxTitleButton(
          label: 'Jean Dupond',
          onChange: (isChecked) {
            setState(() {
              _checkBoxValue = !_checkBoxValue;
            });
          },
          value: _checkBoxValue,
        ),
        const SizedBox(height: 16),
        EnsCheckboxTitleButton(
          label: 'Jean Dupond',
          onChange: (isChecked) {
            setState(() {
              _checkBoxValue = !_checkBoxValue;
            });
          },
          value: _checkBoxValue,
          error: true,
        ),
        const SizedBox(height: 16),
        EnsCheckboxTitleButton.withCard(
          label: 'Jeanne Dupond',
          onChange: (isChecked) {
            setState(() {
              _checkBoxValue = !_checkBoxValue;
            });
          },
          value: _checkBoxValue,
          withCard: true,
        ),
        const SizedBox(height: 16),
        EnsCheckboxTitleButton.withCardDescription(
          label: 'Ce contact d’urgence est aussi mon proche aidant.',
          description:
              'Un proche aidant me vient en aide dans ma vie quotidienne si je suis en situation de dépendance.',
          onChange: (isChecked) {
            setState(() {
              _checkBoxValue = !_checkBoxValue;
            });
          },
          value: _checkBoxValue,
          withCard: true,
        ),
      ],
    );
  }
}

class _EnsCheckbox extends StatefulWidget {
  @override
  State<_EnsCheckbox> createState() => _EnsCheckboxState();
}

class _EnsCheckboxState extends State<_EnsCheckbox> {
  bool _isCurrentMaladie = true;

  @override
  Widget build(BuildContext context) {
    return EnsInkWell(
      onTap: () => setState(() {
        _isCurrentMaladie = !_isCurrentMaladie;
      }),
      child: Row(
        children: [
          SizedBox(
            width: 24,
            height: 32,
            child: EnsCheckbox(
              value: _isCurrentMaladie,
              onChange: (isChecked) {
                setState(() {
                  _isCurrentMaladie = !_isCurrentMaladie;
                });
              },
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              'Maladie ou sujet de santé en cours',
              style: _isCurrentMaladie ? EnsTextStyle.text14_w600_normal_primary : EnsTextStyle.text14_w600_normal_body,
            ),
          ),
        ],
      ),
    );
  }
}

class _Carousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        EnsCarousel(
          height: 183,
          items: [
            EnsCarouselItemHomeActu(
              id: 'id',
              image: null,
              backgroundColor: ArticleBackgroundColor.BLEU.image,
              content: 'Configurez vos options de confidentialité pour une sécurité qui vous ressemble.',
              hasDetailArticle: true,
              link: '',
              linkName: 'Modifier mes paramètres',
            ),
            EnsCarouselItemHomeActu(
              id: 'id',
              image: null,
              backgroundColor: ArticleBackgroundColor.BLEU.image,
              content: 'Configurez vos options de confidentialité pour une sécurité qui vous ressemble.',
              hasDetailArticle: true,
              link: '',
              linkName: 'Modifier mes paramètres',
            ),
          ],
        ),
      ],
    );
  }
}

class _ConsentmentPs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ConsentementPsItem(
      consentementPs: EnsConsentementPs(
        psId: 'id',
        consentementId: 'id',
        firstName: 'De Santé',
        lastName: 'Professionel',
        startDate: DateTime(2021, 1, 1),
        type: EnsPsType.INDIVIDUEL,
        isAllowed: true,
      ),
      onButtonClicked: () {},
    );
  }
}

class _AddressItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const AddressItem(
      address: ActeurDeSanteAdresse(
        roadNumber: '31 ',
        city: 'Paris',
        cityZipCode: '75002',
        road: 'Avenue de l\'opéra',
        addressName: 'Cabinet du Dr Dupont',
      ),
      active: true,
      fromScreen: CalledESorPSDetailScreenFrom.MON_HISTOIRE_SANTE_SCREEN,
      isEs: true,
    );
  }
}

class _ElementNotFound extends StatelessWidget {
  final String elementName;

  const _ElementNotFound(this.elementName);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Center(child: Text('Element $elementName non trouvé ☹️', style: EnsTextStyle.text14_w600_normal_body)),
    );
  }
}

class _HandicapDetailsCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const HandicapDetails(
      type: 'Handicap de type sensoriel, Handicap de type troubles du neuro-développement (TND)',
      technicalHelp: 'Oui',
      disabilityRate: 'Inférieur à 50%',
      humanHelp: 'Oui, je bénéficie d\'une aide humaine',
      comment: 'Commentaire important',
    );
    // THEN
  }
}

class _EnsFilterButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: EnsFilterButton(
        numberActiveFilters: 0,
        accessibilityButtonText: 'Filtrer',
        filterDialog: MonHistoireDeSanteFilterDialog(
          availableCategories: [
            EpisodeSanteCategorie.BIOLOGIE,
            EpisodeSanteCategorie.SOINS,
            EpisodeSanteCategorie.MEDICAMENTS,
            EpisodeSanteCategorie.HOSPITALISATION,
            EpisodeSanteCategorie.DISPOSITIFS_MEDICAUX,
            EpisodeSanteCategorie.RADIOLOGIE,
            EpisodeSanteCategorie.VACCIN,
            EpisodeSanteCategorie.VACCINATION,
            EpisodeSanteCategorie.MALADIE,
          ],
          preSelectedCategories: [],
        ),
      ),
    );
  }
}

class _HabitudesVieBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: EnsInkWell(
        borderRadius: BorderRadius.circular(8),
        child: const Padding(
          padding: EdgeInsets.symmetric(vertical: 16, horizontal: 8),
          child: Text('Habitudes de vie', style: EnsTextStyle.text12_w700_normal_body),
        ),
        onTap: () => showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          builder: (BuildContext context) => EnsChoixIllustrationBottomSheet(
            title: 'Pratiquez-vous régulièrement une activité physique ?',
            image: EnsImages.activite_physique,
            positiveButtonHandler: () {},
            negativeButtonHandler: () {},
            closeButtonHandler: () {},
          ),
        ),
      ),
    );
  }
}

class _DynamicActionBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: EnsInkWell(
        borderRadius: BorderRadius.circular(8),
        child: const Padding(
          padding: EdgeInsets.symmetric(vertical: 16, horizontal: 8),
          child: Text('DynamicActionBottomSheet', style: EnsTextStyle.text12_w700_normal_body),
        ),
        onTap: () => DynamicActionBottomSheet.showOptionsBottomSheet(
          [
            BottomSheetAction(
              assetName: EnsImages.ic_show,
              label: 'Visualiser le document',
              execution: () {},
            ),
            BottomSheetAction(
              assetName: EnsImagesExtension.icShare,
              label: 'Partager',
              execution: () {},
            ),
            BottomSheetAction(
              assetName: EnsImages.ic_download,
              label: 'Télécharger',
              execution: () {},
            ),
          ],
          context,
        ),
      ),
    );
  }
}

class _NewFeaturesBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: EnsInkWell(
        borderRadius: BorderRadius.circular(8),
        child: const Padding(
          padding: EdgeInsets.symmetric(vertical: 16, horizontal: 8),
          child: Text('New Features', style: EnsTextStyle.text12_w700_normal_body),
        ),
        onTap: () => showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          builder: (BuildContext context) => NouvellesFonctionnalitesBottomSheet(),
        ),
      ),
    );
  }
}

class _OnboardingBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: EnsInkWell(
        borderRadius: BorderRadius.circular(8),
        child: const Padding(
          padding: EdgeInsets.symmetric(vertical: 16, horizontal: 8),
          child: Text('Onboarding', style: EnsTextStyle.text12_w700_normal_body),
        ),
        onTap: () => showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          builder: (BuildContext context) => IncitationPmlBottomSheet(
            onBoardedName: 'Margot',
            positiveButtonHandler: () {},
            negativeButtonHandler: () {},
            isProfilPrincipal: true,
          ),
        ),
      ),
    );
  }
}

class _ConfirmationBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: EnsInkWell(
        borderRadius: BorderRadius.circular(8),
        child: const Padding(
          padding: EdgeInsets.symmetric(vertical: 16, horizontal: 8),
          child: Text('Mode démo / Confirmation bottom sheet', style: EnsTextStyle.text12_w700_normal_body),
        ),
        onTap: () => _showGuestModeConfirmationBottomSheet(context),
      ),
    );
  }

  Future<bool> _showGuestModeConfirmationBottomSheet(BuildContext context) async {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) {
        return ConfirmationBottomSheet(
          title: 'Bienvenue\nsur le mode démo',
          content: const ConfirmationBottomSheetDefaultTextContent(
            'Ceci est une version de démonstration de l’application Mon espace santé. Les informations affichées sont fictives. Connectez-vous pour accéder à vos données et profiter de toutes les fonctionnalités.',
          ),
          positiveButtonLabel: 'Continuer',
          positiveButtonColor: EnsColors.primary,
          negativeButtonLabel: 'Connexion',
          positiveButtonHandler: () {},
          setButtonsToVerySmallSize: true,
        );
      },
    );
    return true;
  }
}

class _InformationBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: EnsInkWell(
        borderRadius: BorderRadius.circular(8),
        child: const Padding(
          padding: EdgeInsets.symmetric(vertical: 16, horizontal: 8),
          child: Text('Information', style: EnsTextStyle.text12_w700_normal_body),
        ),
        onTap: () => showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          builder: (BuildContext context) => const InformationBottomSheet(
            title: "Mise à jour des Conditions Générales d'Utilisation",
            description: Text(
              "Veuillez accepter la mise à jour des Conditions Générales d'Utilisation pour accéder à Mon Espace Santé.",
              style: EnsTextStyle.text16_w400_normal_body,
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
