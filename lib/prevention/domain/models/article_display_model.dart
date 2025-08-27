/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/questionnaire_ages_cles/data/questionnaire_ages_cles_mapper.dart';

class ArticleDisplayModel extends Equatable {
  final String id;
  final String backgroundColor;
  final String? image;
  final String? imageActuSantePage;
  final String? title;
  final String? body;
  final String? link;
  final String? textLink;
  final bool hasDetailArticle;
  final bool shouldShowVisiteMedicalBottomSheet;
  final QuestionnaireCode? questionnaireCode;
  final bool imageFromCms;
  final String thematique;

  const ArticleDisplayModel({
    required this.id,
    required this.backgroundColor,
    required this.image,
    this.imageActuSantePage,
    this.title,
    required this.body,
    required this.link,
    required this.textLink,
    required this.hasDetailArticle,
    this.shouldShowVisiteMedicalBottomSheet = false,
    this.questionnaireCode,
    required this.imageFromCms,
    required this.thematique,
  });

  @override
  List<Object?> get props => [
        id,
        backgroundColor,
        image,
        imageActuSantePage,
        title,
        body,
        link,
        textLink,
        hasDetailArticle,
        shouldShowVisiteMedicalBottomSheet,
        questionnaireCode,
        imageFromCms,
        thematique,
      ];
}
