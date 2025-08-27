/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/documents/widgets/ens_filter_button.dart';
import 'package:fr_cnamts_ens/infra/injection/ens_module_container.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/raccourcis/domain/raccourcis.dart';
import 'package:fr_cnamts_ens/raccourcis/domain/raccourcis_categorie.dart';
import 'package:fr_cnamts_ens/raccourcis/redux/raccourcis_redux.dart';
import 'package:fr_cnamts_ens/raccourcis/screens/viewmodels/gerer_raccourcis_screen_view_model.dart';
import 'package:fr_cnamts_ens/snackbar/redux/snackbar_actions.dart';
import 'package:fr_cnamts_ens/tags/tags_raccourcis.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/dialogs/filter_dialog.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_card.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_checkbox.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_floating_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';

class GererRaccourcisScreen extends StatefulWidget {
  static const routeName = '/gerer_raccourcis';

  const GererRaccourcisScreen();

  @override
  State<GererRaccourcisScreen> createState() => _GererRaccourcisScreenState();
}

class _GererRaccourcisScreenState extends State<GererRaccourcisScreen> {
  List<Raccourcis> _selectedRaccourcis = [];
  List<CategoryFilterItem<RaccourcisCategorie>> _selectableFilters = [];
  List<RaccourcisCategorie> _selectedFilters = [];

  @override
  void initState() {
    super.initState();
    _selectableFilters = [
      const CategoryFilterItem<RaccourcisCategorie>(
        RaccourcisCategorie(
          categorie: Categorie.SUIVI_MEDICAL,
          label: 'Suivi médical',
        ),
      ),
      const CategoryFilterItem<RaccourcisCategorie>(
        RaccourcisCategorie(
          categorie: Categorie.MESURES,
          label: 'Mesures',
        ),
      ),
      const CategoryFilterItem<RaccourcisCategorie>(
        RaccourcisCategorie(
          categorie: Categorie.PS,
          label: 'Professionnels de santé',
        ),
      ),
      const CategoryFilterItem<RaccourcisCategorie>(
        RaccourcisCategorie(
          categorie: Categorie.DOCUMENTS,
          label: 'Documents',
        ),
      ),
      const CategoryFilterItem<RaccourcisCategorie>(
        RaccourcisCategorie(
          categorie: Categorie.MESSAGERIE,
          label: 'Messagerie',
        ),
      ),
      const CategoryFilterItem<RaccourcisCategorie>(
        RaccourcisCategorie(
          categorie: Categorie.CATALOGUE_SERVICE,
          label: 'Catalogue de services',
        ),
      ),
      const CategoryFilterItem<RaccourcisCategorie>(
        RaccourcisCategorie(
          categorie: Categorie.PARAMETRES,
          label: 'Paramètres',
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return StoreConnector<EnsState, GererRaccourcisScreenViewModel>(
      converter: (store) => GererRaccourcisScreenViewModel.from(store),
      onInit: (store) {
        context.tagAction(TagsRaccourcis.tag_2352_gerer_raccourcis);
        store.dispatch(FetchRaccourcisItemParCategorieAction());
      },
      onInitialBuild: (vm) {
        setState(() {
          _selectedRaccourcis = vm.raccourcis;
        });
      },
      builder: (context, vm) => Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Gérer mes raccourcis',
            style: EnsTextStyle.text16_w400_normal_title,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: SizedBox(
            width: double.infinity,
            child: EnsFloatingButton(
              buttonLabel:
                  'Valider l’affichage${_selectedRaccourcis.isNotEmpty ? ' (${_selectedRaccourcis.length})' : ''}',
              onTap: () {
                if (EnsModuleContainer.currentInjector.isGuestMode()) {
                  StoreProvider.of<EnsState>(context).dispatch(const DisplaySnackbarAction.unavailableInGuestMode());
                } else {
                  vm.updateRaccourcis(_selectedRaccourcis);
                  if (_selectedRaccourcis.length <= 5) {
                    Navigator.of(context).pop();
                  }
                }
              },
            ),
          ),
        ),
        body: SafeArea(
          child: ScrollviewWithScrollbar(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Padding(
                  padding: EdgeInsets.fromLTRB(24, 32, 24, 24),
                  child: Text(
                    'Je peux ajouter ou retirer des raccourcis sur ma page d\'accueil. Je peux ajouter jusqu’à 5 raccourcis.',
                    style: EnsTextStyle.text14_w400_normal_body,
                  ),
                ),
                EnsFilterButton(
                  onTap: () {
                    context.tagAction(TagsRaccourcis.tag_2354_button_filtrer_gerer_raccourcis);
                  },
                  numberActiveFilters: _selectedFilters.length,
                  filterDialog: FilterDialog<RaccourcisCategorie>(
                    initialSelectableFilters: _selectableFilters,
                    buttonLabel: 'Filtrer',
                    emptyFilterButtonLabel: 'Voir tout',
                    labelMapper: (categorie) => categorie.label,
                    onFilterSelected: (selectedFilters) {
                      setState(() {
                        _selectableFilters = _selectableFilters.map((item) {
                          if (selectedFilters.contains(item.categorie)) {
                            return item.clone(isSelected: true);
                          } else {
                            return item.clone(isSelected: false);
                          }
                        }).toList();
                        _selectedFilters = selectedFilters;
                      });
                    },
                    filterTag: TagsRaccourcis.tag_2356_button_valider_raccourcis,
                    tagInitialPage: TagsRaccourcis.tag_2355_filtrer_gerer_raccourcis,
                  ),
                ),
                const SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      if (vm.shouldDisplayListOfCategorie(_selectedFilters, Categorie.SUIVI_MEDICAL)) ...[
                        const Text('Suivi médical', style: EnsTextStyle.text14_w600_normal_body),
                        ...vm.raccourcisParCategorie[Categorie.SUIVI_MEDICAL]!.map(
                          (item) => _RaccourcisItemCard(
                            raccourcisTitre: item.titre,
                            raccourcisImagePath: item.imagePath,
                            isSelected: _selectedRaccourcis.contains(item),
                            onChange: (value) {
                              setState(() {
                                if (value == true) {
                                  _selectedRaccourcis.add(item);
                                } else {
                                  _selectedRaccourcis.remove(item);
                                }
                              });
                            },
                          ),
                        ),
                        const SizedBox(height: 24),
                      ],
                      if (vm.shouldDisplayListOfCategorie(_selectedFilters, Categorie.MESURES)) ...[
                        const Text('Mesures', style: EnsTextStyle.text14_w600_normal_body),
                        ...vm.raccourcisParCategorie[Categorie.MESURES]!.map(
                          (item) => _RaccourcisItemCard(
                            raccourcisTitre: item.titre,
                            raccourcisImagePath: item.imagePath,
                            isSelected: _selectedRaccourcis.contains(item),
                            onChange: (value) {
                              setState(() {
                                if (value == true) {
                                  _selectedRaccourcis.add(item);
                                } else {
                                  _selectedRaccourcis.remove(item);
                                }
                              });
                            },
                          ),
                        ),
                        const SizedBox(height: 24),
                      ],
                      if (vm.shouldDisplayListOfCategorie(_selectedFilters, Categorie.PS)) ...[
                        const Text('Professionnels de santé', style: EnsTextStyle.text14_w600_normal_body),
                        ...vm.raccourcisParCategorie[Categorie.PS]!.map(
                          (item) => _RaccourcisItemCard(
                            raccourcisTitre: item.titre,
                            raccourcisImagePath: item.imagePath,
                            isSelected: _selectedRaccourcis.contains(item),
                            onChange: (value) {
                              setState(() {
                                if (value == true) {
                                  _selectedRaccourcis.add(item);
                                } else {
                                  _selectedRaccourcis.remove(item);
                                }
                              });
                            },
                          ),
                        ),
                        const SizedBox(height: 24),
                      ],
                      if (vm.shouldDisplayListOfCategorie(_selectedFilters, Categorie.DOCUMENTS)) ...[
                        const Text('Documents', style: EnsTextStyle.text14_w600_normal_body),
                        ...vm.raccourcisParCategorie[Categorie.DOCUMENTS]!.map(
                          (item) => _RaccourcisItemCard(
                            raccourcisTitre: item.titre,
                            raccourcisImagePath: item.imagePath,
                            isSelected: _selectedRaccourcis.contains(item),
                            onChange: (value) {
                              setState(() {
                                if (value == true) {
                                  _selectedRaccourcis.add(item);
                                } else {
                                  _selectedRaccourcis.remove(item);
                                }
                              });
                            },
                          ),
                        ),
                        const SizedBox(height: 24),
                      ],
                      if (vm.shouldDisplayListOfCategorie(_selectedFilters, Categorie.MESSAGERIE)) ...[
                        const Text('Messagerie', style: EnsTextStyle.text14_w600_normal_body),
                        ...vm.raccourcisParCategorie[Categorie.MESSAGERIE]!.map(
                          (item) => _RaccourcisItemCard(
                            raccourcisTitre: item.titre,
                            raccourcisImagePath: item.imagePath,
                            isSelected: _selectedRaccourcis.contains(item),
                            onChange: (value) {
                              setState(() {
                                if (value == true) {
                                  _selectedRaccourcis.add(item);
                                } else {
                                  _selectedRaccourcis.remove(item);
                                }
                              });
                            },
                          ),
                        ),
                        const SizedBox(height: 24),
                      ],
                      if (vm.shouldDisplayListOfCategorie(_selectedFilters, Categorie.CATALOGUE_SERVICE)) ...[
                        const Text('Catalogue de services', style: EnsTextStyle.text14_w600_normal_body),
                        ...vm.raccourcisParCategorie[Categorie.CATALOGUE_SERVICE]!.map(
                          (item) => _RaccourcisItemCard(
                            raccourcisTitre: item.titre,
                            raccourcisImagePath: item.imagePath,
                            isSelected: _selectedRaccourcis.contains(item),
                            onChange: (value) {
                              setState(() {
                                if (value == true) {
                                  _selectedRaccourcis.add(item);
                                } else {
                                  _selectedRaccourcis.remove(item);
                                }
                              });
                            },
                          ),
                        ),
                        const SizedBox(height: 24),
                      ],
                      if (vm.shouldDisplayListOfCategorie(_selectedFilters, Categorie.PARAMETRES)) ...[
                        const Text('Paramètres', style: EnsTextStyle.text14_w600_normal_body),
                        ...vm.raccourcisParCategorie[Categorie.PARAMETRES]!.map(
                          (item) => _RaccourcisItemCard(
                            raccourcisTitre: item.titre,
                            raccourcisImagePath: item.imagePath,
                            isSelected: _selectedRaccourcis.contains(item),
                            onChange: (value) {
                              setState(() {
                                if (value == true) {
                                  _selectedRaccourcis.add(item);
                                } else {
                                  _selectedRaccourcis.remove(item);
                                }
                              });
                            },
                          ),
                        ),
                      ],
                      const SizedBox(height: 100),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _RaccourcisItemCard extends StatelessWidget {
  final String raccourcisTitre;
  final String raccourcisImagePath;
  final bool isSelected;
  final void Function(bool?)? onChange;

  const _RaccourcisItemCard({
    required this.raccourcisTitre,
    required this.raccourcisImagePath,
    required this.isSelected,
    this.onChange,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: EnsCard(
        padding: const EdgeInsets.all(16),
        onTap: () {
          onChange?.call(!isSelected);
        },
        border: Border.all(
          color: isSelected ? EnsColors.primary : EnsColors.light,
          width: 2,
        ),
        child: Row(
          children: [
            EnsCheckbox(value: isSelected, onChange: onChange),
            const SizedBox(width: 16),
            EnsSvg(raccourcisImagePath, width: 64, height: 64),
            const SizedBox(width: 8),
            Expanded(child: Text(raccourcisTitre, style: EnsTextStyle.text16_w700_normal_title)),
          ],
        ),
      ),
    );
  }
}
