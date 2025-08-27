/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/scanner/domain/models/ens_datamatrix.dart';
import 'package:fr_cnamts_ens/profil_medical/scanner/screens/viewmodels/scanner_screen_view_model.dart';
import 'package:fr_cnamts_ens/profil_medical/scanner/screens/widgets/scanner_custom_border.dart';
import 'package:fr_cnamts_ens/profil_medical/traitement/screens/edit_traitement_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/traitement/screens/viewModels/edit_traitement_screen_view_model.dart';
import 'package:fr_cnamts_ens/profil_medical/vaccinations/redux/vaccinations_redux.dart';
import 'package:fr_cnamts_ens/profil_medical/vaccinations/screens/edit_vaccination_screen.dart';
import 'package:fr_cnamts_ens/scanner/domain/type_scan.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/information_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_info_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_snackbar.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:fr_cnamts_ens/utils/opacity_utils.dart';
import 'package:fr_cnamts_ens/utils/text_scale_utils.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class ScannerScreenArguments extends Equatable {
  final TypeScan typeScan;
  final TraitementFormulaireMode? traitementEditionMode;
  final bool isFromFormulaire;

  const ScannerScreenArguments({required this.typeScan, this.traitementEditionMode, this.isFromFormulaire = false});

  @override
  List<Object?> get props => [typeScan, traitementEditionMode, isFromFormulaire];
}

class ScannerScreen extends StatefulWidget {
  static const routeName = '/medical/profil/vaccination/scanner';

  const ScannerScreen();

  @override
  State<ScannerScreen> createState() => _ScannerScreenState();
}

class _ScannerScreenState extends State<ScannerScreen> {
  late MobileScannerController _cameraController;
  String _lastRawDataRead = '';
  EnsDataMatrix? dataMatrix;

  @override
  void initState() {
    super.initState();
    _cameraController = MobileScannerController();
  }

  @override
  void dispose() {
    _cameraController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final argument = ModalRoute.of(context)?.settings.arguments as ScannerScreenArguments?;
    final scanSquareSize = MediaQuery.of(context).size.width / 2;
    return Scaffold(
      appBar: EnsAppBarSubLevel(
        title: 'Scanner',
        action: _InfoButton(argument?.typeScan),
      ),
      body: StoreConnector<EnsState, ScannerScreenViewModel>(
        converter: (store) => ScannerScreenViewModel.from(store),
        onInit: (store) => store.dispatch(FetchVaccinsAction()),
        onWillChange: (oldVm, vm) {
          if ((oldVm?.getVaccinStatut.isSuccess() == false && vm.getVaccinStatut.isSuccess() && dataMatrix != null) ||
              (oldVm?.getVaccinStatut.isError() == false && vm.getVaccinStatut.isError())) {
            if (argument?.isFromFormulaire == true) {
              Navigator.pop(
                context,
                VaccinFromCodeCip(
                  vaccinFromCip: vm.resultatVaccin,
                  lotFromScan: vm.getVaccinStatut.isSuccess() ? dataMatrix!.lot : null,
                ),
              );
            } else {
              Navigator.pushReplacementNamed(
                context,
                EditVaccinationScreen.routeName,
                arguments: EditVaccinationScreenArguments(
                  vaccinFromCodeCip: VaccinFromCodeCip(
                    vaccinFromCip: vm.resultatVaccin,
                    lotFromScan: vm.getVaccinStatut.isSuccess() ? dataMatrix!.lot : null,
                  ),
                ),
              );
            }
          }
        },
        builder: (_, vm) => Stack(
          children: [
            SizedBox.expand(
              child: MobileScanner(
                controller: _cameraController,
                onDetect: (capture) {
                  final List<Barcode> barcodes = capture.barcodes;
                  for (final barcode in barcodes) {
                    try {
                      final rawValue = barcode.rawValue;
                      if (rawValue != null) {
                        setState(() {
                          dataMatrix = EnsDataMatrix.from(rawData: rawValue);
                        });
                        if (argument?.typeScan == TypeScan.SCAN_BOITE_MEDICAMENT &&
                            argument?.traitementEditionMode != null &&
                            dataMatrix != null) {
                          vm.getNomTraitementByCodeCip(dataMatrix!.cip);

                          if (argument?.isFromFormulaire == true) {
                            Navigator.pop(context);
                          } else {
                            Navigator.pushReplacementNamed(
                              context,
                              EditTraitementScreen.routeName,
                              arguments: EditTraitementScreenArguments(
                                fromIncitation: false,
                                launchMode: argument!.traitementEditionMode!,
                              ),
                            );
                          }
                        } else if (argument?.typeScan == TypeScan.SCAN_BOITE_VACCIN) {
                          if (dataMatrix != null) {
                            vm.getVaccinByCodeCip(dataMatrix!);
                          }
                        }
                        _cameraController.stop();
                      }
                    } catch (e) {
                      if (barcode.rawValue != null && _lastRawDataRead != barcode.rawValue) {
                        _lastRawDataRead = barcode.rawValue!;
                        ScaffoldMessenger.of(context).hideCurrentSnackBar();
                        ScaffoldMessenger.of(context).showSnackBar(
                          EnsSnackbar.error(
                            context: context,
                            label: 'Les données n\'ont pas pu être récupérées. Remplissez le formulaire manuellement.',
                            extraVerticalPadding: 24,
                          ),
                        );
                      }
                    }
                  }
                },
              ),
            ),
            ColorFiltered(
              colorFilter: ColorFilter.mode(
                Colors.black.withAlpha(OpacityUtils.getAlpha(0.5)),
                BlendMode.srcOut,
              ), // This one will create the magic
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Container(
                    decoration: const BoxDecoration(color: Colors.black, backgroundBlendMode: BlendMode.dstOut),
                  ),
                  Center(
                    child: Container(
                      height: scanSquareSize,
                      width: scanSquareSize,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment(0, _getInformationTextYAlignment(context)),
              child: const Text(
                'Placez le QRCode dans ce cadre',
                style: EnsTextStyle.text16_w400_normal_light,
                textAlign: TextAlign.center,
              ),
            ),
            Center(
              child: CustomPaint(
                painter: ScannerCustomBorder(),
                child: SizedBox(
                  height: scanSquareSize + 3,
                  width: scanSquareSize + 3,
                ),
              ),
            ),
            Align(
              alignment: const Alignment(0, 0.65),
              child: _FlashButton(cameraController: _cameraController),
            ),
          ],
        ),
      ),
    );
  }

  double _getInformationTextYAlignment(BuildContext context) {
    final textScale = TextScaleUtils.getTextScaleFactor(context);
    if (textScale < 1.5) {
      return -0.45;
    } else if (textScale < 2) {
      return -0.55;
    } else {
      return -0.75;
    }
  }
}

class _FlashButton extends StatefulWidget {
  final MobileScannerController cameraController;

  const _FlashButton({required this.cameraController});

  @override
  State<_FlashButton> createState() => _FlashButtonState();
}

class _FlashButtonState extends State<_FlashButton> {
  bool isTorchOn = false;

  @override
  void initState() {
    super.initState();
    if (widget.cameraController.torchEnabled) {
      isTorchOn = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MergeSemantics(
      child: Semantics(
        label: isTorchOn ? 'Désactiver le flash' : 'Activer le flash',
        button: true,
        child: IconButton(
          splashRadius: 20,
          icon: isTorchOn
              ? const Icon(Icons.flash_on, color: Colors.white)
              : const Icon(Icons.flash_off, color: Colors.white),
          iconSize: 32,
          onPressed: () {
            widget.cameraController.toggleTorch();
            setState(() => isTorchOn = !isTorchOn);
          },
        ),
      ),
    );
  }
}

class _InfoButton extends StatelessWidget {
  final TypeScan? typeScan;

  const _InfoButton(this.typeScan);

  @override
  Widget build(BuildContext context) {
    return EnsInfoButton(
      onTap: () {
        showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          builder: (BuildContext context) {
            return EnsInformationWithIllustrationBottomSheet(
              title:
                  'Ajouter automatiquement ${typeScan == TypeScan.SCAN_BOITE_VACCIN ? 'le vaccin' : 'un traitement'}',
              description:
                  'Je scanne le QR code situé sur le côté de la boîte ${typeScan == TypeScan.SCAN_BOITE_VACCIN ? 'du vaccin' : 'de médicament'} pour l’ajouter automatiquement.',
              asset: EnsImages.datamatrix,
            );
          },
        );
      },
    );
  }
}
