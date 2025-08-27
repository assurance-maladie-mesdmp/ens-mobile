/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/catalogue_services/domain/models/catalogue_service_consentement.dart';
import 'package:fr_cnamts_ens/catalogue_services_consentements/widgets/consentement_details_section.dart';
import 'package:fr_cnamts_ens/catalogue_services_consentements/widgets/consentement_item_tile_view_model.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/parameters/services_synchronises/screens/show_desynchronisation_confirmation_bottomsheet.dart';
import 'package:fr_cnamts_ens/parameters/services_synchronises/screens/viewmodels/service_synchronise_consentements_screen_view_model.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/utils/extensions/string_extensions.dart';

class ConsentementItemTile extends StatelessWidget {
  final CatalogueServiceConsentement consentement;
  final bool isOnlyAcceptedConsent;
  final ServiceSynchroniseConsentementsScreenViewModel rootScreenVm;
  final bool isAvailable;

  const ConsentementItemTile(
    this.consentement,
    this.isOnlyAcceptedConsent,
    this.rootScreenVm,
    this.isAvailable,
  );

  @override
  Widget build(BuildContext context) => StoreConnector<EnsState, ConsentementItemTileViewModel>(
        converter: (store) => ConsentementItemTileViewModel.from(store),
        builder: (builder, vm) => Material(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MergeSemantics(
                  child: Semantics(
                    toggled: consentement.accepted,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Text(consentement.title.capitalize(), style: EnsTextStyle.text14_w600_normal_body),
                        ),
                        const SizedBox(width: 12),
                        Theme(
                          // ignore: deprecated_member_use
                          data: Theme.of(context).copyWith(useMaterial3: false),
                          child: Switch(
                            value: consentement.accepted,
                            activeTrackColor: isAvailable ? EnsColors.neutral300 : EnsColors.disabled500,
                            activeColor: isAvailable ? EnsColors.primary : EnsColors.disabled500,
                            inactiveTrackColor: EnsColors.disabled500,
                            inactiveThumbColor: isAvailable ? null : Colors.white,
                            onChanged: isAvailable
                                ? (bool isAccepted) {
                                    if (isOnlyAcceptedConsent) {
                                      showUnsynchronizeConfirmationBottomSheet(
                                        context,
                                        serviceName: rootScreenVm.serviceName,
                                        unsynchronizeService: rootScreenVm.unsynchronizeService,
                                        isOnConsentsPage: true,
                                      );
                                    } else {
                                      vm.updateConsentement(
                                        isAccepted,
                                        rootScreenVm.serviceOid,
                                        consentement.purposeCode,
                                      );
                                    }
                                  }
                                : null,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 12),
                MergeSemantics(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(consentement.purpose, style: EnsTextStyle.text14_w600_normal_body),
                      if (consentement.details.isNotEmpty) ConsentementDetailsSection(details: consentement.details),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}
