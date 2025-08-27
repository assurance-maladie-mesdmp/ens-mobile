/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/enrolement/domain/type_carte_vitale_enum.dart';
import 'package:fr_cnamts_ens/enrolement/screens/identite_form_screen.dart';
import 'package:fr_cnamts_ens/enrolement/screens/scanner_carte_vitale_enrolement_screen.dart';
import 'package:fr_cnamts_ens/enrolement/screens/viewmodels/choix_carte_screen_view_model.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_initial_state.dart';
import 'package:fr_cnamts_ens/tags/tags_enrolement.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/ens_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_card.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_checkbox.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_error_text.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:fr_cnamts_ens/utils/feature_flags_helper.dart';

class ChoixCarteVitaleScreen extends StatelessWidget {
  static const routeName = '/enrolement/choix_carte_vitale';

  final void Function(String) onNextCall;

  const ChoixCarteVitaleScreen(this.onNextCall);

  @override
  Widget build(BuildContext context) {
    context.tagInitialAction(TagsEnrolement.tag_2297_enrolement_identification_carte_vitale);
    return _Body(onNextCall);
  }
}

class _Body extends StatefulWidget {
  final void Function(String) onNextCall;

  const _Body(this.onNextCall);

  @override
  State<StatefulWidget> createState() => _BodyState();
}

class _BodyState extends State<_Body> {
  TypeCarteVitale typeCarteVitaleSelected = TypeCarteVitale.UNKNOWN;

  bool hasError = false;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<EnsInitialState, ChoixCarteVitaleScreenViewModel>(
      converter: (store) => ChoixCarteVitaleScreenViewModel.from(store),
      onInitialBuild: (vm) {
        setState(() => typeCarteVitaleSelected = vm.typeCarteVitale);
      },
      builder: (_, vm) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Mon identité', style: EnsTextStyle.text20_w400_normal_title),
                  SizedBox(height: 4),
                  Text('Je renseigne le modèle de ma carte Vitale.', style: EnsTextStyle.text14_w400_normal_body),
                ],
              ),
            ),
            if (hasError == true)
              const EnsErrorText(
                text: 'Sélectionner un modèle de carte Vitale',
                padding: EdgeInsets.only(bottom: 8),
              ),
            _CarteVitaleCard(
              label: 'Carte Vitale sans photo',
              svgPath: EnsImages.carte_vitale_sans_photo,
              isSelected: typeCarteVitaleSelected.isSansPhoto(),
              isError: hasError == true,
              onSelect: () {
                context.tagInitialAction(TagsEnrolement.tag_2298_button_carte_vitale_sans_photo);
                setState(() {
                  if (hasError == true) hasError = false;
                  typeCarteVitaleSelected = TypeCarteVitale.SANS_PHOTO;
                });
              },
            ),
            const SizedBox(height: 16),
            _CarteVitaleCard(
              label: 'Carte Vitale avec photo',
              svgPath: EnsImages.carte_vitale_avec_photo,
              isSelected: typeCarteVitaleSelected.isAvecPhoto(),
              isError: hasError == true,
              onSelect: () {
                context.tagInitialAction(TagsEnrolement.tag_2299_button_carte_vitale_avec_photo);
                setState(() {
                  if (hasError == true) hasError = false;
                  typeCarteVitaleSelected = TypeCarteVitale.AVEC_PHOTO;
                });
              },
            ),
            const Spacer(),
            EnsButton(
              onTap: () {
                if (typeCarteVitaleSelected == TypeCarteVitale.UNKNOWN) {
                  setState(() {
                    hasError = true;
                  });
                } else {
                  if (isScanCarteVitaleEnabled) {
                    showScanCarteVitaleBottomSheet(
                      context,
                      typeCarteVitaleSelected,
                      vm.onTypeCarteVitaleSelected,
                      vm.resetScanCarteVitaleInfos,
                      widget.onNextCall,
                    );
                  } else {
                    context.tagInitialAction(TagsEnrolement.tag_2400_button_remplir_manuel_carte_vitale);
                    vm.onTypeCarteVitaleSelected(typeCarteVitaleSelected);
                    vm.resetScanCarteVitaleInfos();
                    widget.onNextCall(IdentiteFormScreen.routeName);
                  }
                }
              },
              label: 'Suivant',
              size: EnsButtonSize.MEDIUM,
            ),
            const SizedBox(height: 48),
          ],
        ),
      ),
    );
  }
}

void showScanCarteVitaleBottomSheet(
  BuildContext context,
  TypeCarteVitale typeCarteVitaleSelected,
  void Function(TypeCarteVitale) onTypeCarteVitaleSelected,
  void Function() resetScanCarteVitaleInfos,
  void Function(String) onNextCall,
) {
  context.tagInitialAction(TagsEnrolement.tag_2398_enrolement_identification_carte_vitale_scan);
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    builder: (context) => EnsIllustrationBottomSheet(
      title: 'Saisir automatiquement mon numéro de sécurité sociale',
      subtitle:
          'Pour m’identifier, je scanne ma carte Vitale afin de saisir automatiquement mon numéro de sécurité sociale et mon numéro de série.',
      asset:
          typeCarteVitaleSelected.isAvecPhoto() ? EnsImages.carte_vitale_avec_photo : EnsImages.carte_vitale_sans_photo,
      positiveButtonLabel: 'Scanner ma carte Vitale',
      negativeButtonLabel: 'Remplir manuellement',
      positiveButtonHandler: () {
        context.tagInitialAction(TagsEnrolement.tag_2399_button_scan_carte_vitale);
        onTypeCarteVitaleSelected(typeCarteVitaleSelected);
        Navigator.pushNamed(
          context,
          ScannerCarteVitaleEnrolementScreen.routeName,
          arguments: ScannerCarteVitaleEnrolementScreenArguments(onNextCall),
        );
      },
      negativeButtonHandler: () {
        context.tagInitialAction(TagsEnrolement.tag_2400_button_remplir_manuel_carte_vitale);
        onTypeCarteVitaleSelected(typeCarteVitaleSelected);
        resetScanCarteVitaleInfos();
        onNextCall(IdentiteFormScreen.routeName);
      },
    ),
  );
}

class _CarteVitaleCard extends StatelessWidget {
  final String label;
  final String svgPath;
  final bool isSelected;
  final bool isError;
  final void Function() onSelect;

  const _CarteVitaleCard({
    required this.label,
    required this.svgPath,
    required this.isSelected,
    required this.isError,
    required this.onSelect,
  });

  @override
  Widget build(BuildContext context) {
    return EnsCard(
      onTap: () => onSelect(),
      border: isSelected ? Border.all(color: EnsColors.primary, width: 2) : null,
      borderRadius: 16,
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          EnsCheckbox(
            value: isSelected,
            onChange: (_) => onSelect(),
            borderColor: isError ? EnsColors.error : EnsColors.primary,
          ),
          const SizedBox(width: 16),
          EnsSvg(svgPath, width: 64, height: 64),
          const SizedBox(width: 16),
          Expanded(
            child: Text(
              label,
              style: EnsTextStyle.text16_w700_normal_title,
            ),
          ),
        ],
      ),
    );
  }
}
