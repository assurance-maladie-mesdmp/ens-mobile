/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'dart:convert';

import 'package:fr_cnamts_ens/common/data/request_result.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_habitudes_de_vie_get.query.data.gql.dart';
import 'package:fr_cnamts_ens/profil_medical/habitudes_de_vie/data/habitudes_de_vie_mapper_input.dart';
import 'package:fr_cnamts_ens/profil_medical/habitudes_de_vie/data/habitudes_de_vie_repository.dart';
import 'package:fr_cnamts_ens/profil_medical/habitudes_de_vie/domain/models/habitude_de_vie_answer.dart';
import 'package:fr_cnamts_ens/profil_medical/habitudes_de_vie/domain/models/habitude_de_vie_enum.dart';
import 'package:fr_cnamts_ens/profil_medical/habitudes_de_vie/domain/models/habitude_de_vie_metadata.dart';

class GuestHabitudesDeVieRepository extends IHabitudesDeVieRepository {
  @override
  Future<RequestResult<HabitudeDeVieMetadata>> getHabitudesDeVie(String patientId) {
    return Future.value(_getHabitudesDeVieMetadata());
  }

  @override
  Future<RequestResult<void>> updateHabitudesDeVie(
    String patientId,
    HabitudeDeVieCategoryUserDetailsAnswer userAnswer,
  ) {
    return Future.value(RequestResultSuccess(null));
  }

  @override
  Future<InitialHabitudesDeVieSectionAnswersResult> getInitialHabitudesDeVieSectionAnswers(String patientId) async {
    return InitialHabitudesDeVieSectionAnswersResult(
      alimentaire: RequestResultSuccess(
        HabitudeDeVieAnswer(
          categoryCode: HabitudeDeVieCategoryCode.FOOD,
          categoryDetails: [
            HabitudeDeVieCategoryDetails(
              id: '0',
              itemCode: 'FOOD_FRUIT',
              effectiveDate: DateTime(2022, 2, 1, 15, 0, 35, 623).toUtc(),
              lastModifiedType: HabitudeDeVieCreationType.PATIENT,
              answers: const [
                HabitudeDeVieDetailAnswer(
                  code: 'FREQUENCY',
                  label: 'Non',
                  value: 'NO',
                ),
              ],
            ),
          ],
        ),
      ),
      tabac: RequestResultSuccess(
        HabitudeDeVieAnswer(
          categoryCode: HabitudeDeVieCategoryCode.TOBACCO,
          categoryDetails: [
            HabitudeDeVieCategoryDetails(
              id: '1',
              itemCode: 'TOBACCO_MANUAL',
              effectiveDate: DateTime(2022, 2, 1, 15, 0, 35, 623).toUtc(),
              lastModifiedType: HabitudeDeVieCreationType.PATIENT,
              answers: const [
                HabitudeDeVieDetailAnswer(
                  code: 'SMOKE_FREQUENCY',
                  label: 'Non',
                  value: 'NO',
                ),
              ],
            ),
          ],
        ),
      ),
      activitePhysique: RequestResultSuccess(
        HabitudeDeVieAnswer(
          categoryCode: HabitudeDeVieCategoryCode.PHYSICAL_ACTIVITY,
          categoryDetails: [
            HabitudeDeVieCategoryDetails(
              id: '2',
              itemCode: 'PHYSICAL_ACTIVITY_REGULARLY',
              effectiveDate: DateTime(2022, 2, 2, 15, 0, 35, 623).toUtc(),
              lastModifiedType: HabitudeDeVieCreationType.PATIENT,
              answers: const [
                HabitudeDeVieDetailAnswer(
                  code: 'PHYSICAL_ACTIVITY_ADOPTED',
                  label: 'Oui',
                  value: 'YES',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  Future<RequestResult<HabitudeDeVieAnswer>> getHabitudesDeVieSectionAnswer(
    String patientId,
    HabitudeDeVieCategoryCode category,
  ) {
    final habitudeDeVieAnswer = HabitudeDeVieAnswer(
      categoryCode: HabitudeDeVieCategoryCode.FOOD,
      categoryDetails: [
        HabitudeDeVieCategoryDetails(
          id: '0',
          itemCode: 'FOOD_FRUIT',
          effectiveDate: DateTime(2022, 2, 1, 15, 0, 35, 623).toUtc(),
          lastModifiedType: HabitudeDeVieCreationType.PATIENT,
          answers: const [
            HabitudeDeVieDetailAnswer(
              code: 'FREQUENCY',
              label: 'Non',
              value: 'NO',
            ),
          ],
        ),
      ],
    );
    return Future.value(RequestResultSuccess(habitudeDeVieAnswer));
  }

  @override
  Future<RequestResult<void>> deleteHabitudesDeVie(String patientId, String idItem) {
    return Future.value(RequestResultSuccess(null));
  }

  static RequestResult<HabitudeDeVieMetadata> _getHabitudesDeVieMetadata() {
    final result = Gget_habitudes_de_vieData.fromJson(
      jsonDecode(_habitudesDeVieMetadataModeInvite) as Map<String, dynamic>,
    );

    final metadata = result?.fetchLifestylesMetadata;
    final status = result?.fetchLifestylesStatus;

    if (metadata != null && status != null) {
      final habitudesVie = metadata.sections
          .map((section) => HabitudesDeVieInputMapper.toHabitudeDeVieCategory(section, status))
          .nonNulls
          .toList();

      final habitudeDeVieMetadata = HabitudeDeVieMetadata(habitudesVie);
      return RequestResultSuccess(habitudeDeVieMetadata);
    } else {
      return RequestResultError.genericError();
    }
  }
}

const _habitudesDeVieMetadataModeInvite = '''
{
  "fetchLifestylesStatus":{
    "sections":[
      {
        "name":"FOOD",
        "lastModifiedDate":"04/01/2024"
      },
      {
        "name":"PHYSICAL_ACTIVITY",
        "lastModifiedDate":"21/12/2023"
      },
      {
        "name":"SLEEP",
        "lastModifiedDate":"21/12/2023"
      },
      {
        "name":"SCREEN"
      },
      {
        "name":"ALCOHOL",
        "lastModifiedDate":"21/12/2023"
      },
      {
        "name":"TOBACCO",
        "lastModifiedDate":"21/12/2023"
      }
    ]
  },
  "fetchLifestylesMetadata": {
    "sections": [
      {
        "name": "FOOD",
        "label": "Alimentation",
        "sectionTag": "alimentation",
        "items": [
          {
            "name": "FOOD_FRUIT",
            "itemTag": "fruits",
            "details": [
              {
                "name": "FREQUENCY",
                "detailTag": "fruit",
                "label": "J’ai l'habitude de manger des fruits et légumes",
                "description": "Les pommes de terre ne sont pas des légumes",
                "example": null,
                "type": "RADIO",
                "options": [
                  {
                    "value": "EVERYDAY",
                    "label": "Tous les jours"
                  },
                  {
                    "value": "NOT_EVERYDAY",
                    "label": "Pas tous les jours"
                  },
                  {
                    "value": "NO",
                    "label": "Non"
                  }
                ],
                "displayOn": null,
                "maxLength": null,
                "constraints": null
              }
            ]
          },
          {
            "name": "FOOD_FAT",
            "itemTag": "gras",
            "details": [
              {
                "name": "FREQUENCY",
                "detailTag": "gras",
                "label": "Je mange des aliments gras",
                "description": "Ex. : charcuterie, beurre, fromage, fast-food, plats industriels...",
                "example": null,
                "type": "RADIO",
                "options": [
                  {
                    "value": "EVERY_DAY_OR_ALMOST",
                    "label": "Tous les jours ou presque"
                  },
                  {
                    "value": "MORE_ONCE_A_WEEK",
                    "label": "Plusieurs fois par semaine"
                  },
                  {
                    "value": "MORE_ONCE_A_MONTH",
                    "label": "Plusieurs fois par mois"
                  },
                  {
                    "value": "NEVER",
                    "label": "Jamais"
                  }
                ],
                "displayOn": null,
                "maxLength": null,
                "constraints": null
              }
            ]
          },
          {
            "name": "FOOD_SUGAR",
            "itemTag": "sucre",
            "details": [
              {
                "name": "FREQUENCY",
                "detailTag": "sucre",
                "label": "Je consomme des aliments sucrés",
                "description": "Ex. : pâtisseries, confiseries, jus de fruits, sodas même light...",
                "example": null,
                "type": "RADIO",
                "options": [
                  {
                    "value": "EVERY_DAY_OR_ALMOST",
                    "label": "Tous les jours ou presque"
                  },
                  {
                    "value": "MORE_ONCE_A_WEEK",
                    "label": "Plusieurs fois par semaine"
                  },
                  {
                    "value": "MORE_ONCE_A_MONTH",
                    "label": "Plusieurs fois par mois"
                  },
                  {
                    "value": "NEVER",
                    "label": "Jamais"
                  }
                ],
                "displayOn": null,
                "maxLength": null,
                "constraints": null
              }
            ]
          },
          {
            "name": "FOOD_SALT",
            "itemTag": "sel",
            "details": [
              {
                "name": "ADOPTED",
                "detailTag": "sel",
                "label": "J’ai l’habitude d’ajouter du sel dans mon assiette",
                "description": null,
                "example": null,
                "type": "RADIO",
                "options": [
                  {
                    "value": "YES",
                    "label": "Oui"
                  },
                  {
                    "value": "NO",
                    "label": "Non"
                  }
                ],
                "displayOn": null,
                "maxLength": null,
                "constraints": null
              }
            ]
          }
        ]
      },
      {
        "name": "PHYSICAL_ACTIVITY",
        "label": "Activité physique",
        "sectionTag": "activite_physique",
        "items": [
          {
            "name": "PHYSICAL_ACTIVITY_REGULARLY",
            "itemTag": "regulier",
            "details": [
              {
                "name": "ADOPTED",
                "detailTag": "regulier",
                "label": "Je pratique régulièrement une activité physique",
                "description": null,
                "example": null,
                "type": "RADIO",
                "options": [
                  {
                    "value": "YES",
                    "label": "Oui"
                  },
                  {
                    "value": "NO",
                    "label": "Non"
                  }
                ],
                "displayOn": null,
                "maxLength": null,
                "constraints": null
              },
              {
                "name": "PHYSICAL_ACTIVITY_WEEK_FREQUENCY",
                "detailTag": "regulier",
                "label": "Je pratique au moins 30 minutes d’activités physiques dynamiques par jour",
                "description": "Ex. : marche, vélo, jardinage, ménage, jogging, autre activité sportive, ...",
                "example": null,
                "type": "RADIO",
                "options": [
                  {
                    "value": "NEVER",
                    "label": "Jamais"
                  },
                  {
                    "value": "ONE_TO_TWO_TIMES_A_WEEK",
                    "label": "1 à 2 fois par semaine"
                  },
                  {
                    "value": "THREE_TO_FOUR_TIMES_A_WEEK",
                    "label": "3 à 4 fois par semaine"
                  },
                  {
                    "value": "FIVE_TO_SEVEN_TIMES_A_WEEK",
                    "label": "5 à 7 fois par semaine"
                  }
                ],
                "displayOn": {
                  "name": "ADOPTED",
                  "value": "YES",
                  "range": null
                },
                "maxLength": null,
                "constraints": null
              }
            ]
          },
          {
            "name": "PHYSICAL_ACTIVITY_SAT",
            "itemTag": "bouger",
            "details": [
              {
                "name": "SAT_FREQUENCY",
                "detailTag": "bouger",
                "label": "Je suis souvent assis(e) sans bouger pendant plus de 2 heures",
                "description": null,
                "example": null,
                "type": "RADIO",
                "options": [
                  {
                    "value": "IN_MY_WORK_IN_MY_STUDIES",
                    "label": "Oui, dans mon travail ou mes études"
                  },
                  {
                    "value": "IN_MY_SPARE_TIME",
                    "label": "Oui, dans ma vie personnelle (à la maison, dans mes loisirs…)"
                  },
                  {
                    "value": "BOTH",
                    "label": "Oui, dans mon travail/mes études et dans ma vie personnelle"
                  },
                  {
                    "value": "NEITHER_OF_TWO",
                    "label": "Non"
                  }
                ],
                "displayOn": null,
                "maxLength": null,
                "constraints": null
              }
            ]
          }
        ]
      },
      {
        "name": "TOBACCO",
        "label": "Tabac",
        "sectionTag": "tabac",
        "items": [
          {
            "name": "TOBACCO_MANUAL",
            "itemTag": "fume",
            "details": [
              {
                "name": "SMOKE_FREQUENCY",
                "detailTag": "fume",
                "label": "Je fume",
                "description": "Ex. : cigarette, tabac à rouler, cigare, cigarillo, pipe, chicha, le narguilé…",
                "example": null,
                "type": "RADIO",
                "options": [
                  {
                    "value": "YES_EVERY_DAY",
                    "label": "Oui, tous les jours"
                  },
                  {
                    "value": "YES_OCCASIONALLY",
                    "label": "Oui, occasionnellement"
                  },
                  {
                    "value": "NO",
                    "label": "Non"
                  },
                  {
                    "value": "NO_BUT_I_HAVE_SMOKED_IN_THE_PAST",
                    "label": "Non, mais j’ai fumé dans le passé"
                  }
                ],
                "displayOn": null,
                "maxLength": null,
                "constraints": null
              },
              {
                "name": "COUNT",
                "detailTag": "fume",
                "label": "Nombre de cigarettes que je fume par jour",
                "description": "Valeur numérique entière entre 1-99",
                "example": null,
                "type": "TEXT",
                "options": null,
                "displayOn": {
                  "name": "SMOKE_FREQUENCY",
                  "value": "YES_EVERY_DAY",
                  "range": null
                },
                "maxLength": 2,
                "constraints": [
                  {
                    "regexp": null,
                    "range": null,
                    "message": "Seules les valeurs numériques entières sont acceptées."
                  },
                  {
                    "regexp": null,
                    "range": {
                      "min": 1,
                      "max": 99
                    },
                    "message": "Seules les valeurs entre 1 et 99 sont acceptées."
                  }
                ]
              },
              {
                "name": "SMOKE_STOPPED",
                "detailTag": "fume",
                "label": "J’ai arrêté de fumer",
                "description": null,
                "example": null,
                "type": "RADIO",
                "options": [
                  {
                    "value": "SINCE_LESS_THAN_ONE_YEAR",
                    "label": "Depuis moins d'1 an"
                  },
                  {
                    "value": "BETWEEN_ONE_YEAR_AND_FIVE_YEARS_AGO",
                    "label": "Entre 1 an et 5 ans"
                  },
                  {
                    "value": "SINCE_MORE_THAN_FIVE_YEARS",
                    "label": "Depuis plus de 5 ans"
                  }
                ],
                "displayOn": {
                  "name": "SMOKE_FREQUENCY",
                  "value": "NO_BUT_I_HAVE_SMOKED_IN_THE_PAST",
                  "range": null
                },
                "maxLength": null,
                "constraints": null
              }
            ]
          },
          {
            "name": "TOBACCO_ELECTRONIC",
            "itemTag": "vapote",
            "details": [
              {
                "name": "SMOKE_FREQUENCY",
                "detailTag": "vapote",
                "label": "Je vapote",
                "description": "Utilisation d’une cigarette électronique",
                "example": null,
                "type": "RADIO",
                "options": [
                  {
                    "value": "YES_EVERY_DAY",
                    "label": "Oui, tous les jours"
                  },
                  {
                    "value": "YES_OCCASIONALLY",
                    "label": "Oui, occasionnellement"
                  },
                  {
                    "value": "NO",
                    "label": "Non"
                  },
                  {
                    "value": "NO_BUT_I_HAVE_VAPED_IN_THE_PAST",
                    "label": "Non, mais j’ai vapoté dans le passé"
                  }
                ],
                "displayOn": null,
                "maxLength": null,
                "constraints": null
              }
            ]
          }
        ]
      },
      {
        "name": "SLEEP",
        "label": "Sommeil",
        "sectionTag": "sommeil",
        "items": [
          {
            "name": "SLEEP_QUALITY",
            "itemTag": "dors",
            "details": [
              {
                "name": "SLEEP_QUALITY_TYPE",
                "detailTag": "dors",
                "label": "Je dors",
                "description": null,
                "example": null,
                "type": "RADIO",
                "options": [
                  {
                    "value": "GOOD",
                    "label": "Bien"
                  },
                  {
                    "value": "BAD_SOMETIMES",
                    "label": "Mal de temps en temps"
                  },
                  {
                    "value": "BAD_OFTEN",
                    "label": "Mal souvent"
                  },
                  {
                    "value": "BAD_ALL_TIMES",
                    "label": "Mal tout le temps"
                  }
                ],
                "displayOn": null,
                "maxLength": null,
                "constraints": null
              }
            ]
          }
        ]
      },
      {
        "name": "SCREEN",
        "label": "Écrans",
        "sectionTag": "ecrans",
        "items": [
          {
            "name": "SCREEN_SLEEP",
            "itemTag": "dormir",
            "details": [
              {
                "name": "SCREEN_SLEEP_TYPE",
                "detailTag": "dormir",
                "label": "Je suis devant un écran avant de m'endormir",
                "description": null,
                "example": null,
                "type": "RADIO",
                "options": [
                  {
                    "value": "NEVER",
                    "label": "Jamais"
                  },
                  {
                    "value": "SEVERAL_TIMES_MONTH",
                    "label": "Plusieurs fois par mois"
                  },
                  {
                    "value": "SEVERAL_TIMES_WEEK",
                    "label": "Plusieurs fois par semaine"
                  },
                  {
                    "value": "EVERY_DAY",
                    "label": "Tous les jours ou presque"
                  }
                ],
                "displayOn": null,
                "maxLength": null,
                "constraints": null
              }
            ]
          }
        ]
      },
      {
        "name": "ALCOHOL",
        "label": "Alcool",
        "sectionTag": "alcool",
        "items": [
          {
            "name": "ALCOHOL_DAYS",
            "itemTag": "semaine",
            "details": [
              {
                "name": "ALCOHOL_DAYS_COUNT",
                "detailTag": "semaine",
                "label": "Nombre de jours où je bois de l’alcool sur une semaine habituelle",
                "description": "Valeur numérique entière entre 0-7",
                "example": "Ex. : bière, vin, cidre, apéritif, spiritueux",
                "type": "TEXT",
                "options": null,
                "displayOn": null,
                "maxLength": 1,
                "constraints": [
                  {
                    "regexp": null,
                    "range": null,
                    "message": "Seules les valeurs numériques entières sont acceptées."
                  },
                  {
                    "regexp": null,
                    "range": {
                      "min": 0,
                      "max": 7
                    },
                    "message": "Seules les valeurs entre 0 et 7 sont acceptées."
                  }
                ]
              }
            ]
          },
          {
            "name": "ALCOHOL_UNITS",
            "itemTag": "nombre-verre",
            "details": [
              {
                "name": "ALCOHOL_UNITS_COUNT",
                "detailTag": "nombre-verre",
                "label": "Nombre total de verres d’alcool que je bois sur une semaine habituelle",
                "description": "Valeur numérique entière entre 0-999",
                "example": null,
                "type": "TEXT",
                "options": null,
                "displayOn": null,
                "maxLength": 3,
                "constraints": [
                  {
                    "regexp": null,
                    "range": null,
                    "message": "Seules les valeurs numériques entières sont acceptées."
                  },
                  {
                    "regexp": null,
                    "range": {
                      "min": 0,
                      "max": 999
                    },
                    "message": "Seules les valeurs entre 0 et 999 sont acceptées."
                  }
                ]
              }
            ]
          },
          {
            "name": "ALCOHOL_BINGE",
            "itemTag": "verres_minimum",
            "details": [
              {
                "name": "ADOPTED",
                "detailTag": "verres_minimum",
                "label": "Je consomme lors de certaines occasions au moins 6 verres en un minimum de temps",
                "description": null,
                "example": null,
                "type": "RADIO",
                "options": [
                  {
                    "value": "YES",
                    "label": "Oui"
                  },
                  {
                    "value": "NO",
                    "label": "Non"
                  }
                ],
                "displayOn": null,
                "maxLength": null,
                "constraints": null
              }
            ]
          }
        ]
      }
    ]
  }
}
''';
