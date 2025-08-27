/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/infra/injection/ens_module_container.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/parameters/consentements_ps/screens/consentements_ps_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/screens/acteur_de_sante_suggestions_carrousel.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/screens/etablissement_de_sante_detail_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/screens/professionnel_de_sante_detail_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/screens/professionnel_de_sante_display_model_role_enum.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/screens/viewmodels/acteur_de_sante_suggestion_display_model.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/screens/viewmodels/called_es_or_ps_detail_screen_from.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/screens/viewmodels/professionnels_de_sante_screen_view_model.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/search_ps/screens/add_ps_bottom_sheet_helper.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/search_ps/screens/recherche_ps_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/search_ps/screens/viewModels/recherche_ps_screen_view_model.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/search_ps/screens/viewModels/recherche_ps_type.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/widget/ps_role_badge.dart';
import 'package:fr_cnamts_ens/profils_rattaches/screens/profils_utils.dart';
import 'package:fr_cnamts_ens/search_es/screens/recherche_es_screen.dart';
import 'package:fr_cnamts_ens/tags/pml/tags_professionnels_de_sante.dart';
import 'package:fr_cnamts_ens/traces/domain/ens_send_trace.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/error_page.dart';
import 'package:fr_cnamts_ens/ui/utils/pull_to_refresh_utils.dart';
import 'package:fr_cnamts_ens/ui/utils/swipe_icons_icons.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/confirmation_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/dynamic_action_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/information_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/multi_action_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/delete_slidable.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_empty_page.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_floating_action_add_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_info_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_information_card.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_ink_well.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_rich_text.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';
import 'package:fr_cnamts_ens/ui/widgets/skeletons.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:fr_cnamts_ens/utils/wordings_extension.dart';

class ProfessionnelsDeSanteScreen extends StatelessWidget {
  static const routeName = '/medical/profil/professionnels-de-sante';

  @override
  Widget build(BuildContext context) {
    return StoreConnector<EnsState, ProfessionnelsDeSanteScreenViewModel>(
      converter: (store) => ProfessionnelsDeSanteScreenViewModel.from(
        store,
        EnsModuleContainer.commonInjector!.getRemoteConfigWrapper(),
      ),
      distinct: true,
      onInitialBuild: (vm) {
        vm.load();
        context.tagAction(TagsProfessionnelsDeSante.tag_360_page_professionels_de_sante);
        context.traceAction(EnsTraceType.CONSULT_RUBRIQUE_PS);
      },
      onWillChange: (oldVm, vm) {
        if (vm.shouldDisplayBottomSheetPsHorsRef) {
          vm.updateNonRefPsInfoViewDisplayed();
        }
        if (oldVm?.listStatus != ActeurDeSanteListStatus.EMPTY && vm.listStatus == ActeurDeSanteListStatus.EMPTY) {
          context.tagAction(TagsProfessionnelsDeSante.tag_1036_professionels_sante_empty);
        }
        if (oldVm?.listStatus != ActeurDeSanteListStatus.EMPTY_WITH_SUGGESTIONS &&
            vm.listStatus == ActeurDeSanteListStatus.EMPTY_WITH_SUGGESTIONS) {
          context.tagAction(TagsProfessionnelsDeSante.tag_1037_professionels_sante_empty_suggestion);
        }
      },
      builder: (_, ProfessionnelsDeSanteScreenViewModel vm) => Scaffold(
        appBar: EnsAppBarSubLevel(
          title: 'Professionnels de santé',
          action: EnsInfoButton(
            onTap: () {
              _displayBottomSheet(context);
            },
          ),
        ),
        floatingActionButton: Visibility(
          visible: vm.listStatus == ActeurDeSanteListStatus.LISTE_SUCCESS,
          child: EnsFloatingActionAddButton(
            tooltip: 'Ajouter un professionnel de santé ou un établissement de santé',
            onPressed: () {
              context.tagAction(TagsProfessionnelsDeSante.tag_973_bottom_sheet_search_ps_es);
              showBottomSheetAjoutPs(context);
            },
          ),
        ),
        body: _Content(vm),
      ),
    );
  }
}

class _Content extends StatelessWidget {
  final ProfessionnelsDeSanteScreenViewModel vm;

  const _Content(this.vm);

  @override
  Widget build(BuildContext context) {
    switch (vm.listStatus) {
      case ActeurDeSanteListStatus.LISTE_SUCCESS:
        return _Success(vm);
      case ActeurDeSanteListStatus.LOADING:
        return _Loading(vm);
      case ActeurDeSanteListStatus.ERROR:
        return ErrorPage(reloadFunction: vm.load);
      case ActeurDeSanteListStatus.EMPTY:
        return _Empty(vm);
      case ActeurDeSanteListStatus.EMPTY_WITH_SUGGESTIONS:
        return _EmptyWithSuggestions(vm);
    }
  }
}

class _Success extends StatelessWidget {
  final ProfessionnelsDeSanteScreenViewModel vm;

  const _Success(this.vm);

  @override
  Widget build(BuildContext context) {
    return EnsPullToRefresh(
      onRefresh: () async => vm.load(force: true),
      child: SafeArea(
        child: ScrollviewWithScrollbar(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(24, 32, 24, 20),
                child: Text(
                  _getTextHeader(
                    profilType: vm.profilType,
                  ),
                  style: EnsTextStyle.text14_w400_normal_body,
                ),
              ),
              if (vm.displayMedecinTraitantCard) _AddMedecinTraitantCard(vm),
              _PsList(
                vm: vm,
                displayModels: vm.acteursDeSanteReferenceDisplayModels,
                removeProfessionnelDeSante: vm.removeProfessionnelDeSante,
                removeEtablissementDeSante: vm.removeEtablissementDeSante,
              ),
              if (vm.asSuggestionsDisplayModels.isNotEmpty) ...[
                ActeurDeSanteSuggestionsCarrousel(
                  suggestions: vm.asSuggestionsDisplayModels,
                  hasAMedecinTraitant: vm.hasAMedecinTraitant,
                  onAddSuggestion: (psSelected) => _addActeurDeSante(context, psSelected, vm),
                  emptyPsAndEs: false,
                  profilType: vm.profilType,
                  mainFirstName: vm.mainFirstName,
                ),
              ],
              const SizedBox(height: 80),
            ],
          ),
        ),
      ),
    );
  }
}

class _PsList extends StatelessWidget {
  final ProfessionnelsDeSanteScreenViewModel vm;
  final List<ActeurDeSanteCardDisplayModel> displayModels;
  final void Function(String psId) removeProfessionnelDeSante;
  final void Function(String esId) removeEtablissementDeSante;

  const _PsList({
    required this.vm,
    required this.displayModels,
    required this.removeProfessionnelDeSante,
    required this.removeEtablissementDeSante,
  });

  @override
  Widget build(BuildContext context) {
    return SlidableAutoCloseBehavior(
      child: ListViewWithScrollbar.separated(
        separatorBuilder: (context, index) => _buildListDivider(displayModels, index),
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.only(bottom: vm.asSuggestionsDisplayModels.isEmpty ? 96 : 0),
        scrollDirection: Axis.vertical,
        itemCount: displayModels.length,
        itemBuilder: (context, index) {
          if (!displayModels[index].isMedecinTraitantDeclare) {
            return DeleteSlidable(
              onPressed: (context) => _showDeleteConfirmationBottomSheet(
                context,
                removeProfessionnelDeSante,
                removeEtablissementDeSante,
                displayModels[index],
              ),
              icon: SwipeIcons.user_minus,
              label: 'Supprimer',
              child: _ActeurDeSanteItem(displayModels[index], removeProfessionnelDeSante),
            );
          }
          return _ActeurDeSanteItem(displayModels[index], removeProfessionnelDeSante);
        },
      ),
    );
  }

  Divider _buildListDivider(List<ActeurDeSanteCardDisplayModel> displayModels, int index) => Divider(
        height: (index != displayModels.length) ? 2 : 0,
        color: (index != displayModels.length) ? EnsColors.neutral200 : Colors.white,
      );

  void _showDeleteConfirmationBottomSheet(
    BuildContext context,
    void Function(String psId) removeProfessionnelDeSante,
    void Function(String esId) removeEtablissementDeSante,
    ActeurDeSanteCardDisplayModel displayModel,
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
            context.tagAction(TagsProfessionnelsDeSante.tag_365_button_delete_professionnel_de_sante);
            displayModel.type == TypeOfActeurDeSante.PS
                ? removeProfessionnelDeSante(displayModel.id)
                : removeEtablissementDeSante(displayModel.id);
          },
        );
      },
    );
  }
}

class _ProfessionnelDetailsItem extends StatelessWidget {
  final ActeurDeSanteCardDisplayModel dm;

  const _ProfessionnelDetailsItem(this.dm);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (dm.role != null)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: PsRoleBadge(dm.role!),
          ),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            EnsSvg(
              dm.type == TypeOfActeurDeSante.PS ? EnsImages.ic_user : EnsImages.ic_building,
              height: 24,
              color: EnsColors.title,
            ),
            const SizedBox(width: 8),
            Expanded(child: Text(dm.displayedName, style: EnsTextStyle.text16_w700_normal_title)),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: EnsSvg(
                EnsImages.ic_chevron_right,
                height: 12,
                width: 8,
                color: EnsColors.body,
                alignment: Alignment.centerRight,
              ),
            ),
          ],
        ),
        if (dm.description?.isNotEmpty == true) ...[
          const SizedBox(height: 8),
          ...?dm.description?.map((exercice) => _DescriptionItem(exercice)),
        ],
        if (!dm.active) ...[
          const SizedBox(height: 12),
          const Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              EnsSvg(EnsImages.ic_info_circle, height: 24, width: 24),
              SizedBox(width: 8),
              Expanded(
                child: Text(
                  'Ce professionnel de santé n\'est plus en activité',
                  style: EnsTextStyle.text16_w600_primary,
                ),
              ),
            ],
          ),
        ],
      ],
    );
  }
}

class _DescriptionItem extends StatelessWidget {
  final ActeurDeSanteDescriptionItem description;

  const _DescriptionItem(this.description);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(description.title, style: EnsTextStyle.text16_w400_normal_body),
        if (description.subtitle != null && description.subtitle!.isNotEmpty)
          Text(description.subtitle!, style: EnsTextStyle.text12_w400_normal_body),
      ],
    );
  }
}

class _ActeurDeSanteItem extends StatelessWidget {
  final ActeurDeSanteCardDisplayModel dm;
  final void Function(String) removeProfessionnelDeSante;

  const _ActeurDeSanteItem(this.dm, this.removeProfessionnelDeSante);

  @override
  Widget build(BuildContext context) {
    return EnsInkWell(
      color: EnsColors.light,
      onTap: () {
        if (dm.isReferenced) {
          dm.type == TypeOfActeurDeSante.PS
              ? Navigator.pushNamed(
                  context,
                  ProfessionnelDeSanteDetailScreen.routeName,
                  arguments: ProfessionnelDeSanteArgument(dm.idNat, CalledESorPSDetailScreenFrom.PS_SCREEN),
                )
              : Navigator.pushNamed(
                  context,
                  EtablissementDeSanteDetailScreen.routeName,
                  arguments: EtablissementDeSanteArgument(
                    dm.idNat,
                    CalledESorPSDetailScreenFrom.PS_SCREEN,
                  ),
                );
        } else {
          context.tagAction(TagsProfessionnelsDeSante.tag_1257_popin_ps_hors_annuaire);
          showModalBottomSheet(
            isScrollControlled: true,
            context: context,
            builder: (BuildContext context) {
              return MultiActionBottomSheet(
                title: 'Ce professionnel de santé n’est pas connu de Mon espace santé',
                helpText:
                    'Afin de bénéficier de l’ensemble des informations concernant ce professionnel de santé, je peux dès maintenant l’ajouter depuis l’annuaire de santé.',
                actionOptions: [
                  EnsMultiActionOption(
                    buttonTitle: 'Ajouter depuis l’annuaire de santé',
                    buttonClickHandler: () {
                      context.tagAction(TagsProfessionnelsDeSante.tag_1258_button_ps_hors_annuaire_ajouter);
                      Navigator.pushNamed(
                        context,
                        RecherchePsScreen.routeName,
                        arguments: RecherchePsScreenArgument(
                          firstName: dm.firstName,
                          lastName: dm.lastName,
                          psSearchType: RecherchePSType.ADD_PS,
                        ),
                      );
                    },
                    isPrimaryAction: true,
                  ),
                  EnsMultiActionOption(
                    buttonTitle: 'Supprimer',
                    buttonClickHandler: () {
                      context.tagAction(TagsProfessionnelsDeSante.tag_1259_button_ps_hors_annuaire_supprimer);
                      removeProfessionnelDeSante(dm.id);
                    },
                    isPrimaryAction: false,
                  ),
                ],
              );
            },
          );
        }
      },
      child: Padding(padding: const EdgeInsets.all(24), child: _ProfessionnelDetailsItem(dm)),
    );
  }
}

class _Loading extends StatelessWidget {
  final ProfessionnelsDeSanteScreenViewModel vm;

  const _Loading(this.vm);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 24),
              SkeletonBox(width: 200),
              SizedBox(height: 8),
              SkeletonBox(width: 124),
              SizedBox(height: 24),
            ],
          ),
        ),
        Flexible(
          child: ListViewWithScrollbar.separated(
            padding: const EdgeInsets.only(bottom: 124),
            separatorBuilder: (_, __) => const Divider(height: 2, color: EnsColors.neutral200),
            scrollDirection: Axis.vertical,
            itemCount: 3,
            itemBuilder: (context, index) => _SkeletonItem(),
          ),
        ),
      ],
    );
  }
}

class _SkeletonItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const ColoredBox(
      color: EnsColors.light,
      child: Padding(
        padding: EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SkeletonBox(width: 128, height: 16),
            SizedBox(height: 12),
            SkeletonBox(width: 64),
            SizedBox(height: 4),
            SkeletonBox(width: 200),
          ],
        ),
      ),
    );
  }
}

class _AddMedecinTraitantCard extends StatelessWidget {
  final ProfessionnelsDeSanteScreenViewModel vm;

  const _AddMedecinTraitantCard(this.vm);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 24, left: 24, top: 4, bottom: 20),
      child: EnsInformationCard(
        image: EnsImages.professionnel_de_sante_clean,
        onTap: () {
          context.tagAction(TagsProfessionnelsDeSante.tag_517_click_add_medecin_traitant);
          Navigator.pushNamed(
            context,
            RecherchePsScreen.routeName,
            arguments: RecherchePsScreenArgument(psSearchType: RecherchePSType.ADD_MEDECIN_TRAITANT),
          );
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              _getMedecinTraitantCardText(profilType: vm.profilType),
              style: EnsTextStyle.text14_w400_normal_body,
            ),
            const SizedBox(height: 8),
            const Text('Renseigner le médecin traitant', style: EnsTextStyle.text14_w700_normal_primary_underline),
          ],
        ),
      ),
    );
  }
}

class _Empty extends StatelessWidget {
  final ProfessionnelsDeSanteScreenViewModel vm;

  const _Empty(this.vm);

  @override
  Widget build(BuildContext context) {
    return EnsPullToRefresh(
      onRefresh: () async => vm.load(force: true),
      child: EnsEmptyPage(
        title: 'J\'ajoute mes professionnels de santé'.resolveWith(isProfilPrincipal: vm.profilType.isProfilPrincipal),
        description: 'Pour garder une vue d\'ensemble de mon équipe médicale et retrouver leurs informations.'
            .resolveWith(isProfilPrincipal: vm.profilType.isProfilPrincipal),
        buttonList: EnsEmptyButtonList.withPrimaryAndSecondaryButton(
          primaryButtonLabel: 'Renseigner mon médecin traitant'.resolveWith(
            isProfilPrincipal: vm.profilType.isProfilPrincipal,
          ),
          primaryButtonHandler: () {
            context.tagAction(TagsProfessionnelsDeSante.tag_521_button_add_medecin_traitant_empty);
            Navigator.pushNamed(
              context,
              RecherchePsScreen.routeName,
              arguments: RecherchePsScreenArgument(psSearchType: RecherchePSType.ADD_MEDECIN_TRAITANT),
            );
          },
          secondaryButtonLabel: 'Ajouter un professionnel de santé',
          secondaryButtonHandler: () {
            context.tagAction(TagsProfessionnelsDeSante.tag_522_button_add_medecin_empty);
            showBottomSheetAjoutPs(context);
          },
        ),
        customImagePath: EnsImages.professionnel_de_sante,
      ),
    );
  }
}

class _EmptyWithSuggestions extends StatelessWidget {
  final ProfessionnelsDeSanteScreenViewModel vm;

  const _EmptyWithSuggestions(this.vm);

  @override
  Widget build(BuildContext context) {
    return EnsPullToRefresh(
      onRefresh: () async => vm.load(force: true),
      child: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraint) => ScrollviewWithScrollbar(
            physics: const AlwaysScrollableScrollPhysics(),
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraint.maxHeight),
              child: IntrinsicHeight(
                child: Column(
                  children: [
                    Container(
                      color: EnsColors.neutral100,
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(top: 32, bottom: 24),
                            child: EnsSvg(EnsImages.professionnel_de_sante, width: 120, height: 120),
                          ),
                          Text(
                            'J\'ajoute mes professionnels de santé'
                                .resolveWith(isProfilPrincipal: vm.profilType.isProfilPrincipal),
                            style: EnsTextStyle.text24_w400_normal_title,
                            textAlign: TextAlign.center,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8, bottom: 32),
                            child: Text(
                              'Pour garder une vue d\'ensemble de mon équipe médicale et retrouver leurs informations.'
                                  .resolveWith(isProfilPrincipal: vm.profilType.isProfilPrincipal),
                              style: EnsTextStyle.text16_w400_normal_body,
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: ActeurDeSanteSuggestionsCarrousel(
                        suggestions: vm.asSuggestionsDisplayModels,
                        hasAMedecinTraitant: vm.hasAMedecinTraitant,
                        onAddSuggestion: (psSelected) => _addActeurDeSante(context, psSelected, vm),
                        emptyPsAndEs: true,
                        profilType: vm.profilType,
                        mainFirstName: vm.mainFirstName,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

void _displayBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    builder: (BuildContext context) {
      return InformationBottomSheet(
        title: 'En savoir plus',
        description: EnsRichText(
          text: TextSpan(
            text:
                'Les professionnels de santé que vous ajoutez dans votre profil médical n’ont pas automatiquement accès à vos informations de santé. Pour en savoir plus rendez-vous dans  ',
            children: [
              WidgetSpan(
                child: EnsInkWell(
                  color: EnsColors.light,
                  onTap: () {
                    Navigator.pushReplacementNamed(context, ConsentementsPsScreen.routeName);
                  },
                  child: const Text(
                    'vos paramètres de confidentialité.',
                    textAlign: TextAlign.center,
                    style: EnsTextStyle.text16_w700_primary_underline,
                  ),
                ),
              ),
            ],
            style: EnsTextStyle.text16_w400_normal_body,
          ),
          textAlign: TextAlign.center,
        ),
      );
    },
  );
}

Future<void> showBottomSheetAjoutPs(BuildContext context) {
  return DynamicActionBottomSheet.showOptionsBottomSheet(
    [
      BottomSheetAction(
        assetName: EnsImages.ic_user,
        label: 'Ajouter un professionnel de santé',
        labelTextStyle: EnsTextStyle.text16_w700_primary,
        description: 'Ex : médecin, infirmier, dentiste',
        execution: () {
          Navigator.pushNamed(
            context,
            RecherchePsScreen.routeName,
            arguments: RecherchePsScreenArgument(psSearchType: RecherchePSType.ADD_PS),
          );
        },
      ),
      BottomSheetAction(
        assetName: EnsImages.ic_building,
        label: 'Ajouter un établissement de santé',
        labelTextStyle: EnsTextStyle.text16_w700_primary,
        description: 'Ex : pharmacie, EHPAD, clinique...',
        execution: () {
          Navigator.pushNamed(
            context,
            RechercheEsScreen.routeName,
            arguments: RechercheEsScreenArgument(rechercheEsType: RechercheEsType.ADD_ES),
          );
        },
      ),
    ],
    context,
    title: 'Ajouter un professionnel',
    titleStyle: EnsTextStyle.text24_w400_normal_title,
  );
}

void _addActeurDeSante(
  BuildContext context,
  ActeurDeSanteSuggestionDisplayModel acteurDeSanteSuggestion,
  ProfessionnelsDeSanteScreenViewModel vm,
) {
  context.tagAction(TagsProfessionnelsDeSante.tag_1038_button_ajout_suggestion);
  switch (acteurDeSanteSuggestion) {
    case final EtablissementDeSanteSuggestionDisplayModel pharmacie:
      vm.addEs(pharmacie.id);
    case final ProfessionalDeSanteSuggestionDisplayModel ps:
      final professionType = ps.professionType;
      if (professionType != null && vm.isPsRoleFeatureEnable) {
        AddPsBottomSheetHelper.showAddPsWithRoleBottomSheet(
          psProfession: professionType,
          positiveButtonAction: () {
            vm.addPs(id: ps.id, role: professionType.getPsDisplayModelRole);
          },
          negativeButtonAction: () {
            vm.addPs(id: ps.id, role: null);
          },
        );
      } else if (!vm.hasAMedecinTraitant) {
        context.tagAction(TagsProfessionnelsDeSante.tag_1033_popin_suggestion_mt);
        AddPsBottomSheetHelper.showAddPsMTModalBottomSheet(
          positiveButtonAction: () {
            context.tagAction(TagsProfessionnelsDeSante.tag_1034_button_suggestion_mt);
            vm.addPs(id: ps.id, role: PsRoleDisplayModel.MEDECIN_TRAITANT);
          },
          negativeButtonAction: () {
            context.tagAction(TagsProfessionnelsDeSante.tag_1035_button_suggestion_pas_mt);
            vm.addPs(id: ps.id, role: null);
          },
        );
      } else {
        vm.addPs(id: ps.id, role: null);
      }
  }
}

String _getTextHeader({
  required ProfilType profilType,
}) {
  return switch (profilType) {
    ProfilType.PROFIL_PRINCIPAL =>
      'Je garde une vue d\'ensemble de mon équipe médicale et retrouve facilement les informations des professionnels de santé qui me suivent.',
    ProfilType.AIDE ||
    ProfilType.AYANT_DROIT =>
      'Je garde une vue d\'ensemble de son équipe médicale et retrouve facilement les informations de ses professionnels de santé.'
  };
}

String _getMedecinTraitantCardText({
  required ProfilType profilType,
}) {
  return switch (profilType) {
    ProfilType.PROFIL_PRINCIPAL =>
      'C\'est le premier interlocuteur pour votre santé, qui peut vous orienter vers un spécialiste en cas de besoin.',
    ProfilType.AIDE || ProfilType.AYANT_DROIT => 'C\'est le premier interlocuteur pour sa santé.'
  };
}
