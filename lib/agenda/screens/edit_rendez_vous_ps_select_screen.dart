/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/agenda/screens/viewModels/edit_rendez_vous_ps_select_screen_view_model.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/redux/etablissements_de_sante_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/redux/professionnels_de_sante_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/search_ps/domain/models/professionnel_de_sante.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/search_ps/screens/recherche_ps_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/search_ps/screens/viewModels/recherche_ps_screen_view_model.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/search_ps/screens/viewModels/recherche_ps_type.dart';
import 'package:fr_cnamts_ens/search_es/screens/recherche_es_screen.dart';
import 'package:fr_cnamts_ens/tags/tags_agenda.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/dynamic_action_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/champs_obligatoires_widget.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_error_text.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_form.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_ink_well.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_pop_scope.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/counted_text_input.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/ens_autocomplete_input.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/ens_drop_down.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/ens_radio_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/shake_widget.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:fr_cnamts_ens/utils/extensions/form_extensions.dart';
import 'package:fr_cnamts_ens/utils/navigation_utils.dart';

class EditRendezVousPsSelectScreen extends StatefulWidget {
  final EditRendezVousPsSelectScreenArguments arguments;

  const EditRendezVousPsSelectScreen(this.arguments);

  @override
  State<EditRendezVousPsSelectScreen> createState() => _EditRendezVousPsSelectScreenState();
}

class _EditRendezVousPsSelectScreenState extends State<EditRendezVousPsSelectScreen> {
  final _formKey = GlobalKey<FormState>();
  final _shakeKey = GlobalKey<ShakeWidgetState>();
  final _nameKey = GlobalKey();
  final _addressController = TextEditingController();
  final _nameController = ValueNotifier<ActeurDeSanteDisplayModel?>(null);
  final _professionController = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  final ValueNotifier<ActeurDeSanteAdresse?> _adressesListController = ValueNotifier<ActeurDeSanteAdresse?>(null);
  final ValueNotifier<ProfessionnelDeSanteExercice?> _professionsListController =
      ValueNotifier<ProfessionnelDeSanteExercice?>(null);
  final _displayedPsInputLabelController = TextEditingController();
  final _psInputController = ValueNotifier<ActeurDeSanteDisplayModel?>(null);
  late FocusNode _psLabelFocus;

  bool _showPsTypeError = false;
  bool? _isPs;
  bool _shouldTag = true;
  late List<ActeurDeSanteAdresse> _adressesList;
  late List<ProfessionnelDeSanteExercice> _professionsList = [];
  bool _isAProfessionsList = false;
  String? _idActeurSante;

  @override
  void initState() {
    _idActeurSante = widget.arguments.idActeurSante;
    _addressController.text = widget.arguments.addresse ?? '';
    _displayedPsInputLabelController.text = widget.arguments.name;
    _professionController.text = widget.arguments.profession;
    _isPs = widget.arguments.isPs;
    _adressesList = widget.arguments.adresses ?? [];
    _professionsList = widget.arguments.professions ?? [];
    _isAProfessionsList = widget.arguments.professions != null && widget.arguments.professions!.length > 1;
    _psLabelFocus = FocusNode();
    _psLabelFocus.addListener(() {
      if (!_psLabelFocus.hasFocus) {
        final currentSelectedValue = _psInputController.value;
        if (currentSelectedValue != null) {
          _displayedPsInputLabelController.text = currentSelectedValue.nom;
        }
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _addressController.dispose();
    _nameController.dispose();
    _professionController.dispose();
    _scrollController.dispose();
    _adressesListController.dispose();
    _professionsListController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (_shouldTag) {
      _shouldTag = false;
      context.tagAction(TagsAgenda.tag_954_ps_rdv);
    }
    return EnsPopScope.shouldNotPop(
      onPopInvoked: (navigator) async {
        if (_noDataEntered()) {
          navigator.pop();
        } else {
          final shouldPop = await NavigationUtils.onWillPop(
            context,
            'Quitter la page ?',
            'En quittant cette page, toutes vos modifications seront perdues.',
            'Quitter',
          );
          if (shouldPop) {
            navigator.pop();
          }
        }
      },
      child: Scaffold(
        appBar: const EnsAppBarSubLevel(title: 'Ajouter un professionnel de santé'),
        body: SafeArea(
          child: EnsForm(
            formKey: _formKey,
            shakeKey: _shakeKey,
            scrollController: _scrollController,
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: [
                const ChampsObligatoiresFormTextWidget(displayFullText: true),
                const SizedBox(height: 32),
                StoreConnector<EnsState, EditRendezVousPsSelectScreenViewModel>(
                  onInit: (store) {
                    store.dispatch(FetchProfessionnelsDeSanteAction());
                    store.dispatch(FetchEtablissementsDeSanteAction());
                  },
                  converter: (store) => EditRendezVousPsSelectScreenViewModel.from(store),
                  builder: (_, vm) {
                    final psInfoMap = vm.professionnelsEtEtablissementsDeSanteMap;
                    return EnsAutocompleteInput<ActeurDeSanteDisplayModel?>(
                      key: _nameKey,
                      data: psInfoMap,
                      label: _isPs == false ? 'Nom de l\'établissement de santé' : 'Nom du professionnel de santé',
                      hint: 'Sélectionnez une valeur',
                      controller: _nameController,
                      displayedLabelController: _displayedPsInputLabelController,
                      emptyErrorText: _isPs == false
                          ? 'Sélectionner le nom de l\'établissement de santé'
                          : 'Sélectionner le nom du professionnel de santé',
                      context: context,
                      maxCharacters: 50,
                      info: _isPs == false ? 'Ex : pharmacie Centrale, clinique des Lilas...' : 'Ex : NGUYEN',
                      focusNode: _psLabelFocus,
                      emptyStateWording: 'Aucun professionnel de santé correspondant',
                      onSuggestionSelected: (suggestion) {
                        setState(() {
                          _idActeurSante = psInfoMap[suggestion]?.idNat;
                          if (psInfoMap[suggestion]?.adresse != null) {
                            _addressController.text = psInfoMap[suggestion]!.adresse!;
                          }
                          if (psInfoMap[suggestion]?.professionOuActivite != null) {
                            _professionController.text = psInfoMap[suggestion]!.professionOuActivite!;
                          }
                          if (psInfoMap[suggestion]?.isPs ?? true) {
                            _isPs = true;
                          } else {
                            _isPs = false;
                          }
                        });
                      },
                    );
                  },
                ),
                ButtonSearchPS(
                  addresse: _addressController.text,
                  name: _displayedPsInputLabelController.text,
                  profession: _professionController.text,
                  isPs: _isPs,
                  adresses: _adressesList,
                  professions: _professionsList,
                  updatePs: (
                    adresse,
                    profession,
                    name,
                    isPs,
                    adressesList,
                    professionsList,
                    idActeurSante,
                  ) {
                    setState(() {
                      _displayedPsInputLabelController.text = name;
                      _isPs = isPs;
                      _idActeurSante = idActeurSante;
                      if (adressesList != null && adressesList.isNotEmpty && adressesList.length > 1) {
                        _adressesList = adressesList;
                        _addressController.text = '';
                      } else {
                        _adressesList = [];
                        _addressController.text = adresse ?? '';
                      }
                      if (professionsList != null && professionsList.isNotEmpty && professionsList.length > 1) {
                        _professionsList = professionsList;
                        _professionController.text = '';
                      } else {
                        _professionsList = [];
                        _professionController.text = profession;
                      }
                    });
                  },
                ),
                const SizedBox(height: 24),
                const Text('Type de professionnel', style: EnsTextStyle.text16_w600_title),
                if (_showPsTypeError) ...[
                  const SizedBox(height: 4),
                  const EnsErrorText(text: 'Saisir un type de professionnel'),
                ],
                const SizedBox(height: 12),
                EnsRadioButton.card(
                  label: 'Professionnel de santé',
                  subLabel: 'Ex : médecin, infirmier, dentiste',
                  groupValue: _isPs,
                  padding: const EdgeInsets.all(24),
                  labelAlignment: CrossAxisAlignment.start,
                  value: true,
                  onSelected: () {
                    if (_isPs != true) {
                      setState(() {
                        _isPs = true;
                        _showPsTypeError = false;
                      });
                    }
                  },
                ),
                const SizedBox(height: 8),
                EnsRadioButton.card(
                  label: 'Établissement de santé',
                  subLabel: 'Ex : pharmacie, EHPAD, clinique',
                  groupValue: _isPs == false,
                  value: true,
                  labelAlignment: CrossAxisAlignment.start,
                  padding: const EdgeInsets.all(24),
                  onSelected: () {
                    if (_isPs != false) {
                      setState(() {
                        _isPs = false;
                        _showPsTypeError = false;
                      });
                    }
                  },
                ),
                const SizedBox(height: 24),
                _Profession(
                  professionsListController: _professionsListController,
                  professionController: _professionController,
                  professionsList: _professionsList,
                  isPs: _isPs,
                ),
                const SizedBox(height: 24),
                _Adresse(
                  adressesListController: _adressesListController,
                  addressController: _addressController,
                  adressesList: _adressesList,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 40, top: 32),
                  child: EnsButton(
                    label: 'Valider',
                    onTap: () {
                      context.tagAction(TagsAgenda.tag_957_button_valider_ps_rdv);
                      _validateAndSend(context);
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _validateAndSend(BuildContext context) {
    final isPsNameFilled = _isPs != null && _displayedPsInputLabelController.text.isNotEmpty;
    final validation = _formKey.validate(additionalCondition: isPsNameFilled);
    validation.onValid(() {
      handleEditRendezVousPsSelect(
        _isPs,
        _idActeurSante,
        _displayedPsInputLabelController,
        _adressesList,
        _adressesListController,
        _addressController,
        _isAProfessionsList,
        _professionsListController,
        _professionController,
        _professionsList,
        context,
      );
    }).onInvalid(() {
      _shakeKey.currentState?.shake();
      Future.delayed(const Duration(milliseconds: 300)).then(
        (_) {
          if (_isPs == null) {
            setState(() => _showPsTypeError = true);
          }
          _scrollController.animateTo(
            0,
            duration: const Duration(milliseconds: 300),
            curve: Curves.fastOutSlowIn,
          );
        },
      );
    });
  }

  bool _noDataEntered() {
    return _displayedPsInputLabelController.text.isEmpty && _isPs == null;
  }

  void handleEditRendezVousPsSelect(
    bool? isPs,
    String? idActeurSante,
    TextEditingController nameController,
    List<ActeurDeSanteAdresse> adressesList,
    ValueNotifier<ActeurDeSanteAdresse?> adressesListController,
    TextEditingController addressController,
    bool isAProfessionsList,
    ValueNotifier<ProfessionnelDeSanteExercice?> professionsListController,
    TextEditingController professionController,
    List<ProfessionnelDeSanteExercice> professionsList,
    BuildContext context,
  ) {
    final String? adresseToDisplay =
        adressesList.length > 1 ? adressesListController.value?.formattedAddress : addressController.text;
    final String? professionToDisplay =
        isAProfessionsList ? professionsListController.value?.profession : professionController.text;

    Navigator.of(context).pop(
      EditRendezVousPsSelectScreenArguments(
        addresse: adresseToDisplay ?? '',
        name: nameController.text,
        isPs: isPs,
        profession: professionToDisplay ?? '',
        adresses: adressesList,
        professions: professionsList,
        idActeurSante: idActeurSante,
      ),
    );
  }
}

class ButtonSearchPS extends StatelessWidget {
  final String? addresse;
  final String profession;
  final String name;
  final bool? isPs;
  final List<ActeurDeSanteAdresse>? adresses;
  final List<ProfessionnelDeSanteExercice>? professions;
  final void Function(
    String? newAddresse,
    String newProfession,
    String newName,
    bool isPS,
    List<ActeurDeSanteAdresse>? newAdresses,
    List<ProfessionnelDeSanteExercice>? newProfessions,
    String? idActeurSante,
  ) updatePs;

  const ButtonSearchPS({
    this.addresse,
    required this.profession,
    required this.name,
    this.isPs,
    required this.updatePs,
    this.adresses,
    this.professions,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: EnsInkWell(
        onTap: () {
          context.tagAction(TagsAgenda.tag_602_button_rechercher_ps_rdv);
          DynamicActionBottomSheet.showOptionsBottomSheet(
            _bottomSheetContent(context, updatePs),
            context,
            title: 'Rechercher un professionnel',
            titleStyle: EnsTextStyle.text24_w400_normal_title,
          );
        },
        child: ConstrainedBox(
          constraints: const BoxConstraints(minHeight: 48),
          child: const Row(
            children: [
              EnsSvg(EnsImages.ic_search, color: EnsColors.primary),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Text(
                    'Rechercher un professionnel de santé',
                    style: EnsTextStyle.text14_w700_normal_primary,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _Adresse extends StatelessWidget {
  final ValueNotifier<ActeurDeSanteAdresse?> adressesListController;
  final TextEditingController addressController;
  final List<ActeurDeSanteAdresse> adressesList;

  const _Adresse({
    required this.adressesListController,
    required this.addressController,
    required this.adressesList,
  });

  @override
  Widget build(BuildContext context) {
    if (adressesList.isNotEmpty && adressesList.length > 1) {
      return EnsDropDown<ActeurDeSanteAdresse>(
        context: context,
        borderRadius: BorderRadius.circular(4),
        label: 'Adresse (facultatif)',
        hint: addressController.text.isNotEmpty &&
                (adressesList.where((adresse) => adresse.formattedAddress == addressController.text).isNotEmpty)
            ? addressController.text
            : 'Sélectionner une adresse',
        controller: adressesListController,
        items: adressesList,
        itemFormater: (ActeurDeSanteAdresse? adresse) => adresse!.formattedAddress,
      );
    } else {
      return CountedTextInput.withBorders(
        label: 'Adresse (facultatif)',
        controller: addressController,
        maxCharacters: -1,
        deniedRegExp: '[@<>\\?:/€\\*#\\|%~\\+£\\\$!§¤]',
      );
    }
  }
}

class _Profession extends StatelessWidget {
  final ValueNotifier<ProfessionnelDeSanteExercice?> professionsListController;
  final TextEditingController professionController;
  final List<ProfessionnelDeSanteExercice> professionsList;
  final bool? isPs;

  const _Profession({
    required this.professionsListController,
    required this.professionController,
    required this.professionsList,
    this.isPs,
  });

  @override
  Widget build(BuildContext context) {
    if (professionsList.isNotEmpty && professionsList.length > 1) {
      return EnsDropDown<ProfessionnelDeSanteExercice>(
        context: context,
        borderRadius: BorderRadius.circular(4),
        label: 'Profession (facultatif)',
        hint: professionController.text.isNotEmpty &&
                (professionsList.where((profession) => profession.profession == professionController.text).isNotEmpty)
            ? professionController.text
            : 'Sélectionner une profession',
        controller: professionsListController,
        items: professionsList,
        itemFormater: (ProfessionnelDeSanteExercice? profession) => profession!.profession,
      );
    } else {
      return CountedTextInput.withBorders(
        label: 'Profession (facultatif)',
        maxCharacters: -1,
        description: isPs == false ? 'Ex : pharmacie, laboratoire, hôpital...' : 'Ex : médecin, infirmier...',
        controller: professionController,
        deniedRegExp: '[@<>\\?:/€\\*#\\|%~\\+£\\\$!§¤]',
      );
    }
  }
}

class EditRendezVousPsSelectScreenArguments {
  final String? addresse;
  final String profession;
  final String name;
  final bool? isPs;
  final List<ActeurDeSanteAdresse>? adresses;
  final List<ProfessionnelDeSanteExercice>? professions;
  final String? idActeurSante;

  EditRendezVousPsSelectScreenArguments({
    this.addresse,
    required this.profession,
    required this.name,
    required this.isPs,
    this.adresses,
    this.professions,
    this.idActeurSante,
  });
}

List<BottomSheetAction> _bottomSheetContent(
  BuildContext context,
  void Function(
    String? newAddresse,
    String newProfession,
    String newName,
    bool isPS,
    List<ActeurDeSanteAdresse>? newAdresses,
    List<ProfessionnelDeSanteExercice>? newProfessions,
    String? idActeurSante,
  ) updatePs,
) =>
    [
      BottomSheetAction(
        assetName: EnsImages.ic_user,
        label: 'Rechercher un professionnel de santé',
        labelTextStyle: EnsTextStyle.text16_w700_primary,
        description: 'Ex : médecin, infirmier, dentiste',
        execution: () async {
          final searchPS = await Navigator.pushNamed(
            context,
            RecherchePsScreen.routeName,
            arguments: RecherchePsScreenArgument(psSearchType: RecherchePSType.SELECTION_AGENDA_PS),
          );
          if (searchPS is EditRendezVousPsSelectScreenArguments? && searchPS != null) {
            updatePs(
              searchPS.addresse,
              searchPS.profession,
              searchPS.name,
              searchPS.isPs!,
              searchPS.adresses,
              searchPS.professions,
              searchPS.idActeurSante,
            );
          }
        },
      ),
      BottomSheetAction(
        assetName: EnsImages.ic_building,
        label: 'Rechercher un établissement de santé',
        labelTextStyle: EnsTextStyle.text16_w700_primary,
        description: 'Ex : pharmacie, EHPAD, clinique...',
        execution: () async {
          final searchES = await Navigator.pushNamed(
            context,
            RechercheEsScreen.routeName,
            arguments: RechercheEsScreenArgument(
              rechercheEsType: RechercheEsType.SELECTION_AGENDA_ES,
            ),
          ) as EditRendezVousPsSelectScreenArguments?;
          if (searchES != null) {
            updatePs(
              searchES.addresse,
              searchES.profession,
              searchES.name,
              searchES.isPs!,
              searchES.adresses,
              searchES.professions,
              searchES.idActeurSante,
            );
          }
        },
      ),
    ];
