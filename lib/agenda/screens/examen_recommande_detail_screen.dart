/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/agenda/domain/models/examen_recommande.dart';
import 'package:fr_cnamts_ens/agenda/screens/agenda_screen.dart';
import 'package:fr_cnamts_ens/agenda/screens/viewModels/examen_recommande_detail_view_model.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/infra/injection/ens_module_container.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/vaccinations/screens/edit_vaccination_screen.dart';
import 'package:fr_cnamts_ens/snackbar/redux/snackbar_actions.dart';
import 'package:fr_cnamts_ens/tags/tags_agenda.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/error_page.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/ens_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button_secondary.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_divider.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_external_link.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_html.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_link_text.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/ens_drop_down.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/ens_input_date.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';
import 'package:fr_cnamts_ens/ui/widgets/skeletons.dart';

class ExamenRecommandeDetailScreenArguments {
  final String id;
  final DateTime? dateDebut;
  final String? patientId;

  ExamenRecommandeDetailScreenArguments(this.id, this.dateDebut, [this.patientId]);

  bool _isExamenVaccination() => id.contains('VAC_');

  bool _isExamenBilanAgeCles() => id.contains('BILAN_AQ_');
}

class ExamenRecommandeDetailScreen extends StatelessWidget {
  static const routeName = '/agenda/examens/detail';

  const ExamenRecommandeDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments! as ExamenRecommandeDetailScreenArguments;
    return Scaffold(
      appBar: const EnsAppBarSubLevel(title: 'Détail'),
      body: StoreConnector<EnsState, ExamenRecommandeDetailViewModel>(
        onInitialBuild: (vm) {
          if (arguments._isExamenBilanAgeCles()) {
            context.tagAction(TagsAgenda.tag_2446_detail_bilan_prevention);
          } else if (arguments._isExamenVaccination()) {
            context.tagAction(TagsAgenda.tag_2445_detail_vaccination);
          } else {
            context.tagAction(TagsAgenda.tag_1042_detail_examen_medical);
          }
          if (arguments.patientId != null) {
            vm.loadNotificationsForProfil(arguments.patientId);
          }
        },
        converter: (store) => ExamenRecommandeDetailViewModel.fromStore(store, arguments.id, arguments.dateDebut!),
        distinct: true,
        builder: (context, vm) {
          return _Content(vm, arguments.patientId);
        },
      ),
    );
  }
}

class _Content extends StatelessWidget {
  final ExamenRecommandeDetailViewModel vm;
  final String? patientId;

  _Content(this.vm, this.patientId);

  final ValueNotifier<ExamenStatus?> statusController = ValueNotifier<ExamenStatus?>(null);

  @override
  Widget build(BuildContext context) {
    if (vm.screenStatus.isLoading()) {
      return _Loading();
    } else if (vm.screenStatus.isError()) {
      return ErrorPage(reloadFunction: () => vm.loadNotificationsForProfil(patientId));
    } else {
      statusController.value = vm.examenStatus;
      return ScrollviewWithScrollbar(
        child: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(24, 24, 24, 10),
                child: Text(vm.title, style: EnsTextStyle.text24_w400_normal_title),
              ),
              if (vm.chipStatusLabel != null)
                Padding(
                  padding: const EdgeInsets.fromLTRB(24, 0, 24, 24),
                  child: ExamenStatusChip(vm.chipStatusLabel!, vm.examenStatus.color),
                ),
              const EnsDivider(),
              Container(
                padding: const EdgeInsets.only(left: 24, right: 24, top: 24),
                color: Colors.white,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    if (vm.dropdownStatus.isNotEmpty) ...[
                      _DropDown(vm: vm, statusController: statusController),
                      if (vm.examenStatus == ExamenStatus.REALISE) ...[
                        const SizedBox(height: 24),
                        const Text('Date de réalisation', style: EnsTextStyle.text14_w600_normal_title),
                        const SizedBox(height: 4),
                        Text(vm.formattedDateRealisation, style: EnsTextStyle.text14_w400_normal_body),
                        const SizedBox(height: 4),
                        EnsLinkText(
                          label: vm.dateRealisation != null ? 'Modifier la date' : 'Ajouter une date',
                          textPadding: EdgeInsets.zero,
                          onTap: () async {
                            context.tagAction(TagsAgenda.tag_2582_link_modifier_date_agenda_examen);
                            await showModalBottomSheet(
                              context: context,
                              isScrollControlled: true,
                              builder: (BuildContext context) {
                                return _DateRealisationBottomSheet(
                                  onValidate: (dateRealisation) {
                                    if (dateRealisation != null) vm.updateStatus(ExamenStatus.REALISE, dateRealisation);
                                  },
                                  dateRealisation: vm.dateRealisation,
                                );
                              },
                            );
                          },
                        ),
                      ],
                      const EnsDivider(paddingTop: 24, paddingBottom: 24),
                    ],
                    if (vm.type != null && !vm.isVaccination) _Item(text: 'Type d\'examen', subText: vm.type!),
                    if (vm.niveauRecommandation != null && vm.isVaccination)
                      _Item(text: 'Niveau de recommandation', subText: vm.niveauRecommandation!.label),
                    _Item(text: 'Période', subText: vm.dateDebut),
                    const Text('Description', style: EnsTextStyle.text14_w600_normal_title),
                    EnsHtml(
                      data: vm.body,
                      fontSize: 14,
                    ),
                    if (vm.link != null)
                      Align(
                        alignment: Alignment.centerLeft,
                        child: EnsExternalLink.withRedirection(
                          linkUrl: vm.link!.url,
                          linkText: vm.link!.label,
                          extraPadding: const EdgeInsets.symmetric(vertical: 10),
                        ),
                      ),
                    const SizedBox(height: 16),
                  ],
                ),
              ),
              const EnsDivider(),
            ],
          ),
        ),
      );
    }
  }
}

class _Item extends StatelessWidget {
  final String text;
  final String subText;

  const _Item({required this.text, required this.subText});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: EnsTextStyle.text14_w600_normal_title,
        ),
        const SizedBox(height: 8),
        Text(
          subText,
          style: EnsTextStyle.text14_w400_normal_body,
        ),
        const EnsDivider(paddingTop: 24, paddingBottom: 24),
      ],
    );
  }
}

class _DropDown extends StatefulWidget {
  const _DropDown({
    required this.vm,
    required this.statusController,
  });

  final ExamenRecommandeDetailViewModel vm;
  final ValueNotifier<ExamenStatus?> statusController;

  @override
  State<_DropDown> createState() => _DropDownState();
}

class _DropDownState extends State<_DropDown> {
  late ValueNotifier<ExamenStatus?> statusController;
  DateTime? selectedDateRealisation;

  @override
  void initState() {
    super.initState();
    setState(() {
      statusController = widget.statusController;
    });
  }

  @override
  Widget build(BuildContext context) {
    return EnsDropDown<ExamenStatus>(
      context: context,
      label: 'L\'examen a-t-il été réalisé ?',
      borderRadius: BorderRadius.circular(4),
      items: widget.vm.dropdownStatus,
      controller: statusController,
      onTap: () {
        context.tagAction(TagsAgenda.tag_2416_button_examen_medical_statut);
      },
      onChanged: () {
        if (EnsModuleContainer.currentInjector.isGuestMode()) {
          StoreProvider.of<EnsState>(context).dispatch(const DisplaySnackbarAction.unavailableInGuestMode());
        } else {
          if (statusController.value != widget.vm.examenStatus) {
            if (statusController.value == ExamenStatus.REALISE) {
              showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                builder: (BuildContext context) {
                  context.tagAction(TagsAgenda.tag_2578_popin_agenda_examen_date);
                  return _DateRealisationBottomSheet(
                    onValidate: (dateRealisation) {
                      setState(() {
                        selectedDateRealisation = dateRealisation;
                      });
                    },
                  );
                },
              ).whenComplete(() {
                widget.vm.updateStatus(ExamenStatus.REALISE, selectedDateRealisation);
                if (widget.vm.type == 'Vaccination') {
                  if (context.mounted) {
                    showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      builder: (BuildContext context) {
                        return EnsIllustrationBottomSheet(
                          title: 'Souhaitez-vous ajouter ce vaccin à votre carnet de vaccination ?',
                          subtitle:
                              'Je peux ajouter mon vaccin à mon carnet de vaccination afin d’avoir un historique complet de mes vaccinations déjà réalisées.',
                          positiveButtonLabel: 'Ajouter ce vaccin',
                          positiveButtonHandler: () {
                            context.tagAction(TagsAgenda.tag_2552_popin_detail_vaccination_ajout_vaccination);
                            widget.vm.hideSnackbar();
                            if (context.mounted) {
                              Navigator.pushNamed(
                                context,
                                EditVaccinationScreen.routeName,
                                arguments: EditVaccinationScreenArguments(
                                  dateDeRealisation: selectedDateRealisation ?? DateTime.now(),
                                ),
                              );
                            }
                          },
                          negativeButtonLabel: 'Revenir à l\'Agenda',
                        );
                      },
                    );
                  }
                }
                return;
              });
            } else {
              widget.vm.updateStatus(statusController.value!, null);
            }
          }
        }
      },
      itemFormater: (ExamenStatus? status) {
        switch (status) {
          case ExamenStatus.REALISE:
            return 'Oui';
          case ExamenStatus.NON_REALISE:
            return 'Non';
          default:
            return 'Non renseigné';
        }
      },
    );
  }
}

class _Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) => const Padding(
        padding: EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(alignment: Alignment.center, child: SkeletonBox(width: 220, height: 32, radius: 16)),
            SizedBox(height: 24),
            Row(
              children: [
                Expanded(child: SkeletonBox(width: 312, height: 56, radius: 72)),
              ],
            ),
            SizedBox(height: 24),
            SizedBox(height: 28),
            SkeletonBox(width: 220),
            SizedBox(height: 8),
            SkeletonBox(width: 260),
            SizedBox(height: 32),
            SkeletonBox(width: 280),
            SizedBox(height: 8),
            SkeletonBox(width: 280),
            SizedBox(height: 8),
            SkeletonBox(width: 260),
          ],
        ),
      );
}

class _DateRealisationBottomSheet extends StatefulWidget {
  final DateTime? dateRealisation;
  final void Function(DateTime?) onValidate;

  const _DateRealisationBottomSheet({
    required this.onValidate,
    this.dateRealisation,
  });

  @override
  State<StatefulWidget> createState() => _DateRealisationBottomSheetState();
}

class _DateRealisationBottomSheetState extends State<_DateRealisationBottomSheet> {
  final realisationDateController = ValueNotifier<DateTime?>(null);

  @override
  void initState() {
    realisationDateController.value = widget.dateRealisation;
    super.initState();
  }

  @override
  void dispose() {
    realisationDateController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return EnsBottomSheet(
      stretch: true,
      content: [
        const Text(
          'Date de réalisation de l’examen (facultatif)',
          style: EnsTextStyle.text24_w400_normal_title,
          textAlign: TextAlign.center,
        ),
        EnsInputDate(
          label: '',
          controller: realisationDateController,
          context: context,
          lastDate: DateTime.now(),
          onTap: () {
            context.tagAction(TagsAgenda.tag_2579_input_agenda_examen_date);
          },
        ),
        const SizedBox(height: 24),
        Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: EnsButtonSecondary(
                label: 'Ignorer',
                onTap: () {
                  context.tagAction(TagsAgenda.tag_2581_button_ignorer_agenda_examen_date);
                  widget.onValidate(null);
                  Navigator.pop(context);
                },
              ),
            ),
            Expanded(
              child: EnsButton(
                label: 'Valider',
                onTap: () {
                  context.tagAction(TagsAgenda.tag_2580_button_valider_agenda_examen_date);
                  widget.onValidate(realisationDateController.value);
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}
