/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/clipboard/redux/clipboard_actions.dart';
import 'package:fr_cnamts_ens/infra/injection/ens_module_container.dart';
import 'package:fr_cnamts_ens/infra/override_configuration.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/magical_page/magical_page.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button_secondary.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_ink_well.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/ens_text_input.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';
import 'package:fr_cnamts_ens/user/app_rating/redux/app_rating_actions.dart';

class OverrideConfigurationScreen extends StatefulWidget {
  static const routeName = '/overrideConfiguration';

  const OverrideConfigurationScreen();

  @override
  State<OverrideConfigurationScreen> createState() => _OverrideConfigurationScreenState();
}

class _OverrideConfigurationScreenState extends State<OverrideConfigurationScreen> {
  final overrideConfigurationRepository = EnsModuleContainer.currentInjector.getOverrideConfigurationRepository();

  final TextEditingController _tokenTextInputController = TextEditingController();
  final TextEditingController _bffUrlTextInputController = TextEditingController();

  String? fcmRegistrationToken;

  @override
  void initState() {
    super.initState();
    final overrideConfiguration = overrideConfigurationRepository.getOverrideConfiguration();
    _tokenTextInputController.text = overrideConfiguration.bffToken;
    _bffUrlTextInputController.text = overrideConfiguration.bffBaseUrl;

    FirebaseMessaging.instance.getToken().then((value) {
      setState(() {
        fcmRegistrationToken = value;
      });
    });
  }

  @override
  void dispose() {
    _tokenTextInputController.dispose();
    _bffUrlTextInputController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const EnsAppBarSubLevel(title: 'Override configuration'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: ScrollviewWithScrollbar(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              EnsTextInput(
                label: 'BFF token to override',
                hint: 'Le token',
                controller: _tokenTextInputController,
                keyboardType: TextInputType.text,
                autofocus: true,
                withDeleteTextQuickActionButton: true,
              ),
              const SizedBox(height: 24),
              EnsTextInput(
                label: 'BFF base url to override',
                hint: 'L\'url',
                controller: _bffUrlTextInputController,
                withDeleteTextQuickActionButton: true,
              ),
              const SizedBox(height: 24),
              const Text(
                'FCM Registration Token',
                style: EnsTextStyle.text14_w600_normal_title,
              ),
              const SizedBox(height: 4),
              StoreBuilder<EnsState>(
                builder: (_, store) {
                  return EnsInkWell(
                    onTap: fcmRegistrationToken != null
                        ? () {
                            store.dispatch(
                              CopyToClipboardAction(
                                text: fcmRegistrationToken!,
                                successMessage: 'Token copié',
                              ),
                            );
                          }
                        : null,
                    child: Text(fcmRegistrationToken ?? 'Pas de token...'),
                  );
                },
              ),
              const SizedBox(height: 24),
              Row(
                children: [
                  Expanded(
                    child: EnsButton(
                      label: 'Sauvegarder les params',
                      onTap: () {
                        overrideConfigurationRepository.setOverrideConfiguration(
                          OverrideConfiguration(
                            bffBaseUrl: _bffUrlTextInputController.text,
                            bffToken: _tokenTextInputController.text,
                          ),
                        );
                        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Reboot application')));
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              _ResetAppRating(),
              const SizedBox(height: 20),
              _MagicalPage(),
            ],
          ),
        ),
      ),
    );
  }
}

class _ResetAppRating extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: EnsButtonSecondary(
            label: 'Reset AppRating',
            onTap: () {
              StoreProvider.of<EnsState>(context).dispatch(ResetAppRatingFeatureAction());
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('C\'est fait !!!!!!')));
            },
          ),
        ),
      ],
    );
  }
}

class _MagicalPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: EnsButtonSecondary(
            label: '✨ La Page Magique ✨',
            onTap: () => Navigator.pushNamed(context, MagicalPageScreen.routeName),
          ),
        ),
      ],
    );
  }
}
