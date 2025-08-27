/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/bottomsheet_nouvelles_fonctionalites/domain/nouvelle_fonctionnalite.dart';
import 'package:fr_cnamts_ens/infra/data/http/json_data_source.dart';
import 'package:fr_cnamts_ens/infra/redux/crashlytics_middlewares.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class INouvellesFonctionnalitesRepository {
  Future<List<NouvelleFonctionnalite>?> getCmsNouvellesFonctionnalites();

  bool isAppLanceePourLaPremiereFois();

  Future<void> setNouvellesFonctionnalitesDisplayed();
}

class NouvellesFonctionnalitesRepository extends INouvellesFonctionnalitesRepository {
  static const String PREFS_NEW_FEATURES = 'PREFS_NEW_FEATURES';

  final SharedPreferences sharedPreferences;
  final PackageInfo packageInfo;
  final JsonDataSource jsonDataSource;
  final String cmsUrl;
  final Crashlytics crashlytics;

  NouvellesFonctionnalitesRepository({
    required this.sharedPreferences,
    required this.packageInfo,
    required this.jsonDataSource,
    required this.cmsUrl,
    required this.crashlytics,
  });

  @override
  Future<List<NouvelleFonctionnalite>?> getCmsNouvellesFonctionnalites() async {
    try {
      final lastVersionDisplayed = sharedPreferences.getString(PREFS_NEW_FEATURES);
      final version = packageInfo.version;
      if (lastVersionDisplayed == version) {
        return null;
      } else {
        final versionMinor = version.split('.')[1];
        final path =
            '/jsonapi/mes-nouveautes-mobile?include=field_nouveaute_mob,field_nouveaute_mob.field_illustration_mob.field_media_image&jsonapi_include=1&filter%5Bfield_version_mob%5D=mob$versionMinor';
        final json = await jsonDataSource.get(cmsUrl, path) as Map<String, dynamic>;
        final data = json['data'] as List<dynamic>;
        if (data.isEmpty) {
          return null;
        }
        final dataContent = data[0] as Map<String, dynamic>;
        final nouveautesMob = dataContent['field_nouveaute_mob'] as List<dynamic>;
        final List<NouvelleFonctionnalite> result = nouveautesMob.map((nouveauteJson) {
          final nouveaute = nouveauteJson as Map<String, dynamic>;
          final titre = nouveaute['field_titre_nouveaute_mob'] as String;
          final description = nouveaute['field_description_mob'] as String;
          final imageName = (nouveaute['field_illustration_mob'] as Map<String, dynamic>)['name'] as String;
          return NouvelleFonctionnalite(title: titre, description: description, imageContent: imageName);
        }).toList();
        return result;
      }
    } catch (e, s) {
      crashlytics.recordError(e, s);
      return null;
    }
  }

  @override
  bool isAppLanceePourLaPremiereFois() {
    final version = sharedPreferences.getString(PREFS_NEW_FEATURES);
    return version == null;
  }

  @override
  Future<void> setNouvellesFonctionnalitesDisplayed() async {
    await sharedPreferences.setString(PREFS_NEW_FEATURES, packageInfo.version);
  }
}
