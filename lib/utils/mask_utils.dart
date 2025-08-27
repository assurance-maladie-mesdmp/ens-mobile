/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

MaskTextInputFormatter numeroSecuMaskFormatter(String initialText) {
  return MaskTextInputFormatter(
    initialText: initialText,
    mask: '# ## ## ## ### ### ##',
    filter: {'#': RegExp('[0-9A-Ba-b]')},
  );
}

MaskTextInputFormatter numeroSerieAvecPhotoMaskFormatter(String initialText) {
  return MaskTextInputFormatter(
    initialText: initialText,
    mask: '########## #',
  );
}
