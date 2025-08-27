/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/infra/injection/ens_module_container.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/screens/acteur_de_sante_suggestions_carrousel.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/screens/professionnel_de_sante_display_model_role_enum.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/screens/viewmodels/acteur_de_sante_suggestion_display_model.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/screens/viewmodels/acteur_de_sante_suggestions_view_model.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/search_ps/screens/add_ps_bottom_sheet_helper.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/widget/ps_suggestion_card.dart';
import 'package:fr_cnamts_ens/tags/pml/tags_professionnels_de_sante.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';

class ActeurDeSanteSuggestionsScreen extends StatelessWidget {
  static const routeName = '/medical/profil/professionnels-de-sante/suggestion';

  const ActeurDeSanteSuggestionsScreen();

  @override
  Widget build(BuildContext context) {
    final hasMedecinTraitant = ModalRoute.of(context)!.settings.arguments as bool? ?? false;
    return StoreConnector<EnsState, ActeurDeSanteSuggestionsViewModel>(
      converter: (store) => ActeurDeSanteSuggestionsViewModel.from(
        store,
        hasMedecinTraitant,
        EnsModuleContainer.commonInjector!.getRemoteConfigWrapper(),
      ),
      distinct: true,
      onInitialBuild: (vm) {
        context.tagAction(TagsProfessionnelsDeSante.tag_1031_suggestion_ps_page);
      },
      builder: (context, vm) => _Content(vm),
    );
  }
}

class _Content extends StatelessWidget {
  final ActeurDeSanteSuggestionsViewModel vm;

  const _Content(this.vm);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const EnsAppBarSubLevel(title: 'Suggestions'),
      body: ScrollviewWithScrollbar(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(24, 32, 24, 24),
                child: Text(
                  getSuggestionsDescription(profilType: vm.profilType, mainFirstName: vm.mainFirstName),
                  style: EnsTextStyle.text14_w400_normal_body,
                ),
              ),
              for (final as in vm.suggestionsDisplayModels)
                Padding(
                  padding: const EdgeInsets.only(left: 24, right: 24, bottom: 16),
                  child: PsSuggestionCard(
                    suggestionDisplayModel: as,
                    onTap: () {
                      _addAsSuggestion(as, context, vm);
                    },
                    buttonText: 'Ajouter',
                    buttonColor: EnsColors.primary,
                    buttonTextStyle: EnsTextStyle.text14_w700_normal_primary,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }

  void _addAsSuggestion(
    ActeurDeSanteSuggestionDisplayModel acteurDeSanteSuggestion,
    BuildContext context,
    ActeurDeSanteSuggestionsViewModel vm,
  ) {
    switch (acteurDeSanteSuggestion) {
      case final EtablissementDeSanteSuggestionDisplayModel pharmacie:
        vm.addEs(pharmacie.id);
      case final ProfessionalDeSanteSuggestionDisplayModel ps:
        _addPsSuggestion(ps, vm, context);
    }
  }

  void _addPsSuggestion(
    ProfessionalDeSanteSuggestionDisplayModel ps,
    ActeurDeSanteSuggestionsViewModel vm,
    BuildContext context,
  ) {
    final professionType = ps.professionType;
    if (professionType != null && vm.isPsRoleFeatureEnable) {
      context.tagAction(TagsProfessionnelsDeSante.tag_1033_popin_suggestion_mt);
      AddPsBottomSheetHelper.showAddPsWithRoleBottomSheet(
        psProfession: professionType,
        positiveButtonAction: () {
          vm.addPs(id: ps.id, role: professionType.getPsDisplayModelRole);
        },
        negativeButtonAction: () {
          vm.addPs(id: ps.id, role: null);
        },
      );
    } else if (!vm.hasMedecinTraitant) {
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
      context.tagAction(TagsProfessionnelsDeSante.tag_1032_button_add_ps_suggestion);
      vm.addPs(id: ps.id, role: null);
    }
  }
}
