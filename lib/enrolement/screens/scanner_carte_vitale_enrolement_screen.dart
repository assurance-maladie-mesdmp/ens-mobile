/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:camera/camera.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/enrolement/domain/type_carte_vitale_enum.dart';
import 'package:fr_cnamts_ens/enrolement/screens/identite_form_screen.dart';
import 'package:fr_cnamts_ens/enrolement/screens/viewmodels/scanner_carte_vitale_enrolement_view_model.dart';
import 'package:fr_cnamts_ens/enrolement/screens/widgets/camera_view.dart';
import 'package:fr_cnamts_ens/enrolement/screens/widgets/scanner_validation_numeros_bottom_sheet.dart';
import 'package:fr_cnamts_ens/infra/injection/ens_module_container.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_initial_state.dart';
import 'package:fr_cnamts_ens/profil_medical/scanner/screens/widgets/scanner_custom_border.dart';
import 'package:fr_cnamts_ens/tags/tags_enrolement.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/information_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button_secondary.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_info_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/ens_numero_secu_matcher.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/validators.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:fr_cnamts_ens/utils/opacity_utils.dart';
import 'package:fr_cnamts_ens/utils/text_scale_utils.dart';
import 'package:google_mlkit_text_recognition/google_mlkit_text_recognition.dart';
import 'package:platform/platform.dart';

class ScannerCarteVitaleEnrolementScreenArguments extends Equatable {
  final void Function(String) onNextCall;

  const ScannerCarteVitaleEnrolementScreenArguments(this.onNextCall);

  @override
  List<Object?> get props => [];
}

class ScannerCarteVitaleEnrolementScreen extends StatefulWidget {
  static const routeName = '/enrolement/scanner_carte_vitale';

  const ScannerCarteVitaleEnrolementScreen();

  @override
  State<ScannerCarteVitaleEnrolementScreen> createState() => _ScannerCarteVitaleEnrolementScreenState();
}

class _ScannerCarteVitaleEnrolementScreenState extends State<ScannerCarteVitaleEnrolementScreen> {
  static const NOMBRE_VALIDATION_NUMERO_SERIE = 3;
  final appConfig = EnsModuleContainer.currentInjector.getAppConfig();
  final platform = const LocalPlatform();
  final _textRecognizer = TextRecognizer();
  bool _isBusy = false;
  String numeroSecuriteSociale = '';
  String numeroSerie = '';
  int countNumeroSerieValide = 0;
  int countImage = 0;
  int countEssaie = 0;
  bool isNumeroSecuriteSocialeValide = false;
  bool isNumeroSerieValide = false;
  bool showValidationScreen = false;
  bool isValidationScreenShowOnce = false;
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
    final args = ModalRoute.of(context)!.settings.arguments as ScannerCarteVitaleEnrolementScreenArguments?;

    final scanRectangleWidth = MediaQuery.of(context).size.width / 1.6;
    final scanRectangleHeight = MediaQuery.of(context).size.width / 1.1;

    return StoreConnector<EnsInitialState, ScannerCarteVitaleEnrolementViewModel>(
      converter: (store) => ScannerCarteVitaleEnrolementViewModel.from(store: store, platform: platform),
      builder: (_, vm) {
        final isCasVertical = vm.getIsCasVertical(isNumeroSecuriteSocialeValide);
        return Scaffold(
          appBar: EnsAppBarSubLevel(
            title: 'Scanner',
            action: _InfoButton(vm.typeCarteVitale),
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
                    vm.typeCarteVitale,
                    args?.onNextCall,
                    vm.saveScanCarteVitaleInfos,
                    vm.resetScanCarteVitaleInfos,
                  ),
                  initialCameraLensDirection: CameraLensDirection.back,
                ),
                _ZoneScan(
                  scanRectangleHeight: scanRectangleHeight,
                  scanRectangleWidth: scanRectangleWidth,
                  isCasIOSVertical: isCasVertical,
                  showValidationScreen: showValidationScreen,
                ),
                if (!showValidationScreen)
                  Center(
                    child: CustomPaint(
                      painter: ScannerCustomBorder(),
                      child: SizedBox(
                        height: isCasVertical ? scanRectangleHeight + 3 : scanRectangleWidth + 3,
                        width: isCasVertical ? scanRectangleWidth + 3 : scanRectangleHeight + 3,
                      ),
                    ),
                  ),
                if (!isBottomSheetValidationDisplay) ...[
                  _ImageCarteVitale(
                    imagePath: vm.getImagePath(isNumeroSecuriteSocialeValide, isNumeroSerieValide),
                    showValidationScreen: showValidationScreen,
                    isCasIOSVertical: isCasVertical,
                  ),
                  _Instruction(
                    wording: vm.getInstruction(isNumeroSecuriteSocialeValide, showValidationScreen),
                    isCasIOSVertical: isCasVertical,
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
                        context.tagInitialAction(TagsEnrolement.tag_2453_button_remplir_manuel_scan_carte_vitale);
                        vm.resetScanCarteVitaleInfos();
                        _popAndRedirect(args?.onNextCall);
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

  void _popAndRedirect(void Function(String)? redirect) {
    Navigator.pop(context);
    redirect?.call(IdentiteFormScreen.routeName);
  }

  Future<void> _processImage(
    BuildContext context,
    InputImage inputImage,
    TypeCarteVitale typeCarteVitale,
    void Function(String)? onNextCall,
    void Function(String numSecu, String numSerie) saveScanCarteVitaleInfos,
    void Function() resetScanCarteVitaleInfos,
  ) async {
    setState(() {
      countImage++;
    });
    if (_isBusy || isBottomSheetValidationDisplay) return;
    _isBusy = true;

    setState(() {
      countEssaie++;
    });
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

    if (numeroSecuriteSociale != '' && isNumeroSecuriteSocialeValide) {
      scanNumeroSerieValidator(
        typeCarteVitale,
        textSansEspaces,
        numeroSecuriteSociale,
        (numeroSerieValide) {
          setState(() {
            if (countNumeroSerieValide == 0) {
              numeroSerie = numeroSerieValide;
              countNumeroSerieValide++;
            } else {
              if (numeroSerie == numeroSerieValide) {
                countNumeroSerieValide++;
              } else {
                numeroSerie = numeroSerieValide;
              }
            }
            if (countNumeroSerieValide == NOMBRE_VALIDATION_NUMERO_SERIE) {
              isNumeroSerieValide = true;
            }
          });
        },
      );
    }

    if (typeCarteVitale.isSansPhoto()) {
      if (isNumeroSecuriteSocialeValide && !isNumeroSerieValide) {
        if (!isValidationScreenShowOnce) {
          await _showValidationScreenFewSecs();
          await Future.delayed(const Duration(seconds: 1));
        }
        setState(() {
          isValidationScreenShowOnce = true;
        });
      } else if (isNumeroSecuriteSocialeValide && isNumeroSerieValide) {
        await _showValidationScreenFewSecs();
        setState(() {
          isBottomSheetValidationDisplay = true;
        });
        _showValidationNumerosBottomSheet(
          typeCarteVitale,
          onNextCall,
          saveScanCarteVitaleInfos,
          resetScanCarteVitaleInfos,
        );
      }
    }
    if (typeCarteVitale.isAvecPhoto()) {
      if (isNumeroSecuriteSocialeValide && !isNumeroSerieValide && platform.isIOS) {
        if (!isValidationScreenShowOnce) {
          await _showValidationScreenFewSecs();
          await Future.delayed(const Duration(seconds: 1));
        }
        setState(() {
          isValidationScreenShowOnce = true;
        });
      } else if (isNumeroSecuriteSocialeValide && isNumeroSerieValide) {
        await _showValidationScreenFewSecs();
        setState(() {
          isBottomSheetValidationDisplay = true;
        });
        _showValidationNumerosBottomSheet(
          typeCarteVitale,
          onNextCall,
          saveScanCarteVitaleInfos,
          resetScanCarteVitaleInfos,
        );
      }
    }
    _isBusy = false;
  }

  void _showValidationNumerosBottomSheet(
    TypeCarteVitale typeCarteVitale,
    void Function(String)? onNextCall,
    void Function(String numSecu, String numSerie) saveScanCarteVitaleInfos,
    void Function() resetScanCarteVitaleInfos,
  ) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext context) => ScannerValidationBottomSheet(
        typeCarteVitale: typeCarteVitale,
        numeroSecuriteSociale: numeroSecuriteSociale,
        numeroSerie: numeroSerie,
        positiveButtonHandler: () {
          typeCarteVitale.isSansPhoto()
              ? context.tagInitialAction(TagsEnrolement.tag_2455_button_valider_scan_carte_vitale_sans_photo)
              : context.tagInitialAction(TagsEnrolement.tag_2458_button_valider_scan_carte_vitale_avec_photo);
          saveScanCarteVitaleInfos(numeroSecuriteSociale, numeroSerie);
          _popAndRedirect(onNextCall);
        },
        negativeButtonHandler: () {
          typeCarteVitale.isSansPhoto()
              ? context.tagInitialAction(TagsEnrolement.tag_2456_button_annuler_scan_carte_vitale_sans_photo)
              : context.tagInitialAction(TagsEnrolement.tag_2459_button_annuler_scan_carte_vitale_avec_photo);
          resetScanCarteVitaleInfos();
          _popAndRedirect(onNextCall);
        },
      ),
    ).then(
      (_) => setState(() {
        isBottomSheetValidationDisplay = false;
        isNumeroSecuriteSocialeValide = false;
        isNumeroSerieValide = false;
        isValidationScreenShowOnce = false;
        countNumeroSerieValide = 0;
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

const _Y_DELTA_CAST_IOS_VERTICAL_IMAGE = 0.09;

const _Y_DELTA_CAST_IOS_VERTICAL_TEXT = 0.02;

class _ImageCarteVitale extends StatelessWidget {
  final String imagePath;
  final bool showValidationScreen;
  final bool isCasIOSVertical;

  const _ImageCarteVitale({
    required this.imagePath,
    required this.showValidationScreen,
    required this.isCasIOSVertical,
  });

  @override
  Widget build(BuildContext context) {
    return !showValidationScreen
        ? Align(
            alignment: Alignment(0, _getInformationImageYAlignment(context)),
            child: EnsSvg(imagePath),
          )
        : const SizedBox();
  }

  double _getInformationImageYAlignment(BuildContext context) {
    final textScale = TextScaleUtils.getTextScaleFactor(context);
    final double yDelta = isCasIOSVertical ? _Y_DELTA_CAST_IOS_VERTICAL_IMAGE : 0;
    if (textScale < 1.5) {
      return -0.80 - yDelta;
    } else if (textScale < 2) {
      return -0.90 - yDelta;
    } else {
      return -0.90 - yDelta;
    }
  }
}

class _Instruction extends StatelessWidget {
  final String wording;
  final bool isCasIOSVertical;

  const _Instruction({required this.wording, required this.isCasIOSVertical});

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
    final double yDelta = isCasIOSVertical ? _Y_DELTA_CAST_IOS_VERTICAL_TEXT : 0;
    if (textScale < 1.5) {
      return -0.65 - yDelta;
    } else if (textScale < 2) {
      return -0.75 - yDelta;
    } else {
      return -0.80 - yDelta;
    }
  }
}

class _InfoButton extends StatelessWidget {
  final TypeCarteVitale typeCarteVitale;

  const _InfoButton(this.typeCarteVitale);

  @override
  Widget build(BuildContext context) {
    return EnsInfoButton(
      onTap: () {
        context.tagInitialAction(TagsEnrolement.tag_2401_enrolement_identification_carte_vitale_scan_info);
        showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          builder: (BuildContext context) {
            return EnsInformationWithIllustrationBottomSheet(
              title: 'Saisir automatiquement mon numéro de sécurité sociale',
              description:
                  'Pour m’identifier, je scanne ma carte Vitale afin de saisir automatiquement mon numéro de sécurité sociale et mon numéro de série.',
              asset:
                  typeCarteVitale.isAvecPhoto() ? EnsImages.carte_vitale_avec_photo : EnsImages.carte_vitale_sans_photo,
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
  final bool isCasIOSVertical;
  final bool showValidationScreen;

  const _ZoneScan({
    required this.scanRectangleWidth,
    required this.scanRectangleHeight,
    required this.isCasIOSVertical,
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
                height: isCasIOSVertical ? scanRectangleHeight : scanRectangleWidth,
                width: isCasIOSVertical ? scanRectangleWidth : scanRectangleHeight,
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
