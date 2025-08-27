/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'dart:convert';

import 'package:fr_cnamts_ens/common/data/request_result.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_questionnaire_get_questionnaire.query.data.gql.dart';
import 'package:fr_cnamts_ens/questionnaire_ages_cles/data/questionnaire_ages_cles_mapper.dart';
import 'package:fr_cnamts_ens/questionnaire_ages_cles/data/questionnaire_ages_cles_question_extension.dart';
import 'package:fr_cnamts_ens/questionnaire_ages_cles/data/questionnaire_ages_cles_repository.dart';
import 'package:fr_cnamts_ens/questionnaire_ages_cles/domain/models/questionnaire.dart';
import 'package:fr_cnamts_ens/questionnaire_ages_cles/domain/models/user_answers.dart';

class GuestAgesClesRepository extends IQuestionnaireAgesClesRepository {
  final Questionnaire _questionnaire = _getQuestionnaire();

  @override
  Future<RequestResult<Questionnaire>> getQuestionnaireAgesCles({
    required String patientId,
    required QuestionnaireCode questionnaireCode,
    required String questionnaireVersion,
  }) {
    return Future.value(RequestResultSuccess(_questionnaire));
  }

  @override
  Future<RequestResult<UserAnswers>> getQuestionnaireAgesClesResponses({
    required String patientId,
    required QuestionnaireCode questionnaireCode,
    required String questionnaireVersion,
  }) {
    return Future.value(
      RequestResultSuccess(
        const UserAnswers(
          isDraft: true,
          id: '',
          questionToDisplayIndex: 0,
          answers: {},
        ),
      ),
    );
  }

  @override
  Future<RequestResult<void>> saveQuestionnaireAgesCles({
    required String patientId,
    required Questionnaire questionnaire,
    required UserAnswers userAnswers,
  }) async {
    return Future.value(RequestResultSuccess(null));
  }

  @override
  Future<RequestResult<void>> deleteQuestionnaireResponses(String responseId, String patientId) {
    return Future.value(RequestResultSuccess(null));
  }

  @override
  Future<RequestResult<GetQuestionnaireVersionReponse>> getQuestionnaireCodeVersion({
    required String patientId,
    required String fileNamePrefix,
  }) {
    return Future.value(RequestResultError.unavailableInGuestMode());
  }

  static Questionnaire _getQuestionnaire() {
    final result = Gget_questionnaireData_fetchHealthQuiz.fromJson(
      jsonDecode(_questionaireModeInvite) as Map<String, dynamic>,
    );
    final debutInformations = result!.toDebutInformations();
    final finInformations = result.toFinInformations();
    final questionsAgesCles = result.toAgesClesQuestions();

    return Questionnaire(
      code: getQuizCodeFromString(result.code),
      version: result.version,
      debutInformations: debutInformations,
      finInformations: finInformations,
      questions: questionsAgesCles,
    );
  }
}

const _questionaireModeInvite = '''
{
    "code": "questionnaire-age-cle_45-50_tous-sexe",
    "ageMin": 45,
    "ageMax": 50,
    "version": "1",
    "start": {
        "title": "Prendre soin de soi est important.",
        "description": [
            "Entre 45 et 50 ans, il est recommandé de faire le point sur sa santé avec un professionnel de santé (médecin, infirmier, sage-femme ou pharmacien). Ce bilan de prévention, recommandé, est totalement pris en charge par l’assurance maladie.",
            "Répondez dès à présent à ce questionnaire afin de préparer ce bilan et de recevoir des premiers conseils."
        ],
        "descriptionLink": null,
        "information": {
            "cards": [
                {
                    "image": "chrono.svg",
                    "text": "Je prends 10 minutes et réponds aux questions sur différents thèmes de la prévention en santé. Aucune question n’est obligatoire, certaines pourront être abordées avec mon professionnel de santé, si je le souhaite.",
                    "action": null
                },
                {
                    "image": "suivi_medical.svg",
                    "text": "Je prends connaissance de premiers conseils à l’issue du questionnaire.",
                    "action": null
                },
                {
                    "image": "confidential_document.svg",
                    "text": "J’enregistre mes réponses confidentielles dans Mon espace santé pour les partager seulement avec mon professionnel de santé.",
                    "action": null
                },
                {
                    "image": "agenda_rendez_vous_background_blue.svg",
                    "text": "Je prends rendez-vous avec mon professionnel de santé pour réaliser le bilan personnalisé avec les résultats de mon questionnaire.",
                    "action": null
                }
            ],
            "mention": null
        }
    },
        "end": {
        "title": "Questionnaire de santé 18-25 ans",
        "description": [
            "Je me rends sur ",
            " pour prendre rendez-vous avec mon médecin traitant ou un professionnel de santé et bénéficier de conseils personnalisés et d’actions de prévention adaptées, me permettant d’améliorer mon état de santé.",
            "Ce bilan de prévention est pris en charge à 100% par l’assurance maladie."
        ],
        "descriptionLink": {
            "text": "sante.fr",
            "href": "https://www.sante.fr/annuaire-mon-bilan-prevention"
        },
        "medicalAppointment": {
            "card": {
                "image": "agenda",
                "description": [
                    "Je prends rendez-vous avec mon médecin traitant ou me rends sur",
                    "pour trouver un professionnel de santé partenaire."
                ],
                "link": {
                    "text": "sante.fr",
                    "href": "https://www.sante.fr/annuaire-mon-bilan-prevention"
                },
                "titleButton": "En savoir plus"
            },
            "popin": {
                "image": "agenda",
                "description": [
                    "Je prends rendez-vous avec mon médecin traitant ou me rends sur",
                    "pour trouver un professionnel de santé partenaire près de chez moi afin de bénéficier de conseils personnalisés. Je bénéficierai ainsi d'un plan personnalisé de prévention adapté me permettant d’améliorer mon état de santé.",
                    "Ce bilan de prévention est pris en charge à 100% par l’assurance maladie."
                ],
                "link": {
                    "text": "sante.fr",
                    "href": "https://www.sante.fr/annuaire-mon-bilan-prevention"
                },
                "titleButton": "Aller sur sante.fr",
                "title": "Je bénéficie d'une visite médicale"
            }
        },
        "information": {
            "title": "Vous pouvez maintenant : ",
            "cards": [
                {
                    "image": "suivi_medical.svg",
                    "text": "J’enregistre mes réponses dans mes documents de santé afin de les rendre visibles à mon médecin et je prends rendez-vous pour faire mon bilan.",
                    "action": "Enregistrer"
                }
            ],
            "otherActions": {
                "isShareable": false,
                "isDownloadable": true,
                "isEditable": true,
                "isDeletable": true
            },
            "action": "Retourner à l’accueil"
        }
    },
    "items": [
        {
            "questionGroupItem": {
                "title": "Êtes-vous ?",
                "questions": [
                    {
                        "code": "SEXE",
                        "suggestionCode": "SUGGESTION_SEXE",
                        "rowQuestion": null,
                        "textQuestion": null,
                        "choiceQuestion": {
                            "title": null,
                            "type": "RADIO",
                            "options": [
                                {
                                    "value": "Une femme",
                                    "code": "WOMAN"
                                },
                                {
                                    "value": "Un homme",
                                    "code": "MAN"
                                },
                                {
                                    "value": "Autre",
                                    "code": "OTHER"
                                }
                            ]
                        },
                        "required": true,
                        "maxLength": null,
                        "constraints": null
                    }
                ],
                "goToNext": null,
                "goToNextOn": null,
                "goToPrevious": null,
                "goToPreviousOn": null
            }
        },
        {
            "questionGroupItem": {
                "title": "Quelle est votre taille ?",
                "questions": [
                    {
                        "code": "TAILLE",
                        "suggestionCode": "SUGGESTION_TAILLE",
                        "rowQuestion": {
                            "title": "Taille en mètre (m)",
                            "description": "Valeur numérique entre 0,1 et 2,5"
                        },
                        "textQuestion": null,
                        "choiceQuestion": null,
                        "required": false,
                        "maxLength": 4,
                        "constraints": [
                            {
                                "regexp": "^(\\\\d+([\\\\.,]\\\\d*)?)\$|^([\\\\.,]\\\\d*)\$|^\$",
                                "range": null,
                                "message": "Seules les valeurs numériques sont acceptées."
                            },
                            {
                                "regexp": "^0([\\\\.,][1-9]\\\\d?)\$|^1([\\\\.,]\\\\d{1,2})?\$|^2([\\\\.,]([0-4]\\\\d{0,1}|5[0]?))?\$|^\$",
                                "range": null,
                                "message": "Seules les valeurs entre 0,1 et 2,5 m sont acceptées."
                            },
                            {
                                "regexp": "^(0[\\\\.,][1-9]0)\$|^(0[\\\\.,]0[1-9])\$|^(0[\\\\.,][1-9]{1,2})\$|^([1-2](\\\\d{1,2})?([\\\\.,]\\\\d{1,2})?)\$|^\$",
                                "range": null,
                                "message": "La taille doit être supérieure à 0,1 m."
                            }
                        ]
                    }
                ],
                "goToNext": null,
                "goToNextOn": null,
                "goToPrevious": null,
                "goToPreviousOn": null
            }
        },
        {
            "questionGroupItem": {
                "title": "Quel est votre poids ?",
                "questions": [
                    {
                        "code": "MASSE",
                        "suggestionCode": "SUGGESTION_POIDS",
                        "rowQuestion": {
                            "title": "Poids en kilogramme (kg)",
                            "description": "Valeur numérique entre 0 et 600"
                        },
                        "textQuestion": null,
                        "choiceQuestion": null,
                        "required": false,
                        "maxLength": 7,
                        "constraints": [
                            {
                                "regexp": "^(\\\\d+([\\\\.,]\\\\d*)?)\$|^([\\\\.,]\\\\d*)\$|^\$",
                                "range": null,
                                "message": "Seules les valeurs numériques sont acceptées."
                            },
                            {
                                "regexp": "^\\\\d{1,2}([\\\\.,]\\\\d*)?\$|^[0-5]\\\\d{2}([\\\\.,]\\\\d*)?\$|^600\$|^\$",
                                "range": null,
                                "message": "Seules les valeurs entre 0 et 600 kg sont acceptées."
                            },
                            {
                                "regexp": "^\\\\d{1,2}([\\\\.,]\\\\d{1,3})?\$|^[0-5]\\\\d{2}([\\\\.,]\\\\d{1,3})?\$|^600\$|^\$",
                                "range": null,
                                "message": "Seules les valeurs avec maximum 3 chiffres après la virgule sont acceptées."
                            }
                        ]
                    }
                ],
                "goToNext": null,
                "goToNextOn": null,
                "goToPrevious": null,
                "goToPreviousOn": null
            }
        },
        {
            "questionGroupItem": {
                "title": "Assumez-vous un rôle d’aidant pour une personne âgée, handicapée, malade ?",
                "questions": [
                    {
                        "code": "AIDANT",
                        "suggestionCode": null,
                        "rowQuestion": null,
                        "textQuestion": null,
                        "choiceQuestion": {
                            "title": null,
                            "type": "RADIO",
                            "options": [
                                {
                                    "value": "Oui",
                                    "code": "TRUE"
                                },
                                {
                                    "value": "Non",
                                    "code": "FALSE"
                                }
                            ]
                        },
                        "required": true,
                        "maxLength": null,
                        "constraints": null
                    }
                ],
                "goToNext": null,
                "goToNextOn": null,
                "goToPrevious": null,
                "goToPreviousOn": null
            }
        },
        {
            "questionGroupItem": {
                "title": "En cas de besoin, pouvez-vous compter sur une personne de votre entourage ?",
                "questions": [
                    {
                        "code": "ENTOURAGE",
                        "suggestionCode": null,
                        "rowQuestion": null,
                        "textQuestion": null,
                        "choiceQuestion": {
                            "title": null,
                            "type": "RADIO",
                            "options": [
                                {
                                    "value": "Oui",
                                    "code": "TRUE"
                                },
                                {
                                    "value": "Non",
                                    "code": "FALSE"
                                }
                            ]
                        },
                        "required": true,
                        "maxLength": null,
                        "constraints": null
                    }
                ],
                "goToNext": null,
                "goToNextOn": null,
                "goToPrevious": null,
                "goToPreviousOn": null
            }
        },
        {
            "questionGroupItem": {
                "title": "Avez-vous un ou plusieurs enfants ?",
                "questions": [
                    {
                        "code": "ENFANTS",
                        "suggestionCode": null,
                        "rowQuestion": null,
                        "textQuestion": null,
                        "choiceQuestion": {
                            "title": null,
                            "type": "RADIO",
                            "options": [
                                {
                                    "value": "Oui",
                                    "code": "TRUE"
                                },
                                {
                                    "value": "Non",
                                    "code": "FALSE"
                                }
                            ]
                        },
                        "required": true,
                        "maxLength": null,
                        "constraints": null
                    }
                ],
                "goToNext": 2,
                "goToNextOn": [
                    "FALSE"
                ],
                "goToPrevious": null,
                "goToPreviousOn": null
            }
        },
        {
            "questionGroupItem": {
                "title": "Les élevez-vous seul(e) ?",
                "questions": [
                    {
                        "code": "ENFANTS_SEUL",
                        "suggestionCode": null,
                        "rowQuestion": null,
                        "textQuestion": null,
                        "choiceQuestion": {
                            "title": null,
                            "type": "RADIO",
                            "options": [
                                {
                                    "value": "Oui",
                                    "code": "TRUE"
                                },
                                {
                                    "value": "Non",
                                    "code": "FALSE"
                                }
                            ]
                        },
                        "required": true,
                        "maxLength": null,
                        "constraints": null
                    }
                ],
                "goToNext": null,
                "goToNextOn": null,
                "goToPrevious": null,
                "goToPreviousOn": null
            }
        },
        {
            "questionGroupItem": {
                "title": "Avez-vous ou avez-vous eu une de ces maladies ?",
                "questions": [
                    {
                        "code": "MALADIES",
                        "suggestionCode": null,
                        "rowQuestion": null,
                        "textQuestion": null,
                        "choiceQuestion": {
                            "title": "Possibilité de cocher plusieurs cases",
                            "type": "CHECKBOX",
                            "options": [
                                {
                                    "value": "Maladies cardiovasculaires (diabète, hypertension artérielle, insuffisance rénale chronique, insuffisance cardiaque, hypercholestérolémie)",
                                    "code": "CARDIOVASCULAR"
                                },
                                {
                                    "value": "Cancers",
                                    "code": "CANCER"
                                },
                                {
                                    "value": "Maladies respiratoires (asthme, broncho pneumopathie chronique obstructive (BPCO))",
                                    "code": "RESPIRATORY_DISEASE"
                                },
                                {
                                    "value": "Maladies inflammatoires chroniques de l’intestin (maladie de Crohn, rectocolite hémorragique)",
                                    "code": "CHRONIC_LIVER_INFECTION"
                                },
                                {
                                    "value": "Polypes colorectaux",
                                    "code": "POLYP"
                                },
                                {
                                    "value": "Autres",
                                    "code": "OTHER"
                                }
                            ]
                        },
                        "required": true,
                        "maxLength": null,
                        "constraints": null
                    }
                ],
                "goToNext": 2,
                "goToNextOn": [
                    "!OTHER"
                ],
                "goToPrevious": 2,
                "goToPreviousOn": [
                    "FALSE"
                ]
            }
        },
        {
            "questionGroupItem": {
                "title": "Vous pouvez préciser les maladies que vous avez ou avez eues",
                "questions": [
                    {
                        "code": "MALADIES_AUTRES",
                        "suggestionCode": null,
                        "rowQuestion": null,
                        "textQuestion": {
                            "title": "Autres maladies"
                        },
                        "choiceQuestion": null,
                        "required": false,
                        "maxLength": 100,
                        "constraints": [
                            {
                                "regexp": "[^<]*",
                                "range": null,
                                "message": "La saisie de balises HTML n’est pas autorisée."
                            }
                        ]
                    }
                ],
                "goToNext": null,
                "goToNextOn": null,
                "goToPrevious": null,
                "goToPreviousOn": null
            }
        },
        {
            "questionGroupItem": {
                "title": "Avez-vous déjà été hospitalisé(e) ?",
                "questions": [
                    {
                        "code": "HOSPITALISATION",
                        "suggestionCode": null,
                        "rowQuestion": null,
                        "textQuestion": null,
                        "choiceQuestion": {
                            "title": null,
                            "type": "RADIO",
                            "options": [
                                {
                                    "value": "Oui",
                                    "code": "TRUE"
                                },
                                {
                                    "value": "Non",
                                    "code": "FALSE"
                                }
                            ]
                        },
                        "required": true,
                        "maxLength": null,
                        "constraints": null
                    }
                ],
                "goToNext": null,
                "goToNextOn": null,
                "goToPrevious": 2,
                "goToPreviousOn": [
                    "!OTHER"
                ]
            }
        },
        {
            "questionGroupItem": {
                "title": "À quand remonte votre dernière prise de sang et/ou analyse d’urine ?",
                "questions": [
                    {
                        "code": "ANALYSES",
                        "suggestionCode": null,
                        "rowQuestion": null,
                        "textQuestion": null,
                        "choiceQuestion": {
                            "title": "Merci de la/les rapporter lors de votre bilan de prévention si possible.",
                            "type": "RADIO",
                            "options": [
                                {
                                    "value": "Moins de 6 mois",
                                    "code": "LESS_SIX_MONTH"
                                },
                                {
                                    "value": "Plus de 6 mois",
                                    "code": "MORE_SIX_MONTH"
                                }
                            ]
                        },
                        "required": true,
                        "maxLength": null,
                        "constraints": null
                    }
                ],
                "goToNext": null,
                "goToNextOn": null,
                "goToPrevious": null,
                "goToPreviousOn": null
            }
        },
        {
            "questionGroupItem": {
                "title": "Y a-t-il des antécédents connus de maladies dans votre famille proche (père, mère, frère ou sœur) ?",
                "questions": [
                    {
                        "code": "ANTECEDENTS",
                        "suggestionCode": null,
                        "rowQuestion": null,
                        "textQuestion": null,
                        "choiceQuestion": {
                            "title": "Ex. : diabète, hypertension artérielle, cancers…",
                            "type": "RADIO",
                            "options": [
                                {
                                    "value": "Oui",
                                    "code": "YES"
                                },
                                {
                                    "value": "Non",
                                    "code": "NO"
                                },
                                {
                                    "value": "Je ne sais pas",
                                    "code": "DONT_KNOW"
                                }
                            ]
                        },
                        "required": true,
                        "maxLength": null,
                        "constraints": null
                    }
                ],
                "goToNext": null,
                "goToNextOn": null,
                "goToPrevious": null,
                "goToPreviousOn": null
            }
        },
        {
            "questionGroupItem": {
                "title": "Suivez-vous actuellement un traitement ?",
                "questions": [
                    {
                        "code": "TRAITEMENT",
                        "suggestionCode": null,
                        "rowQuestion": null,
                        "textQuestion": null,
                        "choiceQuestion": {
                            "title": null,
                            "type": "RADIO",
                            "options": [
                                {
                                    "value": "Oui",
                                    "code": "TRUE"
                                },
                                {
                                    "value": "Non",
                                    "code": "FALSE"
                                }
                            ]
                        },
                        "required": true,
                        "maxLength": null,
                        "constraints": null
                    }
                ],
                "goToNext": null,
                "goToNextOn": null,
                "goToPrevious": null,
                "goToPreviousOn": null
            }
        },
        {
            "questionGroupItem": {
                "title": "Toussez-vous souvent (tous les jours) ?",
                "questions": [
                    {
                        "code": "TOUX",
                        "suggestionCode": null,
                        "rowQuestion": null,
                        "textQuestion": null,
                        "choiceQuestion": {
                            "title": null,
                            "type": "RADIO",
                            "options": [
                                {
                                    "value": "Oui",
                                    "code": "TRUE"
                                },
                                {
                                    "value": "Non",
                                    "code": "FALSE"
                                }
                            ]
                        },
                        "required": true,
                        "maxLength": null,
                        "constraints": null
                    }
                ],
                "goToNext": null,
                "goToNextOn": null,
                "goToPrevious": null,
                "goToPreviousOn": null
            }
        },
        {
            "questionGroupItem": {
                "title": "Avez-vous souvent une toux grasse ou qui ramène des crachats ?",
                "questions": [
                    {
                        "code": "TOUX_GRASSE",
                        "suggestionCode": null,
                        "rowQuestion": null,
                        "textQuestion": null,
                        "choiceQuestion": {
                            "title": null,
                            "type": "RADIO",
                            "options": [
                                {
                                    "value": "Oui",
                                    "code": "TRUE"
                                },
                                {
                                    "value": "Non",
                                    "code": "FALSE"
                                }
                            ]
                        },
                        "required": true,
                        "maxLength": null,
                        "constraints": null
                    }
                ],
                "goToNext": null,
                "goToNextOn": null,
                "goToPrevious": null,
                "goToPreviousOn": null
            }
        },
        {
            "questionGroupItem": {
                "title": "Êtes-vous plus facilement essoufflé(e) que les personnes de votre âge ?",
                "questions": [
                    {
                        "code": "ESSOUFLEMENT",
                        "suggestionCode": null,
                        "rowQuestion": null,
                        "textQuestion": null,
                        "choiceQuestion": {
                            "title": null,
                            "type": "RADIO",
                            "options": [
                                {
                                    "value": "Oui",
                                    "code": "TRUE"
                                },
                                {
                                    "value": "Non",
                                    "code": "FALSE"
                                }
                            ]
                        },
                        "required": true,
                        "maxLength": null,
                        "constraints": null
                    }
                ],
                "goToNext": null,
                "goToNextOn": null,
                "goToPrevious": null,
                "goToPreviousOn": null
            }
        },
        {
            "questionGroupItem": {
                "title": "Avez-vous subi une variation de poids ces derniers mois ?",
                "questions": [
                    {
                        "code": "VARIATION_POIDS",
                        "suggestionCode": null,
                        "rowQuestion": null,
                        "textQuestion": null,
                        "choiceQuestion": {
                            "title": null,
                            "type": "RADIO",
                            "options": [
                                {
                                    "value": "Oui, un amaigrissement",
                                    "code": "YES_THINNER"
                                },
                                {
                                    "value": "Oui, une prise de poids",
                                    "code": "YES_BIGGER"
                                },
                                {
                                    "value": "Non",
                                    "code": "NO"
                                }
                            ]
                        },
                        "required": true,
                        "maxLength": null,
                        "constraints": null
                    }
                ],
                "goToNext": null,
                "goToNextOn": null,
                "goToPrevious": null,
                "goToPreviousOn": null
            }
        },
        {
            "questionGroupItem": {
                "title": "Avez-vous l’impression d’avoir plus de difficultés à réaliser vos activités quotidiennes ?",
                "questions": [
                    {
                        "code": "QUOTIDIEN",
                        "suggestionCode": null,
                        "rowQuestion": null,
                        "textQuestion": null,
                        "choiceQuestion": {
                            "title": null,
                            "type": "RADIO",
                            "options": [
                                {
                                    "value": "Oui",
                                    "code": "TRUE"
                                },
                                {
                                    "value": "Non",
                                    "code": "FALSE"
                                }
                            ]
                        },
                        "required": true,
                        "maxLength": null,
                        "constraints": null
                    }
                ],
                "goToNext": null,
                "goToNextOn": null,
                "goToPrevious": null,
                "goToPreviousOn": null
            }
        },
        {
            "questionGroupItem": {
                "title": "Avez-vous constaté un gonflement important et/ou inhabituel de vos chevilles ou jambes ces 2 dernières semaines ?",
                "questions": [
                    {
                        "code": "GONFLEMENTS",
                        "suggestionCode": null,
                        "rowQuestion": null,
                        "textQuestion": null,
                        "choiceQuestion": {
                            "title": null,
                            "type": "RADIO",
                            "options": [
                                {
                                    "value": "Oui",
                                    "code": "TRUE"
                                },
                                {
                                    "value": "Non",
                                    "code": "FALSE"
                                }
                            ]
                        },
                        "required": true,
                        "maxLength": null,
                        "constraints": null
                    }
                ],
                "goToNext": null,
                "goToNextOn": null,
                "goToPrevious": null,
                "goToPreviousOn": null
            }
        },
        {
            "questionGroupItem": {
                "title": "Avez-vous des pauses respiratoires ou ronflements importants pendant le sommeil, constatés par votre entourage ?",
                "questions": [
                    {
                        "code": "RONFLEMENTS",
                        "suggestionCode": null,
                        "rowQuestion": null,
                        "textQuestion": null,
                        "choiceQuestion": {
                            "title": null,
                            "type": "RADIO",
                            "options": [
                                {
                                    "value": "Oui",
                                    "code": "TRUE"
                                },
                                {
                                    "value": "Non",
                                    "code": "FALSE"
                                }
                            ]
                        },
                        "required": true,
                        "maxLength": null,
                        "constraints": null
                    }
                ],
                "goToNext": null,
                "goToNextOn": null,
                "goToPrevious": null,
                "goToPreviousOn": null
            }
        },
        {
            "questionGroupItem": {
                "title": "Si vous êtes une femme, présentez-vous des symptômes de ménopause ?",
                "questions": [
                    {
                        "code": "MENOPAUSE",
                        "suggestionCode": null,
                        "rowQuestion": null,
                        "textQuestion": null,
                        "choiceQuestion": {
                            "title": "Ex. : bouffées de chaleur, problèmes de sommeil, sécheresse vaginale, troubles urinaires, fatigue, anxiété, irritabilité",
                            "type": "RADIO",
                            "options": [
                                {
                                    "value": "Oui",
                                    "code": "YES"
                                },
                                {
                                    "value": "Non",
                                    "code": "NO"
                                },
                                {
                                    "value": "Non concerné(e)",
                                    "code": "NOT_CONCERNED"
                                }
                            ]
                        },
                        "required": true,
                        "maxLength": null,
                        "constraints": null
                    }
                ],
                "goToNext": null,
                "goToNextOn": null,
                "goToPrevious": null,
                "goToPreviousOn": null
            }
        },
        {
            "questionGroupItem": {
                "title": "Êtes-vous allé(e) chez le dentiste dans les 12 derniers mois ?",
                "questions": [
                    {
                        "code": "DENTISTE",
                        "suggestionCode": null,
                        "rowQuestion": null,
                        "textQuestion": null,
                        "choiceQuestion": {
                            "title": null,
                            "type": "RADIO",
                            "options": [
                                {
                                    "value": "Oui",
                                    "code": "TRUE"
                                },
                                {
                                    "value": "Non",
                                    "code": "FALSE"
                                }
                            ]
                        },
                        "required": true,
                        "maxLength": null,
                        "constraints": null
                    }
                ],
                "goToNext": null,
                "goToNextOn": null,
                "goToPrevious": null,
                "goToPreviousOn": null
            }
        },
        {
            "questionGroupItem": {
                "title": "Faites-vous au moins 30 minutes d’activités physiques dynamiques par jour ?",
                "questions": [
                    {
                        "code": "ACTIVITE_PHYSIQUE",
                        "suggestionCode": "SUGGESTION_ACTIVITE_PHYSIQUE",
                        "rowQuestion": null,
                        "textQuestion": null,
                        "choiceQuestion": {
                            "title": "Ex. : marche, vélo, jardinage, ménage, jogging, autre activité sportive…",
                            "type": "RADIO",
                            "options": [
                                {
                                    "value": "Jamais",
                                    "code": "NEVER"
                                },
                                {
                                    "value": "1 à 2 fois par semaine",
                                    "code": "ONE_TO_TWO_PER_WEEK"
                                },
                                {
                                    "value": "3 à 4 fois par semaine",
                                    "code": "THREE_TO_FOUR_PER_WEEK"
                                },
                                {
                                    "value": "5 à 7 fois par semaine",
                                    "code": "FIVE_TO_SEVEN_PER_WEEK"
                                }
                            ]
                        },
                        "required": true,
                        "maxLength": null,
                        "constraints": null
                    }
                ],
                "goToNext": null,
                "goToNextOn": null,
                "goToPrevious": null,
                "goToPreviousOn": null
            }
        },
        {
            "questionGroupItem": {
                "title": "Mangez-vous des fruits et légumes ?",
                "questions": [
                    {
                        "code": "FRUITS_LEGUMES",
                        "suggestionCode": "SUGGESTION_FRUITS_LEGUMES",
                        "rowQuestion": null,
                        "textQuestion": null,
                        "choiceQuestion": {
                            "title": null,
                            "type": "RADIO",
                            "options": [
                                {
                                    "value": "Tous les jours",
                                    "code": "EVERYDAY"
                                },
                                {
                                    "value": "Pas tous les jours",
                                    "code": "NOT_EVERYDAY"
                                },
                                {
                                    "value": "Non",
                                    "code": "NO"
                                }
                            ]
                        },
                        "required": true,
                        "maxLength": null,
                        "constraints": null
                    }
                ],
                "goToNext": null,
                "goToNextOn": null,
                "goToPrevious": null,
                "goToPreviousOn": null
            }
        },
        {
            "questionGroupItem": {
                "title": "Avez-vous tendance à consommer des aliments trop gras/sucrés/salés ?",
                "questions": [
                    {
                        "code": "ALIMENTATION",
                        "suggestionCode": null,
                        "rowQuestion": null,
                        "textQuestion": null,
                        "choiceQuestion": {
                            "title": "Ex. : charcuterie, soda, confiserie, plats industriels (fast-food, plats préparés), ajout régulier de sel à table",
                            "type": "RADIO",
                            "options": [
                                {
                                    "value": "Oui",
                                    "code": "TRUE"
                                },
                                {
                                    "value": "Non",
                                    "code": "FALSE"
                                }
                            ]
                        },
                        "required": true,
                        "maxLength": null,
                        "constraints": null
                    }
                ],
                "goToNext": null,
                "goToNextOn": null,
                "goToPrevious": null,
                "goToPreviousOn": null
            }
        },
        {
            "questionGroupItem": {
                "title": "Vos conditions de travail sont difficiles/pénibles ?",
                "questions": [
                    {
                        "code": "TRAVAIL",
                        "suggestionCode": null,
                        "rowQuestion": null,
                        "textQuestion": null,
                        "choiceQuestion": {
                            "title": null,
                            "type": "RADIO",
                            "options": [
                                {
                                    "value": "Oui",
                                    "code": "TRUE"
                                },
                                {
                                    "value": "Non",
                                    "code": "FALSE"
                                }
                            ]
                        },
                        "required": true,
                        "maxLength": null,
                        "constraints": null
                    }
                ],
                "goToNext": null,
                "goToNextOn": null,
                "goToPrevious": null,
                "goToPreviousOn": null
            }
        },
        {
            "questionGroupItem": {
                "title": "Êtes-vous à jour des vaccins obligatoires (diphtérie, tétanos, polio) ?",
                "questions": [
                    {
                        "code": "VACCINS",
                        "suggestionCode": null,
                        "rowQuestion": null,
                        "textQuestion": null,
                        "choiceQuestion": {
                            "title": "Merci de rapporter votre carnet de vaccinations lors de votre consultation si possible.",
                            "type": "RADIO",
                            "options": [
                                {
                                    "value": "Oui",
                                    "code": "YES"
                                },
                                {
                                    "value": "Non",
                                    "code": "NO"
                                },
                                {
                                    "value": "Je ne sais pas",
                                    "code": "DONT_KNOW"
                                }
                            ]
                        },
                        "required": true,
                        "maxLength": null,
                        "constraints": null
                    }
                ],
                "goToNext": null,
                "goToNextOn": null,
                "goToPrevious": null,
                "goToPreviousOn": null
            }
        },
        {
            "questionGroupItem": {
                "title": "Si vous avez 50 ans, avez-vous réalisé votre mammographie de dépistage du cancer du sein et/ou votre test de dépistage du cancer colorectal ?",
                "questions": [
                    {
                        "code": "DEPISTAGES",
                        "suggestionCode": null,
                        "rowQuestion": null,
                        "textQuestion": null,
                        "choiceQuestion": {
                            "title": null,
                            "type": "RADIO",
                            "options": [
                                {
                                    "value": "Oui",
                                    "code": "YES"
                                },
                                {
                                    "value": "Non",
                                    "code": "NO"
                                },
                                {
                                    "value": "Je ne sais pas",
                                    "code": "DONT_KNOW"
                                }
                            ]
                        },
                        "required": true,
                        "maxLength": null,
                        "constraints": null
                    }
                ],
                "goToNext": null,
                "goToNextOn": null,
                "goToPrevious": null,
                "goToPreviousOn": null
            }
        },
        {
            "questionGroupItem": {
                "title": "Avez-vous réalisé votre test de dépistage du cancer du col de l’utérus ?",
                "questions": [
                    {
                        "code": "COL_UTERUS",
                        "suggestionCode": null,
                        "rowQuestion": null,
                        "textQuestion": null,
                        "choiceQuestion": {
                            "title": "Si oui, merci de rapporter les résultats du prélèvement si possible.",
                            "type": "RADIO",
                            "options": [
                                {
                                    "value": "Oui",
                                    "code": "YES"
                                },
                                {
                                    "value": "Non",
                                    "code": "NO"
                                },
                                {
                                    "value": "Je ne sais pas",
                                    "code": "DONT_KNOW"
                                }
                            ]
                        },
                        "required": true,
                        "maxLength": null,
                        "constraints": null
                    }
                ],
                "goToNext": null,
                "goToNextOn": null,
                "goToPrevious": null,
                "goToPreviousOn": null
            }
        },
        {
            "questionGroupItem": {
                "title": "Êtes-vous dans l’une des situations suivantes ?",
                "questions": [
                    {
                        "code": "VIE_SEXUELLE",
                        "suggestionCode": null,
                        "rowQuestion": null,
                        "textQuestion": null,
                        "choiceQuestion": {
                            "title": "Possibilité de cocher plusieurs cases",
                            "type": "CHECKBOX",
                            "options": [
                                {
                                    "value": "Plus d’un partenaire sexuel au cours des 12 derniers mois",
                                    "code": "MORE_THAN_ONE_PARTNER"
                                },
                                {
                                    "value": "Souhait d’arrêter le préservatif avec mon nouveau (ou ma nouvelle) partenaire",
                                    "code": "STOP_CONDOMS"
                                },
                                {
                                    "value": "Mon/ma partenaire sexuel(le) a eu un (ou plusieurs) diagnostic(s) d’IST (VIH, chlamydia, gonocoque, syphilis…)",
                                    "code": "PARTNER_HAD_STD"
                                },
                                {
                                    "value": "Rapports sexuels ces 12 derniers mois mais non concerné(e) par une de ces trois situations ci-dessus",
                                    "code": "NOT_IN_THESE_SITUATIONS"
                                },
                                {
                                    "value": "Non concerné(e)",
                                    "code": "NOT_CONCERNED"
                                }
                            ]
                        },
                        "required": true,
                        "maxLength": null,
                        "constraints": null
                    }
                ],
                "goToNext": null,
                "goToNextOn": null,
                "goToPrevious": null,
                "goToPreviousOn": null
            }
        },
        {
            "questionGroupItem": {
                "title": "Combien de verres d’alcool consommez-vous sur une semaine habituelle ?",
                "questions": [
                    {
                        "code": "ALCOOL",
                        "suggestionCode": "SUGGESTION_ALCOOL",
                        "rowQuestion": {
                            "title": "Nombre de verres",
                            "description": "Valeur numérique entre 0 et 999"
                        },
                        "textQuestion": null,
                        "choiceQuestion": null,
                        "required": false,
                        "maxLength": 3,
                        "constraints": [
                            {
                                "regexp": "^\\\\d*\$",
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
                ],
                "goToNext": null,
                "goToNextOn": null,
                "goToPrevious": null,
                "goToPreviousOn": null
            }
        },
        {
            "questionGroupItem": {
                "title": "Fumez-vous / vapotez-vous ?",
                "questions": [
                    {
                        "code": "CIGARETTES",
                        "suggestionCode": "SUGGESTION_CIGARETTES",
                        "rowQuestion": null,
                        "textQuestion": null,
                        "choiceQuestion": {
                            "title": "Ex. : cigarette, tabac à rouler, cigare, cigarillo, pipe, chicha, narguilé...",
                            "type": "RADIO",
                            "options": [
                                {
                                    "value": "Oui",
                                    "code": "YES"
                                },
                                {
                                    "value": "Non",
                                    "code": "NO"
                                },
                                {
                                    "value": "J’ai arrêté de fumer",
                                    "code": "QUIT_SMOKING"
                                }
                            ]
                        },
                        "required": true,
                        "maxLength": null,
                        "constraints": null
                    }
                ],
                "goToNext": 2,
                "goToNextOn": [
                    "YES",
                    "NO"
                ],
                "goToPrevious": null,
                "goToPreviousOn": null
            }
        },
        {
            "questionGroupItem": {
                "title": "Depuis combien de temps ?",
                "questions": [
                    {
                        "code": "CIGARETTES_ARRET",
                        "suggestionCode": "SUGGESTION_CIGARETTES_ARRET",
                        "rowQuestion": null,
                        "textQuestion": null,
                        "choiceQuestion": {
                            "title": null,
                            "type": "RADIO",
                            "options": [
                                {
                                    "value": "Moins d’1 an",
                                    "code": "LESS_ONE_YEAR"
                                },
                                {
                                    "value": "Entre 1 an et 5 ans",
                                    "code": "BETWEEN_ONE_AND_FIVE_YEAR"
                                },
                                {
                                    "value": "Plus de 5 ans",
                                    "code": "MORE_THAN_FIVE_YEAR"
                                }
                            ]
                        },
                        "required": true,
                        "maxLength": null,
                        "constraints": null
                    }
                ],
                "goToNext": null,
                "goToNextOn": null,
                "goToPrevious": null,
                "goToPreviousOn": null
            }
        },
        {
            "questionGroupItem": {
                "title": "Avez-vous consommé d’autres substances au cours des 12 derniers mois ?",
                "questions": [
                    {
                        "code": "DROGUES",
                        "suggestionCode": null,
                        "rowQuestion": null,
                        "textQuestion": null,
                        "choiceQuestion": {
                            "title": "Ex. : cannabis (du haschisch, de la marijuana, de l’herbe, un joint ou du shit) ou autres drogues (ecstasy, cocaïne, héroïne...)",
                            "type": "RADIO",
                            "options": [
                                {
                                    "value": "Oui",
                                    "code": "TRUE"
                                },
                                {
                                    "value": "Non",
                                    "code": "FALSE"
                                }
                            ]
                        },
                        "required": true,
                        "maxLength": null,
                        "constraints": null
                    }
                ],
                "goToNext": null,
                "goToNextOn": null,
                "goToPrevious": 2,
                "goToPreviousOn": [
                    "YES",
                    "NO"
                ]
            }
        },
        {
            "questionGroupItem": {
                "title": "Avez-vous déjà été ou êtes-vous traité pour une dépression/troubles anxieux ?",
                "questions": [
                    {
                        "code": "TROUBLES",
                        "suggestionCode": null,
                        "rowQuestion": null,
                        "textQuestion": null,
                        "choiceQuestion": {
                            "title": null,
                            "type": "RADIO",
                            "options": [
                                {
                                    "value": "Oui",
                                    "code": "TRUE"
                                },
                                {
                                    "value": "Non",
                                    "code": "FALSE"
                                }
                            ]
                        },
                        "required": true,
                        "maxLength": null,
                        "constraints": null
                    }
                ],
                "goToNext": null,
                "goToNextOn": null,
                "goToPrevious": null,
                "goToPreviousOn": null
            }
        },
        {
            "questionGroupItem": {
                "title": "Prenez-vous du plaisir aux mêmes choses qu’autrefois ?",
                "questions": [
                    {
                        "code": "PLAISIR",
                        "suggestionCode": null,
                        "rowQuestion": null,
                        "textQuestion": null,
                        "choiceQuestion": {
                            "title": null,
                            "type": "RADIO",
                            "options": [
                                {
                                    "value": "Oui",
                                    "code": "TRUE"
                                },
                                {
                                    "value": "Non",
                                    "code": "FALSE"
                                }
                            ]
                        },
                        "required": true,
                        "maxLength": null,
                        "constraints": null
                    }
                ],
                "goToNext": null,
                "goToNextOn": null,
                "goToPrevious": null,
                "goToPreviousOn": null
            }
        },
        {
            "questionGroupItem": {
                "title": "Vous ne vous intéressez plus à votre apparence ?",
                "questions": [
                    {
                        "code": "APPARENCE",
                        "suggestionCode": null,
                        "rowQuestion": null,
                        "textQuestion": null,
                        "choiceQuestion": {
                            "title": null,
                            "type": "RADIO",
                            "options": [
                                {
                                    "value": "Oui",
                                    "code": "TRUE"
                                },
                                {
                                    "value": "Non",
                                    "code": "FALSE"
                                }
                            ]
                        },
                        "required": true,
                        "maxLength": null,
                        "constraints": null
                    }
                ],
                "goToNext": null,
                "goToNextOn": null,
                "goToPrevious": null,
                "goToPreviousOn": null
            }
        },
        {
            "questionGroupItem": {
                "title": "Vous faites-vous du souci ?",
                "questions": [
                    {
                        "code": "SOUCIS",
                        "suggestionCode": null,
                        "rowQuestion": null,
                        "textQuestion": null,
                        "choiceQuestion": {
                            "title": null,
                            "type": "RADIO",
                            "options": [
                                {
                                    "value": "Oui",
                                    "code": "TRUE"
                                },
                                {
                                    "value": "Non",
                                    "code": "FALSE"
                                }
                            ]
                        },
                        "required": true,
                        "maxLength": null,
                        "constraints": null
                    }
                ],
                "goToNext": null,
                "goToNextOn": null,
                "goToPrevious": null,
                "goToPreviousOn": null
            }
        },
        {
            "questionGroupItem": {
                "title": "Dormez-vous ?",
                "questions": [
                    {
                        "code": "SOMMEIL",
                        "suggestionCode": "SUGGESTION_SOMMEIL",
                        "rowQuestion": null,
                        "textQuestion": null,
                        "choiceQuestion": {
                            "title": "Possibilité de cocher plusieurs cases",
                            "type": "CHECKBOX",
                            "options": [
                                {
                                    "value": "Bien",
                                    "code": "GOOD"
                                },
                                {
                                    "value": "Mal de temps en temps",
                                    "code": "BAD_OFTEN"
                                },
                                {
                                    "value": "Mal souvent",
                                    "code": "BAD_REGULARLY"
                                },
                                {
                                    "value": "Mal tout le temps",
                                    "code": "BAD_ALWAYS"
                                },
                                {
                                    "value": "Ma consommation d’écrans (smartphone, ordinateur, …) limite mon temps de sommeil",
                                    "code": "SCREENS_LIMIT_SLEEP"
                                }
                            ]
                        },
                        "required": true,
                        "maxLength": null,
                        "constraints": null
                    }
                ],
                "goToNext": null,
                "goToNextOn": null,
                "goToPrevious": null,
                "goToPreviousOn": null
            }
        },
        {
            "questionGroupItem": {
                "title": "Éprouvez-vous de l’anxiété et/ou des sensations soudaines de panique ?",
                "questions": [
                    {
                        "code": "PANIQUE",
                        "suggestionCode": null,
                        "rowQuestion": null,
                        "textQuestion": null,
                        "choiceQuestion": {
                            "title": null,
                            "type": "RADIO",
                            "options": [
                                {
                                    "value": "Oui",
                                    "code": "TRUE"
                                },
                                {
                                    "value": "Non",
                                    "code": "FALSE"
                                }
                            ]
                        },
                        "required": true,
                        "maxLength": null,
                        "constraints": null
                    }
                ],
                "goToNext": null,
                "goToNextOn": null,
                "goToPrevious": null,
                "goToPreviousOn": null
            }
        },
        {
            "questionGroupItem": {
                "title": "Avez-vous déjà été victime de violences physiques ou psychiques (coups, mutilations, menaces, chantage, humiliations…), harcèlements, discrimination… ?",
                "questions": [
                    {
                        "code": "VIOLENCES",
                        "suggestionCode": null,
                        "rowQuestion": null,
                        "textQuestion": null,
                        "choiceQuestion": {
                            "title": null,
                            "type": "RADIO",
                            "options": [
                                {
                                    "value": "Oui",
                                    "code": "YES"
                                },
                                {
                                    "value": "Non",
                                    "code": "NO"
                                },
                                {
                                    "value": "Je ne sais pas",
                                    "code": "DONT_KNOW"
                                }
                            ]
                        },
                        "required": true,
                        "maxLength": null,
                        "constraints": null
                    }
                ],
                "goToNext": null,
                "goToNextOn": null,
                "goToPrevious": null,
                "goToPreviousOn": null
            }
        },
        {
            "questionGroupItem": {
                "title": "Souhaitez-vous aborder un ou plusieurs sujets en priorité, avec le professionnel de santé au cours de votre bilan de prévention ?",
                "questions": [
                    {
                        "code": "PRIORITES_SANTE",
                        "suggestionCode": null,
                        "rowQuestion": null,
                        "textQuestion": null,
                        "choiceQuestion": {
                            "title": "Possibilité de cocher plusieurs cases",
                            "type": "CHECKBOX",
                            "options": [
                                {
                                    "value": "Mieux dormir",
                                    "code": "SLEEP_BETTER"
                                },
                                {
                                    "value": "M’alimenter plus sainement / bouger plus",
                                    "code": "EAT_MOVE_BETTER"
                                },
                                {
                                    "value": "Arrêter de fumer / réduire ma consommation d’alcool",
                                    "code": "REDUCE_SMOKE_ALCOHOL"
                                },
                                {
                                    "value": "Améliorer mon bien-être mental / être plus zen",
                                    "code": "BETTER_MENTAL_HEALTH"
                                },
                                {
                                    "value": "Lutter / prévenir les violences, harcèlements ou discriminations",
                                    "code": "REDUCE_BULLY_DISCRIMINATION"
                                },
                                {
                                    "value": "Passer moins de temps devant un écran ou mon téléphone",
                                    "code": "LESS_SMARTPHONE_SCREEN"
                                },
                                {
                                    "value": "Autres",
                                    "code": "OTHER"
                                }
                            ]
                        },
                        "required": true,
                        "maxLength": null,
                        "constraints": null
                    }
                ],
                "goToNext": null,
                "goToNextOn": null,
                "goToPrevious": null,
                "goToPreviousOn": null
            }
        },
        {
            "questionGroupItem": {
                "title": "Vous pouvez préciser vos autres priorités en santé",
                "questions": [
                    {
                        "code": "PRIORITES_SANTE_AUTRES",
                        "suggestionCode": null,
                        "rowQuestion": null,
                        "textQuestion": {
                            "title": "Autres priorités en santé"
                        },
                        "choiceQuestion": null,
                        "required": false,
                        "maxLength": 100,
                        "constraints": [
                            {
                                "regexp": "[^<]*",
                                "range": null,
                                "message": "La saisie de balises HTML n’est pas autorisée."
                            }
                        ]
                    }
                ],
                "goToNext": null,
                "goToNextOn": null,
                "goToPrevious": null,
                "goToPreviousOn": null
            }
        }
    ]
}
''';
