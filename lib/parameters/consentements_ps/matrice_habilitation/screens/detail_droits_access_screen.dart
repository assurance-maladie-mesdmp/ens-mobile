/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/infra/injection/ens_module_container.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/parameters/consentements_ps/matrice_habilitation/domain/models/ens_matrice_profession.dart';
import 'package:fr_cnamts_ens/parameters/consentements_ps/matrice_habilitation/redux/matrice_habilitation_redux.dart';
import 'package:fr_cnamts_ens/parameters/consentements_ps/matrice_habilitation/screens/labels/detail_droits_acces_labels.dart';
import 'package:fr_cnamts_ens/parameters/consentements_ps/matrice_habilitation/screens/matrice_habilitation_screen.dart';
import 'package:fr_cnamts_ens/parameters/consentements_ps/matrice_habilitation/screens/viewModels/detail_droits_acces_view_model.dart';
import 'package:fr_cnamts_ens/parameters/consentements_ps/matrice_habilitation/screens/viewModels/matrice_habilitation_categorie_view_model.dart';
import 'package:fr_cnamts_ens/parameters/widgets/acces_aux_donnees_bullet_points.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/error_page.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_divider.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_external_link.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_ink_well.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_rich_text.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';
import 'package:fr_cnamts_ens/ui/widgets/skeletons.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:fr_cnamts_ens/utils/screen_status.dart';

class DetailDroitsAccesScreen extends StatelessWidget {
  static const routeName = '/mon-compte/acces-professionnels-sante/detail';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const EnsAppBarSubLevel(title: 'Détail des droits d\'accès'),
      body: StoreConnector<EnsState, DetailDroitsAccesViewModel>(
        converter: (store) => DetailDroitsAccesViewModel.from(store),
        distinct: true,
        onInit: (store) => store.dispatch(FetchMatriceProfessionsAction()),
        builder: (_, vm) {
          return SafeArea(
            child: CustomScrollViewWithScrollbar(
              slivers: [
                SliverToBoxAdapter(child: _StaticInformations(vm.headerLabels)),
                SliverAppBar(
                  pinned: true,
                  backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                  automaticallyImplyLeading: false,
                  elevation: 0,
                  centerTitle: false,
                  titleSpacing: 24,
                  title: const Text(
                    'Sélectionner une profession',
                    style: EnsTextStyle.text14_w600_normal_body,
                  ),
                ),
                switch (vm.detailDroitAccesStatus) {
                  ScreenStatus.LOADING => const _Loader(),
                  ScreenStatus.ERROR => SliverToBoxAdapter(child: EnsError(reloadFunction: vm.reload)),
                  ScreenStatus.SUCCESS => SliverList(
                      delegate: SliverChildBuilderDelegate(
                        (_, index) {
                          return index.isEven ? _ProfessionItem(vm.matriceProfessions[index ~/ 2]) : const EnsDivider();
                        },
                        semanticIndexCallback: (_, index) => index.isEven ? index ~/ 2 : null,
                        childCount: max(vm.matriceProfessions.length * 2 - 1, 0),
                      ),
                    )
                },
              ],
            ),
          );
        },
      ),
    );
  }
}

class _StaticInformations extends StatelessWidget {
  final DetailDroitsAccesLabels labels;

  const _StaticInformations(this.labels);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 24, 24, 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(labels.headerFirstPart, style: EnsTextStyle.text14_w400_normal_body),
          const AccesAuxDonneesBulletPoints(),
          const SizedBox(height: 28),
          EnsRichText(
            text: TextSpan(
              children: [
                const TextSpan(
                  text:
                      'Par ailleurs, les professionnels disposent d\'un droit d\'accès défini selon leur profession et le type du document qu\'ils souhaitent consulter. ',
                  style: EnsTextStyle.text14_w400_normal_body,
                ),
                WidgetSpan(
                  child: EnsExternalLink.withRedirection(
                    linkUrl: EnsModuleContainer.currentInjector.getUrlsConfig().matriceHabilitationPdfUrl,
                    linkText: 'Voir le détail',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _Loader extends StatelessWidget {
  const _Loader();

  @override
  Widget build(BuildContext context) {
    return const SliverToBoxAdapter(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ListItemSkeleton(),
          EnsDivider(),
          ListItemSkeleton(),
          EnsDivider(),
          ListItemSkeleton(),
        ],
      ),
    );
  }
}

class _ProfessionItem extends StatelessWidget {
  final EnsMatriceProfession profession;

  const _ProfessionItem(this.profession);

  @override
  Widget build(BuildContext context) {
    return EnsInkWell(
      color: EnsColors.light,
      onTap: () => Navigator.pushNamed(
        context,
        MatriceHabilitationScreen.routeName,
        arguments: MatriceHabilitationScreenArgument(profession.libelle, profession.codeProfession),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(24, 20, 32, 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Text(
                profession.libelle,
                style: EnsTextStyle.text16_w700_normal_title,
              ),
            ),
            const EnsSvg(EnsImages.ic_chevron_right, color: EnsColors.title, height: 12, width: 8),
          ],
        ),
      ),
    );
  }
}
