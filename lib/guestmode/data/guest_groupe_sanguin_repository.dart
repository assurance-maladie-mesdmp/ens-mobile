/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/common/data/request_result.dart';
import 'package:fr_cnamts_ens/profil_medical/groupe_sanguin/data/groupe_sanguin_repository.dart';
import 'package:fr_cnamts_ens/profil_medical/groupe_sanguin/domain/groupe_sanguin.dart';
import 'package:fr_cnamts_ens/profil_medical/groupe_sanguin/domain/informations_groupe_sanguin.dart';

class GuestGroupeSanguinRepository extends IGroupeSanguinRepository {
  @override
  Future<RequestResult<List<InformationsGroupeSanguin>>> getCmsInformationsGroupeSanguin() async {
    return RequestResultSuccess(
      const [
        InformationsGroupeSanguin(
          titre: 'Qu\'est-ce qu\'un groupe sanguin ?',
          description:
              '<p>Un groupe sanguin est défini par la présence ou l\'absence de certains antigènes à la surface des globules rouges (ou érythrocytes). Actuellement, on dénombre 40 systèmes de groupes sanguins, parmi lesquels les systèmes <strong>ABO</strong> et <strong>Rhésus</strong> sont les plus connus. Ces systèmes jouent un rôle clé dans la compatibilité sanguine entre donneurs et receveurs.</p><p class=\"blood-group-info-title\"><strong>Le système ABO</strong></p><p>Le système ABO classe les individus en quatre groupes, en fonction des antigènes présents à la surface des globules rouges :</p><ul><li><strong>A </strong>: présence de l\'antigène A,</li><li><strong>B</strong> : présence de l\'antigène B,</li><li><strong>AB</strong> : présence des antigènes A et B,</li><li><strong>O</strong> : absence des antigènes A et B.</li></ul><p>En France, la répartition des groupes ABO dans la population est la suivante :</p><ul><li>Groupe A : <strong>44 %</strong></li><li>Groupe O : <strong>42 %</strong></li><li>Groupe B : <strong>10 %</strong></li><li>Groupe AB : <strong>4 %</strong></li></ul><p class=\"blood-group-info-title\"><strong>Le système Rhésus (Rh)</strong></p><p><span style=\"white-space:pre-wrap;\">Le système Rhésus classe les groupes sanguins selon la présence ou l\'absence de l\'antigène D à la surface des globules rouges :</span></p><ul><li><strong>Rh+</strong> : l\'antigène D est présent (D+),</li><li><strong>Rh-</strong> : l\'antigène D est absent (D-).</li></ul><p>En France, voici la répartition des types Rh :</p><ul><li>Rhésus + (D+) : <strong>75 %</strong></li><li>Rhésus – (D-) : <strong>25 %</strong></li></ul><p>Ces deux systèmes, ABO et Rh, sont essentiels pour assurer une compatibilité sanguine lors des transfusions et des grossesses.</p>',
        ),
        InformationsGroupeSanguin(
          titre: 'Compatibilité des groupes sanguins',
          description:
              '<p>La compatibilité entre groupes sanguins est essentielle pour éviter les réactions immunitaires lors de transfusions. Voici les règles générales :</p><p class=\"blood-group-info-title\"><strong>Compatibilité des globules rouges</strong></p><ul><li>Groupe O :<ul><li>Donneurs universels (peuvent donner à tous les groupes). Receveurs uniquement du groupe O.</li><li><meta charset=\"utf-8\"><span style=\"white-space:pre-wrap;\">Receveurs uniquement du groupe O.</span></li></ul></li><li>Groupe A :<ul><li>Peut recevoir du sang des groupes A et O.</li><li>Peut donner aux groupes A et AB.</li></ul></li><li>Groupe B :<ul><li>Peut recevoir du sang des groupes B et O.</li><li>Peut donner aux groupes B et AB.</li></ul></li><li>Groupe AB :<ul><li>Receveurs universels (peuvent recevoir du sang de tous les groupes).</li><li>Donneurs uniquement pour le groupe AB.</li></ul></li></ul><p class=\"blood-group-info-title\"><strong>Compatibilité du facteur Rh (Rhésus)</strong></p><ul><li>Rh+ : peut recevoir du sang Rh+ et Rh-.</li><li>Rh- : doit recevoir uniquement du sang Rh-.</li></ul><p><strong>Pourquoi la compatibilité est cruciale ?</strong></p><p>Un mélange incompatible peut provoquer des réactions immunitaires graves, car le système immunitaire reconnaît les antigènes étrangers comme une menace. Ce risque est particulièrement important dans des contextes comme les transfusions urgentes ou les grossesses, où l\'incompatibilité entre la mère et le fœtus peut entraîner des complications.</p><p>Comprendre et respecter la compatibilité des groupes sanguins est vital pour la santé et la sécurité des patients.</p><ul><li><drupal-media data-entity-type=\"media\" data-entity-uuid=\"503d80db-da98-406f-956c-5a1e3e5b1aa2\">&nbsp;</drupal-media></li></ul>',
        ),
        InformationsGroupeSanguin(
          titre: 'Comment et où donner son sang en France ?',
          description:
              '<p>En France, l\'Établissement Français du Sang (EFS) est l\'organisme en charge de la collecte de sang. Donner son sang est un acte volontaire et essentiel pour sauver des vies, notamment pour les personnes ayant besoin de transfusions ou de traitements spécifiques.</p><p class=\"blood-group-info-title\"><strong>Qui peut donner son sang ?</strong></p><p>Pour être éligible au don de sang, il faut respecter certains critères :</p><ul><li><strong>Âge</strong> : avoir entre <strong>18 et 70 ans.</strong></li><li><strong>Poids</strong> : peser au <strong>minimum 50 kg</strong>.</li></ul><p>Avant de vous rendre sur un lieu de collecte, vous pouvez vérifier votre éligibilité en répondant à un court questionnaire en ligne : <a href=\"https://dondesang.efs.sante.fr/quiz?section_id=0&amp;question_id=0&amp;quiz_type=sang\">Suis-je éligible au don ?</a>.</p><p class=\"blood-group-info-title\"><strong>Quand donner son sang ?</strong></p><p>Il est possible de donner son sang toute l\'année, mais la fréquence dépend de votre genre :</p><ul><li><strong>Hommes</strong> : jusqu\'à <strong>6 fois par an</strong> (avec un délai de 8 semaines entre deux dons).</li><li><strong>Femmes</strong> : jusqu\'à <strong>4 fois par an.</strong></li></ul><p class=\"blood-group-info-title\"><strong>Où donner son sang ?</strong></p><p>Des collectes sont organisées dans toute la France, dans des sites fixes ou mobiles. Pour trouver le lieu le plus proche de chez vous, consultez le site de l\'EFS : <a href=\"https://dondesang.efs.sante.fr/ou-donner\">Où donner ?</a>.</p><p>En participant, vous contribuez à sauver des vies. Chaque don compte !</p>',
        ),
      ],
    );
  }

  @override
  Future<RequestResult<void>> addGroupeSanguin(String patientId, GroupeSanguin groupeSanguin) {
    return Future.value(RequestResultError.unavailableInGuestMode());
  }

  @override
  Future<RequestResult<GroupeSanguinData>> getGroupeSanguin(String patientId) {
    return Future.value(
      RequestResultSuccess(
        const GroupeSanguinData(id: 'id', groupeSanguin: GroupeSanguin.B_MOINS, auteur: 'Gabrielle Capanelli'),
      ),
    );
  }

  @override
  Future<RequestResult<void>> deleteGroupeSanguin(String id, String patientId) {
    return Future.value(RequestResultError.unavailableInGuestMode());
  }

  @override
  Future<RequestResult<void>> updateGroupeSanguin(String id, String patientId, GroupeSanguin groupeSanguin) {
    return Future.value(RequestResultError.unavailableInGuestMode());
  }
}
