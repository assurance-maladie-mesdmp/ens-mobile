/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/agenda/screens/edit_rappel_screen.dart';
import 'package:fr_cnamts_ens/agenda/screens/rappel_detail_screen.dart';
import 'package:fr_cnamts_ens/agenda/screens/viewModels/rappels_list_screen_view_model.dart';
import 'package:fr_cnamts_ens/agenda/screens/widgets/frequence_tab.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/tags/tags_agenda.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_card.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_floating_action_add_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';
import 'package:fr_cnamts_ens/ui/widgets/tabs/empty_result_tab_list.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';

class RappelsListScreen extends StatelessWidget {
  static const routeName = '/agenda/rappels';

  const RappelsListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: EnsFloatingActionAddButton(
        tooltip: 'Ajouter un rappel',
        onPressed: () {
          context.tagAction(TagsAgenda.tag_933_button_ajouter_rappel);
          Navigator.pushNamed(context, EditRappelScreen.routeName);
        },
      ),
      appBar: const EnsAppBarSubLevel(title: 'Rappels'),
      body: StoreConnector<EnsState, RappelsListScreenViewModel>(
        converter: (store) => RappelsListScreenViewModel.from(store),
        distinct: true,
        onInitialBuild: (vm) {
          context.tagAction(TagsAgenda.tag_949_mes_rappels_a_venir);
        },
        builder: (context, vm) => _Content(
          vm,
          isFutureTabPreSelected: ModalRoute.of(context)!.settings.arguments as bool?,
        ),
      ),
    );
  }
}

class _Content extends StatefulWidget {
  final RappelsListScreenViewModel vm;
  final bool? isFutureTabPreSelected;

  const _Content(this.vm, {required this.isFutureTabPreSelected});

  @override
  State<_Content> createState() => _ContentState();
}

class _ContentState extends State<_Content> {
  bool _futureTabSelected = true;

  @override
  void initState() {
    super.initState();
    _futureTabSelected = widget.isFutureTabPreSelected ?? true;
  }

  @override
  Widget build(BuildContext context) {
    return ListViewWithScrollbar.builder(
      padding: const EdgeInsets.only(bottom: 56),
      itemCount: widget.vm.displayModels.length,
      itemBuilder: (context, index) => _ListItem(index, widget.vm, _updateTab, _futureTabSelected),
    );
  }

  void _updateTab(bool futureSelected) {
    setState(() => _futureTabSelected = futureSelected);
  }
}

class _ListItem extends StatelessWidget {
  final int index;
  final RappelsListScreenViewModel vm;
  final void Function(bool) onInFutureSelected;
  final bool isFutureTabSelected;

  const _ListItem(this.index, this.vm, this.onInFutureSelected, this.isFutureTabSelected);

  @override
  Widget build(BuildContext context) {
    final rappelItem = vm.displayModels[index];

    switch (rappelItem) {
      case RappelsListScreenHeaderDisplayModel():
        return const _HeaderItem();
      case RappelsListScreenTitleItemDisplayModel():
        return _RappelsTabTitleItem(onInFutureSelected, isFutureTabSelected);
      case RappelsListScreenCardsTitleDisplayModel():
        return Visibility(
          visible: rappelItem.inFuture == isFutureTabSelected,
          child: _TitleItem(rappelItem.title),
        );
      case RappelsListScreenEmptyDisplayModel():
        return Visibility(
          visible: rappelItem.inFuture == isFutureTabSelected,
          child: EmptyResultTabListView(
            message: rappelItem.inFuture ? 'Aucun rappel à venir' : 'Aucun rappel passé',
            topSpace: 40,
          ),
        );
      case RappelsListScreenRappelDisplayModel():
        return Visibility(
          visible: rappelItem.rappelDisplayModel.inFuture == isFutureTabSelected,
          child: _CardItem(rappelItem.rappelDisplayModel),
        );
      default:
        return const SizedBox();
    }
  }
}

class _HeaderItem extends StatelessWidget {
  const _HeaderItem();

  @override
  Widget build(BuildContext context) => const Padding(
        padding: EdgeInsets.fromLTRB(24, 32, 24, 8),
        child: Text('Je retrouve mes rappels.', style: EnsTextStyle.text14_w400_normal_body),
      );
}

class _TitleItem extends StatelessWidget {
  final String title;

  const _TitleItem(this.title);

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.only(left: 24, right: 24, bottom: 8),
        child: Text(
          title,
          style: EnsTextStyle.text14_w400_normal_body,
        ),
      );
}

class _CardItem extends StatelessWidget {
  final EnsRappelDisplayModel rappelDisplayModel;

  const _CardItem(this.rappelDisplayModel);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, bottom: 16),
      child: EnsCard(
        borderRadius: 8,
        padding: const EdgeInsets.all(16),
        onTap: () {
          Navigator.pushNamed(
            context,
            RappelDetailScreen.routeName,
            arguments: RappelDetailScreenArguments(rappel: rappelDisplayModel.rappel),
          );
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const _AlarmImage(),
                const SizedBox(width: 16),
                Expanded(
                  child: Semantics(
                    button: true,
                    hint: 'Appuyer pour accéder aux détails du rappel',
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(rappelDisplayModel.rappel.titre, style: EnsTextStyle.text16_w700_normal_title),
                        _DayReminder(rappelDisplayModel.rappel.jour),
                        _TimeReminder(rappelDisplayModel.rappel.heure),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                const EnsSvg(EnsImages.ic_chevron_right, width: 8, height: 12, color: EnsColors.body),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _AlarmImage extends StatelessWidget {
  const _AlarmImage();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: const LinearGradient(colors: [EnsColors.primary, Color(0xFF1058D1)]),
        borderRadius: BorderRadius.circular(50),
      ),
      padding: const EdgeInsets.all(10),
      child: const EnsSvg(EnsImages.ic_alarm, width: 18, height: 20, color: Colors.white),
    );
  }
}

class _RappelsTabTitleItem extends StatelessWidget {
  final void Function(bool) onInFutureSelected;
  final bool isFutureTabSelected;

  const _RappelsTabTitleItem(this.onInFutureSelected, this.isFutureTabSelected);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          FrequenceTab(
            onTap: () {
              context.tagAction(TagsAgenda.tag_1024_tab_vue_rappel_a_venir);
              onInFutureSelected(true);
            },
            label: 'À venir',
            isSelected: isFutureTabSelected,
          ),
          const SizedBox(width: 8),
          FrequenceTab(
            onTap: () {
              context.tagAction(TagsAgenda.tag_1025_tab_vue_rappel_passes);
              onInFutureSelected(false);
            },
            label: 'Passés',
            isSelected: !isFutureTabSelected,
          ),
        ],
      ),
    );
  }
}

class _DayReminder extends StatelessWidget {
  final String day;

  const _DayReminder(this.day);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 4),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          const EnsSvg(EnsImages.ic_calendar, width: 8, height: 16, color: EnsColors.body),
          const SizedBox(width: 8),
          Expanded(
            child: Text(day, style: EnsTextStyle.text14_w400_normal_body),
          ),
        ],
      ),
    );
  }
}

class _TimeReminder extends StatelessWidget {
  final String time;

  const _TimeReminder(this.time);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 4),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          const EnsSvg(EnsImages.ic_clock, width: 8, height: 16, color: EnsColors.body),
          const SizedBox(width: 6),
          Expanded(
            child: Text(time, style: EnsTextStyle.text14_w400_normal_body),
          ),
        ],
      ),
    );
  }
}
