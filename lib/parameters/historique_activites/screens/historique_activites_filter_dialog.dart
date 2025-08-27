/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/parameters/historique_activites/redux/historique_activites_redux.dart';
import 'package:fr_cnamts_ens/parameters/historique_activites/screens/viewModels/historique_activites_filter_dialog_view_model.dart';
import 'package:fr_cnamts_ens/parameters/historique_activites/screens/widget/historique_activites_tab_button.dart';
import 'package:fr_cnamts_ens/tags/parameters/tags_historique_activites.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_floating_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_form.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_ink_well.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/ens_input_date.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/ens_input_date_validator.dart';
import 'package:fr_cnamts_ens/ui/widgets/shake_widget.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:fr_cnamts_ens/utils/extensions/form_extensions.dart';
import 'package:fr_cnamts_ens/utils/text_scale_utils.dart';

class HistoriqueActivitesFilterDialog extends StatelessWidget {
  final HistoriqueActivitesTab selectedTab;

  const HistoriqueActivitesFilterDialog({required this.selectedTab});

  @override
  Widget build(BuildContext context) {
    return StoreConnector<EnsState, HistoriqueActivitesFilterDialogViewModel>(
      converter: (store) => HistoriqueActivitesFilterDialogViewModel.from(store, selectedTab: selectedTab),
      distinct: true,
      builder: (_, vm) {
        return _Form(vm: vm, selectedTab: selectedTab);
      },
    );
  }
}

class _Form extends StatefulWidget {
  final _formKey = GlobalKey<FormState>();
  final _shakeKey = GlobalKey<ShakeWidgetState>();
  final HistoriqueActivitesFilterDialogViewModel vm;
  final HistoriqueActivitesTab selectedTab;

  _Form({required this.vm, required this.selectedTab});

  @override
  State<_Form> createState() => _FormState();
}

class _FormState extends State<_Form> {
  final ScrollController _scrollController = ScrollController();
  late ValueNotifier<DateTime?> _startDateController;
  late ValueNotifier<DateTime?> _endDateController;

  @override
  void initState() {
    super.initState();
    _startDateController = ValueNotifier<DateTime?>(widget.vm.startDate);
    _startDateController.addListener(() {
      if (_endDateController.value != null) {
        widget._formKey.currentState?.validate();
      }
    });
    _endDateController = ValueNotifier<DateTime?>(widget.vm.endDate);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _startDateController.dispose();
    _endDateController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final textScale = TextScaleUtils.getTextScaleFactor(context);
    return Scaffold(
      appBar: EnsAppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 8),
          child: IconButton(
            icon: const EnsSvg(EnsImages.ic_close_big, color: EnsColors.title, width: 14, height: 14),
            tooltip: 'Fermer la fenêtre',
            splashRadius: 24,
            onPressed: () => Navigator.pop(context),
          ),
        ),
        title: 'Filtrer',
        titlePadding: EdgeInsets.only(left: textScale < 1.9 ? 56 : 0),
        action: EnsInkWell(
          onTap: () {
            context.tagAction(TagsHistoriqueActivites.tag_793_button_reinitialiser_filtrer_par);
            setState(() {
              _startDateController.value = null;
              _endDateController.value = null;
            });
            widget._formKey.currentState?.validate();
          },
          child: const Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Réinitialiser',
                style: EnsTextStyle.text14_w700_normal_primary,
                semanticsLabel: 'Réinitialiser les filtres',
              ),
            ),
          ),
        ),
      ),
      body: EnsForm(
        formKey: widget._formKey,
        shakeKey: widget._shakeKey,
        scrollController: _scrollController,
        padding: EdgeInsets.zero,
        child: Column(
          children: [
            const SizedBox(height: 32),
            _TimeForm(
              startDateController: _startDateController,
              endDateController: _endDateController,
            ),
            const SizedBox(height: 128),
          ],
        ),
      ),
      floatingActionButton: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: EnsFloatingButton(
            buttonLabel: 'Filtrer',
            onTap: () => _validateAndSend(context),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  void _validateAndSend(BuildContext context) {
    final validation = widget._formKey.validate();
    validation.onValid(() {
      context.tagAction(TagsHistoriqueActivites.tag_792_button_appliquer_filtrer_par);

      DateRangeFilter? dateFilter;
      if (_startDateController.value != null && _endDateController.value != null) {
        final startDate = _startDateController.value!;
        final endDate = _endDateController.value!;
        dateFilter = DateRangeFilter(
          DateTime(startDate.year, startDate.month, startDate.day, 0, 0, 0),
          DateTime(endDate.year, endDate.month, endDate.day, 23, 59, 59),
        );
      }
      widget.vm.updateFilters(dateFilter);
      widget.vm.reloadTraces();
      Navigator.pop(context);
    }).onInvalid(() {
      widget._shakeKey.currentState?.shake();
    });
  }
}

class _TimeForm extends StatelessWidget {
  final ValueNotifier<DateTime?> startDateController;
  final ValueNotifier<DateTime?> endDateController;

  const _TimeForm({required this.startDateController, required this.endDateController});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 24, bottom: 12),
          child: Text('Période', style: EnsTextStyle.text20_w400_normal_title),
        ),
        Material(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
            child: Column(
              children: [
                EnsInputDate(
                  enabled: true,
                  label: 'Date de début',
                  controller: startDateController,
                  context: context,
                  validator: (value) {
                    return EnsInputDateValidator().validateStartDateRange(
                      startDateController.value,
                      endDateController.value,
                    );
                  },
                  onTap: () {
                    context.tagAction(TagsHistoriqueActivites.tag_790_datepicker_appliquer_filtrer_date_debut);
                  },
                  lastDate: DateTime.now(),
                ),
                const SizedBox(height: 24),
                EnsInputDate(
                  enabled: true,
                  label: 'Date de fin',
                  controller: endDateController,
                  context: context,
                  validator: (value) => EnsInputDateValidator().validateEndDateRange(
                    startDateController.value,
                    endDateController.value,
                  ),
                  onTap: () {
                    context.tagAction(TagsHistoriqueActivites.tag_791_datepicker_appliquer_filtrer_date_fin);
                  },
                  lastDate: _getLastDate(),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  DateTime _getLastDate() {
    final now = DateTime.now();
    return DateTime(now.year, now.month, now.day, 23, 59, 59);
  }
}
