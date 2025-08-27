/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/questionnaire_ages_cles/screens/questionnaire_ages_cles_question_screen.dart';
import 'package:fr_cnamts_ens/questionnaire_ages_cles/screens/viewmodels/start_new_version_questionnaire_view_model.dart';
import 'package:fr_cnamts_ens/questionnaire_ages_cles/screens/widgets/loading_questionnaire_widget.dart';
import 'package:fr_cnamts_ens/tags/tags_questionnaire_ages_cles.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/error_page.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/information_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_floating_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:fr_cnamts_ens/utils/screen_status.dart';

class StartNewVersionQuestionnaireScreen extends StatelessWidget {
  static const routeName = 'questionnaire-sante/start-new-version';

  const StartNewVersionQuestionnaireScreen();

  @override
  Widget build(BuildContext context) {
    return StoreConnector<EnsState, StartNewVersionQuestionnaireViewModel>(
      converter: (store) => StartNewVersionQuestionnaireViewModel(store),
      distinct: true,
      onInitialBuild: (vm) => vm.loadQuestionnaire(),
      builder: (context, vm) {
        return Scaffold(
          appBar: EnsAppBarSubLevel(
            title: '',
            action: Padding(
              padding: const EdgeInsets.only(right: 24),
              child: EnsSvg(vm.logoFilePath),
            ),
          ),
          body: _Content(vm.status, vm.loadQuestionnaire),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
          floatingActionButton: vm.status.isSuccess()
              ? EnsFloatingButton(
                  buttonLabel: 'Répondre à la nouvelle version',
                  onTap: () {
                    context.tagAction(
                      TagsQuestionnaireAgesCles.tagButtonCommencerNouveauQuestionnaire2234(vm.trancheAgeForTracking),
                    );
                    vm.onStartNewVersion();
                    Navigator.pushReplacementNamed(
                      context,
                      QuestionnaireAgesClesQuestionScreen.routeName,
                      arguments: QuestionnaireAgesClesQuestionScreenArguments(questionnaireCode: vm.questionnaireCode),
                    );
                  },
                )
              : const SizedBox(),
        );
      },
    );
  }
}

class _Content extends StatelessWidget {
  final ScreenStatus status;
  final void Function() loadQuestionnaire;

  const _Content(this.status, this.loadQuestionnaire);

  @override
  Widget build(BuildContext context) {
    return switch (status) {
      ScreenStatus.LOADING => const LoadingQuestionnaireWidget(),
      ScreenStatus.ERROR => ErrorPage(reloadFunction: loadQuestionnaire),
      ScreenStatus.SUCCESS => const _Success(),
    };
  }
}

class _Success extends StatelessWidget {
  const _Success();

  @override
  Widget build(BuildContext context) {
    return const ScrollviewWithScrollbar(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 32),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Une nouvelle version de ce questionnaire de santé est disponible',
              style: EnsTextStyle.text20_w400_normal_body,
            ),
            SizedBox(height: 16),
            Text(
              'Le questionnaire que vous avez déjà renseigné a évolué',
              style: EnsTextStyle.text14_w500_normal_body,
            ),
            SizedBox(height: 16),
            Text(
              'Cette nouvelle version vous permettra de donner des informations plus précises à votre médecin traitant ou au professionnel de santé que vous consulterez pour réaliser votre bilan de prévention.',
              style: EnsTextStyle.text14_w400_normal_body,
            ),
            SizedBox(height: 16),
            Text(
              'Répondez dès à présent à ce questionnaire afin de préparer ce bilan et de recevoir des premiers conseils.',
              style: EnsTextStyle.text14_w400_normal_body,
            ),
            SizedBox(height: 32),
            _FeatureItem(
              label:
                  'En choisissant de répondre à la nouvelle version les réponses que j’avais précédemment renseignées seront supprimées.',
              svgPath: EnsImages.information,
            ),
            SizedBox(height: 32),
            _FeatureItem(
              label:
                  'Je prends 10 minutes et réponds aux questions. Aucune question n’est obligatoire. Certains sujets de santé pourront être abordés avec mon médecin traitant ou un professionnel de santé si je le souhaite.',
              svgPath: EnsImages.chrono,
            ),
            SizedBox(height: 64),
          ],
        ),
      ),
    );
  }
}

class _FeatureItem extends StatelessWidget {
  final String label;
  final String svgPath;

  const _FeatureItem({
    required this.label,
    required this.svgPath,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        EnsSvg(svgPath, width: 54, height: 54),
        const SizedBox(width: 20),
        Expanded(
          child: Text(
            label,
            style: EnsTextStyle.text14_w400_normal_body,
          ),
        ),
      ],
    );
  }
}

Future<void> showQuestionnaireAgeClefModeInviteBottomSheet(BuildContext context) {
  return showModalBottomSheet(
    isScrollControlled: true,
    context: context,
    builder: (BuildContext context) => const InformationBottomSheet(
      title: 'Vos réponses ne seront pas enregistrées',
      description: Text(
        'Ceci est une version de démonstration d’un questionnaire de santé.\n\nConnectez-vous pour accéder à vos données et profiter de toutes les fonctionnalités.',
        style: EnsTextStyle.text16_w400_normal_body,
        textAlign: TextAlign.center,
      ),
    ),
  );
}
