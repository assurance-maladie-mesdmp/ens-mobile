/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/developpeur_outils/screen/historique_analytics_screen.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/magical_page/magical_elements_list.dart';
import 'package:fr_cnamts_ens/magical_page/magical_view_model.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_ink_well.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';

class MagicalPageScreen extends StatelessWidget {
  static const routeName = '/magicalPage';

  @override
  Widget build(BuildContext context) {
    return StoreConnector<EnsState, MagicalViewModel>(
      distinct: true,
      converter: (store) => MagicalViewModel(),
      builder: (_, MagicalViewModel vm) {
        return Scaffold(
          backgroundColor: EnsColors.neutral200,
          appBar: const EnsAppBarSubLevel(title: '✨ Hub de dev magique ✨'),
          body: ListViewWithScrollbar.separated(
            separatorBuilder: (context, index) => const Divider(height: 1, color: EnsColors.neutral200),
            scrollDirection: Axis.vertical,
            padding: const EdgeInsets.only(bottom: 76, top: 1),
            shrinkWrap: true,
            itemCount: vm.items.length + 1,
            itemBuilder: (context, index) {
              if (index == 0) {
                return const _AnalyticsHistoryItem();
              }
              return _MagicalItem(vm.items.elementAt(index - 1));
            },
          ),
        );
      },
    );
  }
}

class _AnalyticsHistoryItem extends StatelessWidget {
  const _AnalyticsHistoryItem();

  @override
  Widget build(BuildContext context) {
    return _MagicalEntry(
      title: 'Historique des analytics',
      semanticLabel: 'Historique des analytics envoyés',
      icon: '📈',
      childrenCount: 0,
      onTap: () {
        Navigator.pushNamed(context, HistoriqueAnalyticsScreen.routeName);
      },
    );
  }
}

class _MagicalItem extends StatelessWidget {
  final MagicalItem item;

  const _MagicalItem(this.item);

  @override
  Widget build(BuildContext context) {
    return _MagicalEntry(
      title: item.type,
      semanticLabel: '${item.type} contient ${item.elements.length} composants',
      icon: item.icon,
      childrenCount: item.elements.length,
      onTap: () {
        Navigator.pushNamed(context, MagicalElementsListScreen.routeName, arguments: item);
      },
    );
  }
}

class _MagicalEntry extends StatelessWidget {
  final String title;
  final String semanticLabel;
  final String icon;
  final int childrenCount;
  final void Function() onTap;

  const _MagicalEntry({
    required this.title,
    required this.semanticLabel,
    required this.icon,
    required this.childrenCount,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return EnsInkWell(
      color: EnsColors.light,
      semanticLabel: semanticLabel,
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              icon,
              style: const TextStyle(fontSize: 28),
            ),
            const SizedBox(width: 24),
            Expanded(flex: 50, child: Text(title, style: EnsTextStyle.text16_w700_normal_title)),
            const Spacer(),
            CircleAvatar(
              radius: 16,
              backgroundColor: childrenCount > 0 ? EnsColors.neutral200 : Colors.transparent,
              child: Text(childrenCount > 0 ? childrenCount.toString() : '', style: EnsTextStyle.text16_w700_body),
            ),
            const SizedBox(width: 24),
            const EnsSvg(EnsImages.ic_chevron_right, width: 8, height: 12, color: EnsColors.title),
          ],
        ),
      ),
    );
  }
}
