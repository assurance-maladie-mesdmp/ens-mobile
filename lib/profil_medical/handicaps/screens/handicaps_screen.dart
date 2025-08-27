/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/handicaps/redux/handicaps_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/handicaps/screens/edit_handicap_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/handicaps/screens/handicap_details_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/handicaps/screens/viewmodels/handicaps_display_model_for_list.dart';
import 'package:fr_cnamts_ens/profil_medical/handicaps/screens/viewmodels/handicaps_screen_view_model.dart';
import 'package:fr_cnamts_ens/profils_rattaches/screens/profils_utils.dart';
import 'package:fr_cnamts_ens/tags/pml/tags_handicaps.dart';
import 'package:fr_cnamts_ens/traces/domain/ens_send_trace.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/error_page.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/confirmation_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/confirmation_bottom_sheet_default_text_content.dart';
import 'package:fr_cnamts_ens/ui/widgets/delete_slidable.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_divider.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_empty_page.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_external_link.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_floating_action_add_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_information_card.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_ink_well.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';
import 'package:fr_cnamts_ens/ui/widgets/skeletons.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:fr_cnamts_ens/utils/webpage_utils.dart';
import 'package:fr_cnamts_ens/utils/wordings_extension.dart';

class HandicapsScreen extends StatelessWidget {
  static const routeName = '/medical/profil/handicaps';

  const HandicapsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return StoreConnector<EnsState, HandicapsScreenViewModel>(
      converter: (store) => HandicapsScreenViewModel.from(store),
      onInit: (store) => store.dispatch(const FetchHandicapsAction()),
      onInitialBuild: (_) {
        context.tagAction(TagsHandicaps.tag_527_handicap);
        context.traceAction(EnsTraceType.CONSULT_RUBRIQUE_HANDICAPS);
      },
      distinct: true,
      builder: (context, vm) => _HandicapsContent(vm: vm),
    );
  }
}

class _HandicapsContent extends StatelessWidget {
  final HandicapsScreenViewModel vm;

  const _HandicapsContent({required this.vm});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const EnsAppBarSubLevel(title: 'Handicaps'),
      floatingActionButton: Visibility(
        visible: vm.listStatus == HandicapsListStatus.SUCCESS,
        child: EnsFloatingActionAddButton(
          tooltip: 'Ajouter un nouveau handicap',
          onPressed: () {
            context.tagAction(TagsHandicaps.tag_528_button_ajout_handicap);
            Navigator.pushNamed(context, EditHandicapScreen.routeName);
          },
        ),
      ),
      body: _Content(vm),
    );
  }
}

class _HandicapEmtpyState extends StatelessWidget {
  final Function() setUnconcerned;
  final bool isUnconcernedLoading;
  final ProfilType profilType;

  const _HandicapEmtpyState({
    required this.setUnconcerned,
    required this.isUnconcernedLoading,
    required this.profilType,
  });

  @override
  Widget build(BuildContext context) {
    return EnsEmptyPage(
      title: 'J\'ajoute mes handicaps'.resolveWith(isProfilPrincipal: profilType.isProfilPrincipal),
      description:
          'Pour aider les professionnels de santé à adapter leurs soins selon mes besoins, notamment en cas d’urgence.'
              .resolveWith(isProfilPrincipal: profilType.isProfilPrincipal),
      buttonList: EnsEmptyButtonList.withPrimaryAndExternalLinkButtonAndBottomLinkText(
        primaryButtonLabel: 'Ajouter un handicap',
        primaryButtonHandler: () {
          context.tagAction(TagsHandicaps.tag_528_button_ajout_handicap);
          Navigator.pushNamed(context, EditHandicapScreen.routeName);
        },
        linkButtonLabel: _getLinkButtonLabel(
          profilType: profilType,
        ),
        isLinkButtonLoading: isUnconcernedLoading,
        linkButtonHandler: () {
          context.tagAction(TagsHandicaps.tag_585_link_absence_handicap);
          setUnconcerned();
        },
        externalLinkLabel: 'En savoir plus sur le handicap',
        externalLinkUrl: 'https://www.monparcourshandicap.gouv.fr',
      ),
    );
  }
}

class _HandicapUnconcernedState extends StatelessWidget {
  final String? unconcernedDate;
  final String mainFirstName;
  final ProfilType profilType;

  const _HandicapUnconcernedState({this.unconcernedDate, required this.mainFirstName, required this.profilType});

  @override
  Widget build(BuildContext context) {
    return EnsEmptyPage(
      title: _getTitleLabel(
        profilType: profilType,
        mainFirstName: mainFirstName,
        unconcernedDate: unconcernedDate,
      ),
      description:
          'Si ma situation a évolué, je la mets à jour pour aider les professionnels de santé à adapter leurs soins selon mes besoins, notamment en cas d’urgence.'
              .resolveWith(isProfilPrincipal: profilType.isProfilPrincipal),
      buttonList: EnsEmptyButtonList.withPrimaryAndExternalLinkButton(
        primaryButtonLabel: 'Ajouter un handicap',
        primaryButtonHandler: () {
          context.tagAction(TagsHandicaps.tag_528_button_ajout_handicap);
          Navigator.pushNamed(context, EditHandicapScreen.routeName);
        },
        externalLinkLabel: 'En savoir plus sur le handicap',
        externalLinkUrl: 'https://www.monparcourshandicap.gouv.fr',
      ),
    );
  }
}

class _HandicapsList extends StatelessWidget {
  final HandicapsScreenViewModel vm;
  final Function() tagOnDetailsClick;
  final Function() tagOnInformationClick;

  const _HandicapsList({required this.vm, required this.tagOnDetailsClick, required this.tagOnInformationClick});

  @override
  Widget build(BuildContext context) {
    return ScrollviewWithScrollbar(
      physics: const ScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          _HandicapDescription(profilType: vm.profilType),
          HandicapInformation(tagOnInformationClick),
          SlidableAutoCloseBehavior(
            child: ListViewWithScrollbar.separated(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (_, __) => const EnsDivider(),
              itemCount: vm.displayModels.length,
              itemBuilder: (_, index) {
                final handicap = vm.displayModels[index];
                return DeleteSlidable(
                  child: _HandicapItem(handicap, tagOnDetailsClick),
                  onPressed: (context) => _showDeleteConfirmationBottomSheet(context, vm, handicap.id),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  void _showDeleteConfirmationBottomSheet(
    BuildContext context,
    HandicapsScreenViewModel vm,
    String handicapId,
  ) {
    context.tagAction(TagsHandicaps.tag_543_popin_supprimer_handicap);
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) {
        return ConfirmationBottomSheet(
          title: 'Supprimer cet handicap ?',
          content: const ConfirmationBottomSheetDefaultTextContent('Cet handicap sera supprimé définitivement.'),
          positiveButtonLabel: 'Supprimer',
          positiveButtonHandler: () {
            context.tagAction(TagsHandicaps.tag_545_button_supprimer_handicap_valider);
            vm.deleteHandicap(handicapId);
          },
          negativeButtonHandler: () {
            context.tagAction(TagsHandicaps.tag_544_button_supprimer_handicap_annuler);
          },
        );
      },
    );
  }
}

class _HandicapItem extends StatelessWidget {
  final HandicapsDisplayModelForList item;
  final Function() tagOnDetailsClick;

  const _HandicapItem(this.item, this.tagOnDetailsClick);

  @override
  Widget build(BuildContext context) {
    return EnsInkWell(
      color: EnsColors.light,
      semanticLabel: '${item.name}, ${item.types.join(',')}',
      onTap: () {
        tagOnDetailsClick();
        Navigator.of(context).pushNamed(HandicapDetailsScreen.routeName, arguments: item.id);
      },
      child: Semantics(
        excludeSemantics: true,
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(item.name, style: EnsTextStyle.text16_w700_normal_title),
                    const EnsSvg(EnsImages.ic_chevron_right, height: 12, width: 8, color: EnsColors.title),
                  ],
                ),
              ),
              Semantics(
                excludeSemantics: true,
                child: _HandicapTypes(item.types),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _HandicapDescription extends StatelessWidget {
  final ProfilType profilType;

  const _HandicapDescription({required this.profilType});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 32, 24, 10),
      child: Text(
        'J\'aide les professionnels de santé à adapter leurs soins selon mes besoins, notamment en cas d’urgence.'
            .resolveWith(isProfilPrincipal: profilType.isProfilPrincipal),
        style: EnsTextStyle.text14_w400_normal_body,
      ),
    );
  }
}

class HandicapInformation extends StatelessWidget {
  final Function() tagOnInformationClick;

  const HandicapInformation(this.tagOnInformationClick);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
      child: EnsInformationCard(
        image: EnsImages.handicap,
        onTap: () {
          tagOnInformationClick();
          launchUrlOnBrowser('https://www.monparcourshandicap.gouv.fr/');
        },
        child: const EnsExternalLink.withoutRedirection(
          linkText: 'Retrouvez plus d\'informations sur le handicap',
        ),
      ),
    );
  }
}

class _HandicapTypes extends StatelessWidget {
  final List<String> types;

  const _HandicapTypes(this.types);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: types.map((type) => Text(type, style: EnsTextStyle.text14_w400_normal_body)).toList(),
    );
  }
}

class _LoaderSkeleton extends StatelessWidget {
  final Function() tagOnInformationClick;
  final ProfilType profilType;

  const _LoaderSkeleton({required this.tagOnInformationClick, required this.profilType});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _HandicapDescription(profilType: profilType),
        HandicapInformation(tagOnInformationClick),
        ListViewWithScrollbar.separated(
          separatorBuilder: (_, __) => const Divider(thickness: 1, color: EnsColors.neutral200),
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: 3,
          itemBuilder: (context, index) => const ListItemSkeleton(),
        ),
      ],
    );
  }
}

class _Content extends StatelessWidget {
  final HandicapsScreenViewModel vm;

  const _Content(this.vm);

  @override
  Widget build(BuildContext context) {
    switch (vm.listStatus) {
      case HandicapsListStatus.UNCONCERNED:
        return _HandicapUnconcernedState(
          unconcernedDate: vm.unconcernedDate,
          mainFirstName: vm.mainFirstName,
          profilType: vm.profilType,
        );
      case HandicapsListStatus.EMPTY:
        return _HandicapEmtpyState(
          setUnconcerned: vm.setUnconcerned,
          isUnconcernedLoading: vm.isUnconcernedLoading,
          profilType: vm.profilType,
        );
      case HandicapsListStatus.SUCCESS:
        return _HandicapsList(
          vm: vm,
          tagOnDetailsClick: () => context.tagAction(TagsHandicaps.tag_529_button_voir_details_handicap),
          tagOnInformationClick: () => context.tagAction(TagsHandicaps.tag_546_button_plus_informations_handicap),
        );
      case HandicapsListStatus.ERROR:
        return ErrorPage(reloadFunction: vm.onReload);
      default:
        return _LoaderSkeleton(
          tagOnInformationClick: () => context.tagAction(TagsHandicaps.tag_546_button_plus_informations_handicap),
          profilType: vm.profilType,
        );
    }
  }
}

String _getLinkButtonLabel({
  required ProfilType profilType,
}) {
  return switch (profilType) {
    ProfilType.PROFIL_PRINCIPAL => 'Je n\'ai pas de handicap à ajouter',
    ProfilType.AIDE || ProfilType.AYANT_DROIT => 'Aucun handicap à ajouter'
  };
}

String _getTitleLabel({
  required ProfilType profilType,
  required String? unconcernedDate,
  required String mainFirstName,
}) {
  return switch (profilType) {
    ProfilType.PROFIL_PRINCIPAL => 'J\'ai déclaré ne pas avoir de handicap le $unconcernedDate',
    ProfilType.AIDE ||
    ProfilType.AYANT_DROIT =>
      'J\'ai déclaré que $mainFirstName n\'a pas de handicap le $unconcernedDate'
  };
}
