/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/parameters/consentements_ps/matrice_habilitation/domain/models/ens_matrice_categorie_document.dart';
import 'package:fr_cnamts_ens/parameters/consentements_ps/matrice_habilitation/domain/models/ens_matrice_profession.dart';
import 'package:fr_cnamts_ens/parameters/consentements_ps/matrice_habilitation/redux/matrice_habilitation_redux.dart';
import 'package:fr_cnamts_ens/parameters/consentements_ps/matrice_habilitation/screens/viewModels/matrice_habilitation_categorie_view_model.dart';
import 'package:fr_cnamts_ens/parameters/consentements_ps/matrice_habilitation/screens/viewModels/matrice_habilitation_resultat_view_model.dart';
import 'package:fr_cnamts_ens/tags/tags_parameters.dart';
import 'package:fr_cnamts_ens/ui/accessibility/accessible_tab_bar.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/error_page.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_persistent_info_box.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/ens_drop_down.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';
import 'package:fr_cnamts_ens/ui/widgets/skeletons.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:fr_cnamts_ens/utils/screen_status.dart';

part '../widgets/categories_widgets.dart';
part '../widgets/matrice_resultats_widgets.dart';

class MatriceHabilitationScreen extends StatelessWidget {
  static const routeName = '/mon-compte/acces-professionnels-sante/detail/resultat';

  const MatriceHabilitationScreen();

  @override
  Widget build(BuildContext context) {
    final argument = ModalRoute.of(context)!.settings.arguments! as MatriceHabilitationScreenArgument;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: EnsAppBarSubLevel(title: argument.professionLibelle),
        body: const Column(
          children: [
            _CategoriesDropDown(),
            _TabBar(),
            _ResultatPage(),
          ],
        ),
      ),
    );
  }
}

class _TabBar extends StatelessWidget {
  const _TabBar();

  @override
  Widget build(BuildContext context) {
    return const DecoratedBox(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: EnsColors.neutral200,
            width: 4,
          ),
        ),
      ),
      child: AccessibleTabBar(
        labels: [
          'Accessibles',
          'Non accessibles',
        ],
      ),
    );
  }
}
