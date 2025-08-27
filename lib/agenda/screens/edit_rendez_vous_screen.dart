/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/agenda/domain/models/rendez_vous.dart';
import 'package:fr_cnamts_ens/agenda/screens/edit_rendez_vous_notes_screen.dart';
import 'package:fr_cnamts_ens/agenda/screens/edit_rendez_vous_ps_select_screen.dart';
import 'package:fr_cnamts_ens/agenda/screens/viewModels/edit_rendez_vous_screen_view_model.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/search_ps/domain/models/professionnel_de_sante.dart';
import 'package:fr_cnamts_ens/tags/tags_agenda.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/champs_obligatoires_widget.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_error_text.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_form.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_ink_well.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_pop_scope.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/counted_text_input.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/ens_input_date.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/ens_input_date_validator.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/menu_item.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/validators.dart';
import 'package:fr_cnamts_ens/ui/widgets/shake_widget.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:fr_cnamts_ens/utils/extensions/form_extensions.dart';
import 'package:fr_cnamts_ens/utils/extensions/string_extensions.dart';
import 'package:fr_cnamts_ens/utils/navigation_utils.dart';

class EditRendezVousScreen extends StatefulWidget {
  static const routeName = '/editRendezVous';

  const EditRendezVousScreen({super.key});

  @override
  _EditRendezVousScreenState createState() => _EditRendezVousScreenState();
}

class _EditRendezVousScreenState extends State<EditRendezVousScreen> {
  final _formKey = GlobalKey<FormState>();
  final _shakeKey = GlobalKey<ShakeWidgetState>();
  bool initialized = false;
  RendezVous? rdvArgument;
  final ScrollController _scrollController = ScrollController();
  final _titleTextInputController = TextEditingController();
  final _namePSorESTextInputController = TextEditingController();
  final _specialityPSorESTextInputController = TextEditingController();
  final _addresseController = TextEditingController();
  final _rendezVousDateController = ValueNotifier<DateTime?>(null);
  final _rendezVousHeureController = ValueNotifier<TimeOfDay?>(null);
  String? _notes;
  bool? _rdvFromPS;
  bool _errorInPs = false;
  List<ActeurDeSanteAdresse> _adressesList = [];
  List<ProfessionnelDeSanteExercice>? _professionsList = [];
  String? _idActeurSante;

  void _updateNotes(String newNotes) {
    setState(() {
      _notes = newNotes;
    });
  }

  @override
  Widget build(BuildContext context) {
    _initializeForm(context);
    return StoreConnector<EnsState, EditRendezVousScreenViewModel>(
      converter: (store) => EditRendezVousScreenViewModel.from(store),
      onWillChange: (_, vm) {
        _popIfSuccess(vm);
      },
      onInitialBuild: (vm) {
        context.tagAction(TagsAgenda.tag_601_ajouter_rdv);
      },
      distinct: true,
      builder: (_, vm) {
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
            appBar: EnsAppBarSubLevel(
              title: rdvArgument == null ? 'Ajouter un rendez-vous' : 'Modifier le rendez-vous',
            ),
            body: EnsForm(
              formKey: _formKey,
              shakeKey: _shakeKey,
              scrollController: _scrollController,
              padding: EdgeInsets.zero,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(height: 32),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: ChampsObligatoiresFormTextWidget(displayFullText: true),
                  ),
                  const SizedBox(height: 16),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: _TitleField(titleTextInputController: _titleTextInputController),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: _DateAndTimeFields(
                      rendezVousDateController: _rendezVousDateController,
                      rendezVousHeureController: _rendezVousHeureController,
                    ),
                  ),
                  const SizedBox(height: 34),
                  Container(color: EnsColors.neutral200, height: 1),
                  _PsOptionalField(
                    addresse: _addresseController.text,
                    name: _namePSorESTextInputController.text.capitalizeName(),
                    profession: _specialityPSorESTextInputController.text,
                    isPs: _rdvFromPS,
                    idActeurSante: _idActeurSante,
                    adresses: _adressesList,
                    professions: _professionsList,
                    withError: _errorInPs,
                    updatePs: (
                      addresse,
                      profession,
                      name,
                      isPs,
                      adresses,
                      professions,
                      idActeurSante,
                    ) {
                      setState(() {
                        _addresseController.text = addresse;
                        _namePSorESTextInputController.text = name;
                        _specialityPSorESTextInputController.text = profession;
                        _rdvFromPS = isPs;
                        _adressesList = adresses!;
                        _professionsList = professions;
                        _errorInPs = false;
                        _idActeurSante = idActeurSante;
                      });
                    },
                    psNotChosen: () {
                      if (_rdvFromPS == null || _namePSorESTextInputController.text.isEmpty) {
                        setState(() {
                          _errorInPs = true;
                        });
                      }
                    },
                  ),
                  Container(color: EnsColors.neutral200, height: 1),
                  _NotesOptionalField(_notes, _updateNotes),
                  Container(color: EnsColors.neutral200, height: 1),
                  _ValidateButton(
                    onValidate: () {
                      context.tagAction(TagsAgenda.tag_606_button_valider_ajouter_rdv);
                      _validateAndSend(vm);
                    },
                    isAdding: rdvArgument == null,
                    isLoading: vm.editStatus == RendezVousEditStatus.LOADING,
                  ),
                  const SizedBox(height: 32),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  void _initializeForm(BuildContext context) {
    if (!initialized) {
      rdvArgument = ModalRoute.of(context)!.settings.arguments as RendezVous?;
      initialized = true;
      if (rdvArgument != null) {
        _titleTextInputController.text = rdvArgument?.title ?? '';
        _namePSorESTextInputController.text = rdvArgument?.nomActeurSante ?? '';
        _specialityPSorESTextInputController.text = rdvArgument?.specialiteActeurSante ?? '';
        _rendezVousDateController.value = rdvArgument?.date;
        _rendezVousHeureController.value =
            rdvArgument != null ? TimeOfDay(hour: rdvArgument!.date.hour, minute: rdvArgument!.date.minute) : null;
        _notes = rdvArgument?.note;
        _rdvFromPS = rdvArgument?.rdvType == RendezVousType.PROFESSIONEL_DE_SANTE;
        _addresseController.text = rdvArgument?.address ?? '';
      }
    }
  }

  bool _noDataEntered() {
    return _titleTextInputController.text.isEmpty &&
        _specialityPSorESTextInputController.text.isEmpty &&
        _namePSorESTextInputController.text.isEmpty &&
        (_notes == null || _notes!.isEmpty) &&
        _rendezVousDateController.value == null &&
        _rendezVousHeureController.value == null;
  }

  void _validateAndSend(EditRendezVousScreenViewModel vm) {
    final isPsOrEsFilled = _rdvFromPS != null && _namePSorESTextInputController.text.isNotEmpty;
    final validation = _formKey.validate(additionalCondition: isPsOrEsFilled);
    validation.onValid(() {
      final date = _rendezVousDateController.value ?? DateTime.now();
      final heure = _rendezVousHeureController.value ?? const TimeOfDay(hour: 00, minute: 00);
      final dateOfRendezVous = DateTime(date.year, date.month, date.day, heure.hour, heure.minute).toUtc();

      vm.addOrUpdateRendezVous(
        id: rdvArgument?.id,
        title: _titleTextInputController.text,
        date: dateOfRendezVous,
        isPs: _rdvFromPS!,
        profesionnelOrEtablissementName: _namePSorESTextInputController.text,
        profesionnelOrEtablissementSpeciality: _specialityPSorESTextInputController.text,
        note: _notes ?? '',
        address: _addresseController.text,
        idActeurSante: _idActeurSante,
      );
    }).onInvalid(() {
      _shakeKey.currentState?.shake();
      Future.delayed(const Duration(milliseconds: 300)).then(
        (_) {
          if (_rdvFromPS == null || _namePSorESTextInputController.text.isEmpty) {
            setState(() => _errorInPs = true);
          }
          _scrollController.animateTo(0, duration: const Duration(milliseconds: 300), curve: Curves.fastOutSlowIn);
        },
      );
    });
  }

  void _popIfSuccess(EditRendezVousScreenViewModel vm) {
    if (vm.editStatus == RendezVousEditStatus.SUCCESS) {
      final date = _rendezVousDateController.value ?? DateTime.now();
      final heure = _rendezVousHeureController.value ?? const TimeOfDay(hour: 00, minute: 00);
      final dateOfRendezVous = DateTime(date.year, date.month, date.day, heure.hour, heure.minute).toUtc();
      final arguments = EditRendezVousScreenArguments(rdv: rdvArgument, dateRdv: dateOfRendezVous);
      Navigator.pop(context, arguments);
    }
  }
}

class EditRendezVousScreenArguments {
  final RendezVous? rdv;
  final DateTime? dateRdv;

  const EditRendezVousScreenArguments({this.rdv, this.dateRdv});
}

class _PsOptionalField extends StatelessWidget {
  final String addresse;
  final String profession;
  final String name;
  final bool? isPs;
  final String? idActeurSante;
  final bool withError;
  final List<ActeurDeSanteAdresse>? adresses;
  final List<ProfessionnelDeSanteExercice>? professions;
  final void Function(
    String newAddresse,
    String newProfession,
    String newName,
    bool isPS,
    List<ActeurDeSanteAdresse>? newAdresses,
    List<ProfessionnelDeSanteExercice>? newProfesssions,
    String? idActeurSante,
  ) updatePs;
  final void Function() psNotChosen;

  const _PsOptionalField({
    required this.addresse,
    required this.profession,
    required this.name,
    required this.updatePs,
    required this.isPs,
    required this.withError,
    required this.psNotChosen,
    this.adresses,
    this.professions,
    required this.idActeurSante,
  });

  @override
  Widget build(BuildContext context) {
    String? subTitle;
    if (name.isNotEmpty) {
      subTitle = [name, profession, addresse].where((e) => e.isNotEmpty).join(', ');
    }
    return _PsMenutItem(
      subTitle: subTitle,
      withError: withError,
      rdvFromPs: isPs,
      onTap: () async {
        final newPs = await Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => EditRendezVousPsSelectScreen(
              EditRendezVousPsSelectScreenArguments(
                addresse: addresse,
                name: name,
                profession: profession,
                isPs: isPs,
                adresses: adresses,
                professions: professions,
                idActeurSante: idActeurSante,
              ),
            ),
          ),
        ) as EditRendezVousPsSelectScreenArguments?;

        if (newPs != null && newPs.isPs != null) {
          updatePs(
            newPs.addresse!,
            newPs.profession,
            newPs.name,
            newPs.isPs!,
            newPs.adresses,
            newPs.professions,
            newPs.idActeurSante,
          );
        } else {
          psNotChosen();
        }
      },
    );
  }
}

class _PsMenutItem extends StatelessWidget {
  final void Function() onTap;
  final String? subTitle;
  final bool withError;
  final bool? rdvFromPs;

  const _PsMenutItem({
    required this.onTap,
    required this.subTitle,
    required this.withError,
    required this.rdvFromPs,
  });

  @override
  Widget build(BuildContext context) {
    return EnsInkWell(
      onTap: onTap,
      child: Ink(
        color: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
        child: Row(
          children: [
            EnsSvg(
              rdvFromPs == false ? EnsImages.ic_building : EnsImages.ic_user,
              color: EnsColors.primary,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      rdvFromPs == false ? 'Établissement de santé' : 'Professionnel de santé',
                      style: EnsTextStyle.text16_w600_normal_title,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                    _PsSubtitle(withError, subTitle),
                  ],
                ),
              ),
            ),
            const EnsSvg(EnsImages.ic_chevron_right, height: 12, width: 8, color: EnsColors.body),
          ],
        ),
      ),
    );
  }
}

class _PsSubtitle extends StatelessWidget {
  final bool withError;
  final String? subtitle;

  const _PsSubtitle(this.withError, this.subtitle);

  @override
  Widget build(BuildContext context) {
    if (subtitle != null) {
      return Padding(
        padding: const EdgeInsets.only(top: 4),
        child: Text(
          subtitle!,
          style: EnsTextStyle.text14_w400_normal_title,
          overflow: TextOverflow.ellipsis,
        ),
      );
    }
    if (withError) {
      return const Padding(
        padding: EdgeInsets.only(top: 4),
        child: EnsErrorText(text: 'Ajouter un professionnel de santé'),
      );
    }
    return const SizedBox();
  }
}

class _NotesOptionalField extends StatelessWidget {
  final String? notes;
  final void Function(String newNotes) updateNotes;

  const _NotesOptionalField(this.notes, this.updateNotes);

  @override
  Widget build(BuildContext context) {
    return MenuItem(
      title: 'Note personnelle (facultatif)',
      titleStyle: EnsTextStyle.text16_w600_title,
      destinationPage: '',
      subTitle: (notes != null && notes!.isNotEmpty) ? notes : null,
      onTap: () async {
        context.tagAction(TagsAgenda.tag_934_button_ajouter_note_rdv);
        final newNotes = await Navigator.pushNamed(
          context,
          EditRendezVousNotesScreen.routeName,
          arguments: notes ?? '',
        );
        if (newNotes != null) {
          updateNotes(newNotes as String);
        }
      },
      icon: EnsImages.ic_edit,
    );
  }
}

class _TitleField extends StatelessWidget {
  final TextEditingController titleTextInputController;

  const _TitleField({required this.titleTextInputController});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: CountedTextInput.withBorders(
        label: 'Titre du rendez-vous (facultatif)',
        description: 'Ex : Consultation kinésithérapeute',
        controller: titleTextInputController,
        deniedRegExp: '[@<>\\?:/€\\*#\\|%~\\+£\\\$!§¤]',
        maxCharacters: 100,
        validatorCallback: (String? value) => limitCharactersFieldValidator(
          value: value,
          maxCharacters: 100,
          errorMessage: 'Champ limité à 100 caractères',
        ),
      ),
    );
  }
}

class _DateAndTimeFields extends StatelessWidget {
  final ValueNotifier<DateTime?> rendezVousDateController;
  final ValueNotifier<TimeOfDay?> rendezVousHeureController;

  const _DateAndTimeFields({
    required this.rendezVousDateController,
    required this.rendezVousHeureController,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Column(
        children: [
          EnsInputDate(
            label: 'Date',
            controller: rendezVousDateController,
            context: context,
            validator: (value) => EnsInputDateValidator().validate(
              rendezVousDateController.value,
              emptyMessage: 'La date est obligatoire',
            ),
          ),
          const SizedBox(height: 24),
          EnsInputTime(
            context: context,
            controller: rendezVousHeureController,
            validator: (value) => requiredFieldValidator(
              rendezVousHeureController.value,
              errorText: 'L\'heure est obligatoire',
            ),
            enabled: true,
            hint: 'heure',
            label: 'Heure',
          ),
        ],
      ),
    );
  }
}

class _ValidateButton extends StatelessWidget {
  final Function() onValidate;
  final bool isAdding;
  final bool isLoading;

  const _ValidateButton({required this.onValidate, required this.isAdding, required this.isLoading});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 36, horizontal: 24),
      child: Row(
        children: [
          Expanded(
            child: EnsButton(
              label: isAdding ? 'Valider' : 'Modifier le rendez-vous',
              onTap: onValidate,
              isLoading: isLoading,
            ),
          ),
        ],
      ),
    );
  }
}
