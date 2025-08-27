/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/agenda/domain/models/rendez_vous.dart';
import 'package:fr_cnamts_ens/agenda/screens/agenda_screen.dart';
import 'package:fr_cnamts_ens/agenda/screens/edit_rendez_vous_screen.dart';
import 'package:fr_cnamts_ens/agenda/screens/viewModels/rendez_vous_details_screen_view_model.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/screens/etablissement_de_sante_detail_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/screens/professionnel_de_sante_detail_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/screens/viewmodels/called_es_or_ps_detail_screen_from.dart';
import 'package:fr_cnamts_ens/profils_rattaches/screens/profils_utils.dart';
import 'package:fr_cnamts_ens/tags/tags_agenda.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/error_page.dart';
import 'package:fr_cnamts_ens/ui/widgets/action_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/confirmation_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/confirmation_bottom_sheet_default_text_content.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/dynamic_action_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_empty_page.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_ink_well.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_link_text.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_persistent_info_box.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';
import 'package:fr_cnamts_ens/ui/widgets/skeletons.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:fr_cnamts_ens/utils/extensions/datetime_extension.dart';
import 'package:maps_launcher/maps_launcher.dart';

class RendezVousDetailScreenArguments {
  final String? rdvId;
  final String? patientId;
  final bool fromCdn;

  const RendezVousDetailScreenArguments({this.rdvId, this.patientId, this.fromCdn = false});
}

class RendezVousDetailsScreen extends StatelessWidget {
  static const routeName = '/agendaDetails';

  @override
  Widget build(BuildContext context) {
    final arg = ModalRoute.of(context)!.settings.arguments as RendezVousDetailScreenArguments?;
    final rdvId = arg?.rdvId;
    final patientId = arg?.patientId;

    context.tagAction(TagsAgenda.tag_607_detail_rdv);

    return StoreConnector<EnsState, RendezVousDetailsScreenViewModel>(
      converter: (store) => RendezVousDetailsScreenViewModel.from(store, rdvId!),
      distinct: true,
      onInitialBuild: (vm) {
        vm.fetchRendezVous(patientId, rdvId!);
      },
      builder: (context, vm) => Scaffold(
        appBar: EnsAppBarSubLevel(
          title: 'Détail',
          action: vm.rdv.isFromUser && vm.status.isSuccess
              ? ActionButton(
                  icon: const Icon(Icons.more_vert),
                  tooltip: 'options',
                  onTap: () {
                    context.tagAction(TagsAgenda.tag_608_button_actions_rdv);
                    _showOptionsBottomSheet(context, vm, vm.rdv);
                  },
                )
              : null,
        ),
        body: _Content(vm, vm.rdv, patientId),
      ),
    );
  }

  void _showOptionsBottomSheet(
    BuildContext context,
    RendezVousDetailsScreenViewModel vm,
    RendezVous rdv,
  ) {
    context.tagAction(TagsAgenda.tag_609_popin_actions_rdv);
    DynamicActionBottomSheet.showOptionsBottomSheet(
      _buildBottomSheetActions(context, vm, rdv),
      context,
    );
  }

  List<BottomSheetAction> _buildBottomSheetActions(
    BuildContext context,
    RendezVousDetailsScreenViewModel vm,
    RendezVous rdv,
  ) =>
      [
        BottomSheetAction(
          assetName: EnsImages.ic_edit,
          label: 'Modifier le rendez-vous',
          execution: () {
            context.tagAction(TagsAgenda.tag_610_button_modifier_rdv);
            Navigator.pushNamed(context, EditRendezVousScreen.routeName, arguments: rdv);
          },
        ),
        BottomSheetAction(
          assetName: EnsImages.ic_trash,
          label: 'Supprimer le rendez-vous',
          execution: () {
            context.tagAction(TagsAgenda.tag_popin_supprimer_rdv);
            _showDeleteConfirmationBottomSheet(context, vm);
          },
        ),
      ];

  void _showDeleteConfirmationBottomSheet(
    BuildContext context,
    RendezVousDetailsScreenViewModel vm,
  ) {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) {
        return ConfirmationBottomSheet(
          title: 'Supprimer ce rendez-vous ?',
          content: const ConfirmationBottomSheetDefaultTextContent('Ce rendez-vous sera supprimé définitivement.'),
          positiveButtonLabel: 'Supprimer',
          positiveButtonHandler: () {
            context.tagAction(TagsAgenda.tag_button_supprimer_rdv_valider);
            vm.deleteRendezVous(vm.rdv.id);
            Navigator.pop(context);
          },
          negativeButtonHandler: () {
            context.tagAction(TagsAgenda.tag_button_supprimer_rdv_annuler);
          },
        );
      },
    );
  }
}

class _Author extends StatelessWidget {
  final String author;

  const _Author(this.author);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          const EnsSvg(EnsImages.ic_calendar_event, color: EnsColors.body),
          const SizedBox(width: 8),
          Expanded(child: Text(author, style: EnsTextStyle.text14_w400_normal_body)),
        ],
      ),
    );
  }
}

class _Status extends StatelessWidget {
  final String? status;

  const _Status(this.status);

  @override
  Widget build(BuildContext context) {
    final svgToDisplay = (status == RendezVousStatus.BOOKED.label || status == RendezVousStatus.FULFILLED.label)
        ? EnsImages.ic_circle_check_outline
        : EnsImages.ic_off_outline_close;

    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          EnsSvg(svgToDisplay, color: EnsColors.body),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              status!,
              style: EnsTextStyle.text14_w400_normal_body,
            ),
          ),
        ],
      ),
    );
  }
}

class _DateAndTime extends StatelessWidget {
  final DateTime date;

  const _DateAndTime(this.date);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            const EnsSvg(EnsImages.ic_calendar, width: 16, height: 16),
            const SizedBox(width: 8),
            Flexible(
              child: Text(
                date.toExpliciteDateWithYear(),
                style: EnsTextStyle.text14_w400_normal_body,
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            const EnsSvg(EnsImages.ic_clock, width: 16, height: 16),
            const SizedBox(width: 4),
            Text(date.toHour(), style: EnsTextStyle.text14_w400_normal_body),
          ],
        ),
      ],
    );
  }
}

class _Note extends StatelessWidget {
  final String note;

  const _Note(this.note);

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Container(height: 1, color: EnsColors.neutral200),
          ),
          const Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              EnsSvg(EnsImages.ic_note_outlined),
              SizedBox(width: 8),
              Flexible(child: Text('Note personnelle', style: EnsTextStyle.text14_w600_normal_body)),
            ],
          ),
          const SizedBox(height: 8),
          Text(note, style: EnsTextStyle.text14_w400_normal_title),
        ],
      );
}

class _Address extends StatelessWidget {
  final String address;

  const _Address(this.address);

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Container(height: 1, color: EnsColors.neutral200),
          ),
          const Row(
            children: [
              EnsSvg(EnsImages.ic_location, width: 12, color: EnsColors.body),
              SizedBox(width: 8),
              Text('Adresse', style: EnsTextStyle.text14_w600_normal_body),
            ],
          ),
          const SizedBox(height: 8),
          EnsInkWell(
            onTap: () {
              MapsLauncher.launchQuery(address);
            },
            child: Text(address, style: EnsTextStyle.text14_w700_normal_primary_underline),
          ),
        ],
      );
}

class _Title extends StatelessWidget {
  final String title;

  const _Title(this.title);

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.only(bottom: 16),
        child: Text(title, style: EnsTextStyle.text16_w700_normal_title),
      );
}

class _ProfesionnelOrEtablissement extends StatelessWidget {
  final RendezVous rdv;

  const _ProfesionnelOrEtablissement(this.rdv);

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              EnsSvg(
                rdv.rdvType == RendezVousType.PROFESSIONEL_DE_SANTE
                    ? EnsImages.ic_user
                    : EnsImages.ic_health_care_institution,
                width: 16,
                height: 16,
                color: EnsColors.body,
              ),
              const SizedBox(width: 8),
              Flexible(
                child: Text(
                  rdv.rdvType == RendezVousType.PROFESSIONEL_DE_SANTE
                      ? 'Professionnel de santé'
                      : 'Établissement de santé',
                  style: EnsTextStyle.text14_w600_normal_body,
                ),
              ),
            ],
          ),
          if (rdv.idActeurSante != null && rdv.rdvType != RendezVousType.UNKNOWN)
            EnsLinkText(
              label: rdv.nomActeurSante,
              textPadding: const EdgeInsets.fromLTRB(2, 8, 0, 8),
              onTap: () {
                if (rdv.rdvType == RendezVousType.PROFESSIONEL_DE_SANTE) {
                  Navigator.pushNamed(
                    context,
                    ProfessionnelDeSanteDetailScreen.routeName,
                    arguments: ProfessionnelDeSanteArgument(
                      rdv.idActeurSante!,
                      CalledESorPSDetailScreenFrom.PS_SCREEN,
                    ),
                  );
                } else if (rdv.rdvType == RendezVousType.ETABLISSEMENT_DE_SANTE) {
                  Navigator.pushNamed(
                    context,
                    EtablissementDeSanteDetailScreen.routeName,
                    arguments: EtablissementDeSanteArgument(
                      rdv.idActeurSante!,
                      CalledESorPSDetailScreenFrom.PS_SCREEN,
                    ),
                  );
                }
              },
            )
          else ...[
            const SizedBox(height: 8),
            Text(rdv.nomActeurSante, style: EnsTextStyle.text14_w400_normal_title),
          ],
          if (rdv.specialiteActeurSante != null) _Speciality(rdv.specialiteActeurSante!),
        ],
      );
}

class _Speciality extends StatelessWidget {
  final String profesionnelOrEtablissementSpeciality;

  const _Speciality(this.profesionnelOrEtablissementSpeciality);

  @override
  Widget build(BuildContext context) => Column(
        children: [
          const SizedBox(height: 4),
          Text(profesionnelOrEtablissementSpeciality, style: EnsTextStyle.text14_w400_normal_body),
        ],
      );
}

class _Content extends StatelessWidget {
  final RendezVousDetailsScreenViewModel vm;
  final RendezVous rdv;
  final String? patientId;

  const _Content(this.vm, this.rdv, this.patientId);

  @override
  Widget build(BuildContext context) {
    switch (vm.status) {
      case RendezVousDetailsScreenStatus.GENERIC_ERROR:
        return ErrorPage(reloadFunction: () => vm.fetchRendezVous(patientId, rdv.id));
      case RendezVousDetailsScreenStatus.NOT_FOUND_ERROR:
        return _RendezVousNotFoundError();
      case RendezVousDetailsScreenStatus.SUCCESS:
        return _RendezVousDetails(vm: vm);
      case RendezVousDetailsScreenStatus.LOADING:
        return _RendezVousLoading();
    }
  }
}

class _RendezVousLoading extends StatelessWidget {
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

class _RendezVousDetails extends StatelessWidget {
  final RendezVousDetailsScreenViewModel vm;

  const _RendezVousDetails({required this.vm});

  @override
  Widget build(BuildContext context) {
    final RendezVous rdv = vm.rdv;
    return ScrollviewWithScrollbar(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          DecoratedBox(
            decoration: const BoxDecoration(gradient: EnsColors.gradient01),
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Text(
                'Rendez-vous du ${rdv.date.toExpliciteDateWithoutWeekDay()}',
                style: EnsTextStyle.text24_w400_normal_light,
              ),
            ),
          ),
          ColoredBox(
            color: EnsColors.light,
            child: Padding(
              padding: const EdgeInsets.only(left: 24, right: 24, top: 16, bottom: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (rdv.title != null && rdv.title!.isNotEmpty) _Title(rdv.title!),
                  _DateAndTime(rdv.date),
                  _Author(rdv.author),
                  if (rdv.status != null && !rdv.isFromUser) _Status(rdv.status!.label),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: Container(height: 1, color: EnsColors.neutral200),
                  ),
                  _ProfesionnelOrEtablissement(rdv),
                  if (rdv.address != null) _Address(rdv.address!),
                  if (rdv.note != null) _Note(rdv.note!),
                  const SizedBox(height: 16),
                ],
              ),
            ),
          ),
          if (!rdv.isFromUser)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 24),
              child: EnsPersistentInfoBox.text(
                _getTextDetailRendezVous(profilType: vm.profilType, author: rdv.author),
              ),
            ),
        ],
      ),
    );
  }
}

class _RendezVousNotFoundError extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return EnsEmptyPage(
      customImagePath: EnsImages.avertissement,
      title: 'Rendez-vous supprimé',
      description: 'Ce rendez-vous a été supprimé. Il n\'est plus disponible.',
      buttonList: EnsEmptyButtonList.withPrimaryButton(
        primaryButtonLabel: 'Voir les rendez-vous',
        primaryButtonHandler: () => Navigator.pushNamed(context, AgendaScreen.routeName),
      ),
    );
  }
}

String _getTextDetailRendezVous({
  required ProfilType profilType,
  required String author,
}) {
  return switch (profilType) {
    ProfilType.PROFIL_PRINCIPAL =>
      'Si vous souhaitez modifier ou annuler ce rendez-vous, connectez-vous à votre compte ${author.replaceAll('Ajouté par ', '')}.',
    ProfilType.AIDE ||
    ProfilType.AYANT_DROIT =>
      'Si vous souhaitez modifier ou annuler ce rendez-vous, connectez-vous à son compte ${author.replaceAll('Ajouté par ', '')}.'
  };
}
