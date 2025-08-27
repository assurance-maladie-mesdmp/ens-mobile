/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/domain/models/mon_histoire_de_sante_episode.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/screens/widgets/mon_histoire_de_sante_icon.dart';
import 'package:fr_cnamts_ens/profil_medical/vaccinations/domain/models/ens_vaccination.dart';
import 'package:fr_cnamts_ens/profil_medical/vaccinations/redux/vaccinations_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/vaccinations/screens/edit_vaccination_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/vaccinations/screens/viewModels/vaccination_detail_screen_view_model.dart';
import 'package:fr_cnamts_ens/tags/pml/tags_vaccinations.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/error_page.dart';
import 'package:fr_cnamts_ens/ui/widgets/action_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/confirmation_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/confirmation_bottom_sheet_default_text_content.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/dynamic_action_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_divider.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';
import 'package:fr_cnamts_ens/ui/widgets/skeletons.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:fr_cnamts_ens/utils/ens_date_utils.dart';
import 'package:fr_cnamts_ens/utils/extensions/string_extensions.dart';
import 'package:fr_cnamts_ens/utils/screen_status.dart';

class VaccinationDetailScreen extends StatelessWidget {
  static const routeName = '/medical/profil/vaccination/detail';

  @override
  Widget build(BuildContext context) {
    final vaccinationId = ModalRoute.of(context)!.settings.arguments! as String;

    return StoreConnector<EnsState, VaccinationDetailScreenViewModel>(
      converter: (store) => VaccinationDetailScreenViewModel(store, vaccinationId),
      distinct: true,
      onInit: (store) {
        store.dispatch(const FetchVaccinationsAction());
      },
      onInitialBuild: (vm) {
        context.tagAction(TagsVaccinations.tag_470_vaccination_detail);
      },
      builder: (_, vm) => Scaffold(
        appBar: EnsAppBarSubLevel(
          title: 'Détail',
          action: vm.vaccination != null && vm.vaccination!.authoredByPatient
              ? ActionButton(
                  icon: const Icon(Icons.more_vert),
                  tooltip: 'options',
                  onTap: () {
                    context.tagAction(
                      TagsVaccinations.tag_279_button_vaccination_detail_action,
                    );
                    _showSelectActionBottomSheet(context, vm);
                  },
                )
              : null,
        ),
        body: _Body(vm),
      ),
    );
  }

  bool _showSelectActionBottomSheet(
    BuildContext context,
    VaccinationDetailScreenViewModel vm,
  ) {
    final List<BottomSheetAction> actions = [];
    if (vm.vaccination?.refId != null) {
      actions.add(
        BottomSheetAction(
          assetName: EnsImages.ic_edit,
          label: 'Modifier',
          execution: () {
            context.tagAction(
              TagsVaccinations.tag_270_button_modifier_vaccination,
            );
            _updateVaccination(context, vm.vaccination!);
          },
        ),
      );
    }

    actions.add(
      BottomSheetAction(
        assetName: EnsImages.ic_trash,
        label: 'Supprimer',
        execution: () {
          context.tagAction(TagsVaccinations.tag_271_button_supprimer_vaccination);
          _showDeleteConfirmationBottomSheet(context, vm);
        },
      ),
    );

    DynamicActionBottomSheet.showOptionsBottomSheet(actions, context);
    return true;
  }

  void _updateVaccination(BuildContext context, EnsVaccination vaccination) {
    Navigator.pushNamed(
      context,
      EditVaccinationScreen.routeName,
      arguments: EditVaccinationScreenArguments(vaccinationEdit: vaccination),
    );
  }

  void _showDeleteConfirmationBottomSheet(
    BuildContext context,
    VaccinationDetailScreenViewModel vm,
  ) {
    context.tagAction(TagsVaccinations.tag_287_popin_supprimer_vaccination);
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) {
        return ConfirmationBottomSheet(
          title: 'Supprimer cette vaccination ?',
          content: const ConfirmationBottomSheetDefaultTextContent(
            'Cette vaccination sera supprimée définitivement.',
          ),
          positiveButtonLabel: 'Supprimer',
          positiveButtonHandler: () {
            Navigator.pop(context);
            context.tagAction(
              TagsVaccinations.tag_288_button_supprimer_vaccination_supprimer,
            );
            vm.deleteVaccination();
          },
          negativeButtonHandler: () {
            context.tagAction(TagsVaccinations.tag_289_button_supprimer_vaccination_annuler);
          },
        );
      },
    );
  }
}

class _Body extends StatelessWidget {
  final VaccinationDetailScreenViewModel vm;

  const _Body(this.vm);

  @override
  Widget build(BuildContext context) {
    switch (vm.status) {
      case ScreenStatus.LOADING:
        return const _Loading();
      case ScreenStatus.ERROR:
        return ErrorPage(reloadFunction: vm.reloadVaccinations);
      case ScreenStatus.SUCCESS:
        return _Success(vm.vaccination!);
    }
  }
}

class _Success extends StatelessWidget {
  final EnsVaccination vaccinationToDisplay;

  const _Success(this.vaccinationToDisplay);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ScrollviewWithScrollbar(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 24,
                right: 24,
                top: 32,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const MonHistoireDeSanteIcon(category: EpisodeSanteCategorie.VACCINATION, size: 56),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text(
                              vaccinationToDisplay.refId != null
                                  ? vaccinationToDisplay.pathologies
                                  : 'Vaccination non renseignée',
                              style: EnsTextStyle.text24_w400_normal_title,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  if (!vaccinationToDisplay.authoredByPatient) ...[
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Transform.translate(
                          offset: const Offset(0, -1),
                          child: const EnsSvg(EnsImages.ic_shield),
                        ),
                        const SizedBox(width: 4),
                        Expanded(
                          child: Text(
                            'Vaccination ajoutée ou confirmée par ${vaccinationToDisplay.author}. Elle ne peut pas être modifiée ou supprimée',
                            style: EnsTextStyle.text14_w600_normal_body,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                  ],
                ],
              ),
            ),
            const EnsDivider(paddingTop: 16),
            _VaccinationWithDetailsCard(vaccinationToDisplay),
            const EnsDivider(),
            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}

class _VaccinationWithDetailsCard extends StatelessWidget {
  final EnsVaccination vaccinationToDisplay;

  const _VaccinationWithDetailsCard(this.vaccinationToDisplay);

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: EnsColors.light,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 16),
            const Text(
              'Nom du vaccin',
              style: EnsTextStyle.text14_w600_normal_title,
            ),
            const SizedBox(height: 4),
            Text(
              vaccinationToDisplay.name,
              style: EnsTextStyle.text14_w400_normal_body,
            ),
            const EnsDivider(paddingTop: 16, paddingBottom: 16),
            const Text(
              'Date de vaccination',
              style: EnsTextStyle.text14_w600_normal_title,
            ),
            const SizedBox(height: 4),
            Text(
              EnsDateUtils.formatDayPlainTextMonthAndYear(
                vaccinationToDisplay.effectiveTime,
              ),
              style: EnsTextStyle.text14_w400_normal_body,
            ),
            const EnsDivider(paddingTop: 16, paddingBottom: 16),
            const Text(
              'Niveau de recommandation',
              style: EnsTextStyle.text14_w600_normal_title,
            ),
            const SizedBox(height: 4),
            Text(
              vaccinationToDisplay.recommandation.label,
              style: EnsTextStyle.text14_w400_normal_body,
            ),
            if (vaccinationToDisplay.lotNumber != null)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const EnsDivider(paddingTop: 16, paddingBottom: 16),
                  const Text(
                    'Lot du vaccin',
                    style: EnsTextStyle.text14_w600_normal_title,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    vaccinationToDisplay.lotNumber!,
                    style: EnsTextStyle.text14_w400_normal_body,
                  ),
                ],
              ),
            const EnsDivider(paddingTop: 16, paddingBottom: 16),
            const Text('Type de vaccination', style: EnsTextStyle.text14_w600_normal_title),
            const SizedBox(height: 4),
            Text(
              vaccinationToDisplay.typeOfAdministration.label,
              style: EnsTextStyle.text14_w400_normal_body,
            ),
            if (vaccinationToDisplay.nomVaccinateur != null)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const EnsDivider(paddingTop: 16, paddingBottom: 16),
                  const Text('Nom du vaccinateur', style: EnsTextStyle.text14_w600_normal_title),
                  const SizedBox(height: 4),
                  Text(
                    vaccinationToDisplay.nomVaccinateur!.isNotEmpty
                        ? vaccinationToDisplay.nomVaccinateur!.capitalizeName()
                        : 'Professionnel de santé non renseigné',
                    style: EnsTextStyle.text14_w400_normal_body,
                  ),
                ],
              ),
            if (vaccinationToDisplay.comment != null)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const EnsDivider(paddingTop: 16, paddingBottom: 16),
                  const Text('Commentaire', style: EnsTextStyle.text14_w600_normal_title),
                  const SizedBox(height: 4),
                  Text(
                    vaccinationToDisplay.comment!,
                    style: EnsTextStyle.text14_w400_normal_body,
                  ),
                ],
              ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}

class VaccinationConfirmation extends StatelessWidget {
  final String author;

  const VaccinationConfirmation({super.key, required this.author});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const EnsSvg(EnsImages.ic_circle_check, color: EnsColors.success),
        const SizedBox(width: 8),
        Expanded(
          child: Text(
            'Vaccination confirmée par $author',
            style: EnsTextStyle.text14_w600_normal_body,
          ),
        ),
      ],
    );
  }
}

class _Loading extends StatelessWidget {
  const _Loading();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, top: 32, bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SkeletonBox(width: 200, height: 28),
          const SizedBox(height: 24),
          SizedBox(
            height: 272,
            width: double.infinity,
            child: Card(
              elevation: 12,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
              child: const Padding(
                padding: EdgeInsets.fromLTRB(24, 20, 24, 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SkeletonBox(width: 100),
                    SizedBox(height: 8),
                    SkeletonBox(width: 140),
                    SizedBox(height: 28),
                    SkeletonBox(width: 100),
                    SizedBox(height: 8),
                    SkeletonBox(width: 140),
                    SizedBox(height: 28),
                    SkeletonBox(width: 100),
                    SizedBox(height: 8),
                    SkeletonBox(width: 140),
                    SizedBox(height: 28),
                    SkeletonBox(width: 100),
                    SizedBox(height: 8),
                    SkeletonBox(width: 140),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
