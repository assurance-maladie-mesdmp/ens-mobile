/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/prevention/screens/viewmodels/prevention_habitudes_de_vie_segment_view_model.dart';
import 'package:fr_cnamts_ens/prevention/widgets/prevention_habitudes_de_vie_card.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_card.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_ink_well.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';

class PreventionHabitudesDeVieSegment extends StatelessWidget {
  const PreventionHabitudesDeVieSegment({super.key});

  @override
  Widget build(BuildContext context) {
    return StoreConnector<EnsState, PreventionHabitudesDeVieSegmentViewModel>(
      converter: (store) => PreventionHabitudesDeVieSegmentViewModel.from(store),
      onInitialBuild: (vm) {
        vm.fetchHabitudesDeVie();
        vm.fetchInitialHabitudesDeVieAnswers();
      },
      builder: (context, vm) {
        return Column(
          children: [
            const Text(
              'Habitudes de vie et conseils personnalisés',
              style: EnsTextStyle.text20_w400_normal_title,
            ),
            const SizedBox(height: 16),
            PreventionHabitudesDeVieCard(label: vm.cardLabels.label, linkLabel: 'Renseigner mes habitudes de vie'),
            if (vm.habitudesDeVieDisplayModels.isNotEmpty) ...[
              const SizedBox(height: 16),
              EnsCard(
                borderRadius: 8,
                backgroundColor: EnsColors.neutral200,
                padding: const EdgeInsets.all(24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Text(vm.incitationLabels!.title, style: EnsTextStyle.text16_w600_body),
                        ),
                        EnsInkWell(
                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Ink(
                              child: const EnsSvg(EnsImages.ic_close_small, width: 10, height: 10),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Text(vm.incitationLabels!.description, style: EnsTextStyle.text14_w400_normal_body),
                    const SizedBox(height: 16),
                    ...vm.habitudesDeVieDisplayModels.map(
                      (question) => Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: _PreventionHabitudeDeVieQuestionCard(
                          label: question.label,
                          answer: question.answer,
                          updatedDate: question.updatedDate,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ],
        );
      },
    );
  }
}

class _PreventionHabitudeDeVieQuestionCard extends StatelessWidget {
  final String label;
  final String? answer;
  final String? updatedDate;

  const _PreventionHabitudeDeVieQuestionCard({
    required this.label,
    this.answer,
    this.updatedDate,
  });

  @override
  Widget build(BuildContext context) {
    return EnsCard(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(label, style: EnsTextStyle.text14_w600_normal_title),
                if (answer != null) Text(answer!, style: EnsTextStyle.text14_w400_normal_title),
                if (updatedDate != null) Text(updatedDate!, style: EnsTextStyle.text14_w400_normal_body),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: EnsSvg(
              answer != null ? EnsImages.ic_more_vertical : EnsImages.ic_chevron_right,
              height: 16,
              width: 16,
              color: EnsColors.title,
            ),
          ),
        ],
      ),
    );
  }
}
