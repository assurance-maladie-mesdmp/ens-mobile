/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/agenda/screens/edit_rendez_vous_ps_select_screen.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/redux/etablissements_de_sante_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/redux/professionnels_de_sante_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/screens/viewmodels/professionnels_de_sante_screen_autocomplete_view_model.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/screens/viewmodels/professionnels_de_sante_screen_view_model.dart';
import 'package:fr_cnamts_ens/tags/tags_agenda.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_ink_well.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';
import 'package:fr_cnamts_ens/ui/widgets/skeletons.dart';
import 'package:fr_cnamts_ens/utils/extensions/string_extensions.dart';

class AddRendezVousPsNameAutocompleteScreen extends StatelessWidget {
  final TextEditingController _nameController = TextEditingController();
  final String? initialQuery;

  AddRendezVousPsNameAutocompleteScreen(this.initialQuery);

  @override
  Widget build(BuildContext context) {
    if (initialQuery != null) {
      _nameController.text = initialQuery!;
    }
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: const EnsAppBarSubLevel(
        title: '',
      ),
      body: StoreConnector<EnsState, ProfessionnelsDeSanteScreenAutocompleteViewModel>(
        converter: (store) => ProfessionnelsDeSanteScreenAutocompleteViewModel.from(store),
        distinct: true,
        onInit: (store) {
          store.dispatch(FetchProfessionnelsDeSanteAction());
          store.dispatch(FetchEtablissementsDeSanteAction());
        },
        builder: (context, vm) {
          return _PsNameSelector(_nameController, vm);
        },
      ),
    );
  }
}

class _PsNameSelector extends StatefulWidget {
  final TextEditingController _nameController;
  final ProfessionnelsDeSanteScreenAutocompleteViewModel _vm;

  const _PsNameSelector(this._nameController, this._vm);

  @override
  State<_PsNameSelector> createState() => _PsNameSelectorState();
}

class _PsNameSelectorState extends State<_PsNameSelector> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constraints) {
        final filteredPs = widget._vm.displayModels.filterWithQuery(widget._nameController.text);
        return ScrollviewWithScrollbar(
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: constraints.maxHeight),
            child: IntrinsicHeight(
              child: Material(
                color: EnsColors.light,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        const SizedBox(width: 16),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            child: ConstrainedBox(
                              constraints: const BoxConstraints(minHeight: 48),
                              child: TextFormField(
                                autofocus: true,
                                controller: widget._nameController,
                                cursorColor: EnsColors.primary,
                                inputFormatters: [
                                  FilteringTextInputFormatter.deny(
                                    RegExp('[@<>\\?:/€\\*#\\|%~\\+£\\\$!§¤]'),
                                  ),
                                ],
                                style: EnsTextStyle.text16_w400_normal_title,
                                onChanged: (value) {
                                  // sert à afficher ou non le bouton valider
                                  setState(() {});
                                },
                                decoration: const InputDecoration(
                                  isDense: true,
                                  contentPadding: EdgeInsets.zero,
                                  border: InputBorder.none,
                                  hintText: 'Recherchez le professionnel',
                                  suffixIconConstraints: BoxConstraints(),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 16),
                        if (widget._nameController.text.isNotEmpty)
                          EnsInkWell(
                            onTap: () {
                              context.tagAction(TagsAgenda.tag_956_button_saisie_libre_ps_rdv);
                              Navigator.of(context).pop<String>(widget._nameController.text);
                            },
                            child: ConstrainedBox(
                              constraints: const BoxConstraints(minHeight: 48),
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  'Valider',
                                  style: EnsTextStyle.text14_w700_normal_primary,
                                ),
                              ),
                            ),
                          ),
                        if (widget._nameController.text.isNotEmpty) const SizedBox(width: 16),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Container(
                        height: 1,
                        color: EnsColors.neutral200,
                      ),
                    ),
                    if (widget._vm.listStatus != ActeurDeSanteListStatus.LOADING && filteredPs.isNotEmpty) ...[
                      const Padding(
                        padding: EdgeInsets.all(16),
                        child: Text('Mes professionnels de santé', style: EnsTextStyle.text16_w600_normal_title),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Container(
                          height: 1,
                          color: EnsColors.neutral200,
                        ),
                      ),
                    ],
                    if (widget._vm.listStatus == ActeurDeSanteListStatus.LOADING)
                      _Loading()
                    else
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        mainAxisSize: MainAxisSize.min,
                        children: filteredPs.map((e) => _PsItem(e)).toList(),
                      ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class _PsItem extends StatelessWidget {
  final ActeurDeSanteAutocompletionDisplayModel ps;

  const _PsItem(this.ps);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [
        EnsInkWell(
          onTap: () {
            context.tagAction(TagsAgenda.tag_955_button_ps_liste_rdv);
            Navigator.of(context).pop(
              EditRendezVousPsSelectScreenArguments(
                addresse: ps.addresse ?? '',
                profession: ps.speciality ?? '',
                name: ps.displayedName,
                isPs: ps.type == TypeOfActeurDeSante.PS,
                idActeurSante: ps.idNat,
              ),
            );
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                EnsSvg(
                  ps.type.icon,
                  height: ps.type == TypeOfActeurDeSante.PS ? 20 : 18,
                  color: EnsColors.title,
                ),
                const SizedBox(width: 8),
                Expanded(child: Text(ps.displayedName)),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Container(
            height: 1,
            color: EnsColors.neutral200,
          ),
        ),
      ],
    );
  }
}

class _Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(height: 16),
        Padding(
          padding: EdgeInsets.only(left: 16, right: 100),
          child: SkeletonBox(height: 24),
        ),
        SizedBox(height: 24),
        _LoadingItem(),
        SizedBox(height: 24),
        _LoadingItem(),
        SizedBox(height: 24),
        _LoadingItem(),
        SizedBox(height: 24),
        _LoadingItem(),
      ],
    );
  }
}

class _LoadingItem extends StatelessWidget {
  const _LoadingItem();

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        SizedBox(width: 32),
        SkeletonCircle(radius: 24),
        SizedBox(width: 16),
        Expanded(child: SkeletonBox(height: 24)),
        SizedBox(width: 120),
      ],
    );
  }
}

extension _FilterAutocomplete on Iterable<ActeurDeSanteAutocompletionDisplayModel> {
  Iterable<ActeurDeSanteAutocompletionDisplayModel> filterWithQuery(String query) {
    return where((element) {
      final cleanedName = element.displayedName.toLowerCase().replaceAllDiacritics();
      final cleanedQuery = query.toLowerCase().replaceAllDiacritics();
      return cleanedName.contains(cleanedQuery);
    });
  }
}
