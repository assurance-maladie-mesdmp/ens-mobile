/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/maladies/screen/viewModels/associer_traitement_screen_view_model.dart';
import 'package:fr_cnamts_ens/profil_medical/screens/viewmodels/link_traitement_display_model.dart';
import 'package:fr_cnamts_ens/profil_medical/traitement/redux/traitements_actions.dart';
import 'package:fr_cnamts_ens/profil_medical/traitement/widgets/linked_allergie_section.dart';
import 'package:fr_cnamts_ens/profil_medical/traitement/widgets/linked_maladie_section.dart';
import 'package:fr_cnamts_ens/profils_rattaches/screens/profils_utils.dart';
import 'package:fr_cnamts_ens/tags/pml/tags_maladies.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_checkbox.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_divider.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_snackbar.dart';
import 'package:fr_cnamts_ens/ui/widgets/list/ens_list_item.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';
import 'package:fr_cnamts_ens/utils/wordings_extension.dart';
import 'package:intl/intl.dart';

class AssocierTraitementScreenArguments {
  final List<String> selectedTraitementIds;

  const AssocierTraitementScreenArguments({required this.selectedTraitementIds});
}

class AssocierTraitementScreen extends StatelessWidget {
  static const routeName = '/link/associer-traitement';

  const AssocierTraitementScreen();

  @override
  Widget build(BuildContext context) {
    final arg = ModalRoute.of(context)!.settings.arguments! as AssocierTraitementScreenArguments;

    return StoreConnector<EnsState, AssocierTraitementScreenViewModel>(
      converter: (store) => AssocierTraitementScreenViewModel.from(store),
      onInit: (store) {
        context.tagAction(TagsMaladies.tag_1337_popin_associer_traitement_renseigne);
        store.dispatch(const FetchTraitementsAction());
      },
      builder: (context, vm) => Scaffold(
        appBar: const EnsAppBarSubLevel(title: 'Associer un traitement'),
        body: Content(vm: vm, selectedTraitementIds: arg.selectedTraitementIds),
      ),
    );
  }
}

class Content extends StatefulWidget {
  final AssocierTraitementScreenViewModel vm;
  final List<String> selectedTraitementIds;

  const Content({required this.vm, required this.selectedTraitementIds});

  @override
  State<Content> createState() => _ContentState();
}

class _ContentState extends State<Content> {
  List<String> _selectedTraitementsIds = [];

  @override
  void initState() {
    super.initState();
    _selectedTraitementsIds = widget.selectedTraitementIds;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          _ListTraitement(
            displayModels: widget.vm.displayModels,
            selectedTraitementsIds: _selectedTraitementsIds,
            onSelectedTraitement: _onSelectedTraitement,
            profilType: widget.vm.profilType,
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Spacer(),
              Padding(
                padding: const EdgeInsets.fromLTRB(24, 0, 24, 32),
                child: EnsButton(
                  label: _addButtonLabel,
                  semanticLabel: _addButtonLabel,
                  onTap: () => _onAddTraitement(context, widget.vm.toLinkedTraitementDisplayModel),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _onAddTraitement(
    BuildContext context,
    List<LinkedTraitementDisplayModel> Function(List<String> traitementIds) toLinkedTraitementDisplayModel,
  ) {
    context.tagAction(TagsMaladies.tag_1340_button_associer_traitement_ajouter);
    if (_selectedTraitementsIds.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        EnsSnackbar.error(
          context: context,
          label: 'Sélectionner au moins un traitement',
          extraVerticalPadding: 100,
        ),
      );
    } else {
      final linkedTraitementDisplayModel = toLinkedTraitementDisplayModel(_selectedTraitementsIds);
      Navigator.of(context).pop(linkedTraitementDisplayModel);
    }
  }

  void _onSelectedTraitement(String traitementId) {
    setState(() {
      if (_selectedTraitementsIds.contains(traitementId)) {
        _selectedTraitementsIds.remove(traitementId);
      } else {
        _selectedTraitementsIds.add(traitementId);
      }
    });
  }

  String get _addButtonLabel {
    final traitementsCheckedCount = _selectedTraitementsIds.length;
    return Intl.plural(
      traitementsCheckedCount,
      zero: 'Ajouter',
      other: 'Ajouter ($traitementsCheckedCount)',
    );
  }
}

class _ListTraitement extends StatelessWidget {
  final List<TraitementAssociableDisplayModel> displayModels;
  final List<String> selectedTraitementsIds;
  final void Function(String traitementId) onSelectedTraitement;
  final ProfilType profilType;

  const _ListTraitement({
    required this.displayModels,
    required this.selectedTraitementsIds,
    required this.onSelectedTraitement,
    required this.profilType,
  });

  @override
  Widget build(BuildContext context) {
    return ScrollviewWithScrollbar(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 24),
            child: Text(
              'Sélectionner le ou les traitements à associer à votre maladie ou sujet de santé.'
                  .resolveWith(isProfilPrincipal: profilType.isProfilPrincipal),
              style: EnsTextStyle.text14_w400_normal_body,
            ),
          ),
          ...displayModels
              .map((dm) => [_TraitementCard(dm, selectedTraitementsIds, onSelectedTraitement), const EnsDivider()])
              .flattened,
          const SizedBox(height: 100),
        ],
      ),
    );
  }
}

class _TraitementCard extends StatelessWidget {
  final TraitementAssociableDisplayModel dm;
  final List<String> selectedTraitementsIds;
  final void Function(String traitementId) onSelectedTraitement;

  const _TraitementCard(this.dm, this.selectedTraitementsIds, this.onSelectedTraitement);

  @override
  Widget build(BuildContext context) {
    final isSelected = selectedTraitementsIds.contains(dm.id);
    return EnsListItem(
      color: isSelected ? EnsColors.neutral200 : Colors.white,
      onTap: () => onSelectedTraitement(dm.id),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          EnsCheckbox(value: isSelected, onChange: (_) => onSelectedTraitement(dm.id)),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(dm.nom, style: EnsTextStyle.text16_w700_normal_title),
                const SizedBox(height: 8),
                Text(dm.dateLabel, style: EnsTextStyle.text14_w400_normal_body),
                if (dm.posologie?.isNotEmpty == true) ...[
                  const SizedBox(height: 8),
                  Text(
                    dm.posologie!,
                    style: EnsTextStyle.text14_w400_normal_body,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
                if (dm.linkedMaladieNames.isNotEmpty)
                  LinkedMaladieSection(
                    maladieNames: dm.linkedMaladieNames,
                    cardColor: isSelected ? Colors.white : EnsColors.neutral200,
                  ),
                if (dm.linkedAllergieNames.isNotEmpty)
                  LinkedAllergieSection(
                    allergieNames: dm.linkedAllergieNames,
                    cardColor: isSelected ? Colors.white : EnsColors.neutral200,
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
