/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

class CmsLastPublicationCGU extends DateTime {
  CmsLastPublicationCGU(DateTime dateTime) : super(dateTime.year, dateTime.month, dateTime.day);

  factory CmsLastPublicationCGU.fromJson(Map<String, dynamic> json) {
    return CmsLastPublicationCGU(
      DateTime.parse(
        (((json['data'] as List<dynamic>)[0] as Map<String, dynamic>)['attributes']
            as Map<String, dynamic>)['field_date_derniere_publication'] as String,
      ),
    );
  }

  DateTime toRealDateTime() => DateTime(year, month, day);
}
