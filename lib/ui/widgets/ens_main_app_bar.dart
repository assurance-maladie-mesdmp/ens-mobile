/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/domain/ens_analytics.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/infra/injection/ens_module_container.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/infra/screens/override_configuration_screen.dart';
import 'package:fr_cnamts_ens/magical_page/magical_page.dart';
import 'package:fr_cnamts_ens/notification_center/screens/notifications_center_screen.dart';
import 'package:fr_cnamts_ens/profils_rattaches/screens/profiles_dialog.dart';
import 'package:fr_cnamts_ens/tags/tags_notifications.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_ink_well.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui/widgets/viewmodels/ens_app_bar_view_model.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:fr_cnamts_ens/user/redux/user_actions.dart';
import 'package:fr_cnamts_ens/utils/opacity_utils.dart';

class EnsMainAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(64);
  final double height;
  final Color backgroundColor;
  final double shadowOpacity;

  const EnsMainAppBar({super.key, required this.backgroundColor, this.height = 64, required this.shadowOpacity});

  @override
  Widget build(BuildContext context) {
    return StoreConnector<EnsState, EnsAppBarViewModel>(
      converter: (store) => EnsAppBarViewModel(store, EnsModuleContainer.currentInjector.getAppConfig()),
      onInit: (store) => store.dispatch(FetchUserDataAction(force: false)),
      distinct: true,
      builder: (_, vm) {
        return Stack(
          alignment: Alignment.bottomLeft,
          children: [
            Row(
              children: [
                _CircleElementShadow(
                  padding: const EdgeInsets.only(left: 28, bottom: 18),
                  shadowOpacity: shadowOpacity,
                ),
                const Spacer(),
                _CircleElementShadow(
                  padding: EdgeInsets.only(right: vm.withOverrideConfigurationAction ? 80 : 32, bottom: 18),
                  shadowOpacity: shadowOpacity,
                ),
              ],
            ),
            AppBar(
              elevation: 0,
              backgroundColor: backgroundColor,
              automaticallyImplyLeading: false,
              surfaceTintColor: Colors.white,
              title: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(child: _AyantsDroitsAndParametersButton(vm)),
                  _NotificationCenterButton(vm.hasUnreadNotifications),
                  if (vm.withOverrideConfigurationAction)
                    const _DevModeButton(
                      redirectToMagicalPage: false,
                      tooltip: 'Override configuration',
                    ),
                  if (vm.displayMagicalPage)
                    const _DevModeButton(
                      redirectToMagicalPage: true,
                      tooltip: 'Page Magique',
                    ),
                ],
              ),
              iconTheme: const IconThemeData(color: EnsColors.title),
              excludeHeaderSemantics: true,
            ),
          ],
        );
      },
    );
  }
}

class _NotificationCenterButton extends StatelessWidget {
  final bool hasUnreadNotifications;

  const _NotificationCenterButton(this.hasUnreadNotifications);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4),
      child: StoreConnector<EnsState, AnalyticsViewModel>(
        converter: (store) => AnalyticsViewModel(store),
        distinct: true,
        builder: (_, vm) {
          return EnsInkWell(
            semanticLabel: 'Centre de notifications',
            borderRadius: BorderRadius.circular(100),
            onTap: () {
              Navigator.of(context).pushNamed(NotificationsCenterScreen.routeName);
              context.tagAction(TagsNotifications.tag_631_button_notification);
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 6, top: 8, bottom: 8),
              child: Stack(
                fit: StackFit.passthrough,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: Center(
                      child: Container(
                        height: 32,
                        width: 32,
                        decoration: BoxDecoration(
                          color: EnsColors.primary,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: const Center(
                          child: EnsSvg(EnsImages.ic_notification_outlined, height: 16),
                        ),
                      ),
                    ),
                  ),
                  if (hasUnreadNotifications)
                    Positioned(
                      right: 0,
                      child: Semantics(
                        label: 'Vous avez des notifications non lu',
                        child: Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                            color: EnsColors.secondary,
                            border: Border.all(color: Colors.white, strokeAlign: BorderSide.strokeAlignOutside),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class _CircleElementShadow extends StatelessWidget {
  final EdgeInsetsGeometry padding;
  final double shadowOpacity;

  const _CircleElementShadow({required this.padding, required this.shadowOpacity});

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: shadowOpacity,
      duration: const Duration(milliseconds: 100),
      child: Padding(
        padding: padding,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            boxShadow: [
              BoxShadow(
                color: EnsColors.info.withAlpha(OpacityUtils.getAlpha(0.3)),
                blurRadius: 16,
                spreadRadius: 2,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          height: 28,
          width: 28,
        ),
      ),
    );
  }
}

class _AyantsDroitsAndParametersButton extends StatelessWidget {
  final EnsAppBarViewModel vm;

  const _AyantsDroitsAndParametersButton(this.vm);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: EnsInkWell(
        borderRadius: BorderRadius.circular(8),
        semanticLabel: 'acceder aux paramètres du profil de ${vm.profileName} ou changer de profil',
        onTap: () {
          _tagAyantsDroitsAndParametersClick(vm);
          showGeneralDialog(
            barrierDismissible: true,
            barrierLabel: 'fermeture de la modale des profiles',
            context: context,
            pageBuilder: (_, __, ___) => SafeArea(child: ProfilesDialog()),
            transitionBuilder: (_, animation1, __, child) => Transform.scale(
              alignment: FractionalOffset.topLeft,
              origin: Offset(-MediaQuery.of(context).size.width / 3, MediaQuery.of(context).size.height / 20),
              scale: Curves.easeInOut.transform(animation1.value),
              child: child,
            ),
            transitionDuration: const Duration(milliseconds: 200),
          );
        },
        child: Padding(
          padding: const EdgeInsets.only(left: 8, bottom: 4, right: 8),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8, right: 8),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    EnsSvg(
                      EnsImages.ic_header_main_user_background,
                      color: vm.profileColor,
                      width: vm.profilType.isProfilPrincipal ? 38 : 32,
                      height: vm.profilType.isProfilPrincipal ? 38 : 32,
                      placeholderBuilder: (_) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        child: Container(
                          width: 32,
                          height: 32,
                          decoration: BoxDecoration(
                            color: EnsColors.primary,
                            borderRadius: BorderRadius.circular(80),
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: EnsSvg(vm.profilType.profilIcon, width: 16, height: 16, color: Colors.white),
                    ),
                  ],
                ),
              ),
              Expanded(child: ProfileName(vm.profileName)),
            ],
          ),
        ),
      ),
    );
  }

  void _tagAyantsDroitsAndParametersClick(EnsAppBarViewModel vm) {
    vm.tagAction(
      const EnsTag(
        name: 'nav_compte',
        category: EnsAnalyticsCategory.CLICK,
        level1: 'nav_bar',
      ),
    );
  }
}

class ProfileName extends StatelessWidget {
  final String name;

  const ProfileName(this.name);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Semantics(
        excludeSemantics: true,
        child: Text(
          name,
          style: EnsTextStyle.text12_w700_normal_title,
          maxLines: 3,
        ),
      ),
    );
  }
}

class _DevModeButton extends StatelessWidget {
  final bool redirectToMagicalPage;
  final String tooltip;

  const _DevModeButton({required this.redirectToMagicalPage, required this.tooltip});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: EdgeInsets.zero,
      splashRadius: 24,
      icon: const Icon(Icons.bolt),
      tooltip: tooltip,
      onPressed: () {
        if (redirectToMagicalPage) {
          Navigator.pushNamed(context, MagicalPageScreen.routeName);
        } else {
          Navigator.pushNamed(context, OverrideConfigurationScreen.routeName);
        }
      },
    );
  }
}
