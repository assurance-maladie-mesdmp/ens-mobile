/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/documents/screens/document_preview_screen.dart';
import 'package:fr_cnamts_ens/infra/injection/ens_module_container.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/interruption_services/domain/interruption_de_service_info.dart';
import 'package:fr_cnamts_ens/interruption_services/widget/interruption_service_container.dart';
import 'package:fr_cnamts_ens/interruption_services/widget/interruption_service_helper.dart';
import 'package:fr_cnamts_ens/interruption_services/widget/interruption_service_widget.dart';
import 'package:fr_cnamts_ens/messagerie/home_messagerie/domain/ps_contact.dart';
import 'package:fr_cnamts_ens/messagerie/new_conversation/screens/new_conversation_screen.dart';
import 'package:fr_cnamts_ens/messagerie/new_conversation/screens/viewmodels/select_recipient_form_field_view_model.dart';
import 'package:fr_cnamts_ens/messagerie/widgets/file_attachment_widget.dart';
import 'package:fr_cnamts_ens/parameters/historique_activites/redux/historique_activites_redux.dart';
import 'package:fr_cnamts_ens/parameters/historique_activites/screens/historique_activites_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/redux/professionnels_de_sante_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/screens/professionnel_de_sante_display_model_role_enum.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/screens/professionnel_de_sante_documents_list_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/screens/professionnel_sante_service_indisponible_section.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/screens/ps_confidentiality_content.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/screens/viewmodels/acteur_de_sante_tag_helper.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/screens/viewmodels/called_es_or_ps_detail_screen_from.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/screens/viewmodels/professionnel_de_sante_detail_screen_view_model.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/search_ps/screens/add_ps_bottom_sheet_helper.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/search_ps/screens/viewModels/recherche_ps_type.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/search_ps/widgets/block_ps_confirmation_bottom_sheet.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/widget/add_ps_or_es_button.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/widget/address_item.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/widget/loading_details_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/widget/ps_role_badge.dart';
import 'package:fr_cnamts_ens/tags/pml/tags_pml.dart';
import 'package:fr_cnamts_ens/tags/pml/tags_professionnels_de_sante.dart';
import 'package:fr_cnamts_ens/tags/tags_agenda.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/action_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/confirmation_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/dynamic_action_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/information_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button_secondary.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_divider.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_external_link.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_link_text.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_outlined_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_persistent_info_box.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_rich_text.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';
import 'package:fr_cnamts_ens/ui/widgets/skeletons.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:fr_cnamts_ens/utils/screen_status.dart';
import 'package:intl/intl.dart';

class ProfessionnelDeSanteArgument {
  final String idNat;
  final CalledESorPSDetailScreenFrom calledFrom;
  final RecherchePSType? recherchePsType;

  ProfessionnelDeSanteArgument(this.idNat, this.calledFrom, [this.recherchePsType]);
}

// ignore: must_be_immutable
class ProfessionnelDeSanteDetailScreen extends StatelessWidget {
  static const routeName = '/medical/profil/professionnels-de-sante/detail';
  bool _hasShownBottomSheet = false;

  ProfessionnelDeSanteDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final arg = ModalRoute.of(context)!.settings.arguments! as ProfessionnelDeSanteArgument;
    return StoreConnector<EnsState, ProfessionnelDeSanteDetailViewModel>(
      converter: (store) => ProfessionnelDeSanteDetailViewModel.from(
        store,
        arg,
        EnsModuleContainer.commonInjector!.getRemoteConfigWrapper(),
      ),
      distinct: true,
      onInit: (store) {
        store.dispatch(
          FetchProfessionnelSanteDetailAction(
            detailFrom: FetchProfessionnelSanteDetailFrom.PS_DETAIL,
            psIdNat: arg.idNat,
          ),
        );
        store.dispatch(FetchProfessionnelsDeSanteSynchroMedecinTraitantAction());
        store.dispatch(const FetchProfessionnelSanteConfidentialitiesAction());
        store.dispatch(FetchProfessionnelDeSanteTracesByIdAction(psIdNat: arg.idNat));
      },
      onInitialBuild: (vm) {
        ActeurDeSanteTagHelper.tagPage(context, fromScreen: vm.fromScreen, isEs: false);
      },
      onWillChange: (oldVm, vm) {
        if (oldVm?.viewStatus.isNotError() == true && vm.viewStatus.isError()) {
          Navigator.pop(context);
        }
      },
      builder: (_, vm) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          if (vm.shouldDisplayMTNotAnymore && !_hasShownBottomSheet) {
            _hasShownBottomSheet = true;
            _showMTNotAnymoreBottomSheet(context);
          }
        });
        return Scaffold(
          appBar: EnsAppBarSubLevel(
            title: 'Détail',
            action: PsDetailScreenActionButton(vm),
          ),
          body: _Content(vm),
        );
      },
    );
  }
}

class _DeleteButton extends StatelessWidget {
  final ProfessionnelDeSanteDetailViewModel vm;

  const _DeleteButton(this.vm);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: IconButton(
        onPressed: () => _showDeleteConfirmationBottomSheet(context, vm),
        tooltip: 'Supprimer ce professionnel de santé',
        icon: const EnsSvg(EnsImages.ic_trash, color: EnsColors.title),
        splashRadius: 28,
      ),
    );
  }

  void _showDeleteConfirmationBottomSheet(
    BuildContext context,
    ProfessionnelDeSanteDetailViewModel vm,
  ) {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) {
        return ConfirmationBottomSheet(
          title: 'Supprimer ce professionnel de santé ?',
          content: null,
          positiveButtonLabel: 'Supprimer',
          positiveButtonHandler: () {
            ActeurDeSanteTagHelper.tagValidateRemovePsClick(context, vm.fromScreen);
            vm.removeProfessionnelDeSante();
            Navigator.pop(context);
          },
          negativeButtonHandler: null,
        );
      },
    );
  }
}

class _Content extends StatelessWidget {
  final ProfessionnelDeSanteDetailViewModel vm;

  const _Content(this.vm);

  @override
  Widget build(BuildContext context) {
    switch (vm.viewStatus) {
      case ScreenStatus.SUCCESS:
        return _SuccessProfessionnelDeSante(vm: vm);
      default:
        return const LoadingDetailsScreen();
    }
  }
}

class _SuccessProfessionnelDeSante extends StatelessWidget {
  final ProfessionnelDeSanteDetailViewModel vm;

  const _SuccessProfessionnelDeSante({required this.vm});

  @override
  Widget build(BuildContext context) {
    final psDisplayModel = vm.psDisplayModel!;
    final specialites = psDisplayModel.exercices?[0].specialites;
    final shortLabelSpecialites = psDisplayModel.exercices?[0].shortLabelSpecialites;
    return ScrollviewWithScrollbar(
      padding: const EdgeInsets.symmetric(vertical: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              psDisplayModel.displayableName,
              style: EnsTextStyle.text24_w400_normal_title,
            ),
          ),
          if (psDisplayModel.displayModelRole != null)
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 8, 24, 0),
              child: PsRoleBadge(psDisplayModel.displayModelRole!),
            ),
          if (psDisplayModel.isMedecinTraitantDeclared) ...[
            const Padding(
              padding: EdgeInsets.fromLTRB(24, 8, 24, 0),
              child: _DisplayableDeclared(),
            ),
          ],
          if (psDisplayModel.exercices != null) ...[
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 8, 24, 0),
              child: Text(
                psDisplayModel.exercices![0].profession,
                style: EnsTextStyle.text14_w600_normal_body,
              ),
            ),
            if (shortLabelSpecialites != null)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Text(
                  shortLabelSpecialites,
                  style: EnsTextStyle.text14_w400_normal_body,
                ),
              )
            else if (specialites != null)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Text(
                  specialites,
                  style: EnsTextStyle.text14_w400_normal_body,
                ),
              ),
          ],
          if (vm.tracesDisplayModel.lastTraceDate != null) ...[
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 8, 24, 0),
              child: _LastTracesInfoText(tracesText: vm.tracesDisplayModel.lastTraceDate!),
            ),
          ],
          if (psDisplayModel.isMedecinTraitantDeclared == false &&
              vm.fromScreen != CalledESorPSDetailScreenFrom.BLOCK_SCREEN)
            if (vm.isPsListLoading) ...[
              const Padding(
                padding: EdgeInsets.fromLTRB(24, 8, 24, 0),
                child: SkeletonBox(height: 32, width: double.infinity, radius: 4),
              ),
            ] else if (!vm.isPsPatientAdded && psDisplayModel.active) ...[
              Padding(
                padding: const EdgeInsets.fromLTRB(24, 16, 24, 0),
                child: AddPsOrEsButton(
                  isLoading: vm.isAddPsLoading,
                  onTap: () {
                    ActeurDeSanteTagHelper.tagAddPsClick(context, vm.fromScreen);
                    if (psDisplayModel.professionLinkToRole != null) {
                      AddPsBottomSheetHelper.showAddPsWithRoleBottomSheet(
                        psProfession: psDisplayModel.professionLinkToRole!,
                        positiveButtonAction: () {
                          vm.addPs(
                            id: psDisplayModel.idNat,
                            role: psDisplayModel.professionLinkToRole!.getPsDisplayModelRole,
                          );
                        },
                        negativeButtonAction: () {
                          vm.addPs(
                            id: psDisplayModel.idNat,
                            role: vm.shouldAddPsAsMedecinTraitant ? PsRoleDisplayModel.MEDECIN_TRAITANT : null,
                          );
                        },
                      );
                    } else {
                      vm.addPs(
                        id: psDisplayModel.idNat,
                        role: vm.shouldAddPsAsMedecinTraitant ? PsRoleDisplayModel.MEDECIN_TRAITANT : null,
                      );
                    }
                  },
                ),
              ),
            ],
          if (vm.psDisplayModel?.isMedecinTraitantDeclared == false &&
              vm.fromScreen == CalledESorPSDetailScreenFrom.BLOCK_SCREEN) ...[
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 8, 24, 0),
              child: _BlockButtonWidget(psDisplayModel),
            ),
          ],
          if (vm.psDetailRoleButtonType != null && psDisplayModel.active) ...[
            _RoleButton(
              vm: vm,
              padding: const EdgeInsets.symmetric(horizontal: 8),
            ),
          ],
          if (!psDisplayModel.active) ...[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
              child: EnsPersistentInfoBox.text('Ce professionnel de santé n\'est plus en activité'),
            ),
          ],
          SizedBox(height: vm.isPsPatientAdded ? 8 : 24),
          ColoredBox(
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: [
                if (psDisplayModel.addresses.isNotEmpty)
                  const Padding(
                    padding: EdgeInsets.fromLTRB(24, 24, 24, 0),
                    child: Text('Coordonnées', style: EnsTextStyle.text20_w500_normal_title),
                  ),
                for (var i = 0; i < psDisplayModel.addresses.length; i++) ...[
                  AddressItem(
                    address: psDisplayModel.addresses[i],
                    active: psDisplayModel.active,
                    fromScreen: vm.fromScreen,
                    isEs: false,
                  ),
                  if (i < psDisplayModel.addresses.length - 1)
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24),
                      child: EnsDivider(),
                    ),
                ],
                if (psDisplayModel.isContactable &&
                    psDisplayModel.contactId != null &&
                    vm.fromScreen != CalledESorPSDetailScreenFrom.BLOCK_SCREEN &&
                    vm.fromScreen != CalledESorPSDetailScreenFrom.MESSAGERIE_SCREEN)
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 24),
                        child: EnsDivider(paddingBottom: 8),
                      ),
                      _SendMessageButtonWidget(psDisplayModel, vm.fromScreen, vm.interruptionServiceSnackbarMessage),
                    ],
                  )
                else if (vm.isPsPatientAdded &&
                    vm.fromScreen != CalledESorPSDetailScreenFrom.BLOCK_SCREEN &&
                    vm.fromScreen != CalledESorPSDetailScreenFrom.PS_SCREEN_CARD &&
                    vm.fromScreen != CalledESorPSDetailScreenFrom.MESSAGERIE_SCREEN)
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 24),
                        child: EnsDivider(),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 24,
                          top: 16,
                          right: 24,
                          bottom: 24,
                        ),
                        child: Text(
                          'Pour contacter ce professionnel depuis la messagerie de Mon espace santé, il doit d\'abord m\'écrire, et je pourrai ensuite lui répondre.',
                          style: EnsTextStyle.text14_w400_normal_body,
                        ),
                      ),
                    ],
                  ),
              ],
            ),
          ),
          const SizedBox(height: 24),
          _DocumentsContent(vm.documentsDisplayModel, psDisplayModel.idNat),
          const SizedBox(height: 24),
          _TracesContent(vm.tracesDisplayModel),
          const SizedBox(height: 24),
          _ConfidentialityContent(vm),
          const SizedBox(height: 24),
        ],
      ),
    );
  }
}

class _RoleButton extends StatelessWidget {
  final ProfessionnelDeSanteDetailViewModel vm;
  final EdgeInsets padding;

  const _RoleButton({required this.vm, required this.padding});

  @override
  Widget build(BuildContext context) {
    final psDisplayModel = vm.psDisplayModel;
    return switch (vm.psDetailRoleButtonType) {
      PsDetailRoleButtonType.MEDECIN_TRAITANT_INFO => Padding(
          padding: padding,
          child: EnsLinkText(
            label: 'En savoir plus sur le médecin traitant',
            borderRadius: 48,
            onTap: () => _displayEnSavoirPlusMTBottomSheet(context),
          ),
        ),
      PsDetailRoleButtonType.ADD_ROLE => Padding(
          padding: padding,
          child: EnsLinkText(
            label: psDisplayModel?.professionLinkToRole?.addRoleButtonTitle ?? '',
            borderRadius: 48,
            onTap: () {
              ActeurDeSanteTagHelper.tagAddPsRoleClick(context, vm.psDisplayModel);
              if (psDisplayModel?.professionLinkToRole != null) {
                AddPsBottomSheetHelper.showAddPsWithRoleBottomSheet(
                  psProfession: psDisplayModel!.professionLinkToRole!,
                  positiveButtonAction: () {
                    vm.updatePsRole();
                  },
                  negativeButtonAction: () {},
                );
              }
            },
          ),
        ),
      null => const SizedBox(),
    };
  }

  void _displayEnSavoirPlusMTBottomSheet(BuildContext context) {
    final helpMedecinTraitant = EnsModuleContainer.currentInjector.getUrlsConfig().helpMedecinTraitant;
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return InformationBottomSheet(
          title: 'En savoir plus',
          description: Center(
            child: EnsRichText(
              text: TextSpan(
                text:
                    'Vous ne pouvez pas changer de médecin traitant dans Mon espace santé. Si vous constatez une erreur, veuillez vous rapprocher de votre médecin traitant.\n\nSi vous avez changé de médecin traitant récemment, veuillez noter qu\'un délai peut s\'appliquer avant qu\'il soit mis à jour dans Mon espace santé.',
                children: [
                  WidgetSpan(
                    child: Material(
                      color: EnsColors.light,
                      child: EnsExternalLink.withRedirection(
                        extraPadding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
                        crossAxisAlignment: CrossAxisAlignment.start,
                        linkUrl: helpMedecinTraitant,
                        linkText: 'Plus d\'information sur le médecin traitant',
                        linkTextStyle: EnsTextStyle.text16_w700_primary_underline,
                        linkTextAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
                style: EnsTextStyle.text16_w400_normal_body,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        );
      },
    );
  }
}

class _LastTracesInfoText extends StatelessWidget {
  final String tracesText;

  const _LastTracesInfoText({required this.tracesText});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const EnsSvg(EnsImages.ic_show, height: 16, width: 16),
        const SizedBox(width: 8),
        Expanded(
          child: Text(
            'Dernière action sur Mon espace santé : le $tracesText',
            style: EnsTextStyle.text12_w400_normal_body,
          ),
        ),
      ],
    );
  }
}

class _DocumentsContent extends StatelessWidget {
  static const MAX_DOCUMENTS = 2;

  final ProfessionnelDeSanteDocumentsDisplayModel documentsDisplayModel;
  final String idNat;

  const _DocumentsContent(this.documentsDisplayModel, this.idNat);

  @override
  Widget build(BuildContext context) {
    return InterruptionServiceContainer(
      composant: const DomaineInterruptionSectionComposant(
        domaineInterruption: DomaineInterruption.DOCUMENTS,
        from: InterruptionServiceSectionName.DOCUMENT,
      ),
      child: ColoredBox(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24, 24, 24, 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              if (documentsDisplayModel.documentsStatus == SectionViewStatus.ERROR) ...[
                const ProfessionnelSanteServiceIndisponibleSection(label: 'Documents indisponibles'),
              ] else if (documentsDisplayModel.documentsStatus == SectionViewStatus.LOADING) ...[
                const _SectionLoading(title: 'Documents'),
              ] else ...[
                const Text('Documents', style: EnsTextStyle.text20_w500_normal_title),
                if (documentsDisplayModel.documentsDisplayModels.isNotEmpty) ...[
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: Text(
                      '${documentsDisplayModel.documentsDisplayModels.length} ${Intl.plural(
                        documentsDisplayModel.documentsDisplayModels.length,
                        one: 'document déposé',
                        other: 'documents déposés',
                      )} par ce professionnel de santé',
                      style: EnsTextStyle.text14_w400_normal_body,
                    ),
                  ),
                  ...documentsDisplayModel.documentsDisplayModels.take(MAX_DOCUMENTS).expand(
                        (doc) => [
                          FileAttachmentWidget(
                            dm: FileAttachmentDisplayModel(
                              documentId: doc.documentId,
                              name: doc.name,
                            ),
                            onTap: () {
                              context.tagAction(
                                TagsProfessionnelsDeSante.tag_1027_button_ps_acces_document,
                              );
                              Navigator.pushNamed(
                                context,
                                DocumentPreviewScreen.routeName,
                                arguments: DocumentPreviewScreenArgument(
                                  documentToDisplayId: doc.documentId,
                                ),
                              );
                            },
                          ),
                          const SizedBox(height: 8),
                        ],
                      ),
                  if (documentsDisplayModel.documentsDisplayModels.length > MAX_DOCUMENTS)
                    EnsLinkText(
                      onTap: () {
                        context.tagAction(
                          TagsProfessionnelsDeSante.tag_1265_link_ps_acces_document_voirtout,
                        );
                        Navigator.pushNamed(
                          context,
                          ProfessionnelDeSanteDocumentsListScreen.routeName,
                          arguments: idNat,
                        );
                      },
                      label: 'Voir tous les documents',
                    ),
                ] else ...[
                  const Padding(
                    padding: EdgeInsets.only(top: 16, bottom: 16),
                    child: Text(
                      'Ce professionnel de santé n\'a pas encore déposé de document.',
                      style: EnsTextStyle.text14_w400_normal_body,
                    ),
                  ),
                ],
              ],
            ],
          ),
        ),
      ),
    );
  }
}

class _TracesContent extends StatelessWidget {
  static const MAX_TRACES = 3;

  final ProfessionnelDeSanteTracesDisplayModel tracesDisplayModel;

  const _TracesContent(this.tracesDisplayModel);

  @override
  Widget build(BuildContext context) {
    return InterruptionServiceContainer(
      composant: const DomaineInterruptionSectionComposant(
        domaineInterruption: DomaineInterruption.DOCUMENTS,
        from: InterruptionServiceSectionName.HISTORIQUE_ACTIVITE,
      ),
      child: ColoredBox(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24, 24, 24, 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              if (tracesDisplayModel.tracesStatus == SectionViewStatus.ERROR) ...[
                const ProfessionnelSanteServiceIndisponibleSection(label: 'Historique d\'activités indisponible'),
              ] else if (tracesDisplayModel.tracesStatus == SectionViewStatus.LOADING) ...[
                const _SectionLoading(title: 'Historique d\'activité'),
              ] else ...[
                const Text(
                  'Historique d\'activité',
                  style: EnsTextStyle.text20_w500_normal_title,
                ),
                if (tracesDisplayModel.tracesDisplayModels.isNotEmpty) ...[
                  const SizedBox(height: 8),
                  ...tracesDisplayModel.tracesDisplayModels.take(MAX_TRACES).expand(
                        (trace) => [
                          const EnsDivider(paddingTop: 8, paddingBottom: 8),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(trace.label, style: EnsTextStyle.text14_w600_normal_title),
                                Text(
                                  trace.formattedDate,
                                  style: EnsTextStyle.text14_w400_normal_body,
                                  semanticsLabel: trace.a11yFormattedDate,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                  if (tracesDisplayModel.tracesDisplayModels.length >= MAX_TRACES)
                    EnsLinkText(
                      textPadding: const EdgeInsets.symmetric(vertical: 16),
                      onTap: () {
                        context.tagAction(
                          TagsProfessionnelsDeSante.tag_1266_link_ps_acces_historique_activite_voirtout,
                        );
                        Navigator.pushNamed(context, HistoriqueActivitesScreen.routeName);
                      },
                      label: 'Voir tout l\'historique d\'activité',
                    ),
                ] else ...[
                  const Padding(
                    padding: EdgeInsets.only(top: 8, bottom: 16),
                    child: Text(
                      'Ce professionnel de santé n\'a pas encore eu d\'activité sur Mon espace santé.',
                      style: EnsTextStyle.text14_w400_normal_body,
                    ),
                  ),
                ],
              ],
            ],
          ),
        ),
      ),
    );
  }
}

class _ConfidentialityContent extends StatelessWidget {
  final ProfessionnelDeSanteDetailViewModel vm;

  const _ConfidentialityContent(this.vm);

  @override
  Widget build(BuildContext context) {
    return InterruptionServiceContainer(
      composant: const DomaineInterruptionSectionComposant(
        domaineInterruption: DomaineInterruption.DOCUMENTS,
        from: InterruptionServiceSectionName.PS_CONFIDENTIALITE,
      ),
      child: PsConfidentialityContent(
        idNat: vm.psDisplayModel!.idNat,
        psFullName: vm.psDisplayModel!.displayableName,
        active: vm.psDisplayModel!.active,
        profilType: vm.profilType,
        mainFirstName: vm.mainFirstName,
      ),
    );
  }
}

class _DisplayableDeclared extends StatelessWidget {
  const _DisplayableDeclared();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Transform.translate(
            offset: const Offset(0, -2),
            child: const EnsSvg(EnsImages.ic_shield),
          ),
          const SizedBox(width: 4),
          const Text(
            'Déclaré à l\'assurance maladie',
            style: EnsTextStyle.text14_w600_normal_body,
          ),
        ],
      ),
    );
  }
}

class _SectionLoading extends StatelessWidget {
  final String title;

  const _SectionLoading({required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(title, style: EnsTextStyle.text20_w500_normal_title),
        const SizedBox(height: 16),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SkeletonBox(height: 24),
            SizedBox(height: 8),
            SkeletonBox(height: 24),
          ],
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}

void _showMTNotAnymoreBottomSheet(BuildContext context) {
  context.tagAction(TagsAgenda.tag_958_info_mt_incorrect);
  showModalBottomSheet(
    isScrollControlled: true,
    context: context,
    builder: (BuildContext context) => const InformationBottomSheet(
      title: 'En savoir plus',
      description: Text(
        'Vous avez précédemment renseigné ce professionnel de santé comme médecin traitant, mais cela ne correspond pas aux informations connues de l\'assurance maladie.',
        style: EnsTextStyle.text16_w400_normal_body,
        textAlign: TextAlign.center,
      ),
    ),
  );
}

class _SendMessageButtonWidget extends StatelessWidget {
  final ProfessionnelSanteDisplayModel ps;
  final CalledESorPSDetailScreenFrom fromScreen;
  final String? interruptionServiceSnackbarMessage;

  const _SendMessageButtonWidget(this.ps, this.fromScreen, this.interruptionServiceSnackbarMessage);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(left: 24, top: 16, right: 24, bottom: 24),
        child: EnsButtonSecondary(
          label: 'Envoyer un message',
          verticalPadding: 8,
          onTap: () {
            context.tagAction(TagsPml.tag_1026_button_ps_envoi_message);
            InterruptionServiceHelper.showSnackbarOnInterruption(
              context,
              interruptionServiceSnackbarMessage: interruptionServiceSnackbarMessage,
              onNotInterrompu: () {
                final newConversationScreenArg = ConversationArguments(
                  destinataire: ContactItemDisplayModel.fromPsContact(
                    PsContact(
                      id: ps.contactId!,
                      name: ps.displayableName,
                    ),
                  ),
                );

                if (fromScreen == CalledESorPSDetailScreenFrom.MESSAGERIE_SCREEN) {
                  Navigator.pushNamedAndRemoveUntil(
                    context,
                    NewConversationScreen.routeName,
                    (route) => route.isFirst,
                    arguments: newConversationScreenArg,
                  );
                } else {
                  Navigator.pushNamed(
                    context,
                    NewConversationScreen.routeName,
                    arguments: newConversationScreenArg,
                  );
                }
              },
            );
          },
        ),
      ),
    );
  }
}

class _BlockButtonWidget extends StatelessWidget {
  final ProfessionnelSanteDisplayModel ps;

  const _BlockButtonWidget(this.ps);

  @override
  Widget build(BuildContext context) {
    return EnsOutlinedButton(
      label: 'Bloquer l\'accès à ce professionnel',
      buttonColor: EnsColors.error,
      buttonTextStyle: EnsTextStyle.text14_w700_error,
      onTap: () => showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (BuildContext context) {
          return BlockPsConfirmationBottomSheet(
            psIdNat: ps.idNat,
            psName: ps.displayableName,
            from: BlockPsConfirmationBottomSheetFrom.BLOCK_PS_DETAIL,
          );
        },
      ),
    );
  }
}

class PsDetailScreenActionButton extends StatelessWidget {
  final ProfessionnelDeSanteDetailViewModel vm;

  const PsDetailScreenActionButton(this.vm);

  @override
  Widget build(BuildContext context) {
    switch (vm.psDetailActionButtonType) {
      case PsDetailActionButtonType.REMOVE_PS_ONLY:
        return _DeleteButton(vm);
      case PsDetailActionButtonType.REMOVE_PS_AND_ROLE:
        return ActionButton(
          icon: const Icon(Icons.more_vert),
          tooltip: 'options',
          onTap: () {
            context.tagAction(TagsAgenda.tag_608_button_actions_rdv);
            DynamicActionBottomSheet.showOptionsBottomSheet(
              _buildBottomSheetActions(context, vm),
              context,
            );
          },
        );
      default:
        return const SizedBox.shrink();
    }
  }

  List<BottomSheetAction> _buildBottomSheetActions(
    BuildContext context,
    ProfessionnelDeSanteDetailViewModel vm,
  ) =>
      [
        if (vm.canDeletePS())
          BottomSheetAction(
            assetName: EnsImages.ic_trash,
            label: 'Supprimer le professionel de santé',
            execution: () {
              vm.removeProfessionnelDeSante();
            },
          ),
        BottomSheetAction(
          assetName: EnsImages.ic_tag_outlined_barrer,
          label: vm.psDisplayModel?.displayModelRole?.removePsRoleBottomSheetLabel ?? '',
          execution: () {
            vm.removeRole();
            ActeurDeSanteTagHelper.tagRemovePsRoleClick(context, vm.psDisplayModel);
          },
        ),
      ];
}
