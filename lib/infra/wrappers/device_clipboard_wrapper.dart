/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/services.dart';
import 'package:fr_cnamts_ens/clipboard/domain/data/clipboard_wrapper.dart';

class DeviceClipboardWrapper extends ClipboardWrapper {
  @override
  Future<void> setData({required String text}) {
    return Clipboard.setData(ClipboardData(text: text));
  }
}
