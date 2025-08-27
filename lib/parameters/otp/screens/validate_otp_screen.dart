/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/parameters/otp/screens/viewModels/validate_otp_screen_view_model.dart';
import 'package:fr_cnamts_ens/parameters/screens/parameters_screen.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/utils/snackbar_utils.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_form.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/ens_otp_input.dart';
import 'package:fr_cnamts_ens/utils/extensions/form_extensions.dart';

class ValidateOtpScreen extends StatelessWidget {
  static const routeName = '/validateOtp';

  const ValidateOtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return StoreConnector<EnsState, ValidateOtpScreenViewModel>(
      converter: (store) => ValidateOtpScreenViewModel.fromEnsState(store),
      distinct: true,
      onWillChange: (oldVm, vm) {
        if (oldVm?.validateOtpStatus.isNotSuccess() == true && vm.validateOtpStatus.isSuccess()) {
          vm.finalizeChangeContact();
          Navigator.popUntil(context, ModalRoute.withName(ParametersScreen.routeName));
          showSnackbarSuccess(context, vm.successMessage);
        }
      },
      builder: (context, vm) => _Content(vm: vm),
    );
  }
}

class _Content extends StatefulWidget {
  final ValidateOtpScreenViewModel vm;

  const _Content({required this.vm});

  @override
  State<_Content> createState() => _ContentState();
}

class _ContentState extends State<_Content> {
  final _formKey = GlobalKey<FormState>();
  final _scrollController = ScrollController();
  final _otpTextInputController = TextEditingController();

  @override
  void dispose() {
    _otpTextInputController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: EnsAppBarSubLevel(title: widget.vm.screenTitle),
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
              Text(widget.vm.instruction, style: EnsTextStyle.text14_w400_normal_body),
              Text(widget.vm.instructionContact, style: EnsTextStyle.text16_w700_primary),
              const SizedBox(height: 20),
              EnsOtpInput(
                controller: _otpTextInputController,
                isError: widget.vm.validateOtpStatus.isError(),
              ),
              const SizedBox(height: 16),
              Flexible(
                child: EnsButton(
                  label: 'Valider',
                  onTap: () => _validateAndSend(widget.vm),
                  isLoading: widget.vm.validateOtpStatus.isLoading(),
                ),
              ),
            ],
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
