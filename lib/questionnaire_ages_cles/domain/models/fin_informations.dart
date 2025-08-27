/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';

class FinInformations extends Equatable {
  final List<String> labels;
  final String? link;
  final String? linkText;
  final String? titreBouton;

  const FinInformations({required this.labels, this.link, this.linkText, this.titreBouton});

  FinInformations.empty()
      : labels = [],
        link = null,
        linkText = null,
        titreBouton = null;

  @override
  List<Object?> get props => [labels, link, linkText, titreBouton];
}
