/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/infra/data/ens_authenticated_client.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_snackbar_content.dart';

const VeryLongDurationValue = 9999;

class EnsSnackbar extends SnackBar {
  @required
  final BuildContext context;

  final double extraVerticalPadding;

  EnsSnackbar._internal({
    super.key,
    required this.context,
    required String text,
    required EnsSnackbarContentType contentType,
    this.extraVerticalPadding = 0.0,
    super.duration,
  }) : super(
          content: EnsSnackBarContent(
            text: text,
            contentType: contentType,
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          padding: EdgeInsets.symmetric(horizontal: 0, vertical: extraVerticalPadding),
          behavior: SnackBarBehavior.floating,
          margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 0),
        );

  Widget build(BuildContext context) {
    return content;
  }

  factory EnsSnackbar.success({
    required BuildContext context,
    required String label,
    double extraVerticalPadding = 0.0,
    Key? key,
    bool veryLongDuration = false,
  }) {
    return veryLongDuration
        ? EnsSnackbar._internal(
            context: context,
            text: label,
            extraVerticalPadding: extraVerticalPadding,
            key: key,
            contentType: EnsSnackbarContentType.SUCCESS,
            duration: const Duration(days: VeryLongDurationValue),
          )
        : EnsSnackbar._internal(
            context: context,
            text: label,
            extraVerticalPadding: extraVerticalPadding,
            key: key,
            contentType: EnsSnackbarContentType.SUCCESS,
          );
  }

  factory EnsSnackbar.error({
    required BuildContext context,
    required String label,
    double extraVerticalPadding = 0.0,
    Key? key,
    bool veryLongDuration = false,
  }) {
    return veryLongDuration
        ? EnsSnackbar._internal(
            context: context,
            text: label,
            extraVerticalPadding: extraVerticalPadding,
            key: key,
            contentType: EnsSnackbarContentType.ERROR,
            duration: const Duration(days: VeryLongDurationValue),
          )
        : EnsSnackbar._internal(
            context: context,
            text: label,
            extraVerticalPadding: extraVerticalPadding,
            key: key,
            contentType: EnsSnackbarContentType.ERROR,
          );
  }

  factory EnsSnackbar.info({
    required BuildContext context,
    required String label,
    double extraVerticalPadding = 0.0,
    Key? key,
    bool veryLongDuration = false,
  }) {
    return veryLongDuration
        ? EnsSnackbar._internal(
            context: context,
            text: label,
            extraVerticalPadding: extraVerticalPadding,
            key: key,
            contentType: EnsSnackbarContentType.INFO,
            duration: const Duration(days: VeryLongDurationValue),
          )
        : EnsSnackbar._internal(
            context: context,
            text: label,
            extraVerticalPadding: extraVerticalPadding,
            key: key,
            contentType: EnsSnackbarContentType.INFO,
          );
  }

  factory EnsSnackbar.loading({
    required BuildContext context,
    required String label,
    double extraVerticalPadding = 0.0,
    Key? key,
  }) {
    return EnsSnackbar._internal(
      context: context,
      text: label,
      extraVerticalPadding: extraVerticalPadding,
      key: key,
      contentType: EnsSnackbarContentType.LOADING,
      duration: EnsAuthenticatedClient.HTTP_TIMEOUT,
    );
  }
}
