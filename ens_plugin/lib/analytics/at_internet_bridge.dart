import 'dart:io';

import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';

class AtInternetTracker {
  static const _platform = MethodChannel('com.octo.flutter/atinternet_wrapper');
  static const String FUN_CREATE_TRACKER = 'createTracker';
  static const String FUN_TAG_CLICK = 'tagClick';
  static const String FUN_TAG_SCREEN = 'tagScreen';

  static const String PARAM_TRACKER_NAME = 'PARAM_TRACKER_NAME';
  static const String PARAM_TAG_NAME = 'PARAM_TAG_NAME';
  static const String PARAM_SITE_ID = 'PARAM_SITE_ID';
  static const String PARAM_STORAGE = 'PARAM_STORAGE';
  static const String PARAM_DOMAIN = 'PARAM_DOMAIN';
  static const String PARAM_COLLECT_URL = 'PARAM_COLLECT_URL';
  static const String PARAM_SECURE_COLLECT_URL = 'PARAM_SECURE_COLLECT_URL';
  static const String PARAM_CHAPTER_1 = 'PARAM_CHAPTER_1';
  static const String PARAM_CHAPTER_2 = 'PARAM_CHAPTER_2';
  static const String PARAM_CHAPTER_3 = 'PARAM_CHAPTER_3';

  final AtInternetTrackerConfig _config;

  AtInternetTracker._internal(this._config);

  static Future<AtInternetTracker> build(AtInternetTrackerConfig config) async {
    await _platform.invokeMethod(
      FUN_CREATE_TRACKER,
      {
        PARAM_TRACKER_NAME: config.name,
        PARAM_SITE_ID: config.siteId,
        PARAM_STORAGE: 'never',
        PARAM_COLLECT_URL: config.log,
        PARAM_SECURE_COLLECT_URL: config.secureLog,
        PARAM_DOMAIN: config.domain,
      },
    );
    // 25/04/25 on supprime les fichiers créés par AT Internet
    await _clearATInternetFiles();

    return AtInternetTracker._internal(config);
  }

  static Future<void> _clearATInternetFiles() async {
    final Directory appDirectory = await getApplicationDocumentsDirectory();

    final trackerFilesToDelete = await appDirectory.list(recursive: false).where(
      (element) {
        final path = element.path;
        return element is File &&
            (path.endsWith('Tracker.sqlite') ||
                path.endsWith('Tracker.sqlite-shm') ||
                path.endsWith('Tracker.sqlite-wal'));
      },
    ).toList();

    for (final file in trackerFilesToDelete) {
      if (await file.exists()) {
        try {
          file.delete();
        } catch (_) {}
      }
    }
  }

  Future<void> tagScreen(String screenName, {String? chapter1, String? chapter2, String? chapter3}) async {
    await _platform.invokeMethod(
      FUN_TAG_SCREEN,
      {
        PARAM_TRACKER_NAME: _config.name,
        PARAM_TAG_NAME: screenName,
        PARAM_CHAPTER_1: chapter1,
        PARAM_CHAPTER_2: chapter2,
        PARAM_CHAPTER_3: chapter3,
      },
    );
  }

  Future<void> tagClick(String clickName, {String? chapter1, String? chapter2, String? chapter3}) async {
    await _platform.invokeMethod(
      FUN_TAG_CLICK,
      {
        PARAM_TRACKER_NAME: _config.name,
        PARAM_TAG_NAME: clickName,
        PARAM_CHAPTER_1: chapter1,
        PARAM_CHAPTER_2: chapter2,
        PARAM_CHAPTER_3: chapter3,
      },
    );
  }
}

class AtInternetTrackerConfig {
  final String name;
  final String siteId;
  final String domain;
  final String log;
  final String secureLog;

  AtInternetTrackerConfig({
    required this.name,
    required this.siteId,
    required this.domain,
    required this.log,
    required this.secureLog,
  });

  @override
  String toString() {
    return 'AtInternetTrackerConfig{name: $name, siteId: $siteId, domain: $domain, log: $log, secureLog: $secureLog}';
  }
}
