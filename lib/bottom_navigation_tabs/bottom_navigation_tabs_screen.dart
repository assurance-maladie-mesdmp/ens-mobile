/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'dart:async';
import 'dart:convert';

import 'package:animations/animations.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/auth/redux/auth_actions.dart';
import 'package:fr_cnamts_ens/bottom_navigation_tabs/viewmodels/bottom_navigation_tabs_screen_view_model.dart';
import 'package:fr_cnamts_ens/bottom_navigation_tabs/viewmodels/redirections_view_model.dart';
import 'package:fr_cnamts_ens/bottom_navigation_tabs/widgets/more_pages_widgets.dart';
import 'package:fr_cnamts_ens/documents/screens/documents_screen.dart';
import 'package:fr_cnamts_ens/home/screens/home_screen.dart';
import 'package:fr_cnamts_ens/infra/injection/ens_module_container.dart';
import 'package:fr_cnamts_ens/infra/receive_sharing/receive_sharing_container.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_initial_state.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/interruption_services/domain/interruption_de_service_info.dart';
import 'package:fr_cnamts_ens/interruption_services/widget/interruption_service_container.dart';
import 'package:fr_cnamts_ens/interruption_services/widget/interruption_service_screen.dart';
import 'package:fr_cnamts_ens/messagerie/home_messagerie/screens/messagerie_screen.dart';
import 'package:fr_cnamts_ens/notification_center/screens/notifications_center_screen.dart';
import 'package:fr_cnamts_ens/notifications/notifications_utils.dart';
import 'package:fr_cnamts_ens/notifications/redux/notification_actions.dart';
import 'package:fr_cnamts_ens/profil_medical/screens/profil_medical_screen.dart';
import 'package:fr_cnamts_ens/snackbar/widgets/snackbar_container.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/utils/snackbar_utils.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_bottom_nav_bar.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_ink_well.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_main_app_bar.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/user/survey/widgets/bottom_sheets_container.dart';
import 'package:fr_cnamts_ens/utils/opacity_utils.dart';

class BottomNavigationTabsScreen extends StatefulWidget {
  static late GlobalKey<_BottomNavigationTabsScreenState>? keyEnsBottomNavigationBar;
  static GlobalKey<_BottomNavigationTabsScreenState> keySnackbarScaffold = LabeledGlobalKey('snackbar_scaffold');
  static const routeName = '/landingPage';

  const BottomNavigationTabsScreen({super.key});

  @override
  _BottomNavigationTabsScreenState createState() => _BottomNavigationTabsScreenState();

  static void navigateToTab(BottomTabs tab) {
    (BottomNavigationTabsScreen.keyEnsBottomNavigationBar?.currentWidget as EnsBottomNavigationBar?)
        ?.onTap(tab.position);
  }
}

enum BottomTabs {
  HOME(0),
  DOCUMENTS(1),
  MESSAGES(2),
  PML(3);

  final int position;

  const BottomTabs(this.position);
}

class _BottomNavigationTabsScreenState extends State<BottomNavigationTabsScreen> with TickerProviderStateMixin {
  static GlobalKey<SnackbarContainerWidgetState> snackbarContainerKey = GlobalKey<SnackbarContainerWidgetState>();
  late List<Widget> _pages;
  int _selectedPageIndex = 0;
  bool showPop = false;
  String titlePop = '';
  String iconPop = '';
  late bool _shouldDisplayMorePages;

  late AnimationController _colorAnimationController;
  late Animation<Color?> _colorTween;
  late double _backgroundOpacity;
  double _appBarButtonsShadowOpacity = 1;
  late double _morePagesWidgetScale;
  late ShapeDecoration _morePagesWidgetShape;
  final morePagesAnimationDuration = const Duration(milliseconds: 250);
  final _morePagesWidgetInitialShape = const ShapeDecoration(
    color: Colors.white,
    shape: CircleBorder(),
  );
  final _morePagesWidgetFinalShape = const ShapeDecoration(
    color: Colors.white,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(32),
        topRight: Radius.circular(32),
        bottomLeft: Radius.circular(32),
        bottomRight: Radius.circular(8),
      ),
    ),
  );
  StreamSubscription<RemoteMessage>? notificationTypeSubscription;

  @override
  void initState() {
    super.initState();
    _shouldDisplayMorePages = false;
    BottomNavigationTabsScreen.keyEnsBottomNavigationBar = LabeledGlobalKey('bottom_app_bar');
    _pages = [
      const HomeScreen(),
      InterruptionServiceContainer(
        composant: const DomaineInterruptionFullscreenComposant(
          domaineInterruption: DomaineInterruption.DOCUMENTS,
          from: InterruptionServiceScreenName.DOCUMENTS,
        ),
        child: DocumentsScreen(),
      ),
      InterruptionServiceContainer(
        composant: const DomaineInterruptionFullscreenComposant(
          domaineInterruption: DomaineInterruption.MESSAGERIE,
          from: InterruptionServiceScreenName.MESSAGERIE,
        ),
        child: MessagerieScreen(),
      ),
      const ProfilMedicalScreen(),
    ];
    _colorAnimationController = AnimationController(vsync: this);
    _colorTween = ColorTween(begin: EnsColors.neutral100.withAlpha(0), end: EnsColors.neutral100)
        .animate(_colorAnimationController);
    _backgroundOpacity = 0;
    _morePagesWidgetScale = 0;
    _morePagesWidgetShape = _morePagesWidgetInitialShape;
  }

  @override
  void dispose() {
    BottomNavigationTabsScreen.keyEnsBottomNavigationBar = null;
    notificationTypeSubscription?.cancel();
    super.dispose();
  }

  Future<void> _selectPage(int index) async {
    clearSnackbar(snackbarContainerKey.currentContext ?? context, forceUseContext: true);
    setState(() {
      if (index == 4) {
        _shouldDisplayMorePages = true;
        _morePagesWidgetScale = 1;
        _backgroundOpacity = 1;
        _morePagesWidgetShape = _morePagesWidgetFinalShape;
      } else {
        _selectedPageIndex = index;
        _morePagesWidgetScale = 0;
        _backgroundOpacity = 0;
        _shouldDisplayMorePages = false;
        _morePagesWidgetShape = const ShapeDecoration(
          color: Colors.white,
          shape: CircleBorder(),
        );
      }
    });
    await Future.delayed(const Duration(milliseconds: 250));
  }

  bool _scrollListener(ScrollNotification scrollInfo) {
    if (scrollInfo.metrics.axis == Axis.vertical) {
      double opacityValue = 1 - scrollInfo.metrics.pixels / 100;
      if (opacityValue < 0) {
        opacityValue = 0;
      } else if (opacityValue > 1) {
        opacityValue = 1;
      }
      _appBarButtonsShadowOpacity = opacityValue;
      _colorAnimationController.animateTo(scrollInfo.metrics.pixels / 100, duration: Duration.zero);
      return true;
    }
    return false;
  }

  @override
  Widget build(BuildContext context) => AnimatedBuilder(
        animation: _colorAnimationController,
        builder: (context, child) => StoreConnector<EnsState, BottomNavigationTabsScreenViewModel>(
          converter: (store) => BottomNavigationTabsScreenViewModel(store),
          distinct: true,
          builder: (_, vm) {
            return Stack(
              alignment: Alignment.topCenter,
              children: [
                ColoredBox(
                  color: EnsColors.light,
                  child: Scaffold(
                    extendBody: true,
                    body: Stack(
                      children: [
                        Semantics(
                          excludeSemantics: _shouldDisplayMorePages,
                          child: Scaffold(
                            extendBodyBehindAppBar: true,
                            appBar: vm.isMainAppBarVisible
                                ? EnsMainAppBar(
                                    backgroundColor: _colorTween.value ?? EnsColors.neutral100,
                                    shadowOpacity: _appBarButtonsShadowOpacity,
                                  )
                                : null,
                            body: child,
                          ),
                        ),
                        IgnorePointer(
                          ignoring: !_shouldDisplayMorePages,
                          child: AnimatedOpacity(
                            opacity: _backgroundOpacity,
                            duration: morePagesAnimationDuration,
                            curve: Curves.easeInOut,
                            child: GestureDetector(
                              onTap: _onCloseMorePagesModal,
                              child: Container(
                                color: Colors.black.withAlpha(OpacityUtils.getAlpha(0.5)),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 72),
                          child: Semantics(
                            excludeSemantics: !_shouldDisplayMorePages,
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: AnimatedScale(
                                alignment: Alignment.bottomRight,
                                scale: _morePagesWidgetScale,
                                curve: Curves.easeInOut,
                                duration: morePagesAnimationDuration,
                                child: Container(
                                  padding: EdgeInsets.fromLTRB(24, 24, 24, 24 + getNavBarBottomPadding(context)),
                                  child: AnimatedContainer(
                                    duration: morePagesAnimationDuration,
                                    decoration: _morePagesWidgetShape,
                                    curve: Curves.easeInOut,
                                    child: MorePagesBottomSheet(
                                      onClose: _onCloseMorePagesModal,
                                      onLongPress: _openAccessibilityPop,
                                      onTapUp: _closeAccessibilityPop,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        if (showPop) _AccessibilityBottomItemLabelPop(iconPop: iconPop, titlePop: titlePop),
                      ],
                    ),
                    bottomNavigationBar: Stack(
                      children: [
                        EnsBottomNavigationBar(
                          key: BottomNavigationTabsScreen.keyEnsBottomNavigationBar,
                          inactiveColor: EnsColors.body,
                          onLongPress: _openAccessibilityPop,
                          onTapUp: _closeAccessibilityPop,
                          onTap: (int index) {
                            if (index != 1) {
                              vm.displayMainAppBar();
                            }
                            _selectPage(index);
                          },
                          currentIndex: _shouldDisplayMorePages ? 4 : _selectedPageIndex,
                          items: vm.navigationBarItems,
                        ),
                        StoreConnector<EnsInitialState, RedirectionsViewModel>(
                          converter: (store) => RedirectionsViewModel(store),
                          distinct: true,
                          onInitialBuild: (vm) {
                            _setupNotificationRedirection();
                            if (vm.deeplink != null) {
                              Navigator.of(context).pushNamed(vm.deeplink!);
                            }
                          },
                          builder: (_, __) => const SizedBox(),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          },
        ),
        child: ScaffoldMessenger(
          child: ReceiveSharingContainer(
            child: SnackbarContainer(
              key: snackbarContainerKey,
              child: BottomSheetsContainer(
                child: NotificationListener<ScrollNotification>(
                  onNotification: _scrollListener,
                  child: Column(
                    children: [
                      Expanded(
                        child: PageTransitionSwitcher(
                          transitionBuilder: (child, animation, secondaryAnimation) => FadeThroughTransition(
                            animation: animation,
                            secondaryAnimation: secondaryAnimation,
                            child: child,
                          ),
                          child: _pages[_selectedPageIndex],
                        ),
                      ),
                      if (EnsModuleContainer.currentInjector.isGuestMode())
                        const GuestModeBanner()
                      else
                        const SizedBox(height: 52),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      );

  void _closeAccessibilityPop() {
    setState(() {
      showPop = false;
    });
  }

  void _openAccessibilityPop(String icon, String title) {
    setState(() {
      showPop = true;
      titlePop = title;
      iconPop = icon;
    });
  }

  Future<void> _onCloseMorePagesModal() async {
    setState(() {
      _shouldDisplayMorePages = false;
      _morePagesWidgetScale = 0;
      _backgroundOpacity = 0;
      _shouldDisplayMorePages = false;
      _morePagesWidgetShape = const ShapeDecoration(
        color: Colors.white,
        shape: CircleBorder(),
      );
    });
  }

  Future<void> _setupNotificationRedirection() async {
    notificationTypeSubscription = FirebaseMessaging.onMessageOpenedApp.listen(_redirectToCDN);
    final savedNotification = Notifications.consume();
    if (savedNotification != null) {
      _redirectToCDN(savedNotification);
    }
    final flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
    flutterLocalNotificationsPlugin.initialize(
      const InitializationSettings(
        android: AndroidInitializationSettings('ic_logo_transparent'),
      ),
      onDidReceiveNotificationResponse: (notification) async {
        final data = jsonDecode(notification.payload!) as Map<String, dynamic>;
        final patientId = data['patientID'];
        if (patientId != null) {
          _redirectToCDN(null, encryptPatientId: patientId as String);
        } else {
          _redirectToCDN(null);
        }
      },
      onDidReceiveBackgroundNotificationResponse: (notification) {
        final data = jsonDecode(notification.payload!) as Map<String, dynamic>;
        final patientId = data['patientID'];
        if (patientId != null) {
          _redirectToCDN(null, encryptPatientId: patientId as String);
        } else {
          _redirectToCDN(null);
        }
      },
    );
  }

  void _redirectToCDN(
    RemoteMessage? message, {
    String encryptPatientId = '',
  }) {
    final patientId = message?.data['patientID'];
    if (message != null && patientId != null) {
      StoreProvider.of<EnsState>(context).dispatch(DecryptAction(patientId as String));
    } else if (encryptPatientId != '') {
      StoreProvider.of<EnsState>(context).dispatch(DecryptAction(encryptPatientId));
    }
    Navigator.popUntil(context, (route) => route.isFirst);
    Navigator.pushNamed(context, NotificationsCenterScreen.routeName);
  }
}

class _AccessibilityBottomItemLabelPop extends StatelessWidget {
  const _AccessibilityBottomItemLabelPop({
    required this.iconPop,
    required this.titlePop,
  });

  final String iconPop;
  final String titlePop;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Center(
        child: Container(
          padding: const EdgeInsets.all(40),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: EnsColors.disabled500,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              EnsSvg(
                iconPop,
                height: 80,
                width: 80,
                color: EnsColors.title,
                svgKey: const ValueKey<int>(0),
              ),
              const SizedBox(height: 40),
              Text(
                titlePop,
                style: EnsTextStyle.text22_w700_normal_title,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

const EXTRA_VERTICAL_PADDING_FOR_GUEST_MODE_CONTENT = 72.0;

enum GuestModeBannerType { WITH_BOTTOM_BAR, WITHOUT_BOTTOM_BAR }

class GuestModeBanner extends StatelessWidget {
  final GuestModeBannerType type;
  final double? topOfKeyboard;

  const GuestModeBanner({
    this.type = GuestModeBannerType.WITH_BOTTOM_BAR,
    this.topOfKeyboard,
  }) : assert(
          type == GuestModeBannerType.WITH_BOTTOM_BAR ||
              (type == GuestModeBannerType.WITHOUT_BOTTOM_BAR && topOfKeyboard != null),
        );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: type == GuestModeBannerType.WITH_BOTTOM_BAR ? 48 + getNavBarBottomPadding(context) : 0,
      ),
      child: Container(
        padding: EdgeInsets.fromLTRB(
          24,
          10,
          24,
          _getBottomEdgeInsets(context),
        ),
        decoration: const BoxDecoration(color: EnsColors.error),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Mode démo', style: EnsTextStyle.text12_w400_normal_light),
            EnsInkWell(
              onTap: () => _goToLoginPage(context),
              child: const Text('Connexion', style: EnsTextStyle.text12_w700_normal_light),
            ),
          ],
        ),
      ),
    );
  }

  double _getBottomEdgeInsets(BuildContext context) {
    switch (type) {
      case GuestModeBannerType.WITH_BOTTOM_BAR:
        return 34;
      case GuestModeBannerType.WITHOUT_BOTTOM_BAR:
        final unsafeAreaBottomPadding =
            MediaQuery.of(BottomNavigationTabsScreen.keyEnsBottomNavigationBar?.currentContext ?? context)
                .padding
                .bottom;
        if (isKeyBoardVisible(context, unsafeAreaBottomPadding)) {
          return 10;
        } else {
          return unsafeAreaBottomPadding + 10;
        }
    }
  }

  bool isKeyBoardVisible(BuildContext context, double unSafeAreaBottomPadding) {
    if (topOfKeyboard != null) {
      return topOfKeyboard! > unSafeAreaBottomPadding;
    } else {
      return false;
    }
  }

  void _goToLoginPage(BuildContext context) {
    StoreProvider.of<EnsInitialState>(context).dispatch(ResetAuthStatusAction());
    StoreProvider.of<EnsInitialState>(context).dispatch(ResetDeeplinkAction());
  }
}
