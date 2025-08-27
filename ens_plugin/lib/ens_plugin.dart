import 'dart:async';

import 'package:flutter/services.dart';

class EnsPlugin {
  static const MethodChannel _channel = MethodChannel('ens_plugin');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
