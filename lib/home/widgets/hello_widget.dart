/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/widgets.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/home/widgets/viewmodels/hello_widget_view_model.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';

class HelloWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<EnsState, HelloWidgetViewModel>(
      converter: (store) => HelloWidgetViewModel(store),
      distinct: true,
      builder: (context, vm) {
        if (vm.shouldDisplay) {
          return const Center(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 16),
                  child: EnsSvg(EnsImages.bienvenue, width: 80, height: 80),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                  child: Text(
                    'Mon espace santé, c’est être acteur au quotidien de ma santé. Dès aujourd’hui, je renseigne mes informations de santé !',
                    style: EnsTextStyle.text16_w400_normal_body,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          );
        }
        return const SizedBox(height: 0);
      },
    );
  }
}
