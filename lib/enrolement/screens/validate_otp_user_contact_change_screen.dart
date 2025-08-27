/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/enrolement/screens/enrolement_global_screen.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_initial_state.dart';
import 'package:fr_cnamts_ens/parameters/otp/screens/viewModels/validate_otp_screen_view_model.dart';
import 'package:fr_cnamts_ens/tags/tags_enrolement.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/utils/snackbar_utils.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_form.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_pop_scope.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/ens_otp_input.dart';
import 'package:fr_cnamts_ens/user/domain/model/contact_change.dart';
import 'package:fr_cnamts_ens/utils/extensions/form_extensions.dart';

class ValidateOtpUserContactChangeScreen extends StatelessWidget {
  static const routeName = 'enrolement/validateOtpforChangeContact';

  ValidateOtpUserContactChangeScreen({super.key});

  final _formKey = GlobalKey<FormState>();
  final _scrollController = ScrollController();
  final _otpTextInputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return StoreConnector<EnsInitialState, ValidateOtpScreenViewModel>(
      converter: (store) => ValidateOtpScreenViewModel.fromEnsInitialState(store),
      distinct: true,
      onWillChange: (oldVm, vm) {
        if (oldVm?.validateOtpStatus.isNotSuccess() == true && vm.validateOtpStatus.isSuccess()) {
          Navigator.popUntil(context, ModalRoute.withName(EnrolementGlobalScreen.routeName));
          showSnackbarSuccess(context, vm.successMessage);
          vm.finalizeChangeContact();
        }
      },
      onInitialBuild: (vm) {
        context.tagInitialAction(
          vm.type == ContactChangeType.MAIL
              ? TagsEnrolement.tag_verification_coordonnees_validation_email
              : TagsEnrolement.tag_verification_coordonnees_validation_telephone,
        );
      },
      builder: (context, vm) => EnsPopScope.shouldPop(
        onScreenClosedInvoked: () {
          vm.resetValidateOtpToChangeUserContactStatus();
        },
        child: Scaffold(
          appBar: EnsAppBarSubLevel(title: vm.screenTitle),
          body: SafeArea(
            child: EnsForm(
              formKey: _formKey,
              scrollController: _scrollController,
              padding: const EdgeInsets.all(24),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(vm.instruction, style: EnsTextStyle.text14_w400_normal_body),
                  Text(vm.instructionContact, style: EnsTextStyle.text16_w700_primary),
                  const SizedBox(height: 20),
                  EnsOtpInput(
                    controller: _otpTextInputController,
                    isError: vm.validateOtpStatus.isError(),
                    onTextDidChange: (_) {
                      if (vm.validateOtpStatus.isError()) {
                        vm.resetValidateOtpToChangeUserContactStatus();
                      }
                    },
                  ),
                  const SizedBox(height: 16),
                  Flexible(
                    child: EnsButton(
                      label: 'Valider',
                      onTap: () => _validateAndSend(vm),
                      isLoading: vm.validateOtpStatus.isLoading(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _validateAndSend(ValidateOtpScreenViewModel vm) {
    final validation = _formKey.validate();
    validation.onValid(() {
      vm.sendOtp(_otpTextInputController.text);
    });
  }
}
