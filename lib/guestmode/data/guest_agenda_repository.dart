/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:clock/clock.dart';
import 'package:fr_cnamts_ens/agenda/data/agenda_repository.dart';
import 'package:fr_cnamts_ens/agenda/domain/models/examen_recommande.dart';
import 'package:fr_cnamts_ens/agenda/domain/models/rappel.dart';
import 'package:fr_cnamts_ens/agenda/domain/models/rendez_vous.dart';
import 'package:fr_cnamts_ens/common/data/request_result.dart';
import 'package:fr_cnamts_ens/guestmode/data/guest_user_data_repository.dart';
import 'package:fr_cnamts_ens/user/domain/model/user_data.dart';
import 'package:fr_cnamts_ens/utils/extensions/datetime_extension.dart';

class GuestAgendaRepository extends IAgendaRepository {
  final GuestUserDataRepository userDataRepository = GuestUserDataRepository();

  @override
  Future<GetRendezVousEtRappelsEtExamensResponse> getRendezVousEtRappelsEtExamens(String patientId) async {
    final now = clock.now().toLocal();
    final birthday =
        ((await userDataRepository.getUserData(patientId)) as RequestResultSuccess<UserData>).result.birthDate;

    final List<Rappel> rappels = [
      Rappel(
        id: '12',
        date: now.add(const Duration(hours: 10)),
        title: 'Prendre ma pillule',
        comment: 'Penser à prendre les résultats d’analyse',
        authorLabel: '',
      ),
      Rappel(id: '17', date: now.add(const Duration(days: 1)), title: 'Prendre ma pillule', authorLabel: ''),
      Rappel(id: '16', date: now.add(const Duration(hours: 10)), title: 'Prendre ma pillule', authorLabel: 'Louise'),
      Rappel(
        id: '15',
        date: now.add(const Duration(days: 40, minutes: 10)),
        title: 'Prendre ma pillule',
        authorLabel: 'Martine',
      ),
      Rappel(
        id: '14',
        date: now.add(const Duration(days: 140, minutes: 20)),
        title: 'Prendre ma pillule',
        authorLabel: 'Olive',
      ),
      Rappel(
        id: '13',
        date: now.subtract(const Duration(days: 366, minutes: 30)),
        title: 'Prendre ma pillule',
        authorLabel: '',
      ),
    ];

    final List<RendezVous> agenda = [
      RendezVous(
        id: '12a35e3b-001e-418b-ba4f-13debb70a9d3',
        title: '',
        date: now.add(const Duration(hours: 10)),
        rdvType: RendezVousType.PROFESSIONEL_DE_SANTE,
        nomActeurSante: 'Dr Bentolila',
        address: '18 Avenue du Général de Gaulle, 94160 Saint-Mandé',
        author: 'Ajouté par Paul C.',
      ),
      RendezVous(
        id: '12a35e3b-002e-418b-ba4f-13debb70a9d3',
        title: 'Rdv Kiné 16',
        date: now.add(const Duration(days: 1)),
        rdvType: RendezVousType.ETABLISSEMENT_DE_SANTE,
        nomActeurSante: 'Hôpital Lavoisière',
        address: '1 Place Denfert-Rochereau 92100 Boulogne-Billancourt',
        author: 'Ajouté par Marie C.',
      ),
      RendezVous(
        id: '12a35e3b-003e-418b-ba4f-13debb70a9d3',
        title: 'Rdv Kiné 17',
        date: now.add(const Duration(days: 40, minutes: 10)),
        rdvType: RendezVousType.ETABLISSEMENT_DE_SANTE,
        nomActeurSante: 'Hôpital Lavoisière',
        author: 'Ajouté par Antoine C.',
      ),
      RendezVous(
        id: '12a35e3b-004e-418b-ba4f-13debb70a9d3',
        date: now.add(const Duration(days: 140, minutes: 20)),
        rdvType: RendezVousType.PROFESSIONEL_DE_SANTE,
        nomActeurSante: 'Docteur Dupoy',
        specialiteActeurSante: 'Psychiatre',
        note: 'Revoir les traitements actuels et vérifier avec les autres médications',
        address: '18 rue Lhermitte, 59320 Haubourdin',
        author: 'Ajouté par Lola C.',
      ),
      RendezVous(
        id: '12a35e3b-005e-418b-ba4f-13debb70a9d3',
        title: 'Rdv Kiné 18',
        date: now.add(const Duration(days: 366, minutes: 30)),
        rdvType: RendezVousType.PROFESSIONEL_DE_SANTE,
        nomActeurSante: 'Dr Ben',
        specialiteActeurSante: 'Dermatologue et vénérologue',
        author: 'Ajouté par Valentine L.',
      ),
      RendezVous(
        id: '12a35e3b-006e-418b-ba4f-13debb70a9d3',
        title: 'Rdv Kiné 19',
        date: now.add(const Duration(days: 2 * 366, minutes: 40)),
        rdvType: RendezVousType.ETABLISSEMENT_DE_SANTE,
        nomActeurSante: 'Hôpital Lavoisière',
        author: 'Ajouté par Laurence R.',
      ),
      RendezVous(
        id: '12a35e3b-007e-418b-ba4f-13debb70a9d3',
        title: 'Rdv Kiné 20',
        date: now.add(const Duration(days: 3 * 366 + 100, minutes: 50)),
        rdvType: RendezVousType.ETABLISSEMENT_DE_SANTE,
        nomActeurSante: 'Hôpital Lavoisière',
        author: 'Ajouté par Camille D.',
      ),
      RendezVous(
        id: '12a35e3b-001e-418b-ba4f-13debb70a9d3',
        title: '',
        date: now.subtract(const Duration(hours: 10)),
        rdvType: RendezVousType.PROFESSIONEL_DE_SANTE,
        nomActeurSante: 'Dr Bentolila',
        address: '18 Avenue du Général de Gaulle, 94160 Saint-Mandé',
        author: 'Ajouté par Gabrielle C.',
      ),
      RendezVous(
        id: '12a35e3b-002e-418b-ba4f-13debb70a9d3',
        title: 'Rdv Kiné',
        date: now.subtract(const Duration(days: 1)),
        rdvType: RendezVousType.ETABLISSEMENT_DE_SANTE,
        nomActeurSante: 'Hôpital Lavoisière',
        address: '1 Place Denfert-Rochereau 92100 Boulogne-Billancourt',
        author: 'Ajouté par Alice O.',
      ),
    ];

    final List<ExamenRecommande> examensRecommandes = [
      ExamenRecommande(
        id: '1',
        startDate: birthday.addYear(18),
        endDate: birthday.addYear(19),
        title: 'M’T dents des 18 ans',
        status: ExamenStatus.NON_REALISE,
        body: """
Un mois avant votre date anniversaire, vous recevez un formulaire M'T dents par courrier ou sur votre compte ameli. Ces rendez-vous et les éventuels soins associés sont offerts par l’Assurance Maladie : vous n’aurez rien à payer !
      Lors de ce rendez-vous, le dentiste
        vérifie la santé des dents et des gencives ;
      donne des conseils pour bien s’occuper de ses dents ;
      propose un ou plusieurs nouveaux rendez-vous si des dents doivent être soignées.""",
        linkUrl: 'https://www.ameli.fr/assure/sante/themes/carie-dentaire/mt-dents',
        linkLabel: 'En savoir plus',
        type: 'Examen de prévention dentaire',
      ),
      ExamenRecommande(
        id: '2',
        startDate: birthday.addYear(24),
        endDate: birthday.addYear(25),
        title: 'M’T dents des 24 ans',
        status: ExamenStatus.NON_REALISE,
        body: """
Un mois avant votre date anniversaire, vous recevez un formulaire M'T dents par courrier ou sur votre compte ameli. Ces rendez-vous et les éventuels soins associés sont offerts par l’Assurance Maladie : vous n’aurez rien à payer !
      Lors de ce rendez-vous, le dentiste
        vérifie la santé des dents et des gencives ;
      donne des conseils pour bien s’occuper de ses dents ;
      propose un ou plusieurs nouveaux rendez-vous si des dents doivent être soignées.""",
        linkUrl: 'https://www.ameli.fr/assure/sante/themes/carie-dentaire/mt-dents',
        linkLabel: 'En savoir plus',
        type: 'Examen de prévention dentaire',
      ),
      ExamenRecommande(
        id: '3',
        startDate: birthday.addYear(21),
        endDate: birthday.addYear(22),
        title: 'M’T dents des 21 ans',
        status: ExamenStatus.NON_REALISE,
        body: """
Un mois avant votre date anniversaire, vous recevez un formulaire M'T dents par courrier ou sur votre compte ameli. Ces rendez-vous et les éventuels soins associés sont offerts par l’Assurance Maladie : vous n’aurez rien à payer !
      Lors de ce rendez-vous, le dentiste
        vérifie la santé des dents et des gencives ;
      donne des conseils pour bien s’occuper de ses dents ;
      propose un ou plusieurs nouveaux rendez-vous si des dents doivent être soignées.""",
        linkUrl: 'https://www.ameli.fr/assure/sante/themes/carie-dentaire/mt-dents',
        linkLabel: 'En savoir plus',
        type: 'Examen de prévention dentaire',
      ),
      ExamenRecommande(
        id: '4',
        startDate: birthday.addYear(54),
        endDate: birthday.addYear(55),
        title: 'Dépistage et diagnostic précoce du Glaucome',
        status: ExamenStatus.NON_REALISE,
        body: """
Un mois avant votre date anniversaire, vous recevez un formulaire M'T dents par courrier ou sur votre compte ameli. Ces rendez-vous et les éventuels soins associés sont offerts par l’Assurance Maladie : vous n’aurez rien à payer !
      Lors de ce rendez-vous, le dentiste
        vérifie la santé des dents et des gencives ;
      donne des conseils pour bien s’occuper de ses dents ;
      propose un ou plusieurs nouveaux rendez-vous si des dents doivent être soignées.""",
        linkUrl: 'https://www.ameli.fr/assure/sante/themes/carie-dentaire/mt-dents',
        linkLabel: 'En savoir plus',
        type: 'Examen de prévention dentaire',
      ),
      ExamenRecommande(
        id: '5',
        startDate: birthday.add(const Duration(days: 7)),
        endDate: birthday.add(const Duration(days: 14)),
        title: '1er examen de suivi médical ',
        status: ExamenStatus.REALISE,
        body: """
Un mois avant votre date anniversaire, vous recevez un formulaire M'T dents par courrier ou sur votre compte ameli. Ces rendez-vous et les éventuels soins associés sont offerts par l’Assurance Maladie : vous n’aurez rien à payer !
      Lors de ce rendez-vous, le dentiste
        vérifie la santé des dents et des gencives ;
      donne des conseils pour bien s’occuper de ses dents ;
      propose un ou plusieurs nouveaux rendez-vous si des dents doivent être soignées.""",
        linkUrl: 'https://www.ameli.fr/assure/sante/themes/carie-dentaire/mt-dents',
        linkLabel: 'En savoir plus',
        type: 'Examen de suivi médical',
      ),
      ExamenRecommande(
        id: '6',
        startDate: birthday.add(const Duration(days: 14)),
        endDate: birthday.add(const Duration(days: 21)),
        title: 'Examen de suivi médical  de la 2e semaine',
        status: ExamenStatus.REALISE,
        body: """
Un mois avant votre date anniversaire, vous recevez un formulaire M'T dents par courrier ou sur votre compte ameli. Ces rendez-vous et les éventuels soins associés sont offerts par l’Assurance Maladie : vous n’aurez rien à payer !
      Lors de ce rendez-vous, le dentiste
        vérifie la santé des dents et des gencives ;
      donne des conseils pour bien s’occuper de ses dents ;
      propose un ou plusieurs nouveaux rendez-vous si des dents doivent être soignées.""",
        linkUrl: 'https://www.ameli.fr/assure/sante/themes/carie-dentaire/mt-dents',
        linkLabel: 'En savoir plus',
        type: 'Examen de suivi médical',
      ),
      ExamenRecommande(
        id: '7',
        startDate: birthday.add(const Duration(days: 31)),
        endDate: birthday.add(const Duration(days: 60)),
        title: 'Examen de suivi médical approfondi du 1e mois',
        status: ExamenStatus.NON_RENSEIGNE,
        body: """
Un mois avant votre date anniversaire, vous recevez un formulaire M'T dents par courrier ou sur votre compte ameli. Ces rendez-vous et les éventuels soins associés sont offerts par l’Assurance Maladie : vous n’aurez rien à payer !
      Lors de ce rendez-vous, le dentiste
        vérifie la santé des dents et des gencives ;
      donne des conseils pour bien s’occuper de ses dents ;
      propose un ou plusieurs nouveaux rendez-vous si des dents doivent être soignées.""",
        linkUrl: 'https://www.ameli.fr/assure/sante/themes/carie-dentaire/mt-dents',
        linkLabel: 'En savoir plus',
        type: 'Examen de suivi médical',
      ),
      ExamenRecommande(
        id: '8',
        startDate: birthday.add(const Duration(days: 61)),
        endDate: birthday.add(const Duration(days: 91)),
        title: 'Examen de suivi médical approfondi du 2e mois',
        status: ExamenStatus.NON_REALISE,
        body: """
Un mois avant votre date anniversaire, vous recevez un formulaire M'T dents par courrier ou sur votre compte ameli. Ces rendez-vous et les éventuels soins associés sont offerts par l’Assurance Maladie : vous n’aurez rien à payer !
      Lors de ce rendez-vous, le dentiste
        vérifie la santé des dents et des gencives ;
      donne des conseils pour bien s’occuper de ses dents ;
      propose un ou plusieurs nouveaux rendez-vous si des dents doivent être soignées.""",
        linkUrl: 'https://www.ameli.fr/assure/sante/themes/carie-dentaire/mt-dents',
        linkLabel: 'En savoir plus',
        type: 'Examen de suivi médical',
      ),
      ExamenRecommande(
        id: '9',
        startDate: birthday.add(const Duration(days: 92)),
        endDate: birthday.add(const Duration(days: 122)),
        title: 'Examen de suivi médical approfondi du 3e mois',
        status: ExamenStatus.NON_REALISE,
        body: """
Un mois avant votre date anniversaire, vous recevez un formulaire M'T dents par courrier ou sur votre compte ameli. Ces rendez-vous et les éventuels soins associés sont offerts par l’Assurance Maladie : vous n’aurez rien à payer !
      Lors de ce rendez-vous, le dentiste
        vérifie la santé des dents et des gencives ;
      donne des conseils pour bien s’occuper de ses dents ;
      propose un ou plusieurs nouveaux rendez-vous si des dents doivent être soignées.""",
        linkUrl: 'https://www.ameli.fr/assure/sante/themes/carie-dentaire/mt-dents',
        linkLabel: 'En savoir plus',
        type: 'Examen de suivi médical',
      ),
      ExamenRecommande(
        id: '10',
        startDate: birthday.add(const Duration(days: 123)),
        endDate: birthday.add(const Duration(days: 153)),
        title: 'Examen de suivi médical approfondi du 4e mois',
        status: ExamenStatus.REALISE,
        body: """
Un mois avant votre date anniversaire, vous recevez un formulaire M'T dents par courrier ou sur votre compte ameli. Ces rendez-vous et les éventuels soins associés sont offerts par l’Assurance Maladie : vous n’aurez rien à payer !
      Lors de ce rendez-vous, le dentiste
        vérifie la santé des dents et des gencives ;
      donne des conseils pour bien s’occuper de ses dents ;
      propose un ou plusieurs nouveaux rendez-vous si des dents doivent être soignées.""",
        linkUrl: 'https://www.ameli.fr/assure/sante/themes/carie-dentaire/mt-dents',
        linkLabel: 'En savoir plus',
        type: 'Examen de suivi médical',
      ),
      ExamenRecommande(
        id: '11',
        startDate: birthday.add(const Duration(days: 154)),
        endDate: birthday.add(const Duration(days: 184)),
        title: 'Examen de suivi médical approfondi du 5e mois',
        status: _getStatus(
          ExamenStatus.A_PLANIFIER,
          birthday.add(const Duration(days: 154)),
          birthday.add(const Duration(days: 184)),
        ),
        body: """
Un mois avant votre date anniversaire, vous recevez un formulaire M'T dents par courrier ou sur votre compte ameli. Ces rendez-vous et les éventuels soins associés sont offerts par l’Assurance Maladie : vous n’aurez rien à payer !
      Lors de ce rendez-vous, le dentiste
        vérifie la santé des dents et des gencives ;
      donne des conseils pour bien s’occuper de ses dents ;
      propose un ou plusieurs nouveaux rendez-vous si des dents doivent être soignées.""",
        linkUrl: 'https://www.ameli.fr/assure/sante/themes/carie-dentaire/mt-dents',
        linkLabel: 'En savoir plus',
        type: 'Examen de suivi médical',
      ),
      ExamenRecommande(
        id: '11',
        startDate: birthday.add(const Duration(days: 184)),
        endDate: birthday.add(const Duration(days: 214)),
        title: 'Examen de suivi médical approfondi du 6e mois',
        status: _getStatus(
          ExamenStatus.A_PLANIFIER,
          birthday.add(const Duration(days: 184)),
          birthday.add(const Duration(days: 214)),
        ),
        body: """
Un mois avant votre date anniversaire, vous recevez un formulaire M'T dents par courrier ou sur votre compte ameli. Ces rendez-vous et les éventuels soins associés sont offerts par l’Assurance Maladie : vous n’aurez rien à payer !
      Lors de ce rendez-vous, le dentiste
        vérifie la santé des dents et des gencives ;
      donne des conseils pour bien s’occuper de ses dents ;
      propose un ou plusieurs nouveaux rendez-vous si des dents doivent être soignées.""",
        linkUrl: 'https://www.ameli.fr/assure/sante/themes/carie-dentaire/mt-dents',
        linkLabel: 'En savoir plus',
        type: 'Examen de suivi médical',
      ),
      ExamenRecommande(
        id: '12',
        startDate: birthday.add(const Duration(days: 214)),
        endDate: birthday.add(const Duration(days: 245)),
        title: 'Examen de suivi médical approfondi du 8e mois',
        status: _getStatus(
          ExamenStatus.A_PLANIFIER,
          birthday.add(const Duration(days: 214)),
          birthday.add(const Duration(days: 245)),
        ),
        body: """
Un mois avant votre date anniversaire, vous recevez un formulaire M'T dents par courrier ou sur votre compte ameli. Ces rendez-vous et les éventuels soins associés sont offerts par l’Assurance Maladie : vous n’aurez rien à payer !
      Lors de ce rendez-vous, le dentiste
        vérifie la santé des dents et des gencives ;
      donne des conseils pour bien s’occuper de ses dents ;
      propose un ou plusieurs nouveaux rendez-vous si des dents doivent être soignées.""",
        linkUrl: 'https://www.ameli.fr/assure/sante/themes/carie-dentaire/mt-dents',
        linkLabel: 'En savoir plus',
        type: 'Examen de suivi médical',
      ),
      ExamenRecommande(
        id: '14',
        startDate: birthday.add(const Duration(days: 334)),
        endDate: birthday.add(const Duration(days: 355)),
        title: 'Examen de suivi médical approfondi du 11e mois',
        status: _getStatus(
          ExamenStatus.A_PLANIFIER,
          birthday.add(const Duration(days: 334)),
          birthday.add(const Duration(days: 355)),
        ),
        body: """
Un mois avant votre date anniversaire, vous recevez un formulaire M'T dents par courrier ou sur votre compte ameli. Ces rendez-vous et les éventuels soins associés sont offerts par l’Assurance Maladie : vous n’aurez rien à payer !
      Lors de ce rendez-vous, le dentiste
        vérifie la santé des dents et des gencives ;
      donne des conseils pour bien s’occuper de ses dents ;
      propose un ou plusieurs nouveaux rendez-vous si des dents doivent être soignées.""",
        linkUrl: 'https://www.ameli.fr/assure/sante/themes/carie-dentaire/mt-dents',
        linkLabel: 'En savoir plus',
        type: 'Examen de suivi médical',
      ),
      ExamenRecommande(
        id: '15',
        startDate: birthday.addYear(1),
        endDate: birthday.addYear(1).add(const Duration(days: 30)),
        title: 'Examen de suivi médical approfondi du 12e mois',
        status: _getStatus(
          ExamenStatus.A_PLANIFIER,
          birthday.addYear(1),
          birthday.addYear(1).add(const Duration(days: 30)),
        ),
        body: """
Un mois avant votre date anniversaire, vous recevez un formulaire M'T dents par courrier ou sur votre compte ameli. Ces rendez-vous et les éventuels soins associés sont offerts par l’Assurance Maladie : vous n’aurez rien à payer !
      Lors de ce rendez-vous, le dentiste
        vérifie la santé des dents et des gencives ;
      donne des conseils pour bien s’occuper de ses dents ;
      propose un ou plusieurs nouveaux rendez-vous si des dents doivent être soignées.""",
        linkUrl: 'https://www.ameli.fr/assure/sante/themes/carie-dentaire/mt-dents',
        linkLabel: 'En savoir plus',
        type: 'Examen de suivi médical',
      ),
      ExamenRecommande(
        id: '16',
        startDate: birthday.addYear(1).add(const Duration(days: 125)),
        endDate: birthday.addYear(1).add(const Duration(days: 186)),
        title: 'Examen de suivi médical  du 16e au 18e mois',
        status: _getStatus(
          ExamenStatus.A_PLANIFIER,
          birthday.addYear(1).add(const Duration(days: 125)),
          birthday.addYear(1).add(const Duration(days: 186)),
        ),
        body: """
Un mois avant votre date anniversaire, vous recevez un formulaire M'T dents par courrier ou sur votre compte ameli. Ces rendez-vous et les éventuels soins associés sont offerts par l’Assurance Maladie : vous n’aurez rien à payer !
      Lors de ce rendez-vous, le dentiste
        vérifie la santé des dents et des gencives ;
      donne des conseils pour bien s’occuper de ses dents ;
      propose un ou plusieurs nouveaux rendez-vous si des dents doivent être soignées.""",
        linkUrl: 'https://www.ameli.fr/assure/sante/themes/carie-dentaire/mt-dents',
        linkLabel: 'En savoir plus',
        type: 'Examen de suivi médical',
      ),
      ExamenRecommande(
        id: '17',
        startDate: birthday.addYear(1).add(const Duration(days: 125)),
        endDate: birthday.addYear(1).add(const Duration(days: 186)),
        title: 'Examen de suivi médical  du 16e au 18e mois',
        status: _getStatus(
          ExamenStatus.A_PLANIFIER,
          birthday.addYear(1).add(const Duration(days: 125)),
          birthday.addYear(1).add(const Duration(days: 186)),
        ),
        body: """
Un mois avant votre date anniversaire, vous recevez un formulaire M'T dents par courrier ou sur votre compte ameli. Ces rendez-vous et les éventuels soins associés sont offerts par l’Assurance Maladie : vous n’aurez rien à payer !
      Lors de ce rendez-vous, le dentiste
        vérifie la santé des dents et des gencives ;
      donne des conseils pour bien s’occuper de ses dents ;
      propose un ou plusieurs nouveaux rendez-vous si des dents doivent être soignées.""",
        linkUrl: 'https://www.ameli.fr/assure/sante/themes/carie-dentaire/mt-dents',
        linkLabel: 'En savoir plus',
        type: 'Examen de suivi médical',
      ),
      ExamenRecommande(
        id: '18',
        startDate: birthday.addYear(2).subtract(const Duration(days: 30)),
        endDate: birthday.addYear(2),
        title: 'Examen de suivi médical  du 23e au 24e mois',
        status: _getStatus(
          ExamenStatus.A_PLANIFIER,
          birthday.addYear(2).subtract(const Duration(days: 30)),
          birthday.addYear(2),
        ),
        body: """
Un mois avant votre date anniversaire, vous recevez un formulaire M'T dents par courrier ou sur votre compte ameli. Ces rendez-vous et les éventuels soins associés sont offerts par l’Assurance Maladie : vous n’aurez rien à payer !
      Lors de ce rendez-vous, le dentiste
        vérifie la santé des dents et des gencives ;
      donne des conseils pour bien s’occuper de ses dents ;
      propose un ou plusieurs nouveaux rendez-vous si des dents doivent être soignées.""",
        linkUrl: 'https://www.ameli.fr/assure/sante/themes/carie-dentaire/mt-dents',
        linkLabel: 'En savoir plus',
        type: 'Examen de suivi médical',
      ),
      ExamenRecommande(
        id: '19',
        startDate: birthday.addYear(2).add(const Duration(days: 30)),
        endDate: birthday.addYear(2).add(const Duration(days: 60)),
        title: 'Examen de suivi médical  des 2 ans',
        status: _getStatus(
          ExamenStatus.A_PLANIFIER,
          birthday.addYear(2).add(const Duration(days: 30)),
          birthday.addYear(2).add(const Duration(days: 60)),
        ),
        body: """
Un mois avant votre date anniversaire, vous recevez un formulaire M'T dents par courrier ou sur votre compte ameli. Ces rendez-vous et les éventuels soins associés sont offerts par l’Assurance Maladie : vous n’aurez rien à payer !
      Lors de ce rendez-vous, le dentiste
        vérifie la santé des dents et des gencives ;
      donne des conseils pour bien s’occuper de ses dents ;
      propose un ou plusieurs nouveaux rendez-vous si des dents doivent être soignées.""",
        linkUrl: 'https://www.ameli.fr/assure/sante/themes/carie-dentaire/mt-dents',
        linkLabel: 'En savoir plus',
        type: 'Examen de suivi médical',
      ),
      ExamenRecommande(
        id: '20',
        startDate: birthday.addYear(3).subtract(const Duration(days: 30)),
        endDate: birthday.addYear(3),
        title: 'Examen de suivi médical  des 3 ans',
        status: _getStatus(
          ExamenStatus.A_PLANIFIER,
          birthday.addYear(3).subtract(const Duration(days: 30)),
          birthday.addYear(3),
        ),
        body: """
Un mois avant votre date anniversaire, vous recevez un formulaire M'T dents par courrier ou sur votre compte ameli. Ces rendez-vous et les éventuels soins associés sont offerts par l’Assurance Maladie : vous n’aurez rien à payer !
      Lors de ce rendez-vous, le dentiste
        vérifie la santé des dents et des gencives ;
      donne des conseils pour bien s’occuper de ses dents ;
      propose un ou plusieurs nouveaux rendez-vous si des dents doivent être soignées.""",
        linkUrl: 'https://www.ameli.fr/assure/sante/themes/carie-dentaire/mt-dents',
        linkLabel: 'En savoir plus',
        type: 'Examen de suivi médical',
      ),
      ExamenRecommande(
        id: '21',
        startDate: birthday.addYear(3),
        endDate: birthday.addYear(3).add(const Duration(days: 30)),
        title: 'M’T dents des 3 ans',
        status: ExamenStatus.NON_REALISE,
        body: """
Un mois avant votre date anniversaire, vous recevez un formulaire M'T dents par courrier ou sur votre compte ameli. Ces rendez-vous et les éventuels soins associés sont offerts par l’Assurance Maladie : vous n’aurez rien à payer !
      Lors de ce rendez-vous, le dentiste
        vérifie la santé des dents et des gencives ;
      donne des conseils pour bien s’occuper de ses dents ;
      propose un ou plusieurs nouveaux rendez-vous si des dents doivent être soignées.""",
        linkUrl: 'https://www.ameli.fr/assure/sante/themes/carie-dentaire/mt-dents',
        linkLabel: 'En savoir plus',
        type: 'Examen de prévention dentaire',
      ),
      ExamenRecommande(
        id: '22',
        startDate: birthday.addYear(6),
        endDate: birthday.addYear(6).add(const Duration(days: 30)),
        title: 'M’T dents des 6 ans',
        status: _getStatus(
          ExamenStatus.A_PLANIFIER,
          birthday.addYear(6),
          birthday.addYear(6).add(const Duration(days: 30)),
        ),
        body: """
Un mois avant votre date anniversaire, vous recevez un formulaire M'T dents par courrier ou sur votre compte ameli. Ces rendez-vous et les éventuels soins associés sont offerts par l’Assurance Maladie : vous n’aurez rien à payer !
      Lors de ce rendez-vous, le dentiste
        vérifie la santé des dents et des gencives ;
      donne des conseils pour bien s’occuper de ses dents ;
      propose un ou plusieurs nouveaux rendez-vous si des dents doivent être soignées.""",
        linkUrl: 'https://www.ameli.fr/assure/sante/themes/carie-dentaire/mt-dents',
        linkLabel: 'En savoir plus',
        type: 'Examen de prévention dentaire',
      ),
      ExamenRecommande(
        id: '23',
        startDate: birthday.addYear(9),
        endDate: birthday.addYear(9).add(const Duration(days: 30)),
        title: 'M’T dents des 9 ans',
        status: _getStatus(
          ExamenStatus.A_PLANIFIER,
          birthday.addYear(9),
          birthday.addYear(9).add(const Duration(days: 30)),
        ),
        body: """
Un mois avant votre date anniversaire, vous recevez un formulaire M'T dents par courrier ou sur votre compte ameli. Ces rendez-vous et les éventuels soins associés sont offerts par l’Assurance Maladie : vous n’aurez rien à payer !
      Lors de ce rendez-vous, le dentiste
        vérifie la santé des dents et des gencives ;
      donne des conseils pour bien s’occuper de ses dents ;
      propose un ou plusieurs nouveaux rendez-vous si des dents doivent être soignées.""",
        linkUrl: 'https://www.ameli.fr/assure/sante/themes/carie-dentaire/mt-dents',
        linkLabel: 'En savoir plus',
        type: 'Examen de prévention dentaire',
      ),
      ExamenRecommande(
        id: '24',
        startDate: birthday.addYear(12),
        endDate: birthday.addYear(12).add(const Duration(days: 30)),
        title: 'M’T dents des 12 ans',
        status: _getStatus(
          ExamenStatus.A_PLANIFIER,
          birthday.addYear(12),
          birthday.addYear(12).add(const Duration(days: 30)),
        ),
        body: """
Un mois avant votre date anniversaire, vous recevez un formulaire M'T dents par courrier ou sur votre compte ameli. Ces rendez-vous et les éventuels soins associés sont offerts par l’Assurance Maladie : vous n’aurez rien à payer !
      Lors de ce rendez-vous, le dentiste
        vérifie la santé des dents et des gencives ;
      donne des conseils pour bien s’occuper de ses dents ;
      propose un ou plusieurs nouveaux rendez-vous si des dents doivent être soignées.""",
        linkUrl: 'https://www.ameli.fr/assure/sante/themes/carie-dentaire/mt-dents',
        linkLabel: 'En savoir plus',
        type: 'Examen de prévention dentaire',
      ),
      ExamenRecommande(
        id: '25',
        startDate: birthday.addYear(15),
        endDate: birthday.addYear(15).add(const Duration(days: 30)),
        title: 'M’T dents des 15 ans',
        status: _getStatus(
          ExamenStatus.A_PLANIFIER,
          birthday.addYear(15),
          birthday.addYear(15).add(const Duration(days: 30)),
        ),
        body: """
Un mois avant votre date anniversaire, vous recevez un formulaire M'T dents par courrier ou sur votre compte ameli. Ces rendez-vous et les éventuels soins associés sont offerts par l’Assurance Maladie : vous n’aurez rien à payer !
      Lors de ce rendez-vous, le dentiste
        vérifie la santé des dents et des gencives ;
      donne des conseils pour bien s’occuper de ses dents ;
      propose un ou plusieurs nouveaux rendez-vous si des dents doivent être soignées.""",
        linkUrl: 'https://www.ameli.fr/assure/sante/themes/carie-dentaire/mt-dents',
        linkLabel: 'En savoir plus',
        type: 'Examen de prévention dentaire',
      ),
      ExamenRecommande(
        id: '27',
        startDate: birthday.addYear(4).add(const Duration(days: 30)),
        endDate: birthday.addYear(4).add(const Duration(days: 60)),
        title: 'Examen de suivi médical  des 4 ans',
        status: _getStatus(
          ExamenStatus.A_PLANIFIER,
          birthday.addYear(4).add(const Duration(days: 30)),
          birthday.addYear(4).add(const Duration(days: 60)),
        ),
        body: """
Un mois avant votre date anniversaire, vous recevez un formulaire M'T dents par courrier ou sur votre compte ameli. Ces rendez-vous et les éventuels soins associés sont offerts par l’Assurance Maladie : vous n’aurez rien à payer !
      Lors de ce rendez-vous, le dentiste
        vérifie la santé des dents et des gencives ;
      donne des conseils pour bien s’occuper de ses dents ;
      propose un ou plusieurs nouveaux rendez-vous si des dents doivent être soignées.""",
        linkUrl: 'https://www.ameli.fr/assure/sante/themes/carie-dentaire/mt-dents',
        linkLabel: 'En savoir plus',
        type: 'Examen de suivi médical',
      ),
      ExamenRecommande(
        id: '28',
        startDate: birthday.addYear(5).add(const Duration(days: 30)),
        endDate: birthday.addYear(5).add(const Duration(days: 60)),
        title: 'Examen de suivi médical  des 5 ans',
        status: _getStatus(
          ExamenStatus.A_PLANIFIER,
          birthday.addYear(5).add(const Duration(days: 30)),
          birthday.addYear(5).add(const Duration(days: 60)),
        ),
        body: """
Un mois avant votre date anniversaire, vous recevez un formulaire M'T dents par courrier ou sur votre compte ameli. Ces rendez-vous et les éventuels soins associés sont offerts par l’Assurance Maladie : vous n’aurez rien à payer !
      Lors de ce rendez-vous, le dentiste
        vérifie la santé des dents et des gencives ;
      donne des conseils pour bien s’occuper de ses dents ;
      propose un ou plusieurs nouveaux rendez-vous si des dents doivent être soignées.""",
        linkUrl: 'https://www.ameli.fr/assure/sante/themes/carie-dentaire/mt-dents',
        linkLabel: 'En savoir plus',
        type: 'Examen de suivi médical',
      ),
      ExamenRecommande(
        id: '29',
        startDate: birthday.addYear(8).add(const Duration(days: 30)),
        endDate: birthday.addYear(9).add(const Duration(days: 60)),
        title: 'Examen de suivi médical des 8-9 ans',
        status: _getStatus(
          ExamenStatus.A_PLANIFIER,
          birthday.addYear(8).add(const Duration(days: 30)),
          birthday.addYear(9).add(const Duration(days: 60)),
        ),
        body: """
Un mois avant votre date anniversaire, vous recevez un formulaire M'T dents par courrier ou sur votre compte ameli. Ces rendez-vous et les éventuels soins associés sont offerts par l’Assurance Maladie : vous n’aurez rien à payer !
      Lors de ce rendez-vous, le dentiste
        vérifie la santé des dents et des gencives ;
      donne des conseils pour bien s’occuper de ses dents ;
      propose un ou plusieurs nouveaux rendez-vous si des dents doivent être soignées.""",
        linkUrl: 'https://www.ameli.fr/assure/sante/themes/carie-dentaire/mt-dents',
        linkLabel: 'En savoir plus',
        type: 'Examen de suivi médical',
      ),
      ExamenRecommande(
        id: '30',
        startDate: birthday.addYear(11).add(const Duration(days: 30)),
        endDate: birthday.addYear(13).add(const Duration(days: 60)),
        title: 'Examen de suivi médical des 11-13 ans',
        status: _getStatus(
          ExamenStatus.A_PLANIFIER,
          birthday.addYear(11).add(const Duration(days: 30)),
          birthday.addYear(13).add(const Duration(days: 60)),
        ),
        body: """
Un mois avant votre date anniversaire, vous recevez un formulaire M'T dents par courrier ou sur votre compte ameli. Ces rendez-vous et les éventuels soins associés sont offerts par l’Assurance Maladie : vous n’aurez rien à payer !
      Lors de ce rendez-vous, le dentiste
        vérifie la santé des dents et des gencives ;
      donne des conseils pour bien s’occuper de ses dents ;
      propose un ou plusieurs nouveaux rendez-vous si des dents doivent être soignées.""",
        linkUrl: 'https://www.ameli.fr/assure/sante/themes/carie-dentaire/mt-dents',
        linkLabel: 'En savoir plus',
        type: 'Examen de suivi médical',
      ),
      ExamenRecommande(
        id: '30',
        startDate: birthday.addYear(15).subtract(const Duration(days: 30)),
        endDate: birthday.addYear(16).add(const Duration(days: 60)),
        title: 'Examen de suivi médical des 15-16 ans',
        status: _getStatus(
          ExamenStatus.A_PLANIFIER,
          birthday.addYear(15).subtract(const Duration(days: 30)),
          birthday.addYear(16).add(const Duration(days: 60)),
        ),
        body: """
Un mois avant votre date anniversaire, vous recevez un formulaire M'T dents par courrier ou sur votre compte ameli. Ces rendez-vous et les éventuels soins associés sont offerts par l’Assurance Maladie : vous n’aurez rien à payer !
      Lors de ce rendez-vous, le dentiste
        vérifie la santé des dents et des gencives ;
      donne des conseils pour bien s’occuper de ses dents ;
      propose un ou plusieurs nouveaux rendez-vous si des dents doivent être soignées.""",
        linkUrl: 'https://www.ameli.fr/assure/sante/themes/carie-dentaire/mt-dents',
        linkLabel: 'En savoir plus',
        type: 'Examen de suivi médical',
      ),
    ];

    return GetRendezVousEtRappelsEtExamensResponse(
      rdvs: RequestResultSuccess(agenda),
      rappels: RequestResultSuccess(rappels),
      examensRecommandes: RequestResultSuccess(examensRecommandes),
    );
  }

  ExamenStatus _getStatus(ExamenStatus status, DateTime startDate, DateTime endDate) {
    if (status == ExamenStatus.A_PLANIFIER &&
        startDate.isBefore(DateTime.now().addYear(1)) &&
        endDate.isAfter(DateTime.now())) {
      return ExamenStatus.A_PLANIFIER;
    } else if (status == ExamenStatus.A_PLANIFIER) {
      return ExamenStatus.NON_RENSEIGNE;
    }
    return status;
  }

  @override
  Future<RequestResult<RendezVous>> addRendezVous(String patientId, RendezVous rdv) {
    return Future.value(RequestResultError.unavailableInGuestMode());
  }

  @override
  Future<RequestResult<RendezVous>> updateRendezVous(String patientId, RendezVous rdv) {
    return Future.value(RequestResultError.unavailableInGuestMode());
  }

  @override
  Future<RequestResult<String>> deleteRendezVous(String patientId, String rdvId) {
    return Future.value(RequestResultError.unavailableInGuestMode());
  }

  @override
  Future<RequestResult<Rappel>> addRappel({
    required String patientId,
    required DateTime date,
    required String title,
    required String? comment,
  }) {
    return Future.value(RequestResultError.unavailableInGuestMode());
  }

  @override
  Future<RequestResult<String>> deleteRappel(String patientId, String rappelId) {
    return Future.value(RequestResultError.unavailableInGuestMode());
  }

  @override
  Future<RequestResult<void>> updateExamenStatus({
    required String patientId,
    required String examenId,
    required ExamenStatus status,
    required ExamenStatus previousStatus,
    required DateTime dateDebut,
    required DateTime? dateRealisation,
  }) async {
    return RequestResultSuccess(null);
  }

  @override
  Future<RequestResult<Rappel>> updateRappel(String patientId, Rappel rappel) {
    return Future.value(RequestResultError.unavailableInGuestMode());
  }

  @override
  Future<RequestResult<Rappel>> getRappelByIdByPatientId(String patientId, String rappelId) {
    return Future.value(RequestResultError.unavailableInGuestMode());
  }

  @override
  Future<RequestResult<ExamenRecommande>> getExamenRecommandeByCodeAndDate(
    String patientId,
    String code,
    DateTime dateDebut,
  ) {
    return Future.value(RequestResultError.unavailableInGuestMode());
  }

  @override
  Future<RequestResult<int>> getNombreExamensRecommandes(String patientId) {
    return Future.value(RequestResultSuccess(1));
  }

  @override
  Future<RequestResult<RendezVous>> getRendezVousByIdByPatientId(String patientId, String rdvId) {
    return Future.value(RequestResultError.unavailableInGuestMode());
  }
}
