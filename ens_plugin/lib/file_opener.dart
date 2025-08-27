import 'dart:io';

import 'package:flutter/services.dart';
import 'package:open_file_plus/open_file_plus.dart';

class FileOpener {
  static const _platform = MethodChannel('fr.cnamts.ens.flutter_plugin/openFile');

  static void openFile(String source) {
    if (Platform.isAndroid) {
      _platform.invokeListMethod(
        'open',
        {'uri': source},
      );
    } else {
      OpenFile.open(source);
    }
  }
}
