/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/home/widgets/carousel_skeleton.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/scanner/screens/scanner_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/vaccinations/domain/models/ens_vaccination.dart';
import 'package:fr_cnamts_ens/profil_medical/vaccinations/screens/carte_vaccinations_detail_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/vaccinations/screens/edit_vaccination_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/vaccinations/screens/viewModels/vaccination_item_display_model.dart';
import 'package:fr_cnamts_ens/profil_medical/vaccinations/screens/viewModels/vaccinations_screen_view_model.dart';
import 'package:fr_cnamts_ens/profil_medical/vaccinations/widgets/vaccination_item.dart';
import 'package:fr_cnamts_ens/scanner/domain/type_scan.dart';
import 'package:fr_cnamts_ens/tags/pml/tags_vaccinations.dart';
import 'package:fr_cnamts_ens/traces/domain/ens_send_trace.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/error_page.dart';
import 'package:fr_cnamts_ens/ui/utils/pull_to_refresh_utils.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/confirmation_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/confirmation_bottom_sheet_default_text_content.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/dynamic_action_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/ens_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/information_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/delete_slidable.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_empty_page.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_floating_action_add_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_information_card.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_link_text.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/ens_drop_down.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';
import 'package:fr_cnamts_ens/ui/widgets/skeletons.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:fr_cnamts_ens/utils/all_purposes_status.dart';
import 'package:fr_cnamts_ens/utils/wordings_extension.dart';

class VaccinationsScreen extends StatelessWidget {
  static const routeName = '/medical/profil/vaccination';

  @override
  Widget build(BuildContext context) {
    return StoreConnector<EnsState, VaccinationsScreenViewModel>(
      converter: (store) => VaccinationsScreenViewModel.from(store),
      onInitialBuild: (vm) {
        vm.loadVaccinations();
        context.tagAction(TagsVaccinations.tag_465_vaccinations);
        if (vm.vaccinations.isEmpty) {
          context.tagAction(TagsVaccinations.tag_464_vaccinations_empty);
        }
        context.traceAction(EnsTraceType.CONSULT_RUBRIQUE_VACCINATIONS);
      },
      builder: (context, vm) {
        return Scaffold(
          floatingActionButton: vm.status.isSuccess() && vm.vaccinations.isNotEmpty
              ? EnsFloatingActionAddButton(onPressed: () => _onAddVaccination(context, vm))
              : null,
          appBar: const EnsAppBarSubLevel(title: 'Carnet de vaccination'),
          body: vm.vaccinations.isNotEmpty
              ? _ContentVaccinations(vm: vm)
              : _EmptyVaccinationsPage(vm: vm, onAddVaccination: _onAddVaccination),
        );
      },
    );
  }

  void _onAddVaccination(BuildContext context, VaccinationsScreenViewModel vm) {
    _tagAddVaccinationFabClick(context);
    if (vm.isAddVaccinationForFirstTime) {
      vm.onAddVaccinationFirstTime();
      showAddVaccinationBottomSheetFirstTime(context);
    } else {
      _showAddVaccinationBottomSheet(context);
    }
  }

  void _showAddVaccinationBottomSheet(BuildContext context) {
    DynamicActionBottomSheet.showOptionsBottomSheet(
      [
        BottomSheetAction(
          assetName: EnsImages.ic_datamatrix,
          label: 'Scanner la boîte de vaccin',
          execution: () => goToScanScreen(context),
        ),
        BottomSheetAction(
          assetName: EnsImages.ic_edit,
          label: 'Remplir manuellement le formulaire',
          execution: () => goToAddScreen(context),
        ),
      ],
      context,
    );
  }

  void _tagAddVaccinationFabClick(BuildContext context) {
    context.tagAction(TagsVaccinations.tag_266_button_ajout_vaccination);
    context.tagAction(
      TagsVaccinations.tag_964_popin_choix_remplissage_scan_manuel,
    );
  }
}

class _Success extends StatelessWidget {
  final VaccinationsScreenViewModel vm;

  const _Success({required this.vm});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: EnsPullToRefresh(
        onRefresh: () async => vm.refreshVaccinations(),
        child: LayoutBuilder(
          builder: (_, constraints) => ScrollviewWithScrollbar(
            physics: const AlwaysScrollableScrollPhysics(),
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: IntrinsicHeight(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _DescriptionEtLienTelechargerSynthese(vm: vm),
                    const _CardVaccinsARealiser(),
                    _VaccinationsContent(vm),
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

class _VaccinationsContent extends StatefulWidget {
  final VaccinationsScreenViewModel vm;

  const _VaccinationsContent(this.vm);

  @override
  State<_VaccinationsContent> createState() => _VaccinationsContentState();
}

class _VaccinationsContentState extends State<_VaccinationsContent> {
  VaccineMandatoryFilter filter = VaccineMandatoryFilter.ALL;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _Filter(onFilter),
        const Padding(
          padding: EdgeInsets.only(left: 24, bottom: 12),
          child: Text('Vaccinations réalisées', style: EnsTextStyle.text20_w400_normal_title),
        ),
        if (widget.vm.getVaccinationsItems(filter: filter).isNotEmpty)
          _VaccinationsList(widget.vm.getVaccinationsItems(filter: filter))
        else
          Padding(
            padding: const EdgeInsets.only(left: 24, bottom: 32),
            child: Text(
              filter == VaccineMandatoryFilter.MANDATORY
                  ? 'Aucune vaccination obligatoire réalisée.'
                  : 'Aucune vaccination recommandée réalisée.',
              style: EnsTextStyle.text14_w400_normal_body,
            ),
          ),
      ],
    );
  }

  void onFilter(VaccineMandatoryFilter newFilter) {
    setState(() {
      filter = newFilter;
    });
  }
}

class _VaccinationsList extends StatelessWidget {
  final List<VaccinationItemDisplayModel> vaccinations;

  const _VaccinationsList(this.vaccinations);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: vaccinations.map(
        (vaccination) {
          final item = vaccination as VaccinationDisplayModelVaccination;
          return Column(
            children: [
              SlidableAutoCloseBehavior(child: _VaccinationsListItem(vaccination: item.vaccination)),
              _VaccinationsListDivider(vaccinations, 0),
            ],
          );
        },
      ).toList(),
    );
  }
}

class _Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: ScrollviewWithScrollbar(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(24.0),
              child: Text(
                'Je peux voir mes vaccinations à venir et renseigner celles déjà réalisées. Je retrouve également les vaccinations ajoutées par mes professionnels de santé.',
                style: EnsTextStyle.text14_w400_normal_body,
              ),
            ),
            SizedBox(height: 16),
            CarouselSkeleton(),
            SizedBox(height: 20),
            ListItemSkeleton(),
          ],
        ),
      ),
    );
  }
}

class _EmptyVaccinationsPage extends StatelessWidget {
  final VaccinationsScreenViewModel vm;
  final void Function(BuildContext context, VaccinationsScreenViewModel vm) onAddVaccination;

  const _EmptyVaccinationsPage({required this.vm, required this.onAddVaccination});

  @override
  Widget build(BuildContext context) {
    return EnsEmptyPage(
      title: 'J\'ajoute mes vaccinations'.resolveWith(isProfilPrincipal: vm.isProfilPrincipal),
      description: 'Pour garder mon carnet de vaccination à jour.'.resolveWith(isProfilPrincipal: vm.isProfilPrincipal),
      customImagePath: EnsImages.document_ajout,
      buttonList: EnsEmptyButtonList.withPrimaryButton(
        primaryButtonLabel: 'Ajouter une vaccination',
        primaryButtonHandler: () {
          onAddVaccination(context, vm);
        },
      ),
      bottomWidget: _CardVaccinsARealiser(vaccinations: vm.vaccinations),
    );
  }
}

class _VaccinationsListItem extends StatelessWidget {
  final EnsVaccination vaccination;

  const _VaccinationsListItem({required this.vaccination});

  @override
  Widget build(BuildContext context) {
    return StoreConnector<EnsState, VaccinationsScreenViewModel>(
      converter: (store) => VaccinationsScreenViewModel.from(store),
      distinct: true,
      builder: (_, vm) => DeleteSlidable(
        child: VaccinationItem(
          vaccination: vaccination,
          onTap: () => context.tagAction(TagsVaccinations.tag_268_button_carte_vaccination),
        ),
        onPressed: (context) {
          if (vaccination.authoredByPatient) {
            _showDeleteConfirmationBottomSheet(context, vm);
          } else {
            _displayCantDeleteDocumentBottomSheet(context);
          }
        },
      ),
    );
  }

  void _showDeleteConfirmationBottomSheet(
    BuildContext context,
    VaccinationsScreenViewModel vm,
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
          positiveButtonHandler: () => _deleteVaccination(context, vm, vaccination),
          negativeButtonHandler: () => context.tagAction(TagsVaccinations.tag_289_button_supprimer_vaccination_annuler),
        );
      },
    );
  }

  void _deleteVaccination(
    BuildContext context,
    VaccinationsScreenViewModel vm,
    EnsVaccination vaccination,
  ) {
    context.tagAction(
      TagsVaccinations.tag_288_button_supprimer_vaccination_supprimer,
    );
    vm.deleteVaccination(vaccination.id);
  }

  void _displayCantDeleteDocumentBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return const InformationBottomSheet(
          title: 'Cette vaccination ne peut pas être supprimée',
          description: Text(
            'Vous ne pouvez pas supprimer cette vaccination car elle a été ajoutée ou confirmée par un professionnel de santé.',
            style: EnsTextStyle.text16_w400_normal_body,
            textAlign: TextAlign.center,
          ),
        );
      },
    );
  }
}

class _VaccinationsListDivider extends StatelessWidget {
  final List<VaccinationItemDisplayModel> vaccinations;
  final int index;

  const _VaccinationsListDivider(this.vaccinations, this.index);

  @override
  Widget build(BuildContext context) {
    return Divider(
      height: (vaccinations.length != index) ? 2 : 0,
      color: (vaccinations.length != index) ? EnsColors.neutral200 : Colors.white,
    );
  }
}

class _Filter extends StatelessWidget {
  final _vaccineMandatoryController = ValueNotifier<VaccineMandatoryFilter>(VaccineMandatoryFilter.ALL);
  final Function(VaccineMandatoryFilter) onFilter;

  _Filter(this.onFilter);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 24.0),
      child: EnsDropDown(
        onChanged: () => onFilter(_vaccineMandatoryController.value),
        defaultBorderColor: EnsColors.neutral300,
        context: context,
        borderRadius: BorderRadius.circular(4),
        hint: _vaccineMandatoryController.value.label,
        controller: _vaccineMandatoryController,
        items: VaccineMandatoryFilter.values.toList(),
        itemFormater: (VaccineMandatoryFilter? filter) => filter != null ? filter.label : '',
      ),
    );
  }
}

class _ContentVaccinations extends StatelessWidget {
  final VaccinationsScreenViewModel vm;

  const _ContentVaccinations({required this.vm});

  @override
  Widget build(BuildContext context) {
    switch (vm.status) {
      case AllPurposesStatus.LOADING:
      case AllPurposesStatus.NOT_LOADED:
        return _Loading();
      case AllPurposesStatus.SUCCESS:
        return _Success(vm: vm);
      case AllPurposesStatus.ERROR:
        return ErrorPage(reloadFunction: vm.loadVaccinations);
    }
  }
}

void showAddVaccinationBottomSheetFirstTime(BuildContext context) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    builder: (BuildContext context) {
      return EnsIllustrationBottomSheet(
        title: 'Ajouter automatiquement le vaccin',
        subtitle: 'Je scanne le QR code situé sur le côté de la boîte du vaccin pour l\'ajouter automatiquement.',
        asset: EnsImages.datamatrix,
        positiveButtonLabel: 'Scanner le QR code',
        negativeButtonLabel: 'Remplir manuellement',
        secondaryButtonOutlined: true,
        positiveButtonHandler: () => goToScanScreen(context),
        negativeButtonHandler: () => goToAddScreen(context),
        closeButtonHandler: () => context.tagAction(TagsVaccinations.tag_971_button_fermer),
      );
    },
  );
}

void goToScanScreen(BuildContext context) {
  context.tagAction(TagsVaccinations.tag_962_button_scanner_vaccin);
  Navigator.pushNamed(
    context,
    ScannerScreen.routeName,
    arguments: const ScannerScreenArguments(typeScan: TypeScan.SCAN_BOITE_VACCIN),
  );
}

void goToAddScreen(BuildContext context) {
  context.tagAction(TagsVaccinations.tag_963_button_remplir_manuellement);
  Navigator.pushNamed(
    context,
    EditVaccinationScreen.routeName,
    arguments: null,
  );
}

class _DescriptionEtLienTelechargerSynthese extends StatelessWidget {
  final VaccinationsScreenViewModel vm;

  const _DescriptionEtLienTelechargerSynthese({required this.vm});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, top: 28, bottom: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Grâce ${vm.isProfilPrincipal ? 'à mon carnet de vaccination' : 'au carnet de vaccination de ${vm.mainFirstName}'}, '
                    'je peux ajouter mes vaccinations et consulter celles déjà enregistrées. Je peux également télécharger et partager une synthèse de mes vaccinations.'
                .resolveWith(isProfilPrincipal: vm.isProfilPrincipal),
            style: EnsTextStyle.text14_w400_normal_body,
          ),
          const SizedBox(height: 8),
          Semantics(
            label: 'Télécharger la synthèse de mes vaccinations'.resolveWith(isProfilPrincipal: vm.isProfilPrincipal),
            button: true,
            child: EnsLinkText(
              label: 'Télécharger la synthèse de mes vaccinations'.resolveWith(isProfilPrincipal: vm.isProfilPrincipal),
              textPadding: const EdgeInsets.symmetric(vertical: 10),
              onTap: () => {
                context.tagAction(TagsVaccinations.tag_487_button_telecharger),
                vm.exportRubriqueVaccincation(),
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _CardVaccinsARealiser extends StatelessWidget {
  final List<EnsVaccination>? vaccinations;

  const _CardVaccinsARealiser({this.vaccinations});

  @override
  Widget build(BuildContext context) {
    final EdgeInsetsGeometry paddingToApply =
        vaccinations == null ? const EdgeInsets.symmetric(horizontal: 24) : EdgeInsets.zero;

    return Padding(
      padding: paddingToApply,
      child: EnsInformationCard(
        image: EnsImages.vaccination,
        backgroundColor: EnsColors.light,
        onTap: () {
          context.tagAction(TagsVaccinations.tag_466_button_voir_vaccinations_a_realiser);
          Navigator.pushNamed(context, CarteVaccinationsDetailScreen.routeName);
        },
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Je découvre le calendrier simplifié des vaccinations 2024',
              style: EnsTextStyle.text14_w400_normal_body,
            ),
            SizedBox(height: 8),
            Text(
              'Voir les vaccins à réaliser',
              style: EnsTextStyle.text14_w700_normal_primary_underline,
            ),
          ],
        ),
      ),
    );
  }
}
