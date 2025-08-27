/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:fr_cnamts_ens/common/data/request_result.dart';
import 'package:fr_cnamts_ens/prevention/data/prevention_repository.dart';
import 'package:fr_cnamts_ens/prevention/domain/models/article.dart';
import 'package:fr_cnamts_ens/prevention/domain/models/article_detail.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';

class GuestPreventionRepository extends IPreventionRepository {
  @override
  Future<RequestResult<ArticleDetail>> getArticleDetail(String postId, bool generique) {
    final ArticleDetail articleDetail = ArticleDetail(
      title: 'Bienvenue dans Mon espace santé',
      subTitle: 'Vous avez la main sur votre santé.',
      content: detailContent,
      actionButtons: const [],
    );
    return Future.value(RequestResultSuccess(articleDetail));
  }

  @override
  Future<RequestResult<List<Article>>> getArticlesMonActuSante(String sex, String age) async {
    return RequestResultSuccess(const [
      Article(
        id: '6147a5a4-7a38-4784-8eaa-1e28f7f49341',
        title: 'Je retrouve ici les articles correspondant à mon âge et mon sexe',
        hasDetailArticle: true,
        image: EnsImages.felicitation,
        backgroundColor: ArticleBackgroundColor.VERT,
        link: null,
        linkText: null,
      ),
      Article(
        id: '6147a5a4-7a38-4784-8eaa-1e28f7f49341',
        title: 'Configurez vos options de confidentialité pour une sécurité qui vous ressemble.',
        hasDetailArticle: false,
        image: EnsImages.felicitation,
        backgroundColor: ArticleBackgroundColor.VERT,
        link: '/mon-compte/informations-de-connexion',
        linkText: 'Modifier mes paramètres',
      ),
    ]);
  }

  String detailContent = '''
  <p><strong>ÊTRE ACTEUR DE SA SANTÉ</strong></p>
<p>Avec Mon espace santé, vous pouvez garder avec vous toutes vos informations médicales et disposez de services numériques qui vous aident à participer au suivi et à la préservation de votre santé au quotidien. Vous avez la possibilité d’enregistrer et de renseigner toutes vos informations de santé à mesure des examens et consultations que vous réalisez. Les professionnels de santé, auxquels vous avez donné l’autorisation, pourront aussi y enregistrer des documents et informations utiles à votre suivi médical. Plus Mon espace santé est renseigné, plus il contribue à un suivi et une prise en charge efficaces, notamment en situation d’urgence.</p>
<p><strong>PERSONNEL & CONFIDENTIEL</strong></p>
<p>Vous disposez de votre propre espace numérique. Il est créé automatiquement pour chacun dès sa naissance. A tout moment vous pouvez choisir d’activer ou de clôturer votre profil. Les documents et informations enregistrés dans Mon espace santé restent votre propriété. Vous décidez quel(s) professionnel(s) de santé peut consulter vos informations médicales et y enregistrer des documents utiles pour votre suivi médical.</p>
<p><strong>SÉCURISÉ</strong></p>
<p>Mon espace santé est un espace numérique hautement sécurisé. Toutes les données sont hébergées en France. L’Assurance Maladie garantit leur sécurité comme elle le fait depuis longtemps avec les données de remboursements.</p>
<p><strong>UTILE POUR LA SANTÉ</strong></p>
<p>Mon espace santé vous permet de partager votre dossier médical avec les professionnels de santé de votre choix, qui en ont besoin pour assurer un meilleur suivi médical et éviter les examens inutiles. Par exemple si vous êtes pris en charge par un médecin qui n’est pas votre médecin habituel, à l’occasion d’un déplacement ou en cas d’urgence, le dossier médical contenu dans Mon espace santé permet d’être soigné plus efficacement.</p>
<p><strong>CONFIDENTIEL</strong></p>
<p>Mon espace santé préserve le secret médical :</p>
<ul>
	<li>seuls les professionnels de santé que vous avez autorisés peuvent le consulter ;</li>
	<li>vous pouvez savoir qui a consulté ou ajouté un document dans votre dossier médical ;</li>
	<li>vous pouvez également ajouter, supprimer ou masquer un document à tout moment ;</li>
	<li>les professionnels de santé peuvent vous envoyer des messages hautement sécurisés.</li>
</ul>
<p><strong>MESSAGERIE DE SANTE</strong></p>
<p>Dans Mon espace santé, vous avez une messagerie de santé sécurisée qui permet à vos professionnels de santé de vous contacter et vous envoyer des informations dans le respect du secret médical. Cette messagerie permet aussi d’échanger des documents administratifs avec des établissements de santé pour préparer votre entrée ou votre sortie d’hospitalisation</p>
<p><strong>DOSSIER MEDICAL</strong></p>
<p>Dans Mon espace santé, vous pouvez ranger toutes les informations dont les professionnels de santé qui vous suivent auront besoin (traitement, résultats d’examen, radios, ordonnances, vaccination…). Vous pouvez compléter vous-même votre profil médical (allergies, maladies, traitements, mesures…) et ajouter des documents utiles à votre prise en charge. Dans Mon espace santé vous retrouvez aussi les documents transmis par vos professionnels de santé ou l’Assurance Maladie (résultats de tests COVID, attestations vaccinale COVID, radios, etc.)</p>
<p>Vous décidez quel professionnel de santé aura accès à vos informations ou pourra y enregistrer des documents utiles pour votre suivi médical.</p>
<p>En cas d’urgence, si vous avez donné votre accord, Mon espace santé permet à un professionnel de santé de consulter votre dossier médical.</p>
<p><strong>AGENDA DE SANTE (disponible courant 2022)</strong></p>
<p>Dans Mon espace santé, vous aurez un endroit personnel et sécurisé pour regrouper tous vos rendez-vous liés à votre santé. Cet agenda permettra de suivre l’historique de vos rendez-vous pour mieux organiser et ne pas oublier de planifier les prochains. Il permettra également d’être alerté pour vos rappels de dépistage ou de vaccination. A terme, l’agenda pourra être synchronisé avec les plateformes de prise de rendez-vous médicaux référencées au catalogue de Mon espace santé.</p>
<p><strong>CATALOGUE DE SERVICES ET D’APPLICATIONS (disponible courant 2022)</strong></p>
<p>Avec Mon espace santé, vous disposerez d’un catalogue de services et d’applications référencés par les pouvoirs publics. Par exemple vous pourrez suivre et préserver votre santé en synchronisant Mon espace santé avec des objets connectés à même d’enrichir en données votre dossier médical si vous avez donné votre accord pour cela.</p>''';

  @override
  Future<RequestResult<List<Article>>> getArticlesDePrevention(String sex, String age) async {
    return RequestResultSuccess(const [
      Article(
        id: '6147a5a4-7a38-4784-8eaa-1e28f7f49341',
        title: 'A tout âge et en hiver, on se protège du froid',
        resume:
            'Comment se protéger du froid pour éviter gelures, hypothermie, infections et aggravation d\'une maladie chronique ?',
        hasDetailArticle: false,
        image: 'pictoflocon.svg',
        backgroundColor: ArticleBackgroundColor.BLEU,
        link: '/medical/profil/vaccination',
        linkText: 'Bien se protéger du froid',
      ),
      Article(
        id: '6147a5a4-7a38-4784-8eaa-1e28f7f49341',
        title: 'Faire barrage aux virus de l\'hiver',
        resume:
            'Les gestes barrières adoptés au quotidien permettent de diminuer la transmission des virus des infections hivernales.',
        hasDetailArticle: true,
        image: 'pictovirus.svg',
        backgroundColor: ArticleBackgroundColor.VERT,
        link: null,
        linkText: null,
      ),
      Article(
        id: '6147a5a4-7a38-4784-8eaa-1e28f7f49341',
        title: 'L\'alcool peut vous gâcher la fête',
        resume:
            'Boire trop peut changer une soirée en cauchemar : violence, rapports sexuels non consentis, accidents de la route...',
        hasDetailArticle: false,
        image: 'pictoverre.svg',
        backgroundColor: ArticleBackgroundColor.JAUNE,
        link: 'https://www.alcool-info-service.fr/',
        linkText: 'Alcool-Info-Service',
      ),
    ]);
  }

  @override
  Future<RequestResult<Map<String, ExamenRecommandeDetail>>> getExamenRecommandeDetails() async {
    return RequestResultSuccess(const {});
  }
}
