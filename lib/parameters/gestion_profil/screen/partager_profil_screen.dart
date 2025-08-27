/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/parameters/gestion_profil/screen/partager_profil_form_screen.dart';
import 'package:fr_cnamts_ens/parameters/gestion_profil/view_model/partager_profil_view_model.dart';
import 'package:fr_cnamts_ens/tags/tags_parameters.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/error_page.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';
import 'package:fr_cnamts_ens/ui/widgets/skeletons.dart';
import 'package:fr_cnamts_ens/utils/all_purposes_status.dart';

class PartagerProfilScreen extends StatelessWidget {
  static const routeName = '/partage-du-profil';

  const PartagerProfilScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const EnsAppBarSubLevel(title: 'Partage du profil'),
      body: SafeArea(
        child: StoreConnector<EnsState, PartagerProfilViewModel>(
          converter: (store) => PartagerProfilViewModel(store),
          onInitialBuild: (vm) {
            vm.loadGestionnaires();
            context.tagAction(TagsParameters.tag_1272_partage_profil);
          },
          distinct: true,
          builder: (context, vm) {
            return switch (vm.status) {
              AllPurposesStatus.SUCCESS => _Content(vm: vm),
              AllPurposesStatus.ERROR => ErrorPage(reloadFunction: vm.loadGestionnaires),
              _ => _Loading(vm.patientName),
            };
          },
        ),
      ),
    );
  }
}

class _Content extends StatelessWidget {
  final PartagerProfilViewModel vm;

  const _Content({
    required this.vm,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ScrollviewWithScrollbar(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Je partage la gestion du profil Mon espace santé de mon enfant avec un autre représentant légal : le second parent ou le tuteur légal nommé par le juge des tutelles.',
                style: EnsTextStyle.text14_w400_normal_body,
              ),
              const SizedBox(height: 24),
              Text(
                'Le profil de ${vm.patientName} est géré par :',
                style: EnsTextStyle.text20_w400_normal_title,
              ),
              const SizedBox(height: 24),
              ...vm.gestionnairesNames
                  .map(
                    (gestionnaireName) => [
                      _ProfilCard(gestionnaireName),
                      const SizedBox(height: 16),
                    ],
                  )
                  .flattened,
              if (vm.gestionnairesEnAttenteNames.isNotEmpty) ...[
                const SizedBox(height: 36),
                const Text(
                  'Une demande de partage est en attente :',
                  style: EnsTextStyle.text20_w400_normal_title,
                ),
                const SizedBox(height: 24),
                ...vm.gestionnairesEnAttenteNames
                    .map(
                      (gestionnaireEnAttenteName) => [
                        _ProfilCard(gestionnaireEnAttenteName),
                        const SizedBox(height: 16),
                      ],
                    )
                    .flattened,
              ],
              const SizedBox(height: 64),
            ],
          ),
        ),
        if (vm.canShare)
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Row(
                children: [
                  Expanded(
                    child: EnsButton(
                      label: 'Partager l’accès au profil',
                      onTap: () => Navigator.pushNamed(context, PartagerProfilFormScreen.routeName),
                    ),
                  ),
                ],
              ),
            ),
          ),
      ],
    );
  }
}

class _ProfilCard extends StatelessWidget {
  final String name;

  const _ProfilCard(this.name);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [
          BoxShadow(color: EnsColors.neutral200, blurRadius: 16),
        ],
      ),
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            name,
            style: EnsTextStyle.text16_w600_normal_title,
          ),
          const Text(
            'Représentant légal',
            style: EnsTextStyle.text14_w600_normal_body,
          ),
        ],
      ),
    );
  }
}

class _Loading extends StatelessWidget {
  final String patientName;

  const _Loading(this.patientName);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
      child: ScrollviewWithScrollbar(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Je partage la gestion du profil Mon espace santé de mon enfant avec un autre représentant légal : le second parent ou le tuteur légal nommé par le juge des tutelles.',
              style: EnsTextStyle.text14_w400_normal_body,
            ),
            const SizedBox(height: 24),
            Text(
              'Le profil de $patientName est géré par :',
              style: EnsTextStyle.text20_w400_normal_title,
            ),
            const SizedBox(height: 24),
            const SkeletonBox(height: 80, radius: 16),
            const SizedBox(height: 64),
          ],
        ),
      ),
    );
  }
}
