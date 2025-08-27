/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/domain/models/ens_mesure_metadata.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/domain/models/ens_mesure_type.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/screens/widgets/ens_input_metric_mesure.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/screens/widgets/ens_mesure_form_bottom_sheet_view_model.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/screens/widgets/ens_mesure_target_form_bottom_sheet_view_model.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_form.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_persistent_info_box.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/validators.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';
import 'package:fr_cnamts_ens/ui/widgets/skeletons.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:fr_cnamts_ens/utils/error_helper.dart';
import 'package:fr_cnamts_ens/utils/extensions/form_extensions.dart';

class EnsMesureTargetForm extends StatefulWidget {
  final EnsMesureTargetFormBottomSheetViewModel vm;

  const EnsMesureTargetForm({super.key, required this.vm});

  @override
  _EnsMesureTargetFormState createState() => _EnsMesureTargetFormState();
}

class _EnsMesureTargetFormState extends State<EnsMesureTargetForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  late Map<EnsMesureType, TextEditingController> _metricControllers;

  @override
  void initState() {
    final currentTarget = widget.vm.currentTarget;
    super.initState();
    _metricControllers = currentTarget != null
        ? {widget.vm.mesureType: TextEditingController(text: currentTarget.value.toString())}
        : {};
  }

  @override
  void dispose() {
    _metricControllers.forEach((_, textEditingController) => textEditingController.dispose());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final vm = widget.vm;
    return EnsForm(
      formKey: _formKey,
      padding: EdgeInsets.zero,
      scrollController: null,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.all(24),
            child: Row(
              children: [
                Expanded(
                  child: Wrap(
                    alignment: WrapAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: const Text('Annuler', style: EnsTextStyle.text16_w700_primary),
                      ),
                      if (vm.metadataStatus == MetadataStatus.SUCCESS)
                        TextButton(
                          onPressed: () => _validateAndSend(vm),
                          child: vm.isSendingData
                              ? const SizedBox(
                                  width: 20,
                                  height: 20,
                                  child: CircularProgressIndicator(
                                    color: EnsColors.primary,
                                  ),
                                )
                              : Text(
                                  vm.currentTarget != null ? 'Valider' : 'Ajouter',
                                  style: EnsTextStyle.text16_w700_primary,
                                ),
                        )
                      else
                        Container(),
                    ],
                  ),
                ),
              ],
            ),
          ),
          if (vm.metadataStatus == MetadataStatus.SUCCESS)
            _SuccessForm(metricControllers: _metricControllers, vm: vm)
          else if (vm.metadataStatus == MetadataStatus.ERROR)
            Padding(
              padding: const EdgeInsets.only(left: 24, right: 24, bottom: 48),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  EnsPersistentInfoBox.error(GENERIC_ERROR_MESSAGE),
                ],
              ),
            )
          else
            const MesureFormSkeleton(),
        ],
      ),
    );
  }

  void _validateAndSend(EnsMesureTargetFormBottomSheetViewModel vm) {
    final validation = _formKey.validate();
    validation.onValid(() {
      _metricControllers.forEach((mesureType, textEditingController) {
        if (vm.currentTarget == null) {
          vm.addTarget(mesureType, double.parse(textEditingController.text.replaceFirst(',', '.')));
        } else {
          vm.updateTarget(double.parse(textEditingController.text.replaceFirst(',', '.')));
        }
      });
    });
  }
}

class _SuccessForm extends StatelessWidget {
  final Map<EnsMesureType, TextEditingController> metricControllers;
  final EnsMesureTargetFormBottomSheetViewModel vm;

  const _SuccessForm({
    required this.metricControllers,
    required this.vm,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      fit: FlexFit.loose,
      child: ListViewWithScrollbar.basic(
        shrinkWrap: true,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              '${vm.currentTarget == null ? 'Ajouter un ' : 'Modifier l\''}objectif',
              style: EnsTextStyle.text24_w400_normal_title,
              textAlign: TextAlign.center,
            ),
          ),
          if (vm.errorText != null) _ErrorMessage(vm.errorText!),
          Padding(
            padding: const EdgeInsets.all(24),
            child: Text(vm.infoText, style: EnsTextStyle.text14_w400_normal_body, textAlign: TextAlign.center),
          ),
          const Divider(height: 2, color: EnsColors.neutral200),
          _MetricInputList(vm, metricControllers),
          SizedBox(height: MediaQuery.of(context).viewInsets.bottom + 16),
        ],
      ),
    );
  }
}

class _MetricInputList extends StatelessWidget {
  final EnsMesureTargetFormBottomSheetViewModel vm;
  final Map<EnsMesureType, TextEditingController> metricControllers;

  const _MetricInputList(this.vm, this.metricControllers);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...vm.mesureMetadataMetrics
            .map(
              (metric) => _MetricInput(
                metric: metric,
                enabled: !vm.isSendingData,
                metricControllers: metricControllers,
              ),
            )
            .expand((element) => [element, const Divider(height: 2, color: EnsColors.neutral200)])
            .toList()
          ..removeLast(),
      ],
    );
  }
}

class _MetricInput extends StatelessWidget {
  final EnsMesureMetadataMetric metric;
  final bool enabled;
  final Map<EnsMesureType, TextEditingController> metricControllers;

  const _MetricInput({required this.metric, required this.enabled, required this.metricControllers});

  @override
  Widget build(BuildContext context) {
    var controller = metricControllers[metric.type];
    if (controller == null) {
      controller = TextEditingController();
      metricControllers[metric.type] = controller;
    }
    final label = '${metric.label} ${metric.unit != '' ? '(${metric.unit})' : ''}';
    return EnsInputMetricMesure(
      enabled: enabled,
      label: label,
      hint: metric.placeholder,
      controller: controller,
      validator: (String? value) {
        if (metric.type == EnsMesureType.TENSION_ARTERIELLE_SYSTOLIQUE) {
          return mesureMetricInputValidator(value, metric.constraints) ??
              bloodPressureSpecificMetricInputValidator(
                systolicValue: value,
                diastolicValue: metricControllers[EnsMesureType.TENSION_ARTERIELLE_DIASTOLIQUE]?.text,
              );
        }
        return mesureMetricInputValidator(value, metric.constraints);
      },
      maxCharacters: metric.maxlength,
    );
  }
}

class _ErrorMessage extends StatelessWidget {
  final String errorText;

  const _ErrorMessage(this.errorText);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, right: 16, left: 16),
      child: Container(
        padding: const EdgeInsets.only(left: 16.0),
        height: 56,
        decoration: BoxDecoration(
          color: EnsColors.error100,
          border: Border.all(color: EnsColors.error),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const EnsSvg(EnsImages.ic_error, width: 16, height: 16),
            const SizedBox(width: 8),
            Expanded(
              flex: 8,
              child: Text(errorText, style: EnsTextStyle.text14_w600_normal_title),
            ),
          ],
        ),
      ),
    );
  }
}
