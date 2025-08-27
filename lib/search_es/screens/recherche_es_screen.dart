/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:fr_cnamts_ens/agenda/screens/edit_rendez_vous_ps_select_screen.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/professionnels_de_sante_name_helper.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/search_ps/domain/models/commune.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/search_ps/domain/models/professionnel_de_sante.dart';
import 'package:fr_cnamts_ens/search_es/domain/models/etablissement_de_sante.dart';
import 'package:fr_cnamts_ens/search_es/redux/search_es_redux.dart';
import 'package:fr_cnamts_ens/search_es/screens/recherche_es_tags.dart';
import 'package:fr_cnamts_ens/search_es/screens/viewModels/recherche_es_screen_view_model.dart';
import 'package:fr_cnamts_ens/tags/tags_messagerie.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_card.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_form.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_information_mark_label.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_persistent_info_box.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/commune_suggestion_form_field.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/counted_text_input.dart';
import 'package:fr_cnamts_ens/ui/widgets/shake_widget.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:fr_cnamts_ens/utils/all_purposes_status.dart';
import 'package:fr_cnamts_ens/utils/extensions/form_extensions.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

class RechercheEsScreen extends StatefulWidget {
  static const routeName = '/etablissement-de-sante/resultat';
  final _nameTextController = TextEditingController();
  final _cityTextController = TextEditingController();
  final _cityController = ValueNotifier<Commune?>(null);
  final _formKey = GlobalKey<FormState>();
  final _scrollController = AutoScrollController();
  final _shakeKey = GlobalKey<ShakeWidgetState>();
  final FocusNode _nameFocusNode = FocusNode();
  final SuggestionsController<Commune> _suggestionsController = SuggestionsController();

  @override
  State<RechercheEsScreen> createState() => _RechercheEsScreenState();
}

class RechercheEsScreenArgument {
  final String? name;
  final RechercheEsType rechercheEsType;

  RechercheEsScreenArgument({this.name, required this.rechercheEsType});
}

class _RechercheEsScreenState extends State<RechercheEsScreen> {
  late Listenable _fieldsListenable;
  bool _hasError = false;

  @override
  void initState() {
    super.initState();
    _fieldsListenable = Listenable.merge([widget._nameTextController, widget._cityController]);
    SchedulerBinding.instance.addPostFrameCallback((_) {
      final argument = ModalRoute.of(context)!.settings.arguments as RechercheEsScreenArgument?;
      widget._nameTextController.text = argument?.name ?? '';
    });
  }

  @override
  void dispose() {
    widget._nameFocusNode.dispose();
    widget._nameTextController.dispose();
    widget._cityTextController.dispose();
    widget._cityController.dispose();
    widget._scrollController.dispose();
    widget._suggestionsController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final argument = ModalRoute.of(context)!.settings.arguments! as RechercheEsScreenArgument;
    final isAddPharmacieForMessagerie = argument.rechercheEsType == RechercheEsType.ADD_PHARMACIE_FOR_MESSAGERIE;
    return StoreConnector<EnsState, RechercheEsScreenViewModel>(
      converter: (store) => RechercheEsScreenViewModel.from(store, isAddPharmacieForMessagerie),
      distinct: true,
      onInit: (store) {
        _fieldsListenable.addListener(() {
          final searchEsState = store.state.searchEsState;
          if (searchEsState.status.isSuccess() && searchEsState.etablissementsDeSante.isNotEmpty) {
            store.dispatch(ClearEsResultsAction());
          }
        });
      },
      onInitialBuild: (vm) {
        if (isAddPharmacieForMessagerie) {
          context.tagAction(TagsMessagerie.tag_834_rechercher_pharmacie_messagerie);
        } else {
          context.tagAction(RechercheEsTags.tag_974_page_formulaire_recherche_es);
        }
        vm.clearResults();
      },
      onWillChange: (oldVm, vm) {
        if (vm.etablissementsDeSante.isNotEmpty) {
          widget._scrollController.scrollToIndex(
            0,
            preferPosition: AutoScrollPosition.begin,
            duration: const Duration(milliseconds: 750),
          );
        } else if (vm.invalidEtablissementsDeSante.isNotEmpty) {
          widget._scrollController.scrollToIndex(
            5,
            preferPosition: AutoScrollPosition.begin,
            duration: const Duration(milliseconds: 750),
          );
        }
      },
      builder: (_, vm) {
        return Scaffold(
          appBar: EnsAppBarSubLevel(
            title: isAddPharmacieForMessagerie ? 'Rechercher une pharmacie' : 'Ajouter un établissement de santé',
          ),
          floatingActionButton: AnimatedBuilder(
            animation: _fieldsListenable,
            builder: (_, __) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: FractionallySizedBox(
                widthFactor: 1.0,
                child: EnsButton(
                  label: vm.etablissementsDeSante.isNotEmpty ? 'Modifier ma recherche' : 'Rechercher',
                  onTap: () {
                    if (vm.etablissementsDeSante.isEmpty) {
                      context.tagAction(
                        isAddPharmacieForMessagerie
                            ? TagsMessagerie.tag_835_button_rechercher_pharmacie
                            : RechercheEsTags.tag_975_bouton_rechercher_formulaire_recherche_es,
                      );
                    }
                    vm.etablissementsDeSante.isNotEmpty
                        ? _modifyResearch(vm.clearResults)
                        : _validateAndSendForm(vm, argument.rechercheEsType);
                  },
                  isLoading: vm.listStatus.isLoading(),
                  loadingText: 'Recherche...',
                ),
              ),
            ),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
          body: SafeArea(
            child: EnsForm(
              formKey: widget._formKey,
              scrollController: widget._scrollController,
              shakeKey: widget._shakeKey,
              padding: const EdgeInsets.only(bottom: 124),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(height: 32),
                  if (isAddPharmacieForMessagerie) ...[
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24),
                      child: Text(
                        'Je peux uniquement contacter les pharmacies disposant d’une messagerie sécurisée compatible avec Mon espace santé.',
                        style: EnsTextStyle.text14_w400_normal_body,
                      ),
                    ),
                    const SizedBox(height: 24),
                  ],
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: _hasError
                        ? EnsPersistentInfoBox.error('Saisissez au moins un champ')
                        : EnsPersistentInfoBox.text('Saisissez au moins un champ'),
                  ),
                  const SizedBox(height: 24),
                  AutoScrollTag(
                    index: 1,
                    key: const ValueKey(1),
                    controller: widget._scrollController,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: CountedTextInput.withBorders(
                        enabled: vm.listStatus.isNotLoading(),
                        label: isAddPharmacieForMessagerie ? 'Nom de la pharmacie' : 'Nom de l\'établissement',
                        description: isAddPharmacieForMessagerie
                            ? 'Ex. : Pharmacie de la Gare'
                            : 'Ex. : pharmacie Centrale, clinique des Lilas',
                        controller: widget._nameTextController,
                        focusNode: widget._nameFocusNode,
                        onFocus: () => Future.delayed(const Duration(milliseconds: 500)).then(
                          (_) => widget._scrollController.scrollToIndex(
                            1,
                            preferPosition: AutoScrollPosition.begin,
                            duration: const Duration(milliseconds: 250),
                          ),
                        ),
                        maxCharacters: 100,
                        maxLines: 1,
                        onTextDidChange: (_) {
                          if (_hasError) {
                            setState(() {
                              _hasError = false;
                            });
                          }
                        },
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                  AutoScrollTag(
                    index: 2,
                    key: const ValueKey(2),
                    controller: widget._scrollController,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: CommuneSuggestionFormField(
                        suggestionsController: widget._suggestionsController,
                        enabled: vm.listStatus.isNotLoading(),
                        textController: widget._cityTextController,
                        onCommuneSelected: (city) => widget._cityController.value = city,
                        onTap: () {
                          if (_hasError) {
                            setState(() {
                              _hasError = false;
                            });
                          }
                          Future.delayed(const Duration(milliseconds: 500)).then(
                            (_) => widget._scrollController.scrollToIndex(
                              2,
                              preferPosition: AutoScrollPosition.begin,
                              duration: const Duration(milliseconds: 250),
                            ),
                          );
                        },
                        context: context,
                      ),
                    ),
                  ),
                  if (vm.etablissementsDeSante.isNotEmpty)
                    AutoScrollTag(
                      index: 0,
                      key: const ValueKey(0),
                      controller: widget._scrollController,
                      child: _EsSearchInformations(
                        name: widget._nameTextController.text,
                        cityResult: widget._cityController.value,
                      ),
                    ),
                  for (final es in vm.orderedEtablissementsDeSante)
                    Padding(
                      padding: const EdgeInsets.only(bottom: 16, left: 24, right: 24),
                      child: _SearchCard(
                        isAddPharmacieForMessagerie: isAddPharmacieForMessagerie,
                        es: es,
                        argument: argument,
                        onTap: () {
                          switch (argument.rechercheEsType) {
                            case RechercheEsType.ADD_ES:
                              context.tagAction(RechercheEsTags.tag_976_bouton_ajouter_formulaire_recherche_es);
                              vm.addEtablissementDeSante(es);
                            case RechercheEsType.ADD_PHARMACIE_FOR_MESSAGERIE:
                              context.tagAction(TagsMessagerie.tag_839_button_selectionner_pharmacie);
                              Navigator.pop(context, es);
                            case RechercheEsType.SELECTION_AGENDA_ES:
                              Navigator.pop(
                                context,
                                EditRendezVousPsSelectScreenArguments(
                                  addresse: ActeurDeSanteAdresse(
                                    roadNumber: es.address?.roadNumber,
                                    labelRoadType: es.address?.labelRoadType,
                                    road: es.address?.road,
                                    cityZipCode: es.address?.cityZipCode,
                                  ).formattedAddress,
                                  name: es.nameWithAlias,
                                  profession: es.activity!,
                                  isPs: false,
                                  idActeurSante: es.idNat,
                                ),
                              );
                          }
                        },
                        ajoutEsStatus: vm.ajoutEsStatus,
                      ),
                    ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Future<void> _modifyResearch(void Function() clearResults) async {
    widget._scrollController.animateTo(0, duration: const Duration(milliseconds: 750), curve: Curves.easeInOut);
    await Future.delayed(const Duration(milliseconds: 700));
    clearResults();
    widget._nameFocusNode.requestFocus();
  }

  void _validateAndSendForm(RechercheEsScreenViewModel vm, RechercheEsType rechercheEsType) {
    if (widget._cityTextController.text.isEmpty) {
      widget._cityController.value = null;
    }
    final validation = widget._formKey.validate(additionalCondition: _auMoinsUnChampsEstRempli());
    validation.onValid(() {
      vm.searchEs(
        rechercheEsType,
        widget._nameTextController.text,
        widget._cityController.value?.codeDepartement,
        widget._cityController.value?.codeCommune,
        widget._cityController.value?.codesPostaux ?? [],
      );
      FocusManager.instance.primaryFocus?.unfocus();
    }).onInvalid(() {
      setState(() => _hasError = true);
      widget._shakeKey.currentState?.shake();
      widget._nameFocusNode.requestFocus();
      final isAccessibilityEnabled = WidgetsBinding.instance.accessibilityFeatures.accessibleNavigation;
      if (!isAccessibilityEnabled) {
        Future.delayed(const Duration(milliseconds: 300)).then(
          (_) => widget._scrollController.animateTo(
            0,
            duration: const Duration(milliseconds: 300),
            curve: Curves.fastOutSlowIn,
          ),
        );
      } else {
        widget._nameFocusNode.requestFocus();
      }
    });
  }

  bool _auMoinsUnChampsEstRempli() {
    return widget._nameTextController.text.isNotEmpty || widget._cityTextController.text.isNotEmpty;
  }
}

class _EsSearchInformations extends StatelessWidget {
  final String name;
  final Commune? cityResult;

  const _EsSearchInformations({required this.name, this.cityResult});

  String _buildResearchString() {
    String researchString = name;
    if (researchString.isNotEmpty && cityResult != null) {
      researchString += ', ';
    }
    return researchString += cityResult != null ? cityResult.toString() : '';
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Text(
        'Résultat de la recherche "${_buildResearchString()}"',
        style: EnsTextStyle.text16_w400_normal_body,
      ),
    );
  }
}

class _SearchCard extends StatelessWidget {
  final EtablissementDeSante es;
  final void Function() onTap;
  final bool isAddPharmacieForMessagerie;
  final RechercheEsScreenArgument? argument;
  final AllPurposesStatus ajoutEsStatus;

  const _SearchCard({
    required this.es,
    required this.onTap,
    required this.isAddPharmacieForMessagerie,
    this.argument,
    required this.ajoutEsStatus,
  });

  @override
  Widget build(BuildContext context) {
    final formattedEsName = ProfessionnelsDeSanteInformationHelper.capitalizeAsNames(es.nameWithAlias);
    return EnsCard(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            formattedEsName,
            style: EnsTextStyle.text16_w700_normal_title,
            textAlign: TextAlign.start,
          ),
          const SizedBox(height: 8),
          if (es.activity != null && es.activity!.isNotEmpty)
            Text(
              '${es.activity}',
              style: EnsTextStyle.text16_w600_body,
              textAlign: TextAlign.start,
            ),
          const SizedBox(height: 8),
          if (es.address != null)
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const EnsSvg(EnsImages.ic_location, height: 18, width: 14, color: EnsColors.body),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    es.address!.formattedAddress,
                    style: EnsTextStyle.text16_w400_normal_title,
                    textAlign: TextAlign.start,
                  ),
                ),
              ],
            ),
          const SizedBox(height: 16),
          if (es.active) ...[
            const SizedBox(height: 16),
            EnsButton(
              label: isAddPharmacieForMessagerie || argument?.rechercheEsType == RechercheEsType.SELECTION_AGENDA_ES
                  ? 'Sélectionner'
                  : 'Ajouter',
              onTap: onTap,
            ),
          ] else
            const EnsInformationMarkLabel(
              title: 'Ce professionnel de santé n\'est plus en activité',
            ),
        ],
      ),
    );
  }
}

enum RechercheEsType {
  ADD_ES,
  ADD_PHARMACIE_FOR_MESSAGERIE,
  SELECTION_AGENDA_ES,
}
