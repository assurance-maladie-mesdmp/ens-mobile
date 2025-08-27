/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/common/data/request_result.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_habitudes_de_vie.fragment.data.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_habitudes_de_vie_get.query.data.gql.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart';
import 'package:fr_cnamts_ens/profil_medical/habitudes_de_vie/domain/models/habitude_de_vie.dart';
import 'package:fr_cnamts_ens/profil_medical/habitudes_de_vie/domain/models/habitude_de_vie_answer.dart';
import 'package:fr_cnamts_ens/profil_medical/habitudes_de_vie/domain/models/habitude_de_vie_code.dart';
import 'package:fr_cnamts_ens/profil_medical/habitudes_de_vie/domain/models/habitude_de_vie_detail.dart';
import 'package:fr_cnamts_ens/profil_medical/habitudes_de_vie/domain/models/habitude_de_vie_enum.dart';
import 'package:fr_cnamts_ens/profil_medical/habitudes_de_vie/domain/models/habitude_de_vie_item.dart';
import 'package:fr_cnamts_ens/profil_medical/habitudes_de_vie/domain/models/habitude_de_vie_option.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/counted_text_input.dart';

class HabitudesDeVieInputMapper {
  static RequestResult<HabitudeDeVieAnswer> getHabitudeDeVieAnswerResult(GhabitudesDeVie? ghabitudeDeVie) {
    if (ghabitudeDeVie != null) {
      final habitudesDeVieSectionAnswer = toHabitudeDeVieSectionAnswer(ghabitudeDeVie);
      if (habitudesDeVieSectionAnswer != null) {
        return RequestResultSuccess(habitudesDeVieSectionAnswer);
      }
    }
    return RequestResultError.genericError();
  }

  static HabitudeDeVieCategory? toHabitudeDeVieCategory(
    Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections section,
    Gget_habitudes_de_vieData_fetchLifestylesStatus status,
  ) {
    final metadataCode = toHabitudeDeVieCategoryCode(section.name);
    if (metadataCode != null) {
      final lastModifiedDate = _getLastModifiedDate(status, metadataCode);
      return HabitudeDeVieCategory(
        code: metadataCode,
        label: section.label,
        categoryTag: section.sectionTag,
        items: _toHabitudeDeVieItems(section.items),
        lastModifiedDate: lastModifiedDate,
      );
    }
    return null;
  }

  static List<HabitudeDeVieItem> _toHabitudeDeVieItems(
    Iterable<Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items> items,
  ) {
    return items
        .map(
          (item) => HabitudeDeVieItem(
            code: item.name,
            itemTag: item.itemTag,
            details: _toHabitudeDeVieDetail(item.details),
          ),
        )
        .toList();
  }

  static List<HabitudeDeVieDetail> _toHabitudeDeVieDetail(
    Iterable<Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details> details,
  ) {
    return details
        .map(
          (detail) {
            final itemDisplayType = _toItemDisplayType(detail.type);
            if (itemDisplayType != null) {
              return HabitudeDeVieDetail(
                code: detail.name,
                label: detail.label,
                description: detail.description,
                exemple: detail.example,
                type: itemDisplayType,
                detailTag: detail.detailTag,
                options: _toHabitudeDeVieOptions(detail.options ?? []),
                displayOnCondition: _toHabitudeDeVieDetailDisplayCondition(detail.displayOn),
                maxLength: detail.maxLength,
                constraints: _toTextInputConstraints(detail.constraints ?? []),
              );
            } else {
              return null;
            }
          },
        )
        .nonNulls
        .toList();
  }

  static List<TextInputConstraints> _toTextInputConstraints(
    Iterable<Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_constraints> gqlConstraints,
  ) {
    return gqlConstraints
        .map(
          (gqlConstraint) => TextInputConstraints(
            regexp: gqlConstraint.regexp,
            rangeMin: gqlConstraint.range?.min,
            rangeMax: gqlConstraint.range?.max,
            errorMessage: gqlConstraint.message,
          ),
        )
        .toList();
  }

  static HabitudeDeVieDisplayOnCondition? _toHabitudeDeVieDetailDisplayCondition(
    Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_displayOn? gqlDisplayOn,
  ) {
    if (gqlDisplayOn != null) {
      HabitudeDeVieDisplayOnCondition? detailAnswer;
      if (gqlDisplayOn.name != HabitudeDeVieCode.COUNT) {
        final itemValueEnum = gqlDisplayOn.value;
        if (itemValueEnum != null) {
          detailAnswer = HabitudeDeVieDisplayOnCondition.fromValue(
            code: gqlDisplayOn.name,
            value: itemValueEnum,
          );
        } else if (gqlDisplayOn.range?.min != null && gqlDisplayOn.range?.max != null) {
          detailAnswer = HabitudeDeVieDisplayOnCondition.fromRange(
            code: gqlDisplayOn.name,
            minValue: gqlDisplayOn.range!.min!,
            maxValue: gqlDisplayOn.range!.max!,
          );
        }
      } else {
        if (gqlDisplayOn.value != null) {
          detailAnswer = HabitudeDeVieDisplayOnCondition.fromRawString(
            code: gqlDisplayOn.name,
            value: gqlDisplayOn.value!,
          );
        } else if (gqlDisplayOn.range?.min != null && gqlDisplayOn.range?.max != null) {
          detailAnswer = HabitudeDeVieDisplayOnCondition.fromRange(
            code: gqlDisplayOn.name,
            minValue: gqlDisplayOn.range!.min!,
            maxValue: gqlDisplayOn.range!.max!,
          );
        }
      }
      return detailAnswer;
    } else {
      return null;
    }
  }

  static List<HabitudeDeVieOption> _toHabitudeDeVieOptions(
    Iterable<Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_options> gqlOptions,
  ) {
    return gqlOptions.map((gqlOption) => _toHabitudeDeVieOption(gqlOption)).nonNulls.toList();
  }

  static HabitudeDeVieOption? _toHabitudeDeVieOption(
    Gget_habitudes_de_vieData_fetchLifestylesMetadata_sections_items_details_options gqlOption,
  ) {
    return HabitudeDeVieOption(
      value: gqlOption.value,
      label: gqlOption.label,
    );
  }

  static ItemDisplayType? _toItemDisplayType(GLifestyleItemDisplayEnum type) {
    return switch (type) {
      GLifestyleItemDisplayEnum.TEXT => ItemDisplayType.TEXT,
      GLifestyleItemDisplayEnum.RADIO => ItemDisplayType.RADIO,
      GLifestyleItemDisplayEnum.gUnknownEnumValue => null,
      GLifestyleItemDisplayEnum() => null,
    };
  }

  static HabitudeDeVieCategoryCode? toHabitudeDeVieCategoryCode(GLifestyleSectionEnum gqlCode) {
    return switch (gqlCode) {
      GLifestyleSectionEnum.FOOD => HabitudeDeVieCategoryCode.FOOD,
      GLifestyleSectionEnum.TOBACCO => HabitudeDeVieCategoryCode.TOBACCO,
      GLifestyleSectionEnum.PHYSICAL_ACTIVITY => HabitudeDeVieCategoryCode.PHYSICAL_ACTIVITY,
      GLifestyleSectionEnum.SLEEP => HabitudeDeVieCategoryCode.SOMMEIL,
      GLifestyleSectionEnum.ALCOHOL => HabitudeDeVieCategoryCode.ALCOOL,
      GLifestyleSectionEnum.SCREEN => HabitudeDeVieCategoryCode.ECRANS,
      GLifestyleSectionEnum.gUnknownEnumValue => null,
      GLifestyleSectionEnum() => null,
    };
  }

  static HabitudeDeVieAnswer? toHabitudeDeVieSectionAnswer(GhabitudesDeVie model) {
    final categoryCode = toHabitudeDeVieCategoryCode(model.name);
    if (categoryCode != null) {
      final details = model.items
          .map(
            (item) {
              return _toHabitudeDeVieSectionDetail(item);
            },
          )
          .nonNulls
          .toList();
      return HabitudeDeVieAnswer(categoryCode: categoryCode, categoryDetails: details);
    } else {
      return null;
    }
  }

  static HabitudeDeVieCategoryDetails? _toHabitudeDeVieSectionDetail(GhabitudesDeVie_items gqlItems) {
    final details = gqlItems.details.firstOrNull;
    final answersHistory = details?.answers;
    if (details != null && answersHistory != null) {
      final answers = answersHistory.map((answer) => _toHabitudeDeVieDetailAnswer(answer)).toList();

      return HabitudeDeVieCategoryDetails(
        id: details.id,
        itemCode: gqlItems.name,
        answers: answers,
        effectiveDate: DateTime.parse(details.effectiveDate),
        lastModifiedType: _toHabitudeDeVieCreationType(details.lastModifiedType),
      );
    } else {
      return null;
    }
  }

  static HabitudeDeVieDetailAnswer _toHabitudeDeVieDetailAnswer(GhabitudesDeVie_items_details_answers gqlDetails) {
    return HabitudeDeVieDetailAnswer(
      code: gqlDetails.name,
      label: gqlDetails.label,
      value: gqlDetails.value,
    );
  }

  static String? _getLastModifiedDate(
    Gget_habitudes_de_vieData_fetchLifestylesStatus status,
    HabitudeDeVieCategoryCode? metadataCode,
  ) {
    for (final statusSection in status.sections) {
      final statusCode = toHabitudeDeVieCategoryCode(statusSection.name);
      if (metadataCode != null && statusCode != null && metadataCode == statusCode) {
        return statusSection.lastModifiedDate;
      }
    }
    return null;
  }

  static HabitudeDeVieCreationType _toHabitudeDeVieCreationType(GLifestyleCreationTypeEnum gqlEnum) {
    return switch (gqlEnum) {
      GLifestyleCreationTypeEnum.PATIENT => HabitudeDeVieCreationType.PATIENT,
      GLifestyleCreationTypeEnum.QUIZ => HabitudeDeVieCreationType.QUESTIONNAIRE,
      GLifestyleCreationTypeEnum.MIGRATION => HabitudeDeVieCreationType.INCONNU,
      GLifestyleCreationTypeEnum.gUnknownEnumValue => HabitudeDeVieCreationType.INCONNU,
      GLifestyleCreationTypeEnum() => HabitudeDeVieCreationType.INCONNU,
    };
  }
}
