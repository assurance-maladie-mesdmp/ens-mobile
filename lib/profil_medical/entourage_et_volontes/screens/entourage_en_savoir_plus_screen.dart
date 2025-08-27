/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';

class EntourageEnSavoirPlusScreen extends StatelessWidget {
  static const routeName = '/medical/profil/entourage/en_savoir_plus';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: EnsAppBarSubLevel(title: 'En savoir plus'),
      body: SafeArea(
        child: ScrollviewWithScrollbar(
          padding: EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text('Qu\'est ce qu\'un contact d\'urgence ?', style: EnsTextStyle.text24_w400_normal_title),
              Text(
                'Les personnes à contacter en cas d\'urgence sont les proches que vous souhaitez alerter si vous vous trouvez en situation d\'urgence médicale. Vous pouvez indiquer l\'un de vos contacts d\'urgence comme personne de confiance.',
                style: EnsTextStyle.text14_w400_normal_title,
              ),
              SizedBox(height: 24),
              Text('Qu\'est ce qu\'une personne de confiance ?', style: EnsTextStyle.text24_w400_normal_title),
              Text(
                'L\'avis de la personne de confiance guide le médecin pour prendre ses décisions. Elle doit donc connaître vos volontés et les exprimer lorsqu\'elle est appelée à le faire. Vos directives anticipées peuvent également lui être confiées. Cette personne de confiance peut être l\'un de vos contacts d\'urgence.',
                style: EnsTextStyle.text14_w400_normal_title,
              ),
              SizedBox(height: 24),
              Text('Qu\'est ce qu\'un proche aidant ?', style: EnsTextStyle.text24_w400_normal_title),
              Text(
                'Un proche aidant est une personne de votre entourage vous venant en aide à titre non professionnel, pour accomplir tout ou partie des activités de la vie quotidienne si vous êtes en situation de dépendance. Le proche aidant déclaré ne dispose pas d\'un accès à votre service Mon espace santé, mais la connaissance de son identité est importante pour les professionnels de santé qui vous prennent en charge.',
                style: EnsTextStyle.text14_w400_normal_title,
              ),
              SizedBox(height: 24),
              Text('Qu\'est ce qu\'un proche aidé ?', style: EnsTextStyle.text24_w400_normal_title),
              Text(
                'Un proche aidé est une personne de votre entourage en situation de dépendance pour laquelle vous accomplissez à titre non professionnel, tout ou partie des activités de la vie quotidienne.',
                style: EnsTextStyle.text14_w400_normal_title,
              ),
              SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
