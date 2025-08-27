/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:camera/camera.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/enrolement/screens/widgets/camera_view.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/scanner/screens/widgets/scanner_custom_border.dart';
import 'package:fr_cnamts_ens/scanner/domain/type_scan.dart';
import 'package:fr_cnamts_ens/scanner/screens/viewmodels/scanner_carte_vitale_delegation_view_model.dart';
import 'package:fr_cnamts_ens/scanner/screens/widgets/scanner_validation_bottom_sheet.dart';
import 'package:fr_cnamts_ens/tags/tags_aidants_aides.dart';
import 'package:fr_cnamts_ens/tags/tags_parameters.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/information_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button_secondary.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_info_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/ens_numero_secu_matcher.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:fr_cnamts_ens/utils/opacity_utils.dart';
import 'package:fr_cnamts_ens/utils/text_scale_utils.dart';
import 'package:google_mlkit_text_recognition/google_mlkit_text_recognition.dart';
import 'package:platform/platform.dart';

class ScannerCarteVitaleDelegationScreenArguments extends Equatable {
  final TypeScanCarteVitaleDelegation typeScan;

  const ScannerCarteVitaleDelegationScreenArguments(this.typeScan);

  @override
  List<Object?> get props => [typeScan];
}

class ScannerCarteVitaleDelegationScreen extends StatefulWidget {
  static const routeName = '/scanner_carte_vitale';

  const ScannerCarteVitaleDelegationScreen();

  @override
  State<ScannerCarteVitaleDelegationScreen> createState() => _ScannerCarteVitaleDelegationScreenState();
}

class _ScannerCarteVitaleDelegationScreenState extends State<ScannerCarteVitaleDelegationScreen> {
  final platform = const LocalPlatform();
  final _textRecognizer = TextRecognizer();
  bool _isBusy = false;
  String numeroSecuriteSociale = '';
  bool isNumeroSecuriteSocialeValide = false;
  bool showValidationScreen = false;
  bool isBottomSheetValidationDisplay = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Future<void> dispose() async {
    _textRecognizer.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments! as ScannerCarteVitaleDelegationScreenArguments;
    final typeScan = args.typeScan;

    final scanRectangleWidth = MediaQuery.of(context).size.width / 1.6;
    final scanRectangleHeight = MediaQuery.of(context).size.width / 1.1;

    return StoreConnector<EnsState, ScannerCarteVitaleDelegationViewModel>(
      converter: (store) => ScannerCarteVitaleDelegationViewModel.from(store, typeScan),
      builder: (_, vm) {
        return Scaffold(
          appBar: EnsAppBarSubLevel(
            title: 'Scanner',
            action: _InfoButton(wordings: vm.getWordingsBottomSheetInfo()),
          ),
          body: SafeArea(
            bottom: !platform.isIOS,
            child: Stack(
              fit: StackFit.expand,
              children: [
                CameraView(
                  onImage: (inputImage) => _processImage(
                    context,
                    inputImage,
                    vm.saveScanCarteVitaleInfos,
                    vm.resetScanCarteVitaleInfos,
                  ),
                  initialCameraLensDirection: CameraLensDirection.back,
                ),
                _ZoneScan(
                  scanRectangleHeight: scanRectangleHeight,
                  scanRectangleWidth: scanRectangleWidth,
                  showValidationScreen: showValidationScreen,
                ),
                if (!showValidationScreen)
                  Center(
                    child: CustomPaint(
                      painter: ScannerCustomBorder(),
                      child: SizedBox(
                        height: scanRectangleWidth + 3,
                        width: scanRectangleHeight + 3,
                      ),
                    ),
                  ),
                if (!isBottomSheetValidationDisplay) ...[
                  _ImageCarteVitale(
                    showValidationScreen: showValidationScreen,
                  ),
                  _Instruction(
                    wording: vm.getInstruction(showValidationScreen),
                  ),
                ],
                if (showValidationScreen) const _IconValidation(),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 40),
                    child: EnsButtonSecondary(
                      label: 'Remplir manuellement',
                      onTap: () {
                        if (typeScan == TypeScanCarteVitaleDelegation.SCAN_CARTE_VITALE_AIDANT) {
                          context.tagAction(TagsAidantsAides.tag_2585_button_remplir_manuellement);
                        } else {
                          context.tagAction(TagsParameters.tag_2586_button_remplir_manuellement);
                        }
                        vm.resetScanCarteVitaleInfos();
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Future<void> _showValidationScreenFewSecs() async {
    setState(() {
      showValidationScreen = true;
    });
    await Future.delayed(const Duration(seconds: 1));
    setState(() {
      showValidationScreen = false;
    });
  }

  Future<void> _processImage(
    BuildContext context,
    InputImage inputImage,
    void Function(String numSecu) saveScanCarteVitaleInfos,
    void Function() resetScanCarteVitaleInfos,
  ) async {
    if (_isBusy || isBottomSheetValidationDisplay) return;
    _isBusy = true;

    final recognizedText = await _textRecognizer.processImage(inputImage);
    final textSansEspaces = recognizedText.text.replaceAll(' ', '');

    numeroSecuMatcher(
      textSansEspaces,
      (numeroSecuValide) {
        setState(() {
          numeroSecuriteSociale = numeroSecuValide;
          isNumeroSecuriteSocialeValide = true;
        });
      },
    );

    if (isNumeroSecuriteSocialeValide) {
      await _showValidationScreenFewSecs();
      setState(() {
        isBottomSheetValidationDisplay = true;
      });
      _showValidationBottomSheet(
        saveScanCarteVitaleInfos,
        resetScanCarteVitaleInfos,
      );
    }
    _isBusy = false;
  }

  void _showValidationBottomSheet(
    void Function(String numSecu) saveScanCarteVitaleInfos,
    void Function() resetScanCarteVitaleInfos,
  ) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) {
        return ScannerValidationBottomSheet(
          numeroSecuriteSociale: numeroSecuriteSociale,
          positiveButtonHandler: () {
            saveScanCarteVitaleInfos(numeroSecuriteSociale);
            Navigator.pop(context);
          },
          negativeButtonHandler: () {
            resetScanCarteVitaleInfos();
            Navigator.pop(context);
          },
        );
      },
    ).then(
      (_) => setState(() {
        isBottomSheetValidationDisplay = false;
        isNumeroSecuriteSocialeValide = false;
      }),
    );
  }
}

class _IconValidation extends StatelessWidget {
  const _IconValidation();

  @override
  Widget build(BuildContext context) {
    return const Center(child: EnsSvg(EnsImages.ic_check_with_background, width: 80, height: 80));
  }
}

class _ImageCarteVitale extends StatelessWidget {
  final bool showValidationScreen;

  const _ImageCarteVitale({required this.showValidationScreen});

  @override
  Widget build(BuildContext context) {
    return !showValidationScreen
        ? Align(
            alignment: Alignment(0, _getInformationImageYAlignment(context)),
            child: const EnsSvg(EnsImages.carte_vitale_generique_face_avant),
          )
        : const SizedBox();
  }

  double _getInformationImageYAlignment(BuildContext context) {
    final textScale = TextScaleUtils.getTextScaleFactor(context);
    if (textScale < 1.5) {
      return -0.80;
    } else {
      return -0.90;
    }
  }
}

class _Instruction extends StatelessWidget {
  final String wording;

  const _Instruction({required this.wording});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment(0, _getInformationTextYAlignment(context)),
      child: Text(
        wording,
        style: EnsTextStyle.text16_w700_normal_light,
        textAlign: TextAlign.center,
      ),
    );
  }

  double _getInformationTextYAlignment(BuildContext context) {
    final textScale = TextScaleUtils.getTextScaleFactor(context);
    if (textScale < 1.5) {
      return -0.65;
    } else if (textScale < 2) {
      return -0.75;
    } else {
      return -0.80;
    }
  }
}

class _InfoButton extends StatelessWidget {
  final WordingsBottomSheetInfo wordings;

  const _InfoButton({required this.wordings});

  @override
  Widget build(BuildContext context) {
    return EnsInfoButton(
      onTap: () {
        showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          builder: (BuildContext context) {
            return EnsInformationWithIllustrationBottomSheet(
              title: wordings.titre,
              description: wordings.description,
              asset: EnsImages.carte_vitale_avec_photo,
              positiveButtonLabel: 'Scanner la carte Vitale',
              negativeButtonLabel: 'Remplir manuellement',
              negativeButtonHandler: () => Navigator.pop(context),
            );
          },
        );
      },
    );
  }
}

class _ZoneScan extends StatelessWidget {
  final double scanRectangleWidth;
  final double scanRectangleHeight;
  final bool showValidationScreen;

  const _ZoneScan({
    required this.scanRectangleWidth,
    required this.scanRectangleHeight,
    required this.showValidationScreen,
  });

  @override
  Widget build(BuildContext context) {
    return ColorFiltered(
      colorFilter: ColorFilter.mode(
        Colors.black.withAlpha(OpacityUtils.getAlpha(0.5)),
        BlendMode.srcOut,
      ),
      child: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            decoration: const BoxDecoration(color: Colors.black, backgroundBlendMode: BlendMode.dstOut),
          ),
          if (!showValidationScreen)
            Center(
              child: Container(
                height: scanRectangleWidth,
                width: scanRectangleHeight,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
