/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/analytics/domain/ens_analytics.dart';
import 'package:fr_cnamts_ens/questionnaire_ages_cles/data/questionnaire_ages_cles_mapper.dart';
import 'package:fr_cnamts_ens/recommandations/domain/ens_recommandation.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:html_unescape/html_unescape_small.dart';

const ACTU_SANTE_THEMATIQUE = 'Pour moi';
const PREVENTION_THEMATIQUE = 'Prévention';

class Article extends Equatable {
  final String id;
  final String title;
  final String? resume;
  final String? link;
  final String? linkText;
  final String? image;
  final String? imageActuSantePage;
  final bool imageFromCms;
  final ArticleBackgroundColor backgroundColor;
  final bool hasDetailArticle;
  final EnsTag? questionnaireTag;
  final RecommandationCode? recommandationCode;
  final QuestionnaireCode? questionnaireCode;
  final bool shouldShowDetails;
  final bool showVisiteMedicaleBottomSheet;
  final String? thematique;
  final ArticleGender gender;
  final AgeRange ageRange;

  const Article({
    required this.id,
    required this.title,
    this.resume,
    required this.link,
    required this.linkText,
    required this.image,
    this.imageActuSantePage,
    this.imageFromCms = true,
    required this.backgroundColor,
    required this.hasDetailArticle,
    this.questionnaireTag,
    this.recommandationCode,
    this.questionnaireCode,
    this.shouldShowDetails = true,
    this.showVisiteMedicaleBottomSheet = false,
    this.thematique,
    this.gender = ArticleGender.TOUS,
    this.ageRange = const AgeRange(),
  });

  factory Article.fromJson(Map<String, dynamic> json) {
    final unescape = HtmlUnescape();
    final image = json['pictogramme'] as String;
    final color = json['couleur_de_fond'] as String;
    final lien = json['lien'] as String;
    final textLien = unescape.convert(json['texte_lien'] as String);
    final resume = json['resume'] as String?;
    final thematique = json['thematique'] as String?;
    final gender = json['field_filtre_sexe'] as String;
    final ageRange = AgeRange.fromJson(
      json['field_filtre_age'] as String,
      json['field_filtre_precision_age'] as String,
    );

    return Article(
      id: json['id'] as String,
      title: unescape.convert(json['titre'] as String),
      resume: resume == null ? null : unescape.convert(resume),
      link: lien.isNotEmpty ? lien : null,
      linkText: textLien.isNotEmpty ? textLien : null,
      image: image.isNotEmpty ? image : null,
      backgroundColor: ArticleBackgroundColor.fromString(color),
      hasDetailArticle: (json['page_detail'] as String) == 'true',
      thematique: thematique,
      gender: ArticleGender.fromString(gender),
      ageRange: ageRange,
    );
  }

  factory Article.fromJsonOfMonActu(Map<String, dynamic> json) {
    final unescape = HtmlUnescape();
    final image = json['pictogramme'] as String;
    final color = json['couleur_de_fond'] as String;
    final lien = json['lien'] as String;
    final textLien = unescape.convert(json['texte_lien'] as String);
    final resume = json['resume'] as String?;
    final gender = json['field_art_prv_sex'] as String;
    final ageRange = AgeRange.fromJson(
      json['field_art_prv_age'] as String,
      json['field_art_prv_precision_age'] as String,
    );

    return Article(
      id: json['id'] as String,
      title: unescape.convert(json['titre'] as String),
      resume: resume == null ? null : unescape.convert(resume),
      link: lien.isNotEmpty ? lien : null,
      linkText: textLien.isNotEmpty ? textLien : null,
      image: image.isNotEmpty ? image : null,
      backgroundColor: ArticleBackgroundColor.fromString(color),
      hasDetailArticle: (json['page_detail'] as String) == 'true',
      thematique: ACTU_SANTE_THEMATIQUE,
      gender: ArticleGender.fromString(gender),
      ageRange: ageRange,
    );
  }

  factory Article.forQuestionnaire({
    required String title,
    required String link,
    required String linkText,
    required EnsTag questionnaireTag,
    required RecommandationCode recommandationCode,
    required QuestionnaireCode questionnaireCode,
    bool showVisiteMedicalBottomSheet = false,
  }) {
    return Article(
      id: 'questionnaire-sante',
      title: title,
      link: link,
      linkText: linkText,
      image: EnsImages.illustration_push_incitation,
      imageActuSantePage: EnsImages.illustration_push_incitation_large,
      backgroundColor: ArticleBackgroundColor.BLEU,
      hasDetailArticle: false,
      imageFromCms: false,
      questionnaireTag: questionnaireTag,
      recommandationCode: recommandationCode,
      questionnaireCode: questionnaireCode,
      showVisiteMedicaleBottomSheet: showVisiteMedicalBottomSheet,
    );
  }

  @override
  List<Object?> get props => [
        id,
        resume,
        link,
        linkText,
        image,
        imageActuSantePage,
        backgroundColor,
        hasDetailArticle,
        title,
        questionnaireTag,
        imageFromCms,
        recommandationCode,
        shouldShowDetails,
        questionnaireCode,
        showVisiteMedicaleBottomSheet,
        thematique,
        gender,
        ageRange,
      ];
}

enum ArticleBackgroundColor {
  JAUNE,
  BLEU,
  CIEL,
  VIOLET,
  VERT;

  static ArticleBackgroundColor fromString(String color) {
    return switch (color.toLowerCase()) {
      'vert' => VERT,
      'jaune' => JAUNE,
      'violet' => VIOLET,
      'bleu foncé' => BLEU,
      _ => CIEL,
    };
  }

  String get image {
    return switch (this) {
      ArticleBackgroundColor.JAUNE => EnsImages.background_light_yellow,
      ArticleBackgroundColor.BLEU => EnsImages.background_light_blue,
      ArticleBackgroundColor.CIEL => EnsImages.background_light_sky,
      ArticleBackgroundColor.VIOLET => EnsImages.background_light_purple,
      ArticleBackgroundColor.VERT => EnsImages.background_light_green,
    };
  }

  String get verticalImage {
    return switch (this) {
      ArticleBackgroundColor.JAUNE => EnsImages.actu_vertical_background_jaune,
      ArticleBackgroundColor.BLEU => EnsImages.actu_vertical_background_bleu_fonce,
      ArticleBackgroundColor.CIEL => EnsImages.actu_vertical_background_bleu_ciel,
      ArticleBackgroundColor.VIOLET => EnsImages.actu_vertical_background_violet,
      ArticleBackgroundColor.VERT => EnsImages.actu_vertical_background_vert,
    };
  }
}

class AgeRange extends Equatable {
  final int min;
  final int max;
  final RangeType type;

  const AgeRange({this.min = 0, this.max = 150, this.type = RangeType.TOUS});

  factory AgeRange.fromJson(String ageRange, String precisionAge) {
    final parsedType = RangeType.fromString(precisionAge);
    final trimmed = ageRange.trim();

    final rangeMatch = RegExp(r'^(\d+)\s*-\s*(\d+)$').firstMatch(trimmed);
    final singleValueMatch = RegExp(r'^(\d+)$').firstMatch(trimmed);

    if (rangeMatch != null) {
      final min = int.parse(rangeMatch.group(1)!);
      final max = int.parse(rangeMatch.group(2)!);
      final type = parsedType == RangeType.TOUS ? RangeType.ANNEE : parsedType;
      return AgeRange(min: min, max: max, type: type);
    } else if (singleValueMatch != null) {
      final value = int.parse(singleValueMatch.group(1)!);
      final type = parsedType == RangeType.TOUS ? RangeType.ANNEE : parsedType;
      return AgeRange(min: value, max: value, type: type);
    }

    return const AgeRange();
  }

  @override
  List<Object?> get props => [min, max, type];
}

enum RangeType {
  ANNEE,
  MOIS,
  JOUR,
  TOUS;

  static RangeType fromString(String precisionAge) {
    return switch (precisionAge.toLowerCase().trim()) {
      'année' => RangeType.ANNEE,
      'mois' => RangeType.MOIS,
      'jour' => RangeType.JOUR,
      'tous' => RangeType.TOUS,
      _ => RangeType.TOUS,
    };
  }
}

enum ArticleGender {
  HOMME,
  FEMME,
  TOUS;

  static ArticleGender fromString(String gender) {
    return switch (gender.toLowerCase()) {
      'homme' => ArticleGender.HOMME,
      'femme' => ArticleGender.FEMME,
      'tous' => ArticleGender.TOUS,
      _ => ArticleGender.TOUS,
    };
  }
}
