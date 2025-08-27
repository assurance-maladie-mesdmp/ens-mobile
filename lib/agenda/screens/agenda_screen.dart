/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/agenda/domain/models/rappel_item_display_model.dart';
import 'package:fr_cnamts_ens/agenda/redux/agenda_redux.dart';
import 'package:fr_cnamts_ens/agenda/screens/edit_rappel_screen.dart';
import 'package:fr_cnamts_ens/agenda/screens/edit_rendez_vous_screen.dart';
import 'package:fr_cnamts_ens/agenda/screens/examen_recommande_detail_screen.dart';
import 'package:fr_cnamts_ens/agenda/screens/examens_recommandes_screen.dart';
import 'package:fr_cnamts_ens/agenda/screens/rappel_detail_screen.dart';
import 'package:fr_cnamts_ens/agenda/screens/rappels_list_screen.dart';
import 'package:fr_cnamts_ens/agenda/screens/rendez_vous_details_screen.dart';
import 'package:fr_cnamts_ens/agenda/screens/viewModels/agenda_screen_view_model.dart';
import 'package:fr_cnamts_ens/agenda/screens/widgets/day_and_month_square.dart';
import 'package:fr_cnamts_ens/agenda/screens/widgets/frequence_tab.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/tags/tags_agenda.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/error_page.dart';
import 'package:fr_cnamts_ens/ui/utils/pull_to_refresh_utils.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/ens_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/information_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_card.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_carousel.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_carousel_item.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_empty_page.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_etiquette.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_floating_action_add_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_ink_well.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_link_text.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';
import 'package:fr_cnamts_ens/ui/widgets/skeletons.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:fr_cnamts_ens/utils/extensions/datetime_extension.dart';
import 'package:fr_cnamts_ens/utils/extensions/string_extensions.dart';
import 'package:fr_cnamts_ens/utils/wordings_extension.dart';

class AgendaScreen extends StatefulWidget {
  static const routeName = '/agenda';

  const AgendaScreen({super.key});

  @override
  State<AgendaScreen> createState() => _AgendaScreenState();
}

class _AgendaScreenState extends State<AgendaScreen> {
  bool futurTabShown = true;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<EnsState, AgendaScreenViewModel>(
      converter: (store) => AgendaScreenViewModel.from(store),
      distinct: true,
      onInit: (store) => store.dispatch(FetchRendezVousEtRappelsEtExamensAction()),
      onInitialBuild: (_) => context.tagAction(TagsAgenda.tag_599_agenda_accueil),
      builder: (_, vm) => Scaffold(
        floatingActionButton: vm.agendaStatus == AgendaStatus.SUCCESS && vm.displayModels.isNotEmpty
            ? EnsFloatingActionAddButton(
                tooltip: 'Ajouter un rendez-vous ou un rappel',
                onPressed: () {
                  context.tagAction(TagsAgenda.tag_931_ajouter_evenement);
                  _showAddBottomSheet(context, _goToAddRendezVousScreen);
                },
              )
            : null,
        appBar: EnsAppBarSubLevel(
          title: 'Agenda de santé',
          action: IconButton(
            onPressed: () => _showInformationBottomSheet(context),
            tooltip: 'Informations',
            icon: const EnsSvg(EnsImages.ic_info_circle_outlined),
            splashRadius: 28,
          ),
        ),
        body: vm.displayModels.isEmpty
            ? _EmptyAgenda(
                isProfilPrincipal: vm.isProfilPrincipal,
                onButtonPressed: () => _showAddBottomSheet(context, _goToAddRendezVousScreen),
              )
            : _Content(
                vm: vm,
                goToAddScreen: _goToAddRendezVousScreen,
                tagClickAddRdv: _tagClickAddRdv,
                futurTabShown: futurTabShown,
                updateTab: _updateTab,
              ),
      ),
    );
  }

  void _updateTab({required bool shouldShowFutureTab}) {
    setState(() => futurTabShown = shouldShowFutureTab);
  }

  Future<void> _goToAddRendezVousScreen(BuildContext context) async {
    final addedOrUpdatedRdv = await Navigator.pushNamed(
      context,
      EditRendezVousScreen.routeName,
    ) as EditRendezVousScreenArguments?;

    _checkDateRdvAndChangeTabAfterPop(addedOrUpdatedRdv?.dateRdv);
  }

  void _checkDateRdvAndChangeTabAfterPop(DateTime? dateRdv) {
    final isDateCreationBeforeNow = dateRdv != null && dateRdv.isBefore(DateTime.now());
    if (isDateCreationBeforeNow) {
      _updateTab(shouldShowFutureTab: false);
    } else {
      _updateTab(shouldShowFutureTab: true);
    }
  }
}

void _goToAddRappelScreen(BuildContext context) {
  Navigator.pushNamed(context, EditRappelScreen.routeName);
}

void _tagClickAddRdv(BuildContext context) {
  context.tagAction(TagsAgenda.tag_932_button_ajouter_rdv);
}

class _HeaderItem extends StatelessWidget {
  final bool isProfilPrincipal;

  const _HeaderItem({required this.isProfilPrincipal});

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.only(left: 24, right: 24, top: 32, bottom: 16),
        child: Text(
          'Je gère plus facilement mes prochains événements importants et reçois des notifications pour m’en rappeler.'
              .resolveWith(isProfilPrincipal: isProfilPrincipal),
          style: EnsTextStyle.text14_w400_normal_body,
        ),
      );
}

class _TitleItem extends StatelessWidget {
  final String title;

  const _TitleItem(this.title);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, bottom: 8),
      child: Text(title, style: EnsTextStyle.text14_w400_normal_body),
    );
  }
}

class _LoadingAgenda extends StatelessWidget {
  final bool isProfilPrincipal;

  const _LoadingAgenda({required this.isProfilPrincipal});

  @override
  Widget build(BuildContext context) {
    return ScrollviewWithScrollbar(
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _HeaderItem(isProfilPrincipal: isProfilPrincipal),
            const Padding(
              padding: EdgeInsets.only(left: 24, right: 24, top: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _LoadingTitle(),
                  SizedBox(height: 12),
                  _LoadingCard(),
                  _LoadingCard(),
                  SizedBox(height: 12),
                  _LoadingCard(),
                  _LoadingCard(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _LoadingTitle extends StatelessWidget {
  const _LoadingTitle();

  @override
  Widget build(BuildContext context) => const Padding(
        padding: EdgeInsets.only(bottom: 8),
        child: SkeletonBox(width: 100),
      );
}

class _LoadingCard extends StatelessWidget {
  const _LoadingCard();

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.only(bottom: 32),
        child: EnsCard(
          padding: const EdgeInsets.all(24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: const Padding(
                  padding: EdgeInsets.all(4),
                  child: SkeletonBox(width: 48, height: 48),
                ),
              ),
              const SizedBox(width: 24),
              const Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SkeletonBox(width: 160, height: 10),
                  SizedBox(height: 12),
                  SkeletonBox(width: 120, height: 10),
                  SizedBox(height: 12),
                  SkeletonBox(width: 100, height: 10),
                  SizedBox(height: 18),
                  SkeletonBox(width: 64, height: 10),
                ],
              ),
              const SizedBox(width: 24),
              const Spacer(),
            ],
          ),
        ),
      );
}

class _CardItem extends StatelessWidget {
  final EnsRdvDisplayModel rdvDisplayModel;

  const _CardItem(this.rdvDisplayModel);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, bottom: 32),
      child: EnsCard(
        borderRadius: 16,
        onTap: () => Navigator.pushNamed(
          context,
          RendezVousDetailsScreen.routeName,
          arguments: RendezVousDetailScreenArguments(rdvId: rdvDisplayModel.rdv.id),
        ),
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            if (rdvDisplayModel.rdv.title != null && rdvDisplayModel.rdv.title!.isNotEmpty)
              Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: Text(rdvDisplayModel.rdv.title!, style: EnsTextStyle.text16_w600_body),
              ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                DayAndMonthSquare(rdvDisplayModel.rdv.date),
                const SizedBox(width: 24),
                Expanded(
                  child: Semantics(
                    button: true,
                    hint: 'Appuyer pour accéder aux détails du rendez-vous',
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          rdvDisplayModel.rdv.nomActeurSante.capitalizeName(),
                          style: EnsTextStyle.text16_w700_normal_title,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              const EnsSvg(
                                EnsImages.ic_clock,
                                width: 8,
                                height: 16,
                                color: EnsColors.body,
                              ),
                              const SizedBox(width: 4),
                              Expanded(
                                child: Text(
                                  rdvDisplayModel.rdv.date.toHour(),
                                  style: EnsTextStyle.text14_w400_normal_body,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 2),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              const EnsSvg(
                                EnsImages.ic_calendar_event,
                                width: 8,
                                height: 16,
                                color: EnsColors.body,
                              ),
                              const SizedBox(width: 6),
                              Expanded(
                                child: Text(
                                  rdvDisplayModel.rdv.author,
                                  style: EnsTextStyle.text14_w400_normal_body,
                                ),
                              ),
                            ],
                          ),
                        ),
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

class _ExamenItem extends StatelessWidget {
  final ExamenRecommandeDisplayModel displayModel;

  const _ExamenItem(this.displayModel);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, bottom: 16),
      child: EnsCard(
        borderRadius: 16,
        padding: const EdgeInsets.all(16),
        onTap: () {
          if (displayModel.tag != null) {
            context.tagAction(displayModel.tag!);
          }
          Navigator.of(context).pushNamed(
            ExamenRecommandeDetailScreen.routeName,
            arguments: ExamenRecommandeDetailScreenArguments(displayModel.id, displayModel.dateDebut),
          );
        },
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  if (displayModel.chipStatus != null)
                    ExamenStatusChip(displayModel.chipStatus!, displayModel.status.color),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 4, top: 8),
                    child: Text(displayModel.title, style: EnsTextStyle.text16_w600_title),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const EnsSvg(EnsImages.ic_calendar, width: 8, height: 16, color: EnsColors.body),
                      const SizedBox(width: 6),
                      Expanded(
                        child: Text(
                          displayModel.subtitle,
                          style: EnsTextStyle.text14_w400_normal_body,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(width: 8),
            const EnsSvg(EnsImages.ic_chevron_right, width: 8, height: 12, color: EnsColors.body),
            const SizedBox(width: 8),
          ],
        ),
      ),
    );
  }
}

class _Content extends StatelessWidget {
  final AgendaScreenViewModel vm;
  final void Function(BuildContext) goToAddScreen;
  final void Function(BuildContext) tagClickAddRdv;
  final bool futurTabShown;
  final void Function({required bool shouldShowFutureTab}) updateTab;

  const _Content({
    required this.vm,
    required this.goToAddScreen,
    required this.tagClickAddRdv,
    required this.futurTabShown,
    required this.updateTab,
  });

  @override
  Widget build(BuildContext context) {
    switch (vm.agendaStatus) {
      case AgendaStatus.LOADING:
        return _LoadingAgenda(isProfilPrincipal: vm.isProfilPrincipal);
      case AgendaStatus.SUCCESS:
        return EnsPullToRefresh(
          onRefresh: () async => vm.loadAgenda(),
          child: _List(
            vm: vm,
            futurTabShown: futurTabShown,
            updateTab: updateTab,
          ),
        );
      case AgendaStatus.ERROR:
        return ErrorPage(reloadFunction: vm.loadAgenda);
    }
  }
}

class _EmptyAgenda extends StatelessWidget {
  final bool isProfilPrincipal;
  final void Function() onButtonPressed;

  const _EmptyAgenda({required this.isProfilPrincipal, required this.onButtonPressed});

  @override
  Widget build(BuildContext context) {
    return EnsEmptyPage(
      customImagePath: EnsImages.agenda_ajouter,
      title: 'J\'ajoute mes rendez-vous et rappels médicaux'.resolveWith(isProfilPrincipal: isProfilPrincipal),
      description:
          'Pour gérer plus facilement mes prochains événements importants et recevoir des notifications pour m\'en rappeler.'
              .resolveWith(isProfilPrincipal: isProfilPrincipal),
      buttonList: EnsEmptyButtonList.withPrimaryButton(
        primaryButtonLabel: 'Ajouter un événement',
        primaryButtonHandler: onButtonPressed,
      ),
    );
  }
}

class _List extends StatelessWidget {
  final AgendaScreenViewModel vm;
  final bool futurTabShown;
  final void Function({required bool shouldShowFutureTab}) updateTab;

  const _List({
    required this.vm,
    required this.futurTabShown,
    required this.updateTab,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListViewWithScrollbar.builder(
        itemCount: vm.displayModels.length,
        itemBuilder: (context, index) => _ListItem(
          key: UniqueKey(),
          index: index,
          vm: vm,
          inFutureSelected: updateTab,
          futureTabSelected: futurTabShown,
        ),
      ),
    );
  }
}

class _ListItem extends StatelessWidget {
  final int index;
  final AgendaScreenViewModel vm;
  final void Function({required bool shouldShowFutureTab}) inFutureSelected;
  final bool futureTabSelected;

  const _ListItem({
    super.key,
    required this.index,
    required this.vm,
    required this.inFutureSelected,
    required this.futureTabSelected,
  });

  @override
  Widget build(BuildContext context) {
    final agendaItem = vm.displayModels[index];

    switch (agendaItem) {
      case AgendaScreenHeaderDisplayModel():
        return _HeaderItem(isProfilPrincipal: vm.isProfilPrincipal);
      case RendezVousCardsTitleDisplayModel():
        return Visibility(
          visible: agendaItem.inFuture == futureTabSelected,
          child: _TitleItem(agendaItem.title),
        );
      case ExamenRecommandeDisplayModel():
        return Visibility(
          visible: futureTabSelected,
          child: _ExamenItem(agendaItem),
        );
      case ExamensRecommandeHeaderItem():
        return Padding(
          padding: const EdgeInsets.fromLTRB(24, 0, 24, 8),
          child: Visibility(
            visible: futureTabSelected,
            child: const Text(
              'Examens médicaux et vaccinations à réaliser',
              style: EnsTextStyle.text14_w400_normal_body,
            ),
          ),
        );
      case ExamensRecommandesEmptyHeaderItem():
        return Padding(
          padding: const EdgeInsets.fromLTRB(24, 0, 24, 8),
          child: Visibility(
            visible: futureTabSelected,
            child: const Text('Aucun examen médical à planifier.', style: EnsTextStyle.text14_w400_normal_body),
          ),
        );
      case ExamensRecommandeFooterItem():
        return Visibility(
          visible: futureTabSelected,
          child: _ExamensRecommandeFooter(isProfilPrincipal: vm.isProfilPrincipal),
        );
      case RappelListItemDisplayModel():
        return _RappelList(futureRappels: agendaItem.futureRappels);
      case RappelSingleItemDisplayModel():
        return _RappelSingleItemCard(agendaItem.rappel);
      case RappelEmptyItemDisplayModel():
        return _RappelEmptyList(
          isPastRappelEmpty: agendaItem.isPastRappelsEmpty,
          isProfilPrincipal: vm.isProfilPrincipal,
        );
      case RendezVousEmptyDisplayModel():
        return Visibility(
          visible: agendaItem.inFuture == futureTabSelected,
          child: _RendezVousEmptyList(isFuture: agendaItem.inFuture),
        );
      case RendezVousCardDisplayModel():
        return Visibility(
          visible: agendaItem.rdvDisplayModel.inFuture == futureTabSelected,
          child: _CardItem(agendaItem.rdvDisplayModel),
        );
      case RappelScreenTitleItemDisplayModel():
        return _RappelTitleItem(agendaItem.seeAll);
      case RendezVousTitleItemDisplayModel():
        return _AgendaTitleItem(futureTabSelected, inFutureSelected);
      default:
        return const SizedBox();
    }
  }
}

class _RappelTitleItem extends StatelessWidget {
  final bool voirTout;

  const _RappelTitleItem(this.voirTout);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, top: 16),
      child: Wrap(
        alignment: WrapAlignment.spaceBetween,
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          const Text('Rappels', style: EnsTextStyle.text20_w400_normal_title),
          if (voirTout)
            EnsInkWell(
              onTap: () {
                context.tagAction(TagsAgenda.tag_929_link_voir_tous_rappels);
                Navigator.pushNamed(context, RappelsListScreen.routeName);
              },
              child: const Text('Voir tout', style: EnsTextStyle.text16_w700_primary_underline),
            ),
        ],
      ),
    );
  }
}

class _AgendaTitleItem extends StatelessWidget {
  final void Function({required bool shouldShowFutureTab}) inFutureSelected;
  final bool futureTabSelected;

  const _AgendaTitleItem(this.futureTabSelected, this.inFutureSelected);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: Wrap(
        runSpacing: 8,
        spacing: 8,
        crossAxisAlignment: WrapCrossAlignment.center,
        alignment: WrapAlignment.spaceBetween,
        children: [
          const Text(
            'Rendez-vous',
            style: EnsTextStyle.text20_w400_normal_title,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              FrequenceTab(
                onTap: () {
                  context.tagAction(TagsAgenda.tag_936_tab_vue_rdv_a_venir);
                  inFutureSelected(shouldShowFutureTab: true);
                },
                label: 'À venir',
                isSelected: futureTabSelected,
              ),
              const SizedBox(width: 8),
              FrequenceTab(
                onTap: () {
                  context.tagAction(TagsAgenda.tag_937_tab_vue_rdv_passes);
                  inFutureSelected(shouldShowFutureTab: false);
                },
                label: 'Passés',
                isSelected: !futureTabSelected,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _RendezVousEmptyList extends StatelessWidget {
  final bool isFuture;

  const _RendezVousEmptyList({required this.isFuture});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, bottom: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          if (isFuture) const SizedBox(height: 12),
          Text(
            isFuture ? 'Prochains rendez-vous' : 'Rendez-vous passés',
            style: EnsTextStyle.text14_w600_normal_body,
          ),
          const SizedBox(height: 8),
          Text(
            isFuture ? 'Aucun rendez-vous à venir' : 'Aucun rendez-vous passé',
            style: EnsTextStyle.text14_w400_normal_body,
          ),
        ],
      ),
    );
  }
}

class _RappelEmptyList extends StatelessWidget {
  final bool isPastRappelEmpty;
  final bool isProfilPrincipal;

  const _RappelEmptyList({required this.isPastRappelEmpty, required this.isProfilPrincipal});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 28),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: 16),
          const Text('Aucun rappel à venir', style: EnsTextStyle.text14_w400_normal_body),
          if (!isPastRappelEmpty) ...[
            const SizedBox(height: 8),
            EnsLinkText(
              label: 'Voir les rappels passés',
              textPadding: EdgeInsets.zero,
              onTap: () => Navigator.pushNamed(context, RappelsListScreen.routeName, arguments: false),
            ),
          ],
        ],
      ),
    );
  }
}

class _RappelSingleItemCard extends StatelessWidget {
  final RappelItemDisplayModel rappel;

  const _RappelSingleItemCard(this.rappel);

  @override
  Widget build(BuildContext context) {
    return Semantics(
      button: true,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 24),
        child: DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(color: EnsColors.neutral200, blurRadius: 12, spreadRadius: 2, offset: Offset(4, 4)),
            ],
          ),
          child: EnsInkWell(
            color: EnsColors.light,
            borderRadius: BorderRadius.circular(20),
            onTap: () {
              Navigator.pushNamed(
                context,
                RappelDetailScreen.routeName,
                arguments: RappelDetailScreenArguments(rappel: rappel),
              );
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(colors: [EnsColors.primary, Color(0xFF1058D1)]),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    padding: const EdgeInsets.all(10),
                    child: const EnsSvg(
                      EnsImages.ic_alarm,
                      width: 18,
                      height: 20,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(rappel.titre, style: EnsTextStyle.text16_w700_normal_title),
                        const SizedBox(height: 8),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const EnsSvg(EnsImages.ic_calendar, width: 12, height: 14),
                            const SizedBox(width: 8),
                            Text(rappel.jour, style: EnsTextStyle.text14_w400_normal_body),
                          ],
                        ),
                        const SizedBox(height: 4),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const EnsSvg(EnsImages.ic_clock, width: 12, height: 14),
                            const SizedBox(width: 8),
                            Text(rappel.heure, style: EnsTextStyle.text14_w400_normal_body),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 16),
                  const EnsSvg(EnsImages.ic_chevron_right, width: 8, height: 12),
                  const SizedBox(width: 8),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _RappelList extends StatelessWidget {
  final List<RappelItemDisplayModel> futureRappels;

  const _RappelList({required this.futureRappels});

  @override
  Widget build(BuildContext context) {
    return EnsCarousel(
      height: 230,
      viewportFraction: 0.70,
      disableCenter: true,
      enableInfiniteScroll: false,
      padEnds: false,
      items: [
        ...futureRappels.take(RAPPEL_MAX_COUNT).map((rappel) => EnsCarouselRappelItem(rappel)),
        _EnsCarouselRappelEndItem(),
      ],
    );
  }
}

class EnsCarouselRappelItem extends EnsCarouselItem {
  final RappelItemDisplayModel rappel;

  EnsCarouselRappelItem(this.rappel);

  @override
  Widget build(BuildContext context) {
    return Semantics(
      button: true,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(24, 24, 8, 12),
        child: DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(color: EnsColors.neutral200, blurRadius: 12, spreadRadius: 2, offset: Offset(4, 4)),
            ],
          ),
          child: EnsInkWell(
            color: EnsColors.light,
            borderRadius: BorderRadius.circular(20),
            onTap: () {
              Navigator.pushNamed(
                context,
                RappelDetailScreen.routeName,
                arguments: RappelDetailScreenArguments(rappel: rappel),
              );
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              child: Center(
                widthFactor: 1,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(colors: [EnsColors.primary, Color(0xFF1058D1)]),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      padding: const EdgeInsets.all(10),
                      child: const EnsSvg(EnsImages.ic_alarm, width: 18, height: 20, color: Colors.white),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      rappel.titre,
                      maxLines: 2,
                      textAlign: TextAlign.center,
                      style: EnsTextStyle.text16_w700_normal_title,
                    ),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const EnsSvg(EnsImages.ic_calendar, width: 12, height: 14),
                        const SizedBox(width: 8),
                        Text(rappel.jour, style: EnsTextStyle.text14_w400_normal_body),
                      ],
                    ),
                    const SizedBox(height: 4),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const EnsSvg(EnsImages.ic_clock, width: 12, height: 14),
                        const SizedBox(width: 8),
                        Text(rappel.heure, style: EnsTextStyle.text14_w400_normal_body),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _EnsCarouselRappelEndItem extends EnsCarouselItem {
  _EnsCarouselRappelEndItem();

  @override
  Widget build(BuildContext context) {
    return Semantics(
      button: true,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(24, 24, 24, 12),
        child: DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(color: EnsColors.neutral200, blurRadius: 12, spreadRadius: 2, offset: Offset(4, 4)),
            ],
          ),
          child: EnsInkWell(
            color: EnsColors.light,
            borderRadius: BorderRadius.circular(20),
            onTap: () {
              context.tagAction(TagsAgenda.tag_930_carousel_voir_tous_rappels);
              Navigator.pushNamed(context, RappelsListScreen.routeName);
            },
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              child: Center(
                widthFactor: 1,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    EnsSvg(EnsImages.ic_arrow_short_right, width: 16, height: 12, color: EnsColors.primary),
                    SizedBox(height: 16),
                    Text(
                      'Voir tous les rappels',
                      textAlign: TextAlign.center,
                      style: EnsTextStyle.text16_w700_normal_primary,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

void _showInformationBottomSheet(BuildContext context) {
  context.tagAction(TagsAgenda.tag_938_agenda_info);
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    builder: (BuildContext context) {
      return const InformationBottomSheet(
        title: 'En savoir plus',
        description: Center(
          child: Text(
            'Mon espace santé n\'est pas un outil de prise de rendez-vous, assurez-vous d\'avoir bien pris rendez-vous avec votre professionnel de santé.',
            style: EnsTextStyle.text16_w400_normal_body,
            textAlign: TextAlign.center,
          ),
        ),
      );
    },
  );
}

void _showAddBottomSheet(BuildContext context, void Function(BuildContext context) goToAddRendezVousScreen) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    builder: (BuildContext context) {
      return EnsBottomSheet(
        content: [
          const Text(
            'Sélectionner une action',
            style: EnsTextStyle.text24_w400_normal_title,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 24),
          Container(height: 1, color: EnsColors.neutral200),
          _AddButtonBottomSheet(
            icon: EnsImages.ic_calendar,
            title: 'Ajouter un rendez-vous',
            example: 'Ex : consultation dentiste',
            onTap: () {
              _tagClickAddRdv(context);
              goToAddRendezVousScreen(context);
            },
          ),
          Container(height: 1, color: EnsColors.neutral200),
          _AddButtonBottomSheet(
            icon: EnsImages.ic_alarm,
            title: 'Ajouter un rappel',
            example: 'Ex : envoyer les analyses',
            onTap: () {
              context.tagAction(TagsAgenda.tag_933_button_ajouter_rappel);
              _goToAddRappelScreen(context);
            },
          ),
          const SizedBox(height: 16),
        ],
      );
    },
  );
}

class _AddButtonBottomSheet extends StatelessWidget {
  final String icon;
  final String title;
  final String example;
  final void Function() onTap;

  const _AddButtonBottomSheet({
    required this.icon,
    required this.title,
    required this.example,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return EnsInkWell(
      onTap: () {
        Navigator.pop(context);
        onTap();
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            EnsSvg(icon, width: 18, height: 20, color: EnsColors.primary),
            const SizedBox(width: 24),
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(title, style: EnsTextStyle.text16_w700_primary),
                  const SizedBox(height: 4),
                  Text(example, style: EnsTextStyle.text14_w400_normal_primary),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ExamenStatusChip extends StatelessWidget {
  final Color examenStatusColor;
  final String label;

  const ExamenStatusChip(this.label, this.examenStatusColor);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: EnsEtiquette(label: label, backgroundColor: examenStatusColor),
    );
  }
}

class _ExamensRecommandeFooter extends StatelessWidget {
  final bool isProfilPrincipal;

  const _ExamensRecommandeFooter({required this.isProfilPrincipal});

  @override
  Widget build(BuildContext context) {
    return EnsInkWell(
      onTap: () => Navigator.pushNamed(context, ExamensRecommandesScreen.routeName),
      child: const Padding(
        padding: EdgeInsets.only(left: 24, right: 24, bottom: 24),
        child: Text(
          'Voir tous les prochains examens et vaccinations',
          style: EnsTextStyle.text14_w700_normal_primary_underline,
        ),
      ),
    );
  }
}
