/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/domain/models/ens_mesure_type.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/screens/widgets/mesure_history_item.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/screens/widgets/mesure_history_widget_view_model.dart';
import 'package:fr_cnamts_ens/tags/pml/tags_mesures.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/confirmation_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/confirmation_bottom_sheet_default_text_content.dart';
import 'package:fr_cnamts_ens/ui/widgets/delete_slidable.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';
import 'package:fr_cnamts_ens/ui/widgets/skeletons.dart';

class MesureHistoryWidget extends StatelessWidget {
  final EnsMesureType mesureType;
  final String? selectedValueId;

  const MesureHistoryWidget({super.key, required this.mesureType, this.selectedValueId});

  @override
  Widget build(BuildContext context) => StoreConnector<EnsState, MesureHistoryViewModel>(
        converter: (store) => MesureHistoryViewModel(store, mesureType, selectedValueId),
        distinct: true,
        builder: (_, MesureHistoryViewModel vm) {
          switch (vm.mesureHistoryStatus) {
            case MesureHistoryStatus.SUCCESS:
              return _Content(vm: vm, mesureType: mesureType, selectedValueId: selectedValueId);
            case MesureHistoryStatus.ERROR:
              return Container();
            case MesureHistoryStatus.LOADING:
              return _Loading();
          }
        },
      );
}

class _Header extends StatelessWidget {
  const _Header();

  @override
  Widget build(BuildContext context) {
    return const DecoratedBox(
      decoration: BoxDecoration(
        color: EnsColors.light,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(32),
          topRight: Radius.circular(32),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(24, 24, 0, 8),
            child: Text('Historique', style: EnsTextStyle.text24_w400_normal_title),
          ),
          Divider(height: 2, color: EnsColors.neutral200),
        ],
      ),
    );
  }
}

class _Content extends StatelessWidget {
  final MesureHistoryViewModel vm;
  final EnsMesureType mesureType;
  final String? selectedValueId;

  const _Content({
    required this.vm,
    required this.mesureType,
    this.selectedValueId,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (selectedValueId == null) const _Header(),
        ListViewWithScrollbar.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          separatorBuilder: (_, index) => const Divider(height: 2, color: EnsColors.neutral200),
          itemCount: vm.mesureHistoryDisplayModels.length,
          itemBuilder: (_, index) {
            final mesure = vm.mesureHistoryDisplayModels[index];
            return mesureType != EnsMesureType.IMC
                ? DeleteSlidable(
                    child: MesureHistoryItem(
                      mesureHistory: mesure,
                      mesureType: mesureType,
                      onDelete: () => vm.deleteMesure(mesure.id),
                    ),
                    onPressed: (context) => _showDeleteConfirmationBottomSheet(context, vm, mesure.id),
                  )
                : MesureHistoryItem(
                    mesureHistory: mesure,
                    mesureType: mesureType,
                    onDelete: () => vm.deleteMesure(mesure.id),
                  );
          },
        ),
        const Divider(height: 2, color: EnsColors.neutral200),
        Container(color: EnsColors.light, height: 200),
      ],
    );
  }

  void _showDeleteConfirmationBottomSheet(
    BuildContext context,
    MesureHistoryViewModel vm,
    String mesureId,
  ) {
    if (mesureType.tagHistoriqueLevel3 != '') {
      context.tagAction(TagMesures.tagButtonSupprimerUneValeur(mesureType.tagHistoriqueLevel3));
    }
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (BuildContext builderContext) {
        return ConfirmationBottomSheet(
          title: 'Supprimer cette valeur ?',
          content: const ConfirmationBottomSheetDefaultTextContent('Cette valeur sera supprimée définitivement.'),
          positiveButtonLabel: 'Supprimer',
          positiveButtonHandler: () => vm.deleteMesure(mesureId),
        );
      },
    );
  }
}

class _Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListViewWithScrollbar.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      separatorBuilder: (context, index) => const Divider(height: 2, color: EnsColors.neutral200),
      itemCount: 3,
      itemBuilder: (context, index) => const ListItemSkeleton(),
    );
  }
}
