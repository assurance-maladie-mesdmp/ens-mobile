/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';

class EnsPhoneDisplayModel extends Equatable {
  final Indicatif indicatif;
  final String phoneSuffix;

  const EnsPhoneDisplayModel._({
    required this.indicatif,
    required this.phoneSuffix,
  });

  factory EnsPhoneDisplayModel.buildDisplayModel(String phone) {
    for (final Indicatif indicatif in Indicatif.values) {
      if (phone.startsWith(indicatif.label)) {
        return EnsPhoneDisplayModel._(indicatif: indicatif, phoneSuffix: phone.substring(indicatif.label.length));
      }
    }
    if (phone.startsWith('0') && phone.length == 10) {
      return EnsPhoneDisplayModel._(indicatif: Indicatif.PLUS_33, phoneSuffix: phone.substring(1));
    }
    return const EnsPhoneDisplayModel._(indicatif: Indicatif.PLUS_33, phoneSuffix: '');
  }

  @override
  List<Object?> get props => [indicatif, phoneSuffix];
}

enum Indicatif {
  PLUS_33('+33', '## ## ## ## ##', '# ## ## ## ##', 10),
  PLUS_262('+262', '### ## ## ##', null, 10),
  PLUS_508('+508', '## ## ##', null, 7),
  PLUS_590('+590', '### ## ## ##', null, 10),
  PLUS_594('+594', '### ## ## ##', null, 10),
  PLUS_596('+596', '### ## ## ##', null, 10),
  PLUS_681('+681', '## ## ##', null, 7),
  PLUS_687('+687', '## ## ##', null, 7),
  PLUS_689('+689', '## ## ## ##', null, 9);

  final String label;
  final String mask;
  final String? secondMask;
  final int maxLength;

  const Indicatif(this.label, this.mask, this.secondMask, this.maxLength);
}

Map<Indicatif, List<String>> acceptedPrefixForIndicatif = {
  Indicatif.PLUS_33: ['6', '7', '06', '07'],
  Indicatif.PLUS_262: ['639', '692', '693'],
  Indicatif.PLUS_508: ['55'],
  Indicatif.PLUS_590: [
    '690',
    ...[for (var i = 69122; i <= 69134; i++) i.toString()],
  ],
  Indicatif.PLUS_594: ['694'],
  Indicatif.PLUS_596: ['696', '697'],
  Indicatif.PLUS_681: ['40', '80', '82', '83'],
  Indicatif.PLUS_687: [
    ...[for (var i = 50; i <= 54; i++) i.toString()],
    ...[for (var i = 70; i <= 87; i++) i.toString()],
    ...[for (var i = 89; i <= 99; i++) i.toString()],
  ],
  Indicatif.PLUS_689: ['87', '89', '87411', '89411'],
};
