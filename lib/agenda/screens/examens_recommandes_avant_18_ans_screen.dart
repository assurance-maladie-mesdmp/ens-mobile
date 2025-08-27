/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/agenda/screens/examens_recommandes_screen.dart';
import 'package:fr_cnamts_ens/agenda/screens/viewModels/examens_recommandes_avant_18_ans_view_model.dart';
import 'package:fr_cnamts_ens/agenda/screens/viewModels/examens_recommandes_view_model.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/tags/tags_agenda.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';

class ExamensRecommandesAvant18AnsScreen extends StatelessWidget {
  static const routeName = '/agenda/examens/avant18ans';

  const ExamensRecommandesAvant18AnsScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const EnsAppBarSubLevel(title: 'Suivi médical avant 18 ans'),
      body: StoreConnector<EnsState, ExamensRecommandesAvant18AnsViewModel>(
        converter: (store) => ExamensRecommandesAvant18AnsViewModel(store),
        distinct: true,
        onInitialBuild: (_) => context.tagAction(TagsAgenda.tag_1345_examen_avant_18_ans),
        builder: (context, vm) {
          return SafeArea(child: _Content(vm));
        },
      ),
    );
  }
}

class _Content extends StatelessWidget {
  final ExamensRecommandesAvant18AnsViewModel vm;

  const _Content(this.vm);

  @override
  Widget build(BuildContext context) {
    return ListViewWithScrollbar.builder(
      padding: const EdgeInsets.only(bottom: 16),
      itemCount: vm.displayModels.length,
      itemBuilder: (_, index) {
        final displayModel = vm.displayModels[index];
        switch (displayModel) {
          case ExamenRecommandeItemDisplayModel():
            return ExamenItem(
              displayModel: displayModel,
              isLastOfList: index == vm.displayModels.length - 1,
            );
          case ExamenRecommandeAvant18AnsHeaderDisplayModel():
            return const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 32),
              child: Text(
                'Je consulte les examens médicaux et vaccinations de mon enfance.',
                style: EnsTextStyle.text14_w400_normal_body,
              ),
            );
          default:
            return Container();
        }
      },
    );
  }
}
