/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/ayants_droits/ajout_ad/screens/ajout_ad_screen.dart';
import 'package:fr_cnamts_ens/ayants_droits/ajout_ad/screens/viewmodels/ajout_ad_view_model.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/interruption_services/widget/interruption_service_helper.dart';
import 'package:fr_cnamts_ens/notification_center/domain/notification_profile_details.dart';
import 'package:fr_cnamts_ens/notification_center/redux/notification_center_actions.dart';
import 'package:fr_cnamts_ens/notification_center/screens/urn_redirector.dart';
import 'package:fr_cnamts_ens/notification_center/screens/viewmodels/notifications_center_view_model.dart';
import 'package:fr_cnamts_ens/notification_center/screens/without_urn_redirector.dart';
import 'package:fr_cnamts_ens/profils_rattaches/screens/profils_utils.dart';
import 'package:fr_cnamts_ens/recommandations/domain/ens_delayed_recommandation.dart';
import 'package:fr_cnamts_ens/tags/tags_notifications.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/error_page.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/confirmation_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/confirmation_bottom_sheet_default_text_content.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/dynamic_action_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/dialogs/ens_tutorial_dialog.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_card.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_cross_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_divider.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_empty_page.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_ink_well.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_link_text.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_rich_text.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';
import 'package:fr_cnamts_ens/ui/widgets/skeletons.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:fr_cnamts_ens/utils/extensions/string_extensions.dart';
import 'package:fr_cnamts_ens/utils/text_parsing_helper.dart';

part 'widgets/bullet_notification_widget.dart';
part 'widgets/notification_tile_widget.dart';

class NotificationsCenterScreen extends StatelessWidget {
  static const routeName = '/notifications';

  @override
  Widget build(BuildContext context) {
    return StoreConnector<EnsState, NotificationsCenterViewModel>(
      distinct: true,
      onInit: (store) => store.dispatch(FetchNotificationsAction()),
      onInitialBuild: (vm) {
        context.tagAction(TagsNotifications.tag_638_page_notifications);
      },
      onWillChange: (oldVm, vm) {
        if (oldVm?.currentProfileIdDisplay != vm.currentProfileIdDisplay) {
          final notificationSelectedBeforeProfilChange = vm.notificationSelectedBeforeProfilChange;
          if (notificationSelectedBeforeProfilChange != null) {
            if (notificationSelectedBeforeProfilChange.urn != null) {
              return UrnRedirector(context).redirect(
                notification: notificationSelectedBeforeProfilChange,
                profileId: vm.currentProfileIdDisplay,
              );
            } else {
              return WithoutUrnRedirector(context).redirect(
                notification: notificationSelectedBeforeProfilChange,
                profileId: vm.currentProfileIdDisplay,
              );
            }
          }
        }
      },
      converter: (store) => NotificationsCenterViewModel(store),
      builder: (context, viewModel) {
        return Scaffold(
          appBar: const EnsAppBarSubLevel(title: 'Notifications'),
          body: viewModel.error
              ? ErrorPage(reloadFunction: viewModel.retry)
              : viewModel.profiles.isEmpty
                  ? _Loading()
                  : _Content(viewModel),
        );
      },
    );
  }
}

class _Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ScrollviewWithScrollbar(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              _SkeletonProfileItem(),
              _SkeletonProfileItem(),
              _SkeletonProfileItem(),
              _SkeletonProfileItem(),
            ],
          ),
        ),
        const Divider(color: EnsColors.neutral200, height: 3),
        const SizedBox(height: 11),
        _SkeletonDocumentNotificationItem(),
        _SkeletonMessageNotificationItem(),
        _SkeletonMessageNotificationItem(),
        _SkeletonMessageNotificationItem(),
        const SkeletonBox(
          radius: 36,
          width: 258,
          height: 56,
        ),
      ],
    );
  }
}

class _SkeletonProfileItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final profileWidth = (MediaQuery.of(context).size.width - 48) / 3.5;
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 22, 8, 20),
      child: SizedBox(
        width: profileWidth,
        child: const Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                SkeletonCircle(radius: 48),
              ],
            ),
            SizedBox(height: 14),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: SkeletonBox(width: 200),
            ),
            SizedBox(height: 4),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: SkeletonBox(width: 200),
            ),
          ],
        ),
      ),
    );
  }
}

class _SkeletonMessageNotificationItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SkeletonBox(height: 12),
          SizedBox(height: 10),
          SkeletonBox(height: 12),
          SizedBox(height: 10),
          SkeletonBox(height: 12),
          SizedBox(height: 22),
          Divider(color: EnsColors.neutral200, height: 3),
          SizedBox(height: 19),
        ],
      ),
    );
  }
}

class _SkeletonDocumentNotificationItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SkeletonBox(height: 12),
          SizedBox(height: 10),
          SkeletonBox(height: 12),
          SizedBox(height: 10),
          SkeletonBox(height: 12),
          SizedBox(height: 10),
          SkeletonBox(height: 12),
          SizedBox(height: 10),
          SkeletonBox(height: 12),
          SizedBox(height: 22),
          Divider(color: EnsColors.neutral200, height: 3),
          SizedBox(height: 11),
        ],
      ),
    );
  }
}

class _Content extends StatefulWidget {
  final NotificationsCenterViewModel vm;

  const _Content(this.vm);

  @override
  State<_Content> createState() => _ContentState();
}

class _ContentState extends State<_Content> with TickerProviderStateMixin {
  late final TabController tabController;
  int _selectedTab = 0;

  @override
  void initState() {
    super.initState();
    tabController = TabController(
      vsync: this,
      length: widget.vm.profiles.length,
      initialIndex: widget.vm.selectedTab < 0 ? 0 : widget.vm.selectedTab,
    );
    _selectedTab = widget.vm.selectedTab;
    SchedulerBinding.instance.addPostFrameCallback((_) {
      context.tagAction(TagsNotifications.tag_632_button_notification_autre_profil);
    });
    tabController.addListener(() {
      setState(() {
        _selectedTab = tabController.index;
      });
      final notificationProfile = widget.vm.profiles[_selectedTab];
      widget.vm.markDeletedDocsAsRead(notificationProfile.id);
    });
  }

  @override
  void dispose() {
    super.dispose();
    tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final UrnRedirector urnRedirector = UrnRedirector(context);
    final WithoutUrnRedirector withoutUrnRedirector = WithoutUrnRedirector(context);
    return SafeArea(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          if (widget.vm.shouldShowProfileList) _ProfilesTabBar(_selectedTab, widget.vm, tabController),
          Expanded(
            child: TabBarView(
              controller: tabController,
              children: widget.vm.profiles.map((profile) {
                if (profile.shouldDisplayEmptyState) {
                  return _EmptyPage();
                } else {
                  final spacingForMarkAllReadButton = profile.unreadCount != 0 ? 1 : 0;
                  final delayedRecommandationCell = profile.isMainProfileWithIncitation ? 1 : 0;
                  final itemCount =
                      profile.notifications.length + spacingForMarkAllReadButton + delayedRecommandationCell;
                  return Stack(
                    children: [
                      ListViewWithScrollbar.builder(
                        itemBuilder: (context, index) {
                          if (profile.isMainProfileWithIncitation && index == 0) {
                            final displayModel = widget.vm.recommandationDiffereeDisplayModel;
                            if (displayModel is RecommandationActiverProfilsEnfants) {
                              return _IncitationActivationProfilEnfantItem(
                                dm: widget.vm.recommandationDiffereeDisplayModel!
                                    as RecommandationActiverProfilsEnfants,
                                onClose: () {
                                  widget.vm.dismissRecommandationDifferee(
                                    RecommandationDiffereeCode.INCITER_ACTIVER_PROFILS_ENFANTS,
                                  );
                                },
                              );
                            } else if (displayModel is RecommandationDecouvrirProfilsEnfants) {
                              return _IncitationDecouvrirProfilEnfantItem(
                                onClose: () {
                                  context.tagAction(TagsNotifications.tag_2627_button_croix_decouverte_mes_enfant);
                                  widget.vm.dismissRecommandationDifferee(
                                    RecommandationDiffereeCode.INCITER_DECOUVRIR_PROFILS_ENFANTS,
                                  );
                                },
                              );
                            } else {
                              return const SizedBox();
                            }
                          } else if (index == itemCount - 1 && spacingForMarkAllReadButton == 1) {
                            return const SizedBox(height: 110);
                          } else {
                            final itemIndex = profile.isMainProfileWithIncitation ? index - 1 : index;
                            return _NotificationItem(
                              widget.vm,
                              profile.notifications[itemIndex],
                              profile,
                              urnRedirector,
                              withoutUrnRedirector,
                            );
                          }
                        },
                        itemCount: itemCount,
                      ),
                      if (profile.unreadCount != 0)
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 24),
                            child: EnsButton(
                              label: 'Tout marquer comme lu',
                              onTap: () {
                                context.tagAction(TagsNotifications.tag_639_button_notification_tout_lu);
                                widget.vm.markAllAsRead(profile.id);
                              },
                            ),
                          ),
                        ),
                    ],
                  );
                }
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}

class _IncitationDecouvrirProfilEnfantItem extends StatelessWidget {
  final Function() onClose;

  _IncitationDecouvrirProfilEnfantItem({required this.onClose});

  @override
  Widget build(BuildContext context) {
    return _IncitationCard(
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          const Align(
            alignment: Alignment.bottomRight,
            child: EnsSvg(EnsImages.illustration_decouverte_mes_enfant),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Flexible(
                    child: Padding(
                      padding: EdgeInsets.only(left: 24, top: 16, right: 4),
                      child: Text(
                        'Je suis facilement la santé de mes enfants',
                        style: EnsTextStyle.text14_w600_normal_title,
                      ),
                    ),
                  ),
                  EnsCrossButton(
                    onTap: onClose,
                  ),
                ],
              ),
              const SizedBox(height: 4),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Text(
                  'Je découvre comment Mon espace santé peut m\'aider à suivre la santé de mon enfant.',
                  style: EnsTextStyle.text14_w400_normal_title,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 24, right: 24, bottom: 12),
                child: EnsLinkText(
                  splashColor: EnsColors.neutral400,
                  highlightColor: EnsColors.neutral300,
                  focusColor: EnsColors.illustration_login_background,
                  textPadding: const EdgeInsets.symmetric(vertical: 16),
                  label: 'Découvrir les avantages',
                  onTap: () {
                    context.tagAction(TagsNotifications.tag_2606_button_notification_decouverte_mes_enfant);
                    showGeneralDialog(
                      context: context,
                      barrierDismissible: false,
                      transitionDuration: const Duration(milliseconds: 350),
                      transitionBuilder: (_, anim, __, child) {
                        return SlideTransition(
                          position: Tween(begin: const Offset(0, 1), end: Offset.zero).animate(anim),
                          child: child,
                        );
                      },
                      pageBuilder: (context, _, __) {
                        return EnsTutorialDialog(
                          onPageDisplayed: (i) =>
                              context.tagAction(TagsNotifications.tagPopinButtonDecouverteMesEnfantEtape(i)),
                          onFinish: () {
                            context.tagAction(TagsNotifications.tag_2614_button_acces_mes_enfant_etape4);
                            onClose();
                          },
                          onNext: (etape) => context.tagAction(
                            TagsNotifications.tagButtonContinuerDecouverteMesEnfantEtape(etape),
                          ),
                          onPrevious: (i) => context.tagAction(
                            TagsNotifications.tagButtonPrecedentDecouverteMesEnfantEtape(i),
                          ),
                          onClose: onClose,
                          pages: _pages,
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  final _pages = [
    TutorialPage(
      beginText: 'Je suis facilement les ',
      highlightedText: 'vaccinations',
      endText: ' de mon enfant',
      illustrationPath: EnsImages.mes_enfant_tuto_p1,
      descriptionText:
          'Je retrouve l\'historique de ses vaccinations et je peux scanner la boîte de ses vaccins pour ajouter ceux déjà réalisés.',
    ),
    TutorialPage(
      beginText: 'J\'accède à la ',
      highlightedText: 'liste des examens médicaux',
      endText: ' recommandés',
      illustrationPath: EnsImages.mes_enfant_tuto_p2,
      descriptionText: 'Je planifie le suivi de santé de mon enfant grâce aux rappels personnalisés.',
    ),
    TutorialPage(
      beginText: 'J\'accède au ',
      highlightedText: 'suivi complet',
      endText: ' de son développement',
      illustrationPath: EnsImages.mes_enfant_tuto_p3,
      descriptionText: 'J\'enregistre sa taille et son poids pour visualiser sa courbe de croissance.',
    ),
    TutorialPage(
      beginText: 'Je consulte des ',
      highlightedText: 'informations de prévention',
      endText: ' adaptées',
      illustrationPath: EnsImages.mes_enfant_tuto_p4,
      descriptionText: 'J\'accède à des conseils personnalisés pour mieux préserver sa santé.',
    ),
  ];
}

class _IncitationActivationProfilEnfantItem extends StatelessWidget {
  final RecommandationActiverProfilsEnfants dm;
  final Function() onClose;

  const _IncitationActivationProfilEnfantItem({required this.dm, required this.onClose});

  @override
  Widget build(BuildContext context) {
    return _IncitationCard(
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          const EnsSvg(EnsImages.illustration_reco_profil_enfant),
          Padding(
            padding: const EdgeInsets.fromLTRB(24, 16, 6, 16),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Flexible(
                      flex: 6,
                      child: Text(
                        'J\'active dès maintenant le profil de mes enfants',
                        style: EnsTextStyle.text14_w400_normal_title,
                      ),
                    ),
                    EnsInkWell(
                      splashColor: EnsColors.illustration_login_background,
                      highlightColor: EnsColors.neutral300,
                      focusColor: EnsColors.illustration_login_background,
                      onTap: () {
                        context.tagAction(TagsNotifications.tag_2577_bouton_fermer_notifications_profil_enfant_activer);
                        onClose();
                      },
                      child: const Padding(
                        padding: EdgeInsets.only(right: 20, top: 5, left: 20),
                        child: EnsSvg(
                          EnsImages.ic_close_small,
                          width: 10,
                          height: 10,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(4, 16, 0, 16),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const EnsSvg(EnsImages.ic_avatar_profil_attente),
                      const SizedBox(width: 4),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            dm.nomPremierProfilText,
                            style: EnsTextStyle.text14_w600_normal_title,
                          ),
                          if (dm.autreProfilText != null)
                            Text(
                              dm.autreProfilText!,
                              style: EnsTextStyle.text12_w400_normal_body,
                            ),
                        ],
                      ),
                    ],
                  ),
                ),
                EnsLinkText(
                  splashColor: EnsColors.neutral400,
                  highlightColor: EnsColors.neutral300,
                  focusColor: EnsColors.illustration_login_background,
                  textPadding: EdgeInsets.zero,
                  onTap: () {
                    context.tagAction(TagsNotifications.tag_2576_link_notifications_profil_enfant_activer);
                    Navigator.of(context).pushNamed(
                      AjoutAdScreen.routeName,
                      arguments: const AjoutAdScreenArguments(
                        navigationFrom: AjoutAdScreenNavigation.NOTIFICATION_CENTER,
                      ),
                    );
                  },
                  label: dm.actionButtonText,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _IncitationCard extends StatelessWidget {
  final Widget child;

  const _IncitationCard({required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
      child: EnsCard(
        backgroundColor: EnsColors.neutral200,
        child: child,
      ),
    );
  }
}

class _ProfilesTabBar extends StatelessWidget {
  final int selectedTab;
  final NotificationsCenterViewModel viewModel;
  final TabController tabController;

  const _ProfilesTabBar(this.selectedTab, this.viewModel, this.tabController);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.zero,
      child: TabBar(
        labelPadding: const EdgeInsets.only(top: 0, left: 8, right: 8),
        isScrollable: true,
        indicatorColor: Colors.transparent,
        indicatorWeight: 0.1,
        controller: tabController,
        tabAlignment: TabAlignment.start,
        tabs: viewModel.profiles.mapIndexed((index, e) => _ProfileItem(index, viewModel, selectedTab)).toList(),
      ),
    );
  }
}

class _ProfileItem extends StatelessWidget {
  final int index;
  final int selectedTab;
  final NotificationsCenterViewModel vm;

  const _ProfileItem(this.index, this.vm, this.selectedTab);

  @override
  Widget build(BuildContext context) {
    final profileWidth = (MediaQuery.of(context).size.width - 48) / 3.7;
    final profile = vm.profiles[index];

    final readCountNotifications = profile.unreadCount == 1
        ? 'Il y a une notification non lu pour le profil de'
        : 'Il y a ${profile.unreadCount} notifications non lu pour le profil de';

    return SizedBox(
      width: profileWidth,
      child: Stack(
        children: [
          if (profile.unreadCount > 0)
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: EdgeInsets.only(right: (profileWidth >= 88) ? (profileWidth / 2) - 44 : 0),
                child: SizedBox(
                  width: 16,
                  child: CircleAvatar(
                    radius: 16,
                    backgroundColor: EnsColors.neutral200,
                    child: Text(
                      profile.unreadCount.toString(),
                      style: EnsTextStyle.text12_w700_normal_title,
                      semanticsLabel: readCountNotifications,
                    ),
                  ),
                ),
              ),
            ),
          Align(
            alignment: Alignment.center,
            child: Column(
              children: [
                const SizedBox(height: 16),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    EnsSvg(
                      profile.profilType.isProfilPrincipal
                          ? EnsImages.ic_header_main_user_background
                          : EnsImages.ic_circle_filled,
                      width: profile.profilType.isProfilPrincipal ? 56 : 48,
                      height: profile.profilType.isProfilPrincipal ? 56 : 48,
                      color: profile.color,
                    ),
                    Center(
                      child: EnsSvg(profile.profilType.profilIcon, width: 32, height: 32, color: Colors.white),
                    ),
                  ],
                ),
                if (!profile.profilType.isProfilPrincipal) const SizedBox(height: 8),
                Text(
                  profile.firstName,
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: index == selectedTab
                      ? EnsTextStyle.text12_w700_normal_title
                      : EnsTextStyle.text12_w700_normal_body,
                ),
                Text(
                  profile.lastName,
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: index == selectedTab
                      ? EnsTextStyle.text12_w700_normal_title
                      : EnsTextStyle.text12_w700_normal_body,
                ),
                SizedBox(height: index == selectedTab ? 8 : 12),
                if (index == selectedTab)
                  Container(
                    height: 4,
                    decoration: BoxDecoration(
                      color: profile.color,
                      borderRadius: BorderRadius.circular(4),
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

class _NotificationItem extends StatelessWidget {
  final NotificationsCenterViewModel vm;
  final NotificationDetails notification;
  final NotificationProfileDisplayModel profile;
  final UrnRedirector urnRedirector;
  final WithoutUrnRedirector withoutUrnRedirector;

  const _NotificationItem(this.vm, this.notification, this.profile, this.urnRedirector, this.withoutUrnRedirector);

  @override
  Widget build(BuildContext context) {
    final title = _getBoldText();
    final subtitle = notification.label;
    return _NotificationTileWidget(
      vm: vm,
      notification: notification,
      profile: profile,
      semanticLabel: [
        if (!notification.isRead) 'Notification non lu',
        title,
        subtitle,
        notification.semanticDateHeure(),
        notification.redirectionLabel,
      ].join(', '),
      boldText: title,
      normalText: subtitle,
      redirectionText: notification.redirectionLabel,
      redirect: () {
        if (notification.urn != null) {
          return urnRedirector.redirect(
            notification: notification,
            profileId: profile.id,
          );
        } else {
          return withoutUrnRedirector.redirect(
            notification: notification,
            profileId: profile.id,
          );
        }
      },
    );
  }

  String? _getBoldText() {
    if (_hasNoBoldText()) {
      return null;
    } else {
      return '${notification.authorName ?? 'Un professionnel de santé'} ';
    }
  }

  bool _hasNoBoldText() {
    return [
      NotificationType.RDV_AGENDA,
      NotificationType.RAPPEL_AGENDA,
      NotificationType.RAPPEL_RDV_PREV_VACC,
      NotificationType.RAPPEL_RDV_PREV_DEPIST,
      NotificationType.EXAMEN_RECOMMANDE,
      NotificationType.REPONSE_SUPPORT,
      NotificationType.AJOUT_HBA1C,
      NotificationType.AJOUT_GLYCEMIE,
      NotificationType.AJOUT_TAILLE,
      NotificationType.AJOUT_POIDS,
      NotificationType.AJOUT_PERIMETRE_CRANIEN,
    ].contains(notification.type);
  }
}

class _EmptyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return EnsEmptyPage(
      title: 'Aucune notification',
      description:
          'Je reçois une notification lorsqu\'un nouveau message ou document est déposé par un professionnel de santé sur mon profil ou un profil rattaché.',
      customImagePath: EnsImages.information,
      buttonList: EnsEmptyButtonList.withoutButton(),
    );
  }
}
