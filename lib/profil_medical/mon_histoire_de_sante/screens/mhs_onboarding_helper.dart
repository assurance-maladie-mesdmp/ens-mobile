/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/redux/mon_histoire_de_sante_redux.dart';
import 'package:fr_cnamts_ens/tags/pml/tags_histoire_sante.dart';
import 'package:fr_cnamts_ens/ui/widgets/dialogs/ens_tutorial_dialog.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:fr_cnamts_ens/utils/wordings_extension.dart';

class MhsTutorialHelper {
  static void showTutorialDialog(BuildContext context, {required bool isProfilPrincipal}) {
    showGeneralDialog(
      context: context,
      barrierDismissible: false,
      transitionDuration: const Duration(milliseconds: 350),
      transitionBuilder: (_, anim, __, child) {
        return SlideTransition(
          position: Tween(begin: const Offset(0, 1), end: Offset.zero).animate(anim),
          child: child,
        );
      },
      pageBuilder: (context, _, __) => EnsTutorialDialog(
        pages: _getPages(isProfilPrincipal),
        onNext: (page) => context.tagAction(TagsMonMonHistoireDeSante.tagButtonSuivantTutoMonMonHistoireDeSante(page)),
        onPrevious: (page) =>
            context.tagAction(TagsMonMonHistoireDeSante.tagButtonPrecedentTutoMonMonHistoireDeSante(page)),
        onClose: () => StoreProvider.of<EnsState>(context).dispatch(UpdateMonHistoireDeSanteTutorialAction()),
        onPageDisplayed: (page) => context.tagAction(TagsMonMonHistoireDeSante.tagTutoMonMonHistoireDeSante(page)),
        onFinish: () => context.tagAction(TagsMonMonHistoireDeSante.tagButtonSuivantTutoMonMonHistoireDeSante(4)),
      ),
    );
  }

  static List<TutorialPage> _getPages(bool isProfilPrincipal) => [
        TutorialPage(
          beginText: 'À la découverte de',
          highlightedText: isProfilPrincipal ? '\nMon histoire de santé' : '\nl\'histoire de santé',
          endText: '',
          textAlign: TextAlign.center,
          illustrationPath: EnsImages.mhs_tuto_p1,
          illustrationEndAlignment: Alignment.center,
        ),
        TutorialPage(
          beginText: 'Je retrouve l\'',
          highlightedText: 'historique',
          endText: ' des évènements liés à ma santé'.resolveWith(isProfilPrincipal: isProfilPrincipal),
          textAlign: TextAlign.start,
          illustrationPath: EnsImages.mhs_tuto_p2,
          illustrationEndAlignment: Alignment.centerRight,
        ),
        TutorialPage(
          beginText: 'Je visualise le détail de mes '.resolveWith(isProfilPrincipal: isProfilPrincipal),
          highlightedText: 'traitements',
          endText: ' et les ajoute facilement à mon Profil médical'.resolveWith(isProfilPrincipal: isProfilPrincipal),
          textAlign: TextAlign.center,
          illustrationPath: EnsImages.mhs_tuto_p3,
          illustrationEndAlignment: Alignment.center,
        ),
        TutorialPage(
          beginText:
              'Je retrouve ensuite mes traitements ajoutés dans mon '.resolveWith(isProfilPrincipal: isProfilPrincipal),
          highlightedText: 'Profil médical',
          endText: '',
          textAlign: TextAlign.start,
          illustrationPath: EnsImages.mhs_tuto_p4,
          illustrationEndAlignment: Alignment.centerLeft,
        ),
      ];
}
