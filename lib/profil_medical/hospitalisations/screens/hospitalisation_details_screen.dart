/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/hospitalisations/screens/edit_hospitalisation_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/hospitalisations/screens/viewModels/hospitalisation_details_screen_view_model.dart';
import 'package:fr_cnamts_ens/profil_medical/hospitalisations/widgets/duration_info.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/domain/models/mon_histoire_de_sante_episode.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/screens/widgets/mon_histoire_de_sante_icon.dart';
import 'package:fr_cnamts_ens/profil_medical/screens/widgets/linked_documents_section.dart';
import 'package:fr_cnamts_ens/profil_medical/screens/widgets/pml_details_screen_skeleton.dart';
import 'package:fr_cnamts_ens/profils_rattaches/screens/profils_utils.dart';
import 'package:fr_cnamts_ens/tags/pml/tags_hospitalisations.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/error_page.dart';
import 'package:fr_cnamts_ens/ui/widgets/action_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/confirmation_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/confirmation_bottom_sheet_default_text_content.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/dynamic_action_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_divider.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';

class HospitalisationDetailsScreen extends StatelessWidget {
  static const routeName = '/medical/profil/hospitalisation/detail';

  const HospitalisationDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final String hospitalisationId = ModalRoute.of(context)!.settings.arguments! as String;
    return StoreConnector<EnsState, HospitalisationDetailsScreenViewModel>(
      converter: (store) => HospitalisationDetailsScreenViewModel.from(store, hospitalisationId),
      distinct: true,
      builder: (_, vm) => Scaffold(
        appBar: EnsAppBarSubLevel(
          title: 'Hospitalisation',
          action: vm.displayModel is HospitalisationDetailsScreenDisplayModelSuccess
              ? ActionButton(
                  icon: const Icon(Icons.more_vert),
                  tooltip: 'options',
                  onTap: () => _showOptionsBottomSheet(hospitalisationId, context, vm),
                )
              : null,
        ),
        body: _Body(vm),
      ),
    );
  }

  void _showOptionsBottomSheet(
    String hospitalisationId,
    BuildContext context,
    HospitalisationDetailsScreenViewModel vm,
  ) {
    DynamicActionBottomSheet.showOptionsBottomSheet(
      _buildBottomSheetActions(context, vm),
      context,
    );
  }

  List<BottomSheetAction> _buildBottomSheetActions(
    BuildContext context,
    HospitalisationDetailsScreenViewModel vm,
  ) {
    final List<BottomSheetAction> result = [
      BottomSheetAction(
        assetName: EnsImages.ic_edit,
        label: 'Modifier',
        execution: () {
          context.tagAction(TagsHospitalisations.tag_230_button_modifier_hospitalisation);
          Navigator.pushNamed(context, EditHospitalisationScreen.routeName, arguments: vm.hospitalisation?.id);
        },
      ),
      BottomSheetAction(
        assetName: EnsImages.ic_trash,
        label: 'Supprimer',
        execution: () {
          _showDeleteConfirmationBottomSheet(context, vm);
        },
      ),
    ];
    return result;
  }

  void _showDeleteConfirmationBottomSheet(BuildContext context, HospitalisationDetailsScreenViewModel vm) {
    context.tagAction(TagsHospitalisations.tag_433_popin_supprimer_hospitalisation);
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) {
        return ConfirmationBottomSheet(
          title: 'Supprimer cette hospitalisation ?',
          content: const ConfirmationBottomSheetDefaultTextContent(
            'Cette hospitalisation sera supprimée définitivement.\n'
            'Tout document associé restera disponible dans la liste des documents de santé.',
          ),
          positiveButtonLabel: 'Supprimer',
          positiveButtonHandler: () {
            context.tagAction(TagsHospitalisations.tag_434_popin_supprimer_hospitalisation_valider);
            vm.deleteHospitalisation();
            Navigator.pop(context);
          },
          negativeButtonHandler: () {
            context.tagAction(TagsHospitalisations.tag_435_button_supprimer_hospitalisation_annuler);
          },
        );
      },
    );
  }
}

class _Body extends StatelessWidget {
  final HospitalisationDetailsScreenViewModel vm;

  const _Body(this.vm);

  @override
  Widget build(BuildContext context) {
    final displayModel = vm.displayModel;
    if (displayModel is HospitalisationDetailsScreenDisplayModelSuccess) {
      return _Success(displayModel, vm.deleteDocumentLinkToMaladie, vm.profilType);
    } else if (displayModel is HospitalisationDetailsScreenDisplayModelError) {
      return ErrorPage(reloadFunction: () => vm.loadHospitalisations());
    } else {
      return const PmlDetailsScreenSkeleton();
    }
  }
}

class _Success extends StatelessWidget {
  final HospitalisationDetailsScreenDisplayModelSuccess displayModel;
  final void Function(String documentId) deleteDocumentLinkToMaladie;
  final ProfilType profilType;

  const _Success(this.displayModel, this.deleteDocumentLinkToMaladie, this.profilType);

  @override
  Widget build(BuildContext context) {
    return ScrollviewWithScrollbar(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(24, 32, 24, 24),
            child: Row(
              children: [
                const MonHistoireDeSanteIcon(category: EpisodeSanteCategorie.HOSPITALISATION, size: 56),
                const SizedBox(width: 16),
                Expanded(child: Text(displayModel.title, style: EnsTextStyle.text24_w400_normal_title)),
              ],
            ),
          ),
          _DetailsSection(displayModel, deleteDocumentLinkToMaladie, profilType),
        ],
      ),
    );
  }
}

class _DetailsSection extends StatelessWidget {
  final HospitalisationDetailsScreenDisplayModelSuccess displayModel;
  final void Function(String documentId) deleteDocumentLinkToMaladie;
  final ProfilType profilType;

  const _DetailsSection(this.displayModel, this.deleteDocumentLinkToMaladie, this.profilType);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(
          top: BorderSide(width: 1, color: EnsColors.neutral200),
          bottom: BorderSide(width: 1, color: EnsColors.neutral200),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text('Admission', style: EnsTextStyle.text14_w600_normal_title),
            Text(
              displayModel.admissionDate,
              style: EnsTextStyle.text14_w400_normal_body,
            ),
            if (displayModel.duration != '') DurationInfo(displayModel.duration),
            if (displayModel.comment != '') _CommentInfo(displayModel.comment),
            LinkedDocumentsSection(
              displayModel: displayModel.linkedDocumentsDisplayModel,
              noDocumentText: 'Pas de document lié à cette hospitalisation.',
              onRemoveLinkedDocument: (docId) => deleteDocumentLinkToMaladie(docId),
              profilType: profilType,
            ),
          ],
        ),
      ),
    );
  }
}

class _CommentInfo extends StatelessWidget {
  final String comment;

  const _CommentInfo(this.comment);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [
        const EnsDivider(paddingTop: 16, paddingBottom: 16),
        const Text('Commentaire', style: EnsTextStyle.text14_w600_normal_title),
        const SizedBox(height: 4),
        Text(comment, style: EnsTextStyle.text14_w400_normal_body),
      ],
    );
  }
}
