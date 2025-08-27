/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/analytics/domain/ens_analytics.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/infra/injection/ens_module_container.dart';
import 'package:fr_cnamts_ens/profil_medical/maladies/screen/edit_maladie_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/domain/models/ens_mesure_metadata.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/domain/models/ens_mesure_type.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/screens/widgets/ens_input_date_mesure.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/screens/widgets/ens_input_metric_mesure.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/screens/widgets/ens_input_time_mesure.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/screens/widgets/ens_mesure_form_bottom_sheet_view_model.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/screens/widgets/ens_mesure_slider.dart';
import 'package:fr_cnamts_ens/tags/pml/tags_incitation.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/champs_obligatoires_widget.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_form.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_persistent_info_box.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_snackbar_content.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/counted_text_input.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/validators.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';
import 'package:fr_cnamts_ens/ui/widgets/shake_widget.dart';
import 'package:fr_cnamts_ens/ui/widgets/skeletons.dart';
import 'package:fr_cnamts_ens/utils/error_helper.dart';
import 'package:fr_cnamts_ens/utils/extensions/form_extensions.dart';

class EnsMesureForm extends StatefulWidget {
  final EnsMesureFormBottomSheetViewModel vm;
  final bool fromIncitation;

  const EnsMesureForm({
    super.key,
    required this.vm,
    required this.fromIncitation,
  });

  @override
  _EnsMesureFormState createState() => _EnsMesureFormState();
}

class _EnsMesureFormState extends State<EnsMesureForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  late ValueNotifier<DateTime> _dateController;
  late ValueNotifier<TimeOfDay> _timeController;
  late Map<EnsMesureType, TextEditingController> _metricControllers;
  late Map<String, _CommentInputControllers> _commentControllers;
  final _shakeKey = GlobalKey<ShakeWidgetState>();
  final _mesureFocus = FocusNode();
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    final mesureToEdit = widget.vm.mesureToEdit;
    if (mesureToEdit == null) {
      _dateController = ValueNotifier<DateTime>(DateTime.now());
      _timeController = ValueNotifier<TimeOfDay>(TimeOfDay.now());
      _metricControllers = {};
      _commentControllers = {};
    } else {
      _dateController = ValueNotifier<DateTime>(mesureToEdit.effectiveDate.toLocal());
      _timeController = ValueNotifier<TimeOfDay>(
        TimeOfDay(
          hour: mesureToEdit.effectiveDate.toLocal().hour,
          minute: mesureToEdit.effectiveDate.toLocal().minute,
        ),
      );
      _metricControllers = {
        for (final metric in mesureToEdit.metrics) metric.type: TextEditingController(text: metric.formattedValue),
      };
      _commentControllers = {
        for (final comment in mesureToEdit.comments)
          comment.type: _CommentInputControllers(
            valueController: TextEditingController(text: comment.optionCode ?? comment.value),
            extraValueController: TextEditingController(text: comment.extraValue),
          ),
      };
    }
  }

  @override
  void dispose() {
    _dateController.dispose();
    _timeController.dispose();
    _metricControllers.forEach((_, value) {
      value.dispose();
    });
    _commentControllers.forEach((_, controllers) {
      controllers.valueController.dispose();
      controllers.extraValueController?.dispose();
    });
    _mesureFocus.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final vm = widget.vm;
    return EnsForm(
      shakeKey: _shakeKey,
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
                          onPressed: () {
                            _tagAjoutValeurClick(vm, widget.fromIncitation);
                            _validateAndSend(vm);
                          },
                          child: vm.isSendingData
                              ? const SizedBox(
                                  width: 20,
                                  height: 20,
                                  child: CircularProgressIndicator(
                                    color: EnsColors.primary,
                                  ),
                                )
                              : Text(vm.editMode ? 'Valider' : 'Ajouter', style: EnsTextStyle.text16_w700_primary),
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
            _SuccessForm(
              vm,
              _dateController,
              _timeController,
              _commentControllers,
              _metricControllers,
              _mesureFocus,
              _scrollController,
            )
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

  void _validateAndSend(EnsMesureFormBottomSheetViewModel vm) {
    final Map<EnsMesureType, String> metricValueByType = {
      for (final metric in vm.mesureMetadataMetrics) metric.type: _metricControllers[metric.type]!.text,
    };
    final Map<String, CommentInput> commentValueByType = {};
    _commentControllers.forEach((type, controller) {
      commentValueByType[type] =
          CommentInput(value: controller.valueController.text, extraValue: controller.extraValueController?.text);
    });

    final validation = _formKey.validate();
    validation.onValid(() {
      vm.sendMesure(
        _dateController.value,
        _timeController.value,
        metricValueByType,
        commentValueByType,
      );
    }).onInvalid(() {
      _shakeKey.currentState?.shake();
      if (_scrollController.hasClients) {
        AccessibilityHelper.scrollToTopOrFocus(scrollController: _scrollController, focusNode: _mesureFocus);
      }
    });
  }

  void _tagAjoutValeurClick(EnsMesureFormBottomSheetViewModel vm, bool fromIncitation) {
    final String level3 = vm.mesureType.tagHistoriqueLevel3;
    if (fromIncitation) {
      if (vm.mesureType == EnsMesureType.POIDS) {
        context.tagAction(TagsIncitation.tag_914_button_ajouter_une_valeur);
      } else if (vm.mesureType == EnsMesureType.TAILLE) {
        context.tagAction(TagsIncitation.tag_915_button_ajouter_une_valeur);
      }
    }
    if (level3 != '') {
      vm.tagAction(
        EnsTag(
          name: 'button_ajouter_une_valeur',
          category: EnsAnalyticsCategory.CLICK,
          level1: 'profil_medical',
          level2: 'mesures',
          level3: level3,
        ),
      );
    }
  }
}

class _CommentInputControllers {
  final TextEditingController valueController;
  final TextEditingController? extraValueController;

  _CommentInputControllers({required this.valueController, this.extraValueController});
}

class _InfoMessage extends StatelessWidget {
  final EnsMesureFormBottomSheetViewModel vm;

  const _InfoMessage(this.vm);

  @override
  Widget build(BuildContext context) {
    final String? infoText = vm.mesureMetadataMetrics.firstWhereOrNull((metric) => metric.infoText != null)?.infoText;
    return infoText != null
        ? Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
            child: EnsPersistentInfoBox.text(infoText),
          )
        : const SizedBox();
  }
}

class _SuccessForm extends StatelessWidget {
  final EnsMesureFormBottomSheetViewModel vm;
  final ValueNotifier<DateTime> dateController;
  final ValueNotifier<TimeOfDay> timeController;
  final Map<String, _CommentInputControllers> _commentControllers;
  final Map<EnsMesureType, TextEditingController> metricControllers;
  final FocusNode mesureFocus;
  final ScrollController scrollController;

  const _SuccessForm(
    this.vm,
    this.dateController,
    this.timeController,
    this._commentControllers,
    this.metricControllers,
    this.mesureFocus,
    this.scrollController,
  );

  @override
  Widget build(BuildContext context) {
    final isGuestMode = EnsModuleContainer.currentInjector.isGuestMode();
    return Flexible(
      fit: FlexFit.loose,
      child: ListViewWithScrollbar.basic(
        controller: scrollController,
        shrinkWrap: true,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Text(vm.title, style: EnsTextStyle.text24_w400_normal_title, textAlign: TextAlign.center),
          ),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: ChampsObligatoiresFormTextWidget(displayFullText: true, focusNode: mesureFocus),
          ),
          const SizedBox(height: 8),
          if (vm.errorText != null) ...[
            Padding(
              padding: const EdgeInsets.only(top: 16, right: 16, left: 16),
              child: EnsSnackBarContent(
                contentType: isGuestMode ? EnsSnackbarContentType.INFO : EnsSnackbarContentType.ERROR,
                text: isGuestMode ? GUEST_MODE_ERROR_MESSAGE : vm.errorText!,
                showCloseButton: false,
              ),
            ),
          ],
          _InfoMessage(vm),
          const SizedBox(height: 24),
          const Divider(height: 2, color: EnsColors.neutral200),
          EnsInputDateMesure(
            enabled: !vm.isSendingData,
            context: context,
            controller: dateController,
            firstDate: vm.minDate,
            lastDate: DateTime.now(),
            startWithKeyboardInput: false,
          ),
          const Divider(height: 2, color: EnsColors.neutral200),
          EnsInputTimeMesure(
            enabled: !vm.isSendingData,
            controller: timeController,
            context: context,
          ),
          const Divider(height: 2, color: EnsColors.neutral200),
          ...vm.displayModels
              .map(
                (displayModel) => _ListItem(
                  displayModel: displayModel,
                  metricControllers: metricControllers,
                  commentControllers: _commentControllers,
                ),
              )
              .expand((element) => [element, const Divider(height: 2, color: EnsColors.neutral200)])
              .toList()
            ..removeLast(),
          SizedBox(height: MediaQuery.of(context).viewInsets.bottom),
        ],
      ),
    );
  }
}

class _ListItem extends StatelessWidget {
  final InputDisplayModel displayModel;

  final Map<EnsMesureType, TextEditingController> metricControllers;

  final Map<String, _CommentInputControllers> commentControllers;

  const _ListItem({
    required this.displayModel,
    required this.metricControllers,
    required this.commentControllers,
  });

  @override
  Widget build(BuildContext context) {
    switch (displayModel) {
      case SliderInputDisplayModel _:
        final sliderDisplayModel = displayModel as SliderInputDisplayModel;
        return _SliderInput(
          metricControllers: metricControllers,
          metric: sliderDisplayModel.dataMetric,
          enabled: sliderDisplayModel.enabled,
        );
      case MetricInputDisplayModel _:
        final metricDisplayModel = displayModel as MetricInputDisplayModel;
        return _MetricInput(
          metricControllers: metricControllers,
          metric: metricDisplayModel.dataMetric,
          enabled: metricDisplayModel.enabled,
        );
      case CommentInputDisplayModel _:
        final commentDisplayModel = displayModel as CommentInputDisplayModel;
        return _CommentInputWidget(
          commentControllers: commentControllers,
          comment: commentDisplayModel.comment,
          enabled: commentDisplayModel.enabled,
        );
      case DropDownInputDisplayModel _:
        final dropDownDisplayModel = displayModel as DropDownInputDisplayModel;
        return _DropdownInput(
          commentControllers: commentControllers,
          comment: dropDownDisplayModel.comment,
          enabled: dropDownDisplayModel.enabled,
        );
      default:
        return const SizedBox();
    }
  }
}

class _SliderInput extends StatelessWidget {
  const _SliderInput({
    required this.metricControllers,
    required this.metric,
    required this.enabled,
  });

  final Map<EnsMesureType, TextEditingController> metricControllers;
  final EnsMesureMetadataMetric metric;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    var controller = metricControllers[metric.type];
    if (controller == null) {
      controller = TextEditingController(text: '5');
      metricControllers[metric.type] = controller;
    }
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('${metric.label} (${metric.unit})', style: EnsTextStyle.text16_w600_body),
          const SizedBox(height: 20),
          EnsMesureSlider(division: 10, controller: controller, enabled: enabled),
        ],
      ),
    );
  }
}

class _CommentInputWidget extends StatelessWidget {
  const _CommentInputWidget({
    required Map<String, _CommentInputControllers> commentControllers,
    required this.comment,
    required this.enabled,
  }) : _commentControllers = commentControllers;

  final Map<String, _CommentInputControllers> _commentControllers;
  final EnsMesureMetadataComment comment;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    var controller = _commentControllers[comment.type];
    if (controller == null) {
      controller = _CommentInputControllers(valueController: TextEditingController());
      _commentControllers[comment.type] = controller;
    }
    return Padding(
      padding: const EdgeInsets.all(24),
      child: CountedTextInput.withoutBorders(
        enabled: enabled,
        label: comment.label,
        hint: comment.placeholder,
        deniedRegExp: '[@<>\\?:/€\\*#\\|%~\\+£\\\$!§¤]',
        controller: controller.valueController,
        labelStyle: EnsTextStyle.text16_w600_body,
        hintStyle: EnsTextStyle.text16_w600_body.copyWith(color: Colors.grey),
        maxLines: 4,
        maxCharacters: 150,
        counterPosition: CounterPosition.TOP,
        validatorCallback: (value) => limitCharactersFieldValidator(
          value: value,
          maxCharacters: 150,
          errorMessage: 'le commentaire est limité à 150 caractères',
        ),
      ),
    );
  }
}

class _MetricInput extends StatelessWidget {
  const _MetricInput({
    required this.metricControllers,
    required this.metric,
    required this.enabled,
  });

  final Map<EnsMesureType, TextEditingController> metricControllers;
  final EnsMesureMetadataMetric metric;
  final bool enabled;

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

class _DropdownInput extends StatefulWidget {
  const _DropdownInput({
    required Map<String, _CommentInputControllers> commentControllers,
    required this.comment,
    required this.enabled,
  }) : _commentControllers = commentControllers;

  final Map<String, _CommentInputControllers> _commentControllers;
  final EnsMesureMetadataComment comment;
  final bool enabled;

  @override
  State<_DropdownInput> createState() => _DropdownInputState();
}

class _DropdownInputState extends State<_DropdownInput> {
  @override
  Widget build(BuildContext context) {
    final bool isMandatoryCommentField = !widget.comment.label.contains('facultatif');
    var controller = widget._commentControllers[widget.comment.type];
    if (controller == null) {
      controller = _CommentInputControllers(
        valueController: TextEditingController(),
        extraValueController: TextEditingController(),
      );
      widget._commentControllers[widget.comment.type] = controller;
    }

    final List<DropdownMenuItem<String>> items = [
      DropdownMenuItem(
        value: '',
        alignment: AlignmentDirectional.centerStart,
        child: Text(widget.comment.placeholder, style: EnsTextStyle.text16_w600_body.copyWith(color: Colors.grey)),
      ),
    ];

    items.addAll(
      widget.comment.options!.entries.map(
        (element) => DropdownMenuItem(
          value: element.key,
          child: Text(
            element.value.label,
            style: EnsTextStyle.text16_w600_title,
          ),
        ),
      ),
    );
    final extraValueMetadata = widget.comment.options?[controller.valueController.text]?.extraValueMetadata;

    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 16, 24, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(widget.comment.label, style: EnsTextStyle.text16_w600_body),
          Material(
            color: EnsColors.light,
            child: DropdownButtonFormField<String>(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: isMandatoryCommentField
                  ? (value) => requiredFieldValidator(value, errorText: 'Le champ est obligatoire.')
                  : null,
              decoration: const InputDecoration(
                border: InputBorder.none,
                errorStyle: EnsTextStyle.text14_w600_normal_error,
              ),
              value: controller.valueController.text,
              icon: const Icon(Icons.keyboard_arrow_down_rounded),
              items: items,
              onChanged: widget.enabled
                  ? (value) => setState(() {
                        controller!.valueController.text = value ?? '';
                      })
                  : null,
            ),
          ),
          if (extraValueMetadata != null)
            CountedTextInput.withoutBorders(
              enabled: widget.enabled,
              label: extraValueMetadata.fieldLabel,
              controller: controller.extraValueController!,
              labelStyle: EnsTextStyle.text16_w600_body,
              hintStyle: EnsTextStyle.text16_w600_body.copyWith(color: Colors.grey),
              maxCharacters: extraValueMetadata.maxLength,
              blockOnMaxCharacters: true,
              keyboardType: TextInputType.number,
              validatorCallback: (String? value) {
                return mesureMetricInputValidator(value, extraValueMetadata.constraints);
              },
            ),
        ],
      ),
    );
  }
}
