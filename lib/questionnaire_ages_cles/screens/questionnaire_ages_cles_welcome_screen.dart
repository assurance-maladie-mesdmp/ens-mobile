/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/infra/injection/ens_module_container.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/questionnaire_ages_cles/data/questionnaire_ages_cles_mapper.dart';
import 'package:fr_cnamts_ens/questionnaire_ages_cles/redux/questionnaire_ages_cles_redux.dart';
import 'package:fr_cnamts_ens/questionnaire_ages_cles/screens/questionnaire_ages_cles_question_screen.dart';
import 'package:fr_cnamts_ens/questionnaire_ages_cles/screens/viewmodels/questionnaire_ages_cles_welcome_view_model.dart';
import 'package:fr_cnamts_ens/questionnaire_ages_cles/screens/widgets/loading_questionnaire_widget.dart';
import 'package:fr_cnamts_ens/tags/tags_questionnaire_ages_cles.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/error_page.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/information_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_floating_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_pop_scope.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';
import 'package:fr_cnamts_ens/utils/screen_status.dart';

class QuestionnaireAgesClesWelcomeScreenArgument {
  final bool isFromBilanDePrevention;
  final QuestionnaireCode questionnaireCode;
  final String questionnaireVersion;

  QuestionnaireAgesClesWelcomeScreenArgument({
    this.isFromBilanDePrevention = false,
    required this.questionnaireCode,
    required this.questionnaireVersion,
  });
}

class QuestionnaireAgesClesWelcomeScreen extends StatelessWidget {
  static const routeName = 'questionnaire-sante/commencer';

  const QuestionnaireAgesClesWelcomeScreen();

  @override
  Widget build(BuildContext context) {
    final argument = ModalRoute.of(context)?.settings.arguments as QuestionnaireAgesClesWelcomeScreenArgument?;
    final isFromBilanDePrevention = argument?.isFromBilanDePrevention ?? false;
    return StoreConnector<EnsState, QuestionnaireAgesClesWelcomeViewModel>(
      converter: (store) => QuestionnaireAgesClesWelcomeViewModel(store),
      distinct: true,
      onInit: (store) {
        store.dispatch(
          FetchQuestionnaireAgesClesAction(
            code: argument?.questionnaireCode,
            version: argument?.questionnaireVersion,
          ),
        );
      },
      onInitialBuild: (vm) {
        _trackAgeForTracking(vm, context);

        if (EnsModuleContainer.currentInjector.isGuestMode()) {
          showQuestionnaireAgeClefModeInviteBottomSheet(context);
        }
      },
      onWillChange: (oldVm, vm) {
        if (oldVm?.trancheAgeForTracking != vm.trancheAgeForTracking) {
          _trackAgeForTracking(vm, context);
        }
      },
      builder: (_, vm) {
        return EnsPopScope.shouldPop(
          onScreenClosedInvoked: () {
            context.tagAction(TagsQuestionnaireAgesCles.tagButtonRetourHomeQuestionnaire986(vm.trancheAgeForTracking));
          },
          child: Scaffold(
            appBar: EnsAppBarSubLevel(
              title: '',
              action: Padding(
                padding: const EdgeInsets.only(right: 24),
                child: EnsSvg(vm.logoFilePath),
              ),
            ),
            body: _Content(vm),
            floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
            floatingActionButton: vm.status.isSuccess()
                ? EnsFloatingButton(
                    buttonLabel: 'Remplir le questionnaire',
                    onTap: () {
                      context.tagAction(
                        TagsQuestionnaireAgesCles.tagButtonCommencerQuestionnaire987(
                          vm.trancheAgeForTracking,
                        ),
                      );
                      Navigator.pushReplacementNamed(
                        context,
                        QuestionnaireAgesClesQuestionScreen.routeName,
                        arguments: QuestionnaireAgesClesQuestionScreenArguments(
                          isFromBilanDePrevention: isFromBilanDePrevention,
                          questionnaireCode: argument?.questionnaireCode,
                          questionnaireVersion: argument?.questionnaireVersion,
                        ),
                      );
                    },
                  )
                : const SizedBox(),
          ),
        );
      },
    );
  }
}

void _trackAgeForTracking(QuestionnaireAgesClesWelcomeViewModel vm, BuildContext context) {
  if (vm.trancheAgeForTracking.isNotEmpty) {
    context.tagAction(
      TagsQuestionnaireAgesCles.tagPageHomeQuestionnaire985(
        vm.trancheAgeForTracking,
      ),
    );
  }
}

class _Content extends StatelessWidget {
  final QuestionnaireAgesClesWelcomeViewModel vm;

  const _Content(this.vm);

  @override
  Widget build(BuildContext context) {
    switch (vm.status) {
      case ScreenStatus.LOADING:
        return const LoadingQuestionnaireWidget();
      case ScreenStatus.SUCCESS:
        return _Success(
          title: vm.title,
          descriptions: vm.descriptions,
          infos: vm.items.map((item) => _InformationWithIcon(imageContent: item.image, label: item.text)).toList(),
        );
      case ScreenStatus.ERROR:
        return ErrorPage(reloadFunction: vm.onReload);
    }
  }
}

class _Success extends StatelessWidget {
  final String title;
  final List<String> descriptions;
  final List<_InformationWithIcon> infos;

  const _Success({required this.title, required this.descriptions, required this.infos});

  @override
  Widget build(BuildContext context) {
    return ScrollviewWithScrollbar(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Je réponds au questionnaire de santé',
              style: EnsTextStyle.text20_w400_normal_body,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            ...descriptions.map(
              (description) => Text(
                description,
                style: EnsTextStyle.text14_w400_normal_body,
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 24),
            for (final info in infos) ...[
              _FeatureItem(
                label: info.label,
                svgPath: info.imageContent,
              ),
              const SizedBox(height: 32),
            ],
            const SizedBox(height: 32),
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
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                label,
                style: EnsTextStyle.text14_w400_normal_body,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _InformationWithIcon extends Equatable {
  final String imageContent;
  final String label;

  const _InformationWithIcon({required this.imageContent, required this.label});

  @override
  List<Object?> get props => [imageContent, label];
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
