/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_get_cities.query.data.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/search_ps/domain/models/code_postaux.dart';
import 'package:fr_cnamts_ens/profil_medical/professionnels_de_sante/search_ps/domain/models/commune.dart';
import 'package:fr_cnamts_ens/utils/string_utils.dart';

class SearchCommunesRepositoryMapper {
  static GGetCityInputBuilder buildInput(String userInput) {
    final input = GGetCityInput(
      (input) => input
        ..cityName = isNumericOrDepartmentsOfCorsica(userInput) ? null : userInput
        ..zipCode = isNumericOrDepartmentsOfCorsica(userInput) ? userInput : null
        ..matchingRule = 'STARTBY',
    );
    final inputBuilder = GGetCityInputBuilder();
    inputBuilder.replace(input);
    return inputBuilder;
  }

  static bool isNumericOrDepartmentsOfCorsica(String input) {
    const departmentsOfCorsica = ['2A', '2B'];
    return isNumeric(input) || departmentsOfCorsica.contains(input.toUpperCase());
  }

  static List<Commune> toEnsCity(
    List<Gget_citiesData_getGroupedCityInformation> cityModel,
  ) {
    final List<Commune> cities = [];
    for (final city in cityModel) {
      cities.add(
        Commune(
          nom: city.cityName,
          codeDepartement: city.departmentCode,
          codesPostaux: city.zipCodes != null ? CodePostaux(city.zipCodes!.toList()) : CodePostaux([]),
          codeCommune: city.inseeCode,
        ),
      );
      if (city.zipCodes != null && city.zipCodes!.length > 1) {
        for (final zipCode in city.zipCodes!) {
          cities.add(
            Commune(
              nom: city.cityName,
              codeDepartement: city.departmentCode,
              codesPostaux: CodePostaux([zipCode]),
              codeCommune: city.inseeCode,
            ),
          );
        }
      }
    }
    return cities;
  }
}
