/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/groupe_sanguin/domain/groupe_sanguin.dart';
import 'package:fr_cnamts_ens/profil_medical/groupe_sanguin/domain/informations_groupe_sanguin.dart';
import 'package:fr_cnamts_ens/profil_medical/groupe_sanguin/screens/connaitre_son_groupe_sanguin_bottom_sheet.dart';
import 'package:fr_cnamts_ens/profil_medical/groupe_sanguin/screens/selection_groupe_sanguin_bottom_sheet.dart';
import 'package:fr_cnamts_ens/profil_medical/groupe_sanguin/screens/viewModels/groupe_sanguin_viewmodel.dart';
import 'package:fr_cnamts_ens/tags/pml/tags_groupe_sanguin.dart';
import 'package:fr_cnamts_ens/traces/domain/ens_send_trace.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/error_page.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/confirmation_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/confirmation_bottom_sheet_default_text_content.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/dynamic_action_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_dropdown_list.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_html.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_link_text.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_rich_text.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';
import 'package:fr_cnamts_ens/ui/widgets/skeletons.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:fr_cnamts_ens/utils/screen_status.dart';
import 'package:fr_cnamts_ens/utils/wordings_extension.dart';
import 'package:intl/intl.dart';

class GroupeSanguinScreen extends StatelessWidget {
  static const routeName = 'profil/medical/groupe_sanguin';

  const GroupeSanguinScreen();

  @override
  Widget build(BuildContext context) {
    return StoreConnector<EnsState, GroupeSanguinViewmodel>(
      converter: (store) => GroupeSanguinViewmodel.from(store),
      onInitialBuild: (vm) {
        vm.fetchData();
        context.tagAction(TagsGroupeSanguin.tag_2657_groupe_sanguin);
        context.traceAction(EnsTraceType.CONSULT_RUBRIQUE_GROUPE_SANGUIN);
      },
      builder: (context, vm) {
        final groupeSanguinData = vm.data;
        return Scaffold(
          appBar: EnsAppBarSubLevel(
            title: 'Groupe sanguin',
            action: groupeSanguinData != null
                ? Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: IconButton(
                      icon: const EnsSvg(EnsImages.ic_more_vertical, color: EnsColors.title, height: 16, width: 4),
                      tooltip: 'Effectuer des actions sur le groupe sanguin',
                      splashRadius: 24,
                      onPressed: () {
                        _displayActionsBottomSheet(
                          context,
                          onDeleteConfirm: () {
                            vm.delete();
                          },
                          onEdit: () {
                            showModalBottomSheet(
                              isScrollControlled: true,
                              context: context,
                              builder: (builder) => const SelectionGroupeSanguinBottomSheet(
                                mode: SelectionGroupeSanguinMode.MODIFICATION,
                              ),
                            );
                          },
                        );
                      },
                    ),
                  )
                : const SizedBox(width: 24),
          ),
          body: SafeArea(
            child: ScrollviewWithScrollbar(
              child: switch (vm.screenStatus) {
                ScreenStatusOnEmpty.LOADING => const _Loading(),
                ScreenStatusOnEmpty.ERROR => ErrorPage(reloadFunction: vm.fetchData),
                ScreenStatusOnEmpty.EMPTY => _Empty(vm.isProfilPrincipal, vm.informationsGroupeSanguinList),
                ScreenStatusOnEmpty.SUCCESS => _Success(
                    vm.data!,
                    vm.informationsGroupeSanguinList,
                    vm.mainFirstName,
                    vm.isProfilPrincipal,
                  ),
              },
            ),
          ),
        );
      },
    );
  }

  void _displayActionsBottomSheet(
    BuildContext context, {
    required Function() onDeleteConfirm,
    required Function() onEdit,
  }) {
    DynamicActionBottomSheet.showOptionsBottomSheet(
      [
        BottomSheetAction(
          assetName: EnsImages.ic_edit,
          label: 'Modifier',
          execution: () {
            context.tagAction(
              TagsGroupeSanguin.tag_2664_popin_modifier_groupe_sanguin,
            );
            onEdit.call();
          },
        ),
        BottomSheetAction(
          assetName: EnsImages.ic_trash,
          label: 'Supprimer',
          execution: () {
            context.tagAction(
              TagsGroupeSanguin.tag_2662_popin_supprimer_groupe_sanguin,
            );
            _showDeleteConfirmationBottomSheet(context, onDeleteConfirm);
          },
        ),
      ],
      context,
    );
  }

  void _showDeleteConfirmationBottomSheet(BuildContext context, Function() onConfirm) {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) {
        return ConfirmationBottomSheet(
          title: 'Supprimer ce groupe sanguin ?',
          content: const ConfirmationBottomSheetDefaultTextContent('Ce groupe sanguin sera supprimé définitivement.'),
          positiveButtonLabel: 'Supprimer',
          positiveButtonHandler: () {
            context.tagAction(TagsGroupeSanguin.tag_2663_button_supprimer_groupe_sanguin_supprimer);
            onConfirm.call();
          },
        );
      },
    );
  }
}

class _Success extends StatelessWidget {
  final GroupeSanguinData data;
  final List<InformationsGroupeSanguin> informationsGroupeSanguin;
  final String firstName;
  final bool isProfilPrincipal;

  const _Success(this.data, this.informationsGroupeSanguin, this.firstName, this.isProfilPrincipal);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const EnsSvg(EnsImages.groupe_sanguin, height: 120, width: 120),
              Text(
                data.groupeSanguin.label,
                style: EnsTextStyle.text64_w700_normal_title,
                textAlign: TextAlign.center,
                semanticsLabel: data.groupeSanguin.accessiblityLabel,
              ),
              Text(
                'Ajouté par ${data.auteur}',
                style: EnsTextStyle.text16_w400_normal_body,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 24),
              _Description(data.groupeSanguin, firstName, isProfilPrincipal),
              const Text(
                'En cas d\'urgence, un prélèvement sanguin sera systématiquement réalisé avant toute transfusion afin d\'éviter tout risque d\'erreur.',
                style: EnsTextStyle.text14_w400_normal_body,
              ),
            ],
          ),
        ),
        if (informationsGroupeSanguin.isNotEmpty) _EnSavoirPlus(informationsGroupeSanguin),
      ],
    );
  }
}

class GroupeSanguinScreenStrings {
  final String peutDonnerStart;
  final String peutDonnerGroupesCibles;
  final String peutDonnerGroupesCiblesSemantics;
  final String donneurUniverselStart;
  final String donneurUniversel;
  final String peutRecevoirStart;
  final String receveurUniverselStart;

  GroupeSanguinScreenStrings({
    required this.peutDonnerStart,
    required this.peutDonnerGroupesCibles,
    required this.peutDonnerGroupesCiblesSemantics,
    required this.donneurUniverselStart,
    required this.donneurUniversel,
    required this.peutRecevoirStart,
    required this.receveurUniverselStart,
  });
}

class _Description extends StatelessWidget {
  final GroupeSanguin groupeSanguin;
  final String firstName;
  final bool isProfilPrincipal;

  const _Description(this.groupeSanguin, this.firstName, this.isProfilPrincipal);

  @override
  Widget build(BuildContext context) {
    final wordings = _buildWordings(
      groupeSanguin: groupeSanguin,
      isProfilPrincipal: isProfilPrincipal,
      firstName: firstName,
    );

    return EnsRichText(
      text: TextSpan(
        children: [
          TextSpan(text: groupeSanguin.pourcentage, style: EnsTextStyle.text16_w700_body),
          TextSpan(
            text: ' de la population française est du groupe ${groupeSanguin.label}.\n',
            style: EnsTextStyle.text16_w400_normal_body,
            semanticsLabel: 'de la population française est du groupe ${groupeSanguin.accessiblityLabel}.',
          ),
          if (groupeSanguin.peutDonner.isNotEmpty) ...[
            TextSpan(text: wordings.peutDonnerStart, style: EnsTextStyle.text16_w400_normal_body),
            const TextSpan(
              text: 'donner ',
              style: EnsTextStyle.text16_w700_body,
            ),
            TextSpan(
              text: Intl.plural(
                groupeSanguin.peutDonner.length,
                one: 'du sang au groupe ',
                other: 'du sang aux groupes ',
              ),
              style: EnsTextStyle.text16_w400_normal_body,
            ),
            TextSpan(
              text: wordings.peutDonnerGroupesCibles,
              style: EnsTextStyle.text16_w700_body,
              semanticsLabel: wordings.peutDonnerGroupesCiblesSemantics,
            ),
          ] else ...[
            TextSpan(text: wordings.donneurUniverselStart, style: EnsTextStyle.text16_w400_normal_body),
            TextSpan(
              text: wordings.donneurUniversel,
              style: EnsTextStyle.text16_w700_body,
            ),
          ],
          if (groupeSanguin.peutRecevoir.isNotEmpty) ...[
            TextSpan(text: wordings.peutRecevoirStart, style: EnsTextStyle.text16_w400_normal_body),
            const TextSpan(
              text: 'recevoir ',
              style: EnsTextStyle.text16_w700_body,
            ),
            TextSpan(
              text: Intl.plural(
                groupeSanguin.peutRecevoir.length,
                one: 'du sang du groupe ',
                other: 'du sang des groupes ',
              ),
              style: EnsTextStyle.text16_w400_normal_body,
            ),
            TextSpan(
              text: Intl.plural(
                groupeSanguin.peutRecevoir.length,
                one: '${groupeSanguin.peutRecevoir.first.label}.\n',
                other: '${_buildGroupesSanguinsListe(groupeSanguin.peutRecevoir)}.\n',
              ),
              style: EnsTextStyle.text16_w700_body,
              semanticsLabel: Intl.plural(
                groupeSanguin.peutRecevoir.length,
                one: '${groupeSanguin.peutRecevoir.first.accessiblityLabel}.\n',
                other: '${_buildGroupesSanguinsListeAccessible(groupeSanguin.peutRecevoir)}.\n',
              ),
            ),
          ] else ...[
            TextSpan(text: wordings.receveurUniverselStart, style: EnsTextStyle.text16_w400_normal_body),
            const TextSpan(
              text: 'receveur universel.\n',
              style: EnsTextStyle.text16_w700_body,
            ),
          ],
        ],
      ),
    );
  }

  String _buildGroupesSanguinsListe(List<GroupeSanguin> groupesSanguins) {
    return '${groupesSanguins.map((groupeSanguin) => groupeSanguin.label).toList().sublist(0, groupesSanguins.length - 1).join(', ')} et ${groupesSanguins.last.label}';
  }

  String _buildGroupesSanguinsListeAccessible(List<GroupeSanguin> groupesSanguins) {
    return '${groupesSanguins.map((groupeSanguin) => groupeSanguin.accessiblityLabel).toList().sublist(0, groupesSanguins.length - 1).join(', ')} et ${groupesSanguins.last.accessiblityLabel}';
  }

  GroupeSanguinScreenStrings _buildWordings({
    required GroupeSanguin groupeSanguin,
    required bool isProfilPrincipal,
    required String firstName,
  }) {
    if (isProfilPrincipal) {
      return GroupeSanguinScreenStrings(
        peutDonnerStart: 'Je peux ',
        peutDonnerGroupesCibles: groupeSanguin.peutDonner.isNotEmpty
            ? Intl.plural(
                groupeSanguin.peutDonner.length,
                one: '${groupeSanguin.peutDonner.first.label}.\n',
                other: '${_buildGroupesSanguinsListe(groupeSanguin.peutDonner)}.\n',
              )
            : '',
        peutDonnerGroupesCiblesSemantics: groupeSanguin.peutDonner.isNotEmpty
            ? Intl.plural(
                groupeSanguin.peutDonner.length,
                one: '${groupeSanguin.peutDonner.first.accessiblityLabel}.\n',
                other: '${_buildGroupesSanguinsListeAccessible(groupeSanguin.peutDonner)}.\n',
              )
            : '',
        donneurUniverselStart: 'Je suis ',
        donneurUniversel: 'donneur universel.\n',
        peutRecevoirStart: 'Et je peux ',
        receveurUniverselStart: 'Et je suis ',
      );
    } else {
      return GroupeSanguinScreenStrings(
        peutDonnerStart: '$firstName peut ',
        peutDonnerGroupesCibles: groupeSanguin.peutDonner.isNotEmpty
            ? Intl.plural(
                groupeSanguin.peutDonner.length,
                one: '${groupeSanguin.peutDonner.first.label} ',
                other: '${_buildGroupesSanguinsListe(groupeSanguin.peutDonner)} ',
              )
            : '',
        peutDonnerGroupesCiblesSemantics: groupeSanguin.peutDonner.isNotEmpty
            ? Intl.plural(
                groupeSanguin.peutDonner.length,
                one: '${groupeSanguin.peutDonner.first.accessiblityLabel} ',
                other: '${_buildGroupesSanguinsListeAccessible(groupeSanguin.peutDonner)} ',
              )
            : '',
        donneurUniverselStart: '$firstName est ',
        donneurUniversel: 'donneur universel ',
        peutRecevoirStart: 'et peut ',
        receveurUniverselStart: 'et est ',
      );
    }
  }
}

class _Empty extends StatelessWidget {
  final bool isProfilPrincipal;
  final List<InformationsGroupeSanguin> infosGroupesSanguins;

  const _Empty(this.isProfilPrincipal, this.infosGroupesSanguins);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const EnsSvg(EnsImages.document_ajout, height: 120, width: 120),
              const SizedBox(height: 24),
              Text(
                'J\'ajoute mon groupe sanguin'.resolveWith(isProfilPrincipal: isProfilPrincipal),
                style: EnsTextStyle.text24_w400_normal_title,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 8),
              const Text(
                'Pour le retrouver en cas de besoin et découvrir ses particularités.',
                style: EnsTextStyle.text16_w400_normal_body,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 8),
              EnsLinkText(
                label: 'Comment connaître son groupe sanguin ?',
                textStyle: EnsTextStyle.text16_w700_primary_underline,
                textAlign: TextAlign.center,
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    builder: (_) {
                      return ConnaitreSonGroupeSanguinBottomSheet();
                    },
                  );
                },
              ),
              EnsButton(
                label: 'Ajouter un groupe sanguin',
                onTap: () {
                  showModalBottomSheet(
                    isScrollControlled: true,
                    context: context,
                    builder: (builder) => const SelectionGroupeSanguinBottomSheet(
                      mode: SelectionGroupeSanguinMode.AJOUT,
                    ),
                  );
                },
              ),
            ],
          ),
        ),
        if (infosGroupesSanguins.isNotEmpty) _EnSavoirPlus(infosGroupesSanguins),
      ],
    );
  }
}

class _EnSavoirPlus extends StatelessWidget {
  const _EnSavoirPlus(this.infos);

  final List<InformationsGroupeSanguin> infos;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: EnsColors.neutral200,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
      child: Column(
        children: [
          const Text(
            'En savoir plus sur le groupe sanguin et le don du sang',
            style: EnsTextStyle.text20_w400_normal_title,
          ),
          const SizedBox(height: 24),
          ...infos.map(
            (info) => Column(
              children: [
                _EnSavoirPlusDropDown(info),
                const SizedBox(height: 16),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _EnSavoirPlusDropDown extends StatelessWidget {
  final InformationsGroupeSanguin informations;
  final _globalKey = GlobalKey();

  _EnSavoirPlusDropDown(this.informations);

  @override
  Widget build(BuildContext context) {
    return Semantics(
      label: 'Appuyer pour afficher des informations supplémentaires',
      child: EnsDropdownList(
        key: _globalKey,
        externalPadding: EdgeInsets.zero,
        headerColor: EnsColors.light,
        label: informations.titre,
        items: [EnsHtml(data: informations.description)],
      ),
    );
  }
}

class _Loading extends StatelessWidget {
  const _Loading();

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(alignment: Alignment.center, child: SkeletonBox(width: 120, height: 120, radius: 120)),
          SizedBox(height: 24),
          Align(alignment: Alignment.center, child: SkeletonBox(width: 120, height: 100)),
          SizedBox(height: 24),
          Align(alignment: Alignment.center, child: SkeletonBox(width: 180)),
          SizedBox(height: 36),
          SkeletonBox(width: 320),
          SizedBox(height: 8),
          SkeletonBox(width: 260),
          SizedBox(height: 8),
          SkeletonBox(width: 300),
          SizedBox(height: 8),
          SkeletonBox(width: 280),
          SizedBox(height: 32),
          SkeletonBox(width: 320),
          SizedBox(height: 8),
          SkeletonBox(width: 280),
          SizedBox(height: 8),
          SkeletonBox(width: 300),
        ],
      ),
    );
  }
}
