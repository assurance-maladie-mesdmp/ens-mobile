/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'dart:async';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/auth/redux/auth_actions.dart';
import 'package:fr_cnamts_ens/auth/screens/login_screen_view_model.dart';
import 'package:fr_cnamts_ens/covid/redux/covid_certificate_actions.dart';
import 'package:fr_cnamts_ens/developpeur_outils/screen/developpeur_outils_screen.dart';
import 'package:fr_cnamts_ens/enrolement/screens/enrolement_choix_france_connect_plus_screen.dart';
import 'package:fr_cnamts_ens/enrolement/screens/enrolement_global_screen.dart';
import 'package:fr_cnamts_ens/infra/injection/ens_module_container.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_initial_state.dart';
import 'package:fr_cnamts_ens/infra/redux/urls_config_actions.dart';
import 'package:fr_cnamts_ens/interruption_services/redux/interruption_services_redux.dart';
import 'package:fr_cnamts_ens/interruption_services/widget/interruption_service_helper.dart';
import 'package:fr_cnamts_ens/messages_pannes/redux/messages_pannes_redux.dart';
import 'package:fr_cnamts_ens/notifications/notifications_utils.dart';
import 'package:fr_cnamts_ens/tags/tags_login.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/confirmation_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/confirmation_bottom_sheet_default_text_content.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button_secondary.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_ink_well.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_link_text.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_message_panne_widget.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:fr_cnamts_ens/utils/feature_flags_helper.dart';

class LoginScreen extends StatefulWidget {
  static const routeName = '/loginScreen';
  final String? deeplink;

  const LoginScreen({super.key, this.deeplink});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  StreamSubscription<RemoteMessage>? notificationSubscription;

  @override
  void dispose() {
    notificationSubscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StoreConnector<EnsInitialState, LoginScreenViewModel>(
      distinct: true,
      converter: (store) => LoginScreenViewModel(store, EnsModuleContainer.currentInjector.getAppConfig()),
      onInit: (store) {
        store.dispatch(WipeCovidCertificateAction());
        store.dispatch(InitUrlsConfigAction());
        store.dispatch(RetrieveUsernameAction());
        store.dispatch(FetchInterruptionServiceAction());
        store.dispatch(FetchLoginScreenMessagePanneAction());
      },
      onInitialBuild: (vm) {
        vm.tagAction(TagsLogin.tag_connexion_app);
        _setupNotificationRedirection(vm);
      },
      onDidChange: (oldVm, vm) {
        const SystemUiOverlayStyle overlayStyle = SystemUiOverlayStyle.dark;
        SystemChrome.setSystemUIOverlayStyle(
          SystemUiOverlayStyle(
            statusBarColor: vm.messagePanne == null ? EnsColors.neutral100 : EnsColors.light,
            systemNavigationBarIconBrightness: overlayStyle.systemNavigationBarIconBrightness,
            statusBarIconBrightness: overlayStyle.statusBarIconBrightness,
            statusBarBrightness: overlayStyle.statusBarBrightness,
            systemStatusBarContrastEnforced: overlayStyle.systemStatusBarContrastEnforced,
          ),
        );
      },
      builder: (BuildContext context, LoginScreenViewModel vm) {
        if (widget.deeplink != null) {
          vm.setDeeplink(widget.deeplink!);
        }

        return Scaffold(
          appBar: AppBar(
            toolbarHeight: 0,
            backgroundColor: vm.messagePanne != null ? EnsColors.light : EnsColors.illustration_login_background,
          ),
          backgroundColor: EnsColors.light,
          body: SafeArea(child: _Content(vm)),
        );
      },
    );
  }

  Future<void> _setupNotificationRedirection(LoginScreenViewModel vm) async {
    try {
      await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
        alert: true, // Required to display a heads up notification
        badge: true,
        sound: true,
      );

      final initialMessage = await FirebaseMessaging.instance.getInitialMessage();
      if (initialMessage != null && !Notifications.skipFutureInitialMessage) {
        _handleMessage(initialMessage, vm);
      }

      notificationSubscription = FirebaseMessaging.onMessageOpenedApp.listen((message) {
        _handleMessage(message, vm);
      });
    } catch (e) {
      // DO NOTHING BUT DONT CRASH
    }
  }

  void _handleMessage(RemoteMessage message, LoginScreenViewModel vm) {
    Notifications.save(message);
    vm.authenticate(shouldRedirectToLoginMdpWebView: false);
  }
}

class _Content extends StatelessWidget {
  final LoginScreenViewModel vm;

  const _Content(this.vm);

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: EnsColors.illustration_login_background,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Flexible(
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                _BackgroundImage(),
                Align(
                  alignment: Alignment.topLeft,
                  child: _ModeInviteButtonAndLogo(
                    onTap: vm.enterGuestMode,
                    showDevToolsButton: vm.showDevToolsButton,
                  ),
                ),
                if (vm.messagePanne != null)
                  Align(
                    alignment: Alignment.topLeft,
                    child: Wrap(
                      alignment: WrapAlignment.center,
                      children: [
                        EnsMessagePanneWidget(
                          message: vm.messagePanne!,
                          onCloseCallback: vm.closeMessagePanne,
                          headerOnly: false,
                        ),
                      ],
                    ),
                  ),
              ],
            ),
          ),
          if (vm.username != null) _LoginWithUserNameWidget(vm: vm) else _LoginButtons(vm: vm),
        ],
      ),
    );
  }
}

class _ModeInviteButtonAndLogo extends StatelessWidget {
  final void Function() onTap;
  final bool showDevToolsButton;

  const _ModeInviteButtonAndLogo({
    required this.onTap,
    required this.showDevToolsButton,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          const EnsSvg(
            EnsImages.logo_mes,
            fit: BoxFit.cover,
            allowDrawingOutsideViewBox: true,
            clipBehavior: Clip.none,
          ),
          const Spacer(),
          if (showDevToolsButton)
            EnsInkWell(
              semanticLabel: 'Afficher le menu des outils développeur',
              onTap: () => Navigator.pushNamed(context, DeveloppeurOutilsScreen.routeName),
              borderRadius: BorderRadius.circular(8),
              child: const Padding(
                padding: EdgeInsets.all(16),
                child: EnsSvg(EnsImages.ic_settings),
              ),
            ),
          EnsInkWell(
            onTap: () => _showGuestModeConfirmationBottomSheet(context),
            borderRadius: BorderRadius.circular(8),
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 24, horizontal: 16),
              child: Text('Mode démo', style: EnsTextStyle.text12_w700_normal_body),
            ),
          ),
        ],
      ),
    );
  }

  void _showGuestModeConfirmationBottomSheet(BuildContext context) {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) {
        return ConfirmationBottomSheet(
          title: 'Bienvenue\nsur le mode démo',
          content: const ConfirmationBottomSheetDefaultTextContent(
            'Ceci est une version de démonstration de l’application Mon espace santé. Les informations affichées sont fictives. Connectez-vous pour accéder à vos données et profiter de toutes les fonctionnalités.',
          ),
          positiveButtonLabel: 'Continuer',
          positiveButtonColor: EnsColors.primary,
          negativeButtonLabel: 'Connexion',
          positiveButtonHandler: onTap,
          setButtonsToVerySmallSize: true,
        );
      },
    );
  }
}

class _BackgroundImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return EnsSvg(
      EnsImages.illustration_login,
      fit: BoxFit.fitHeight,
      height: MediaQuery.of(context).size.height * 0.5,
      alignment: Alignment.bottomCenter,
    );
  }
}

class _LoginWithUserNameWidget extends StatelessWidget {
  final LoginScreenViewModel vm;

  const _LoginWithUserNameWidget({required this.vm});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: EnsColors.light,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(24, 32, 24, 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            _UserName(userName: vm.username!),
            const SizedBox(height: 32),
            _ConnexionButton(vm: vm),
            const SizedBox(height: 12),
            EnsLinkText(
              isLoading: vm.loginStatus.isLoginWithAnotherAccount(),
              isDisabled: vm.loginStatus.isLoginWithExistingAccount(),
              alignment: AlignmentDirectional.center,
              textAlign: TextAlign.center,
              label: 'Connexion à un autre compte',
              onTap: () {
                vm.authenticate(shouldRedirectToLoginMdpWebView: true);
              },
              textPadding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
            ),
          ],
        ),
      ),
    );
  }
}

class _LoginButtons extends StatelessWidget {
  final LoginScreenViewModel vm;

  const _LoginButtons({required this.vm});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: EnsColors.light,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 48, horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            _ConnexionButton(vm: vm),
            const SizedBox(height: 24),
            _ActivateProfilButton(vm: vm),
          ],
        ),
      ),
    );
  }
}

class _ActivateProfilButton extends StatelessWidget {
  const _ActivateProfilButton({
    required this.vm,
  });

  final LoginScreenViewModel vm;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          child: EnsButtonSecondary(
            size: EnsButtonSize.MEDIUM,
            label: 'Activer mon profil',
            isDisabled: vm.loginStatus.isLoginWithExistingAccount() || vm.loginStatus.isFirstLogin(),
            onTap: () {
              vm.tagAction(TagsLogin.tag_button_activer);
              InterruptionServiceHelper.showSnackbarOnInterruption(
                context,
                connexionMode: InterruptionServiceConnexionMode.NON_CONNECTE,
                interruptionServiceSnackbarMessage: vm.interruptionServiceEnrolementSnackbarMessage,
                onNotInterrompu: () {
                  Navigator.pushNamed(
                    context,
                    isFranceConnectPlusEnabled
                        ? EnrolementChoixFranceConnectPlusScreen.routeName
                        : EnrolementGlobalScreen.routeName,
                  );
                },
              );
            },
          ),
        ),
      ],
    );
  }
}

class _ConnexionButton extends StatelessWidget {
  final LoginScreenViewModel vm;

  const _ConnexionButton({required this.vm});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          child: EnsButton(
            size: EnsButtonSize.MEDIUM,
            isLoading: vm.loginStatus.isLoginWithExistingAccount() || vm.loginStatus.isFirstLogin(),
            isDisabled: vm.loginStatus.isLoginWithAnotherAccount(),
            label: 'Connexion',
            onTap: () {
              vm.tagAction(TagsLogin.tag_button_connexion);
              InterruptionServiceHelper.showSnackbarOnInterruption(
                context,
                connexionMode: InterruptionServiceConnexionMode.NON_CONNECTE,
                interruptionServiceSnackbarMessage: vm.interruptionServiceConnexionSnackbarMessage,
                onNotInterrompu: () {
                  vm.authenticate(shouldRedirectToLoginMdpWebView: vm.shouldRedirectToLoginMdpWebView());
                },
              );
            },
          ),
        ),
      ],
    );
  }
}

class _UserName extends StatelessWidget {
  final String userName;

  const _UserName({required this.userName});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const Stack(
            alignment: Alignment.center,
            children: [
              EnsSvg(EnsImages.ic_circle_filled, width: 40, height: 40, color: EnsColors.primary),
              EnsSvg(EnsImages.ic_user, width: 24, height: 24),
            ],
          ),
          const SizedBox(height: 4),
          Text(
            userName,
            style: EnsTextStyle.text20_w400_normal_title,
          ),
        ],
      ),
    );
  }
}
