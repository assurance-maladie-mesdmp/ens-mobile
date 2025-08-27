/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/domain/ens_analytics.dart';
import 'package:fr_cnamts_ens/developpeur_outils/screen/historique_analytics_screen_viewmodel.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_initial_state.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_divider.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_ink_well.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:fr_cnamts_ens/utils/ens_date_utils.dart';
import 'package:intl/intl.dart';

class HistoriqueAnalyticsScreen extends StatelessWidget {
  static const routeName = '/historiqueAnalyticsScreen';

  const HistoriqueAnalyticsScreen();

  @override
  Widget build(BuildContext context) {
    return StoreConnector<EnsInitialState, HistoriqueAnalyticsScreenViewModel>(
      distinct: true,
      converter: (store) => HistoriqueAnalyticsScreenViewModel.from(store),
      builder: (context, vm) {
        return Scaffold(
          appBar: EnsAppBarSubLevel(
            title: '🎯 Historique analytics 🎯',
            action: EnsInkWell(
              onTap: vm.clearHistorique,
              borderRadius: BorderRadius.circular(48),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: EnsSvg(
                  EnsImages.ic_trash,
                  color: Colors.red,
                ),
              ),
            ),
          ),
          body: _Content(vm),
        );
      },
    );
  }
}

class _Content extends StatelessWidget {
  final HistoriqueAnalyticsScreenViewModel vm;

  const _Content(this.vm);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            Intl.plural(
              vm.historique.length,
              zero: 'aucun analytic envoyé',
              one: '1 analytic envoyé',
              other: '${vm.historique.length} analytics envoyés',
            ),
            style: EnsTextStyle.text16_w700_normal_title,
          ),
        ),
        const SizedBox(height: 16),
        Expanded(
          child: ListViewWithScrollbar.separated(
            itemCount: vm.historique.length,
            itemBuilder: (_, index) => _AnalyticsHistoryEntry(entry: vm.historique[index]),
            separatorBuilder: (_, __) => const EnsDivider(),
          ),
        ),
      ],
    );
  }
}

class _AnalyticsHistoryEntry extends StatelessWidget {
  final TagHistory entry;

  const _AnalyticsHistoryEntry({required this.entry});

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              '${EnsDateUtils.formatddmmyyyyHHmmss(entry.submissionDate)} - ${entry.tag.category.name}',
              style: EnsTextStyle.text14_w700_normal_body,
            ),
            Text(entry.tag.name, style: EnsTextStyle.text14_w600_normal_body),
            Text(
              '${entry.tag.level1} / ${entry.tag.level2} / ${entry.tag.level3}',
              style: EnsTextStyle.text14_w500_normal_body,
            ),
          ],
        ),
      );
}
