/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:fr_cnamts_ens/agenda/screens/edit_rendez_vous_ps_select_screen.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/infra/injection/ens_module_container.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/professional_activities/screens/referentiel_professional_activities_view_model.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/screens/professionnel_de_sante_detail_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/screens/professionnels_de_sante_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/screens/viewmodels/add_ps_view_model.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/screens/viewmodels/called_es_or_ps_detail_screen_from.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/search_ps/domain/models/code_postaux.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/search_ps/domain/models/commune.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/search_ps/domain/models/professionnel_de_sante.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/search_ps/screens/add_ps_bottom_sheet_helper.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/search_ps/screens/viewModels/recherche_ps_screen_view_model.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/search_ps/screens/viewModels/recherche_ps_type.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/search_ps/widgets/block_ps_confirmation_bottom_sheet.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/search_ps/widgets/ps_search_card.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/search_ps/widgets/ps_search_informations.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/search_ps/widgets/recherche_ps_form.dart';
import 'package:fr_cnamts_ens/snackbar/redux/snackbar_actions.dart';
import 'package:fr_cnamts_ens/tags/pml/tags_professionnels_de_sante.dart';
import 'package:fr_cnamts_ens/tags/tags_block_ps.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_floating_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_form.dart';
import 'package:fr_cnamts_ens/ui/widgets/shake_widget.dart';
import 'package:fr_cnamts_ens/utils/extensions/form_extensions.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

class RecherchePsScreen extends StatelessWidget {
  static const routeName = '/medical/profil/professionnels-de-sante/nouveau-professionel-de-sante/resultat';

  @override
  Widget build(BuildContext context) {
    final argument = ModalRoute.of(context)!.settings.arguments! as RecherchePsScreenArgument;
    return _RecherchePsForm(
      firstName: argument.firstName,
      lastName: argument.lastName,
      psSearchType: argument.psSearchType,
    );
  }
}

class _RecherchePsForm extends StatefulWidget {
  final String firstName;
  final String lastName;
  final RecherchePSType psSearchType;

  const _RecherchePsForm({
    required this.firstName,
    required this.lastName,
    required this.psSearchType,
  });

  @override
  State<_RecherchePsForm> createState() => _RecherchePsFormState();
}

class _RecherchePsFormState extends State<_RecherchePsForm> {
  final _scrollController = AutoScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StoreConnector<EnsState, RecherchePsScreenViewModel>(
      converter: (store) => RecherchePsScreenViewModel.from(store),
      distinct: true,
      onInitialBuild: (vm) {
        context.tagAction(
          (widget.psSearchType == RecherchePSType.BLOQUER_PS)
              ? TagsBlockPS.tag_474_recherche_formulaire_bloquer_professionnels_sante
              : TagsProfessionnelsDeSante.tag_361_page_formulaire_recherche_ps,
        );
        vm.clearResults();
      },
      onWillChange: (oldVm, vm) {
        if (vm.ps.isNotEmpty) {
          if (widget.psSearchType == RecherchePSType.BLOQUER_PS) {
            context.tagAction(TagsBlockPS.tag_463_recherche_bloquer_professionnels_sante);
          }
          _scrollController.scrollToIndex(
            0,
            preferPosition: AutoScrollPosition.begin,
            duration: const Duration(milliseconds: 750),
          );
        }
      },
      builder: (context, vm) => _Content(
        vm: vm,
        firstName: widget.firstName,
        lastName: widget.lastName,
        psSearchType: widget.psSearchType,
        scrollController: _scrollController,
      ),
    );
  }
}

class _Content extends StatefulWidget {
  final RecherchePsScreenViewModel vm;
  final String firstName;
  final String lastName;
  final RecherchePSType psSearchType;
  final AutoScrollController scrollController;

  const _Content({
    required this.vm,
    required this.firstName,
    required this.lastName,
    required this.psSearchType,
    required this.scrollController,
  });

  @override
  State<_Content> createState() => _ContentState();
}

class _ContentState extends State<_Content> {
  final _lastnameTextController = TextEditingController();
  final _firstnameTextController = TextEditingController();
  final _cityController = TextEditingController();
  final _professionalActivityTextController = TextEditingController();
  final _professionalActivityController = ValueNotifier<ReferentielItemDisplayModel?>(null);
  final _formKey = GlobalKey<FormState>();
  final _shakeKey = GlobalKey<ShakeWidgetState>();
  final _cityResult = ValueNotifier<Commune?>(null);
  bool _hasError = false;
  final _psNameFocus = FocusNode();
  final SuggestionsController<Commune> suggestionsController = SuggestionsController();

  @override
  void initState() {
    super.initState();
    _cityResult.addListener(() => setState(() {}));
    _professionalActivityController.addListener(() => setState(() {}));
    _firstnameTextController.addListener(() => setState(() {}));
    _firstnameTextController.text = widget.firstName;
    _lastnameTextController.text = widget.lastName;
  }

  @override
  void dispose() {
    _lastnameTextController.dispose();
    _firstnameTextController.dispose();
    _cityController.dispose();
    _professionalActivityController.dispose();
    _professionalActivityTextController.dispose();
    _cityResult.dispose();
    _psNameFocus.dispose();
    suggestionsController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: EnsAppBarSubLevel(title: widget.psSearchType.getTitle),
      floatingActionButton: EnsFloatingButton(
        buttonLabel: widget.vm.ps.isNotEmpty ? 'Modifier la recherche' : 'Rechercher le professionnel',
        onTap: () {
          widget.vm.ps.isNotEmpty ? _modifyResearch(widget.vm) : _validateAndSendForm(widget.vm);
        },
        isLoading: widget.vm.status.isLoading(),
        buttonLoadingLabel: 'Recherche...',
        hasFixedSize: true,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: StoreConnector<EnsState, AddPsViewModel>(
        converter: (store) => AddPsViewModel.fromStore(store),
        distinct: true,
        onWillChange: (oldVm, vm) {
          if ((oldVm?.status == AddPsScreenStatus.LOADING || oldVm?.status == AddPsScreenStatus.SUCCESS) &&
              vm.status == AddPsScreenStatus.SELECTED) {
            final psSelected = vm.psSelected;
            if ((widget.psSearchType == RecherchePSType.SELECTION_AGENDA_PS ||
                    widget.psSearchType == RecherchePSType.SELECTION_VACCINATEUR) &&
                psSelected != null) {
              final List<ProfessionnelDeSanteExercice> professionsList =
                  psSelected.exercices != null ? psSelected.exercices!.toList() : const [];
              Navigator.of(context).pop(
                EditRendezVousPsSelectScreenArguments(
                  addresse: psSelected.addresses.isNotEmpty
                      ? ActeurDeSanteAdresse(
                          roadNumber: psSelected.addresses.first.roadNumber,
                          labelRoadType: psSelected.addresses.first.labelRoadType,
                          road: psSelected.addresses.first.road,
                          cityZipCode: psSelected.addresses.first.cityZipCode,
                          city: psSelected.addresses.first.city,
                        ).formattedAddress
                      : '',
                  name: '${psSelected.firstName} ${psSelected.lastName}',
                  profession: psSelected.profession ?? '',
                  isPs: true,
                  adresses: psSelected.addresses.toList(),
                  professions: professionsList,
                  idActeurSante: psSelected.nationalId,
                ),
              );
            }
          }
          if (oldVm?.status != AddPsScreenStatus.SUCCESS && vm.status == AddPsScreenStatus.SUCCESS) {
            if (widget.psSearchType == RecherchePSType.ADD_MEDECIN_TRAITANT ||
                widget.psSearchType == RecherchePSType.ADD_PS) {
              Navigator.popUntil(
                context,
                ModalRoute.withName(ProfessionnelsDeSanteScreen.routeName),
              );
            } else if (widget.psSearchType == RecherchePSType.ADD_PS_FROM_HOME) {
              Navigator.popUntil(context, (route) => route.isFirst);
            }
          }
        },
        builder: (_, addVm) => SafeArea(
          child: EnsForm(
            formKey: _formKey,
            shakeKey: _shakeKey,
            scrollController: widget.scrollController,
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 32),
                RecherchePsForm(
                  suggestionsController: suggestionsController,
                  vm: widget.vm,
                  headerText: widget.psSearchType.getHeaderText(widget.vm.profilType),
                  nameTextController: _lastnameTextController,
                  firstnameTextController: _firstnameTextController,
                  cityController: _cityController,
                  professionalActivityTextController: _professionalActivityTextController,
                  professionalActivityController: _professionalActivityController,
                  onFieldDidChange: () {
                    widget.vm.clearResults();
                    setState(() {});
                    if (_hasError) {
                      setState(() {
                        _hasError = false;
                      });
                    }
                  },
                  cityResult: _cityResult,
                  hasError: _hasError,
                  searchPSNameFocus: _psNameFocus,
                ),
                SizedBox(height: widget.vm.ps.isEmpty ? 108 : 0),
                if (widget.vm.ps.isNotEmpty)
                  AutoScrollTag(
                    index: 0,
                    key: const ValueKey(0),
                    controller: widget.scrollController,
                    child: PsSearchInformations(
                      firstname: _firstnameTextController.text,
                      lastname: _lastnameTextController.text,
                      cityResult: _cityResult.value,
                      professionalActivity: _professionalActivityController.value,
                    ),
                  ),
                for (final ps in widget.vm.ps)
                  Padding(
                    padding: const EdgeInsets.only(bottom: 16),
                    child: PsSearchCard(
                      ps: ps,
                      onTapCard: widget.psSearchType == RecherchePSType.SELECTION_AGENDA_PS ||
                              widget.psSearchType == RecherchePSType.BLOQUER_PS
                          ? null
                          : () => Navigator.pushNamed(
                                context,
                                ProfessionnelDeSanteDetailScreen.routeName,
                                arguments: ProfessionnelDeSanteArgument(
                                  ps.id,
                                  CalledESorPSDetailScreenFrom.PS_SCREEN_CARD,
                                  widget.psSearchType,
                                ),
                              ),
                      onTapButton: () => _onCardActionTap(ps, addVm),
                      recherchePSType: widget.psSearchType,
                    ),
                  ),
                const Text(
                  'Si le professionnel de santé recherché n\'apparaît pas dans la liste, je peux modifier ma recherche.',
                  style: EnsTextStyle.text14_w400_normal_body,
                ),
                const SizedBox(
                  height: 88,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _showBlockPsConfirmationBottomSheet(
    BuildContext context, {
    required ProfessionnelSanteDisplayModel ps,
  }) {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) {
        return BlockPsConfirmationBottomSheet(
          psIdNat: ps.id,
          psName: '${ps.firstName} ${ps.lastName}',
          from: BlockPsConfirmationBottomSheetFrom.BLOCK_PS_LIST,
        );
      },
    );
  }

  void _onCardActionTap(ProfessionnelSanteDisplayModel ps, AddPsViewModel addVm) {
    if (widget.psSearchType == RecherchePSType.BLOQUER_PS) {
      _blockPs(ps);
    } else if (widget.psSearchType == RecherchePSType.SELECTION_AGENDA_PS ||
        widget.psSearchType == RecherchePSType.SELECTION_VACCINATEUR) {
      addVm.selectPs(ps.id);
    } else {
      context.tagAction(TagsProfessionnelsDeSante.tag_362_bouton_ajouter_ps_formulaire_recherche_ps);
      if (ps.shouldDisplayAddWithRoleBottomSheet) {
        _addPsWithRole(ps, addVm, widget.psSearchType);
      } else {
        addVm.addPs(
          psId: ps.id,
          shouldAddPsAsMedecinTraitant: widget.psSearchType == RecherchePSType.ADD_MEDECIN_TRAITANT,
        );
      }
    }
  }

  void _blockPs(ProfessionnelSanteDisplayModel ps) {
    if (EnsModuleContainer.currentInjector.isGuestMode()) {
      StoreProvider.of<EnsState>(context).dispatch(
        const DisplaySnackbarAction.unavailableInGuestMode(),
      );
    } else {
      _showBlockPsConfirmationBottomSheet(context, ps: ps);
    }
  }

  void _addPsWithRole(ProfessionnelSanteDisplayModel ps, AddPsViewModel addVm, RecherchePSType psSearchType) {
    AddPsBottomSheetHelper.showAddPsWithRoleBottomSheet(
      psProfession: ps.typeOfProfession!,
      positiveButtonAction: () {
        addVm.addPs(psId: ps.id, professionLinkToRole: ps.typeOfProfession);
      },
      negativeButtonAction: () {
        addVm.addPs(
          psId: ps.id,
          shouldAddPsAsMedecinTraitant: psSearchType == RecherchePSType.ADD_MEDECIN_TRAITANT,
        );
      },
    );
  }

  Future<void> _modifyResearch(RecherchePsScreenViewModel vm) async {
    widget.scrollController.animateTo(
      0,
      duration: const Duration(milliseconds: 750),
      curve: Curves.easeInOut,
    );
    await Future.delayed(const Duration(milliseconds: 700));
    vm.clearResults();
  }

  void _validateAndSendForm(RecherchePsScreenViewModel vm) {
    if (_cityController.text.isEmpty) {
      _cityResult.value = null;
    }
    final validation = _formKey.validate(additionalCondition: _auMoinsUnChampsEstRempli());
    validation.onValid(() {
      if (widget.psSearchType == RecherchePSType.BLOQUER_PS) {
        context.tagAction(
          TagsBlockPS.tag_462_button_recherche_bloquer_professionnels_sante,
        );
      } else {
        context.tagAction(
          TagsProfessionnelsDeSante.tag_974_bouton_rechercher_formulaire_recherche_ps,
        );
      }
      vm.searchPs(
        _firstnameTextController.text,
        _lastnameTextController.text,
        _cityResult.value?.codeDepartement ?? '',
        _cityResult.value?.codeCommune ?? '',
        _cityResult.value?.codesPostaux ?? CodePostaux([]),
        _professionalActivityController.value?.id,
      );
    }).onInvalid(() {
      setState(() => _hasError = true);
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

  bool _auMoinsUnChampsEstRempli() {
    return _lastnameTextController.text.isNotEmpty ||
        _firstnameTextController.text.isNotEmpty ||
        _professionalActivityTextController.text.isNotEmpty ||
        _cityController.text.isNotEmpty;
  }
}
