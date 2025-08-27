/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/domain/models/ens_mesure_type.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/screens/viewmodels/customize_mesures_list_screen_view_model.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/screens/widgets/mesure_icon.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_card.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_checkbox.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_floating_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';
import 'package:fr_cnamts_ens/ui/widgets/skeletons.dart';

class CustomizeMesuresListScreen extends StatefulWidget {
  static const routeName = '/medical/profil/mesures/customize';

  const CustomizeMesuresListScreen({super.key});

  @override
  State<CustomizeMesuresListScreen> createState() => _CustomizeMesuresListScreenState();
}

class _CustomizeMesuresListScreenState extends State<CustomizeMesuresListScreen> {
  Map<EnsMesureType, CustomizeMesuresListItemDisplayModel> mesuresVisibilityStatus = {};

  @override
  Widget build(BuildContext context) => StoreConnector<EnsState, CustomizeMesuresListScreenViewModel>(
        converter: (store) => CustomizeMesuresListScreenViewModel(store),
        onInitialBuild: (vm) {
          setState(() {
            mesuresVisibilityStatus = Map.from(vm.initialMesuresState);
          });
        },
        onWillChange: (oldVm, vm) {
          if (oldVm != null &&
              oldVm.status == UpdateMesuresTilesCustomizationStatus.LOADING &&
              vm.status == UpdateMesuresTilesCustomizationStatus.SUCCESS) {
            Navigator.pop(context);
          }
        },
        distinct: true,
        builder: (_, vm) {
          return Scaffold(
            appBar: const EnsAppBarSubLevel(title: 'Afficher les autres mesures'),
            body: mesuresVisibilityStatus.isEmpty
                ? const _CustomizeMesuresListLoading()
                : _Content(
                    enabled: vm.status != UpdateMesuresTilesCustomizationStatus.LOADING,
                    mesuresVisibilityStatus: mesuresVisibilityStatus,
                    updateMesuresVisibilityStatus: (EnsMesureType type, CustomizeMesuresListItemDisplayModel newValue) {
                      setState(() => mesuresVisibilityStatus[type] = newValue);
                    },
                  ),
            floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
            floatingActionButton: EnsFloatingButton(
              buttonLabel: 'Valider l’affichage',
              onTap: () => vm.updateMesuresTilesCustomization(mesuresVisibilityStatus),
              semanticsLabel: 'Valider en utilisant la selection suivante : ${_buildSelectedSemanticLabel()}',
              isLoading: vm.status == UpdateMesuresTilesCustomizationStatus.LOADING,
              isDisabled: false,
            ),
          );
        },
      );

  String _buildSelectedSemanticLabel() {
    String semanticLabel = '';
    mesuresVisibilityStatus.forEach((_, value) {
      if (value.visibilityStatus) {
        semanticLabel += '${value.label}, ';
      }
    });
    return semanticLabel;
  }
}

class _SelectableMesureItem extends StatelessWidget {
  final CustomizeMesuresListItemDisplayModel mesureDisplayModel;
  final void Function() onTap;
  final bool enabled;

  const _SelectableMesureItem({required this.mesureDisplayModel, required this.onTap, required this.enabled});

  @override
  Widget build(BuildContext context) {
    return EnsCard(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      onTap: enabled ? onTap : null,
      border: Border.all(
        color: mesureDisplayModel.visibilityStatus ? EnsColors.primary : EnsColors.light,
        width: 2,
      ),
      child: Row(
        children: [
          EnsCheckbox(
            value: mesureDisplayModel.visibilityStatus,
            onChange: enabled ? (_) => onTap() : (_) {},
          ),
          const SizedBox(width: 16),
          MesureIcon(mesureDisplayModel.type, width: 50, height: 50),
          const SizedBox(width: 16),
          Flexible(child: Text(mesureDisplayModel.label, style: EnsTextStyle.text16_w700_normal_title)),
        ],
      ),
    );
  }
}

class _CustomizeMesuresListLoading extends StatelessWidget {
  const _CustomizeMesuresListLoading();

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(28),
      child: Column(
        children: [
          _LoadingItem(),
          SizedBox(height: 24),
          _LoadingItem(),
          SizedBox(height: 24),
          _LoadingItem(),
        ],
      ),
    );
  }
}

class _LoadingItem extends StatelessWidget {
  const _LoadingItem();

  @override
  Widget build(BuildContext context) {
    return const EnsCard(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      child: Row(
        children: [
          SkeletonCircle(radius: 24),
          SizedBox(width: 20),
          SkeletonBox(width: 200, height: 12),
        ],
      ),
    );
  }
}

class _Content extends StatelessWidget {
  final bool enabled;
  final Map<EnsMesureType, CustomizeMesuresListItemDisplayModel> mesuresVisibilityStatus;
  final void Function(EnsMesureType, CustomizeMesuresListItemDisplayModel) updateMesuresVisibilityStatus;

  const _Content({
    required this.enabled,
    required this.mesuresVisibilityStatus,
    required this.updateMesuresVisibilityStatus,
  });

  @override
  Widget build(BuildContext context) {
    return ScrollviewWithScrollbar(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ...mesuresVisibilityStatus.entries.map(
            (mesureStatus) => Padding(
              padding: const EdgeInsets.only(bottom: 24),
              child: _SelectableMesureItem(
                enabled: enabled,
                mesureDisplayModel: mesureStatus.value,
                onTap: () => updateMesuresVisibilityStatus(
                  mesureStatus.key,
                  mesureStatus.value.clone(
                    visibilityStatus: !mesureStatus.value.visibilityStatus,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 68),
        ],
      ),
    );
  }
}
