/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/home/screens/viewmodels/home_app_update_view_model.dart';
import 'package:fr_cnamts_ens/infra/injection/ens_module_container.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/tags/tags_home.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_bottom_nav_bar.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_ink_well.dart';

class AppUpdateWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<EnsState, HomeAppUpdateScreenViewModel>(
      converter: (store) => HomeAppUpdateScreenViewModel.from(store),
      distinct: true,
      builder: (BuildContext context, vm) => Visibility(
        visible: vm.updateAvailable,
        child: Transform.translate(
          offset: const Offset(0, 24),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(
                bottom: !EnsModuleContainer.currentInjector.isGuestMode() ? 24 + getNavBarBottomPadding(context) : 0,
              ),
              child: EnsInkWell(
                onTap: () {
                  context.tagAction(TagsHome.tag_959_button_telecharger_mise_a_jour);
                  vm.redirectUpdate();
                },
                child: const ColoredBox(
                  color: EnsColors.info,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(24, 10, 24, 34),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Mise à jour disponible', style: EnsTextStyle.text12_w400_normal_light),
                        Text('Télécharger', style: EnsTextStyle.text12_w700_normal_light),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
