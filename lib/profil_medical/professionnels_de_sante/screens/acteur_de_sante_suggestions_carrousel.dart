/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/agenda/screens/viewModels/agenda_screen_view_model.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/screens/acteur_de_sante_suggestions_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/screens/professionnels_de_sante_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/screens/viewmodels/acteur_de_sante_suggestion_display_model.dart';
import 'package:fr_cnamts_ens/profils_rattaches/screens/profils_utils.dart';
import 'package:fr_cnamts_ens/tags/pml/tags_professionnels_de_sante.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_carousel.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_carousel_item.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_ink_well.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';

class ActeurDeSanteSuggestionsCarrousel extends StatelessWidget {
  final List<ActeurDeSanteSuggestionDisplayModel> suggestions;
  final bool hasAMedecinTraitant;
  final void Function(ActeurDeSanteSuggestionDisplayModel) onAddSuggestion;
  final bool emptyPsAndEs;
  final ProfilType profilType;
  final String mainFirstName;

  const ActeurDeSanteSuggestionsCarrousel({
    required this.suggestions,
    required this.hasAMedecinTraitant,
    required this.onAddSuggestion,
    required this.emptyPsAndEs,
    required this.profilType,
    required this.mainFirstName,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 32),
        color: emptyPsAndEs ? EnsColors.neutral200 : EnsColors.neutral100,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            _SuggestionTitle(hasAMedecinTraitant, emptyPsAndEs),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
              child: Text(
                getSuggestionsDescription(profilType: profilType, mainFirstName: mainFirstName),
                style: EnsTextStyle.text14_w400_normal_body,
              ),
            ),
            _SuggestionList(suggestions, hasAMedecinTraitant, onAddSuggestion, emptyPsAndEs),
          ],
        ),
      ),
    );
  }
}

class _SuggestionTitle extends StatelessWidget {
  final bool hasAMedecinTraitant;
  final bool emptyPsAndEs;

  const _SuggestionTitle(this.hasAMedecinTraitant, this.emptyPsAndEs);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Wrap(
        alignment: WrapAlignment.spaceBetween,
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          const Text('Suggestions', style: EnsTextStyle.text20_w400_normal_title),
          if (!emptyPsAndEs)
            EnsInkWell(
              onTap: () {
                context.tagAction(TagsProfessionnelsDeSante.tag_1029_link_voir_tous_suggestion);
                Navigator.pushNamed(
                  context,
                  ActeurDeSanteSuggestionsScreen.routeName,
                  arguments: hasAMedecinTraitant,
                );
              },
              child: const Text('Voir tout', style: EnsTextStyle.text16_w700_primary_underline),
            ),
        ],
      ),
    );
  }
}

class _SuggestionList extends StatelessWidget {
  final List<ActeurDeSanteSuggestionDisplayModel> suggestions;
  final bool hasAMedecinTraitant;
  final void Function(ActeurDeSanteSuggestionDisplayModel) onAddSuggestion;
  final bool emptyPsAndEs;

  const _SuggestionList(this.suggestions, this.hasAMedecinTraitant, this.onAddSuggestion, this.emptyPsAndEs);

  @override
  Widget build(BuildContext context) {
    return EnsCarousel(
      viewportFraction: 0.70,
      disableCenter: true,
      enableInfiniteScroll: false,
      padEnds: false,
      items: [
        ...suggestions
            .take(SUGGESTION_PS_MAX_COUNT)
            .map((suggestion) => _EnsCarouselAsSuggestionItem(suggestion, onAddSuggestion, emptyPsAndEs)),
        _EnsCarouselPsSuggestionEndItem(hasAMedecinTraitant, emptyPsAndEs),
      ],
    );
  }
}

class _EnsCarouselAsSuggestionItem extends EnsCarouselItem {
  final ActeurDeSanteSuggestionDisplayModel suggestion;
  final void Function(ActeurDeSanteSuggestionDisplayModel) onAddSuggestion;
  final bool emptyPsAndEs;

  _EnsCarouselAsSuggestionItem(this.suggestion, this.onAddSuggestion, this.emptyPsAndEs);

  @override
  Widget build(BuildContext context) {
    return Semantics(
      button: true,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(24, 24, 8, 12),
        child: DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(color: EnsColors.neutral200, blurRadius: 12, spreadRadius: 2, offset: Offset(4, 4)),
            ],
          ),
          child: Material(
            color: EnsColors.light,
            borderRadius: BorderRadius.circular(20),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              child: Center(
                widthFactor: 1,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    EnsSvg(suggestion.icon, width: 20, height: 20, color: EnsColors.title),
                    const SizedBox(height: 8),
                    Text(
                      suggestion.formattedSuggestionName,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: EnsTextStyle.text16_w700_normal_title,
                    ),
                    const SizedBox(height: 8),
                    Expanded(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          if (suggestion is EtablissementDeSanteSuggestionDisplayModel) ...[
                            const EnsSvg(EnsImages.ic_location, width: 12, height: 14),
                            const SizedBox(width: 4),
                          ],
                          Flexible(
                            child: Text(
                              suggestion is EtablissementDeSanteSuggestionDisplayModel
                                  ? suggestion.subtitle.split(',')[1].trim()
                                  : suggestion.subtitle,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: EnsTextStyle.text14_w400_normal_body,
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                    EnsButton(
                      label: 'Ajouter',
                      verticalPadding: 10,
                      onTap: () => onAddSuggestion(suggestion),
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

class _EnsCarouselPsSuggestionEndItem extends EnsCarouselItem {
  final bool hasAMedecinTraitant;
  final bool emptyPsAndEs;

  _EnsCarouselPsSuggestionEndItem(this.hasAMedecinTraitant, this.emptyPsAndEs);

  @override
  Widget build(BuildContext context) {
    return Semantics(
      button: true,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(24, 24, 24, 12),
        child: DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(color: EnsColors.neutral200, blurRadius: 12, spreadRadius: 2, offset: Offset(4, 4)),
            ],
          ),
          child: EnsInkWell(
            color: EnsColors.light,
            borderRadius: BorderRadius.circular(20),
            onTap: () {
              if (emptyPsAndEs) {
                context.tagAction(TagsProfessionnelsDeSante.tag_973_bottom_sheet_search_ps_es);
                showBottomSheetAjoutPs(context);
              } else {
                context.tagAction(TagsProfessionnelsDeSante.tag_1030_carousel_voir_tous_suggestion);
                Navigator.pushNamed(
                  context,
                  ActeurDeSanteSuggestionsScreen.routeName,
                  arguments: hasAMedecinTraitant,
                );
              }
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              child: Center(
                widthFactor: 1,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    EnsSvg(
                      emptyPsAndEs ? EnsImages.ic_plus : EnsImages.ic_arrow_short_right,
                      width: emptyPsAndEs ? 24 : 16,
                      height: emptyPsAndEs ? 24 : 12,
                      color: EnsColors.primary,
                    ),
                    const SizedBox(height: 16),
                    Text(
                      emptyPsAndEs ? 'Ajouter un autre professionnel de santé' : 'Voir toutes les suggestions',
                      textAlign: TextAlign.center,
                      style: EnsTextStyle.text16_w700_normal_primary,
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

String getSuggestionsDescription({
  required ProfilType profilType,
  required String mainFirstName,
}) {
  return switch (profilType) {
    ProfilType.PROFIL_PRINCIPAL => 'J\'ai déjà consulté ces professionnels de santé et je peux les ajouter à ma liste.',
    ProfilType.AIDE ||
    ProfilType.AYANT_DROIT =>
      '$mainFirstName a déjà consulté ces professionnels de santé et je peux les ajouter à sa liste.',
  };
}
