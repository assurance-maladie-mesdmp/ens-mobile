/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';

class CarteVaccinations extends Equatable {
  final String title;
  final String subtitle;
  final String imageLink;
  final List<String> descriptions;

  const CarteVaccinations({
    required this.title,
    required this.subtitle,
    required this.imageLink,
    required this.descriptions,
  });

  factory CarteVaccinations.fromJson(Map<String, dynamic> json, {required String cmsUrl}) {
    const imagePath = '/sites/default/files/';
    final data = json['data'] as List<dynamic>;
    final carte = data[0] as Map<String, dynamic>;
    String imageLink;
    final fieldCarteLink = carte['field_carte_link'];
    if (fieldCarteLink is String) {
      imageLink = fieldCarteLink;
    } else {
      imageLink = (fieldCarteLink as Map<String, dynamic>)['title'] as String;
    }
    final fieldImageCarte = carte['field_image_carte'] as Map<String, dynamic>;
    final body = carte['body'] as Map<String, dynamic>;
    return CarteVaccinations(
      title: carte['title'] as String,
      subtitle: imageLink,
      imageLink: 'https://$cmsUrl$imagePath${fieldImageCarte['name'] as String?}',
      descriptions: _formatDescription(body['processed'] as String),
    );
  }

  static List<String> _formatDescription(String text) {
    final result = text
        .replaceAll('<ul>', '')
        .replaceAll('<\/ul>', '')
        .replaceAll('<\/li>', '')
        .replaceAll('<li>', '')
        .split('\n');
    return result;
  }

  @override
  List<Object?> get props => [title, subtitle, imageLink, descriptions];
}
