/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/parameters/email/screens/viewModels/change_email_screen_view_model.dart';
import 'package:fr_cnamts_ens/parameters/otp/screens/validate_otp_screen.dart';
import 'package:fr_cnamts_ens/tags/tags_parameters.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_form.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/ens_email_input.dart';
import 'package:fr_cnamts_ens/ui/widgets/shake_widget.dart';
import 'package:fr_cnamts_ens/utils/extensions/form_extensions.dart';

class ChangeEmailScreen extends StatelessWidget {
  static const routeName = '/mon-compte/changement-email';

  final _formKey = GlobalKey<FormState>();
  final _shakeKey = GlobalKey<ShakeWidgetState>();
  final _emailTextInputController = TextEditingController();
  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const EnsAppBarSubLevel(
        title: 'Modifier mon adresse e-mail',
      ),
      body: StoreConnector<EnsState, ChangeEmailScreenViewModel>(
        converter: (store) => ChangeEmailScreenViewModel.fromEnsState(store),
        distinct: true,
        onWillChange: (_, vm) => _handleChangeContactStatusChange(vm, context),
        onInitialBuild: (vm) {
          _emailTextInputController.text = vm.userMail;
          context.tagAction(TagsParameters.tag_compte_changement_email);
        },
        builder: (_, vm) => SafeArea(
          child: EnsForm(
            formKey: _formKey,
            shakeKey: _shakeKey,
            scrollController: _scrollController,
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                EnsEmailInput(emailController: _emailTextInputController),
                const SizedBox(height: 24),
                EnsButton(
                  label: 'Valider',
                  onTap: () => _validateAndSend(vm),
                  isLoading: vm.changeContactStatus == ChangeContactStatus.PENDING,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _handleChangeContactStatusChange(ChangeEmailScreenViewModel vm, BuildContext context) {
    if (vm.changeContactStatus == ChangeContactStatus.SUCCESS) {
      Navigator.pushNamed(context, ValidateOtpScreen.routeName);
    }
  }

  void _validateAndSend(ChangeEmailScreenViewModel vm) {
    final validation = _formKey.validate();
    validation.onValid(() {
      vm.sendChangeEmail(_emailTextInputController.text);
    }).onInvalid(() {
      _shakeKey.currentState?.shake();
    });
  }
}
