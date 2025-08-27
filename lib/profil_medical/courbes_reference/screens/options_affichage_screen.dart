/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/courbes_reference/redux/courbes_reference_states.dart';
import 'package:fr_cnamts_ens/profil_medical/courbes_reference/screens/tags_courbes_reference.dart';
import 'package:fr_cnamts_ens/profil_medical/courbes_reference/screens/viewModels/options_affichage_screen_view_model.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/domain/models/ens_mesure_type.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_floating_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/ens_radio_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';

class OptionsAffichageScreen extends StatelessWidget {
  static const routeName = '/medical/profil/mesure/options-affichage';

  const OptionsAffichageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final mesureType = ModalRoute.of(context)!.settings.arguments! as EnsMesureType;
    return StoreConnector<EnsState, OptionsAffichageScreenViewModel>(
      converter: (store) => OptionsAffichageScreenViewModel(store, mesureType),
      distinct: true,
      builder: (_, vm) => _Form(vm: vm, mesureType: mesureType),
    );
  }
}

class _Form extends StatefulWidget {
  final OptionsAffichageScreenViewModel vm;
  final EnsMesureType mesureType;

  const _Form({required this.vm, required this.mesureType});

  @override
  State<_Form> createState() => _FormState();
}

class _FormState extends State<_Form> {
  late TypeOfChart selectedTypeOfChart;

  @override
  void initState() {
    super.initState();
    selectedTypeOfChart = widget.vm.defaultTypeOfChart;
  }

  @override
  Widget build(BuildContext context) {
    final mesureLabel = widget.mesureType.label.toLowerCase();
    final mesureArticle = _getArticleForMesure(widget.mesureType);

    return Scaffold(
      appBar: const EnsAppBarSubLevel(title: 'Options d’affichage'),
      body: ScrollviewWithScrollbar(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Choisir l’affichage du graphique pour le suivi $mesureArticle$mesureLabel',
              style: EnsTextStyle.text20_w400_normal_title,
            ),
            const SizedBox(height: 16),
            Text(
              'Afin de permettre un meilleur suivi $mesureArticle$mesureLabel, deux modes d\'affichage du graphique sont disponibles',
              style: EnsTextStyle.text14_w400_normal_body,
            ),
            const SizedBox(height: 32),
            EnsRadioButton.card(
              value: TypeOfChart.CARNET_SANTE,
              groupValue: selectedTypeOfChart,
              label: 'Suivi spécifique de la croissance de l’enfant',
              onSelected: () {
                if (selectedTypeOfChart != TypeOfChart.CARNET_SANTE) {
                  TagsCourbesReference.tagOptionAffichageButtonClick(TypeOfChart.CARNET_SANTE, widget.mesureType);
                  setState(() {
                    selectedTypeOfChart = TypeOfChart.CARNET_SANTE;
                  });
                }
              },
            ),
            const SizedBox(height: 24),
            EnsRadioButton.card(
              value: TypeOfChart.DYNAMIQUE,
              groupValue: selectedTypeOfChart,
              label: 'Suivi standard de l’évolution $mesureArticle$mesureLabel',
              onSelected: () {
                if (selectedTypeOfChart != TypeOfChart.DYNAMIQUE) {
                  TagsCourbesReference.tagOptionAffichageButtonClick(TypeOfChart.DYNAMIQUE, widget.mesureType);
                  setState(() {
                    selectedTypeOfChart = TypeOfChart.DYNAMIQUE;
                  });
                }
              },
            ),
            const SizedBox(height: 76),
          ],
        ),
      ),
      floatingActionButton: EnsFloatingButton(
        expanded: true,
        buttonLabel: 'Valider l’affichage',
        onTap: () {
          TagsCourbesReference.tagValiderAffichageButtonClick(widget.mesureType);
          widget.vm.updatePreferredTypeOfChart(selectedTypeOfChart);
          Navigator.pop(context);
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  String _getArticleForMesure(EnsMesureType mesureType) {
    if (mesureType == EnsMesureType.IMC) {
      return 'de l\'';
    }
    if (mesureType.isLabelFeminin()) {
      return 'de la ';
    }
    return 'du ';
  }
}
