/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/domain/ens_analytics.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/domain/models/ens_mesure_type.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/screens/viewmodels/mesure_information_screen_view_model.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_bullet_point.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_expandable_plus_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';

class MesureInformationScreen extends StatefulWidget {
  static const routeName = '/mesure-information';

  const MesureInformationScreen();

  @override
  State<MesureInformationScreen> createState() => _MesureInformationScreenState();
}

class _MesureInformationScreenState extends State<MesureInformationScreen> {
  final _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final mesureType = ModalRoute.of(context)!.settings.arguments! as EnsMesureType;

    return StoreConnector<EnsState, MesureInformationScreenViewModel>(
      converter: (store) => MesureInformationScreenViewModel.from(store, mesureType),
      distinct: true,
      onInitialBuild: (vm) => _tagPage(context, mesureType),
      builder: (_, vm) => Scaffold(
        appBar: EnsAppBarSubLevel(title: vm.appBarLabel),
        body: ScrollviewWithScrollbar(
          padding: const EdgeInsets.all(24),
          controller: _scrollController,
          child: vm.isAdult
              ? _ScreenBodyForAdult(mesureType: mesureType, scrollController: _scrollController)
              : _ScreenBodyForChild(mesureType: mesureType, scrollController: _scrollController),
        ),
      ),
    );
  }

  void _tagPage(BuildContext context, EnsMesureType mesureType) {
    final String tagName = 'mesures_historique_${_getMesureLabelForTagName(mesureType)}_ensavoirplus';

    context.tagAction(
      EnsTag(
        category: EnsAnalyticsCategory.PAGE,
        name: tagName,
        level1: 'profil_medical',
        level2: 'mesures',
        level3: mesureType.tagHistoriqueLevel3,
      ),
    );
  }

  String _getMesureLabelForTagName(EnsMesureType mesureType) {
    switch (mesureType) {
      case EnsMesureType.POIDS:
        return 'poids';
      case EnsMesureType.TAILLE:
        return 'taille';
      case EnsMesureType.IMC:
        return 'IMC';
      case EnsMesureType.PERIMETRE_CRANIEN:
        return 'perimetre_cranien';
      default:
        return '';
    }
  }
}

class _ScreenBodyForAdult extends StatelessWidget {
  final EnsMesureType mesureType;
  final ScrollController scrollController;

  const _ScreenBodyForAdult({required this.mesureType, required this.scrollController});

  @override
  Widget build(BuildContext context) {
    return mesureType == EnsMesureType.IMC
        ? _InformationIMC(scrollController)
        : Text(_titleMesure(mesureType), style: EnsTextStyle.text16_w400_normal_body);
  }

  String _titleMesure(EnsMesureType type) {
    switch (type) {
      case EnsMesureType.TOUR_DE_TAILLE:
        return "Le tour de taille est un indicateur de la quantité de graisse accumulée au niveau de l'abdomen. Un tour de taille trop élevé peut être associé au développement de complications (comme le diabète, l'augmentation du taux de cholestérol dans le sang, l'augmentation du risque cardiovasculaire...). Parlez-en à votre médecin traitant.";
      case EnsMesureType.FREQUENCE_CARDIAQUE:
        return "Le cœur apporte aux organes du sang riche en oxygène et en substances nutritives. À l'effort, le cœur s'adapte en augmentant sa fréquence de contraction et le débit d'éjection du sang.\n\nLa fréquence des battements cardiaques peut être légèrement plus lente ou plus rapide, selon chaque individu, en fonction de l'âge, du niveau d'activité physique, ou de l'heure de la journée.";
      case EnsMesureType.TENSION_ARTERIELLE:
        return "La pression ou tension artérielle s’exprime par deux valeurs :\n\nl'une, dite systolique correspond à la pression dans les artères au moment où le cœur se contracte et éjecte le sang dans le réseau artériel ;\nl'autre, dite diastolique correspond à la pression dans les artères au moment où le cœur se relâche et se remplit, entre deux contractions.";
      case EnsMesureType.NOMBRE_DE_PAS:
        return 'Marcher est une activité physique bénéfique pour la santé. Il est recommandé, pour un adulte, de faire 10 000 pas par jour pour le bien-être et la prévention de nombreuses maladies. Le plus important est d’augmenter progressivement son nombre de pas.';
      case EnsMesureType.NIVEAU_DE_DOULEUR:
        return 'La douleur a pour particularité de ne pas pouvoir être mesurée objectivement.\n\nPour évaluer son intensité, une échelle numérique peut être utilisée : graduée de 0 pour une absence de douleur, à 10 pour la douleur maximale ressentie.';
      case EnsMesureType.TEMPERATURE:
        return "On peut mesurer la température du corps par le rectum, la bouche ou l’oreille, sous l’aisselle, sur la tempe et éventuellement le front. La température mesurée est à interpréter selon la méthode de prise de température. La mesure par voie rectale est la plus fiable.\n\nLa prise de la température corporelle permet de déceler l’apparition de fièvre (température supérieure à 38° C) qui est une réaction de l'organisme pour l'aider à lutter contre une infection.";
      case EnsMesureType.GLYCEMIE:
        return "La glycémie est l’évaluation de la concentration de glucose (principale source d’énergie de l’organisme) dans le sang.\n\nElle peut révéler :\n\u2022  un taux de glucose trop faible par rapport à la valeur de référence (hypoglycémie),\n\u2022  un taux de glucose trop élevé (hyperglycémie, caractéristique du diabète). Le diagnostic de diabète est posé lorsque la glycémie à jeun est égale ou supérieure à 126 mg/dl et constatée à 2 reprises.\nEn l'absence de diabète, la glycémie varie légèrement au cours de la journée.";
      case EnsMesureType.HEMOGLOBINE_GLYQUEE:
        return 'L’hémoglobine se trouve dans les globules rouges du sang. La part de l’hémoglobine qui capte le sucre est appelée hémoglobine glyquée (HbA1c). Elle est le reflet de la glycémie (taux de sucre dans le sang) sur les 3 derniers mois, ce qui correspond à la durée de vie moyenne d’un globule rouge.\n\nLa mesure de l’hémoglobine glyquée (HbA1c) par prise de sang est l’indicateur clé de l’équilibre du diabète et du risque de complications à long terme. Généralement, un diabète est considéré comme équilibré si le taux d’hémoglobine glyquée (HbA1c) est inférieur ou égal à 7%';
      case EnsMesureType.GLUCOSE_INTERSTITIEL:
        return 'Le taux de glucose interstitiel moyen désigne la concentration de glucose dans le liquide interstitiel (liquide qui occupe l’espace entre les cellules du corps). Sa mesure continue (environ toutes les 10 secondes) par un capteur placé sur la peau permet de connaître avec précision les variations glycémiques et donne une moyenne sur une période donnée. Elle améliore le suivi du diabète. Il est important de savoir qu’il y a un décalage temporel entre les valeurs de la glycémie mesurée dans le sang et celles du glucose interstitiel car le sucre consommé passe d’abord dans le sang puis dans le liquide interstitiel pour nourrir les cellules.';
      case EnsMesureType.HEMOGLOBINE_GLYQUEE_INDEX:
        return 'L’indicateur de gestion de glucose (GMI en anglais, pour Glucose Management Indicator) est calculé à partir de la mesure continue de glucose (taux de glucose interstitiel moyen) sur un intervalle de 14 jours et plus. Il procure une estimation de l’Hémoglobine glyquée (HbA1c) attendue.';
      default:
        return '';
    }
  }
}

class _ScreenBodyForChild extends StatelessWidget {
  final ScrollController scrollController;
  final EnsMesureType mesureType;

  const _ScreenBodyForChild({required this.mesureType, required this.scrollController});

  @override
  Widget build(BuildContext context) {
    switch (mesureType) {
      case EnsMesureType.POIDS:
        return _InformationWeightForChildren();
      case EnsMesureType.TAILLE:
        return _InformationHeightForChildren();
      case EnsMesureType.IMC:
        return _InformationIMCForChildren(scrollController);
      case EnsMesureType.PERIMETRE_CRANIEN:
        return _InformationHeadCircumferenceForChildren();
      default:
        return const SizedBox();
    }
  }
}

class _InformationIMC extends StatelessWidget {
  final ScrollController scrollController;

  const _InformationIMC(this.scrollController);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Le calcul de l’IMC est utilisé comme un indicateur de son poids optimal par rapport à sa taille. Pour apprécier un éventuel risque pour la santé, l\'IMC doit être associé à d\'autres paramètres (masse musculaire, graisse abdominale...). Parlez-en à votre médecin traitant.',
          style: EnsTextStyle.text16_w400_normal_body,
        ),
        const SizedBox(height: 24),
        const EnsSvg(EnsImages.imc_information, height: 160),
        const SizedBox(height: 8),
        EnsExpandablePlusButton(
          expandedLabel: 'Masquer la description du graphique',
          collapsedLabel: 'Voir la description du graphique',
          onTap: () async {
            await Future.delayed(const Duration(milliseconds: 450));
            scrollController.animateTo(
              scrollController.position.maxScrollExtent,
              duration: const Duration(milliseconds: 300),
              curve: Curves.fastOutSlowIn,
            );
          },
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Interprétation de l\'IMC :\nSi l\'IMC est :',
                style: EnsTextStyle.text14_w400_normal_body,
              ),
              EnsBulletPoint(text: 'inférieur à 16,5 kg/m², il s’agit d’une dénutrition'),
              EnsBulletPoint(
                text: 'à partir de 16,5 et inférieur à 18,5 kg/m², il s’agit d’une insuffisance pondérale',
              ),
              EnsBulletPoint(text: 'à partir de 18,5 et inférieur à 25 kg/m², le poids est normal'),
              EnsBulletPoint(text: 'à partir de 25 et inférieur à 30 kg/m², il existe un surpoids'),
              EnsBulletPoint(text: 'à partir de 30 et inférieur à 35 kg/m², il s’agit d’obésité modérée'),
              EnsBulletPoint(text: 'à partir de 35 et inférieur à 40 kg/m², il s’agit d’obésité sévère'),
              EnsBulletPoint(text: 'à partir de 40 kg/m², il s’agit d’obésité massive'),
              SizedBox(height: 20),
            ],
          ),
        ),
      ],
    );
  }
}

class _InformationIMCForChildren extends StatelessWidget {
  final ScrollController scrollController;

  const _InformationIMCForChildren(this.scrollController);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Le calcul de l’IMC est utilisé comme un indicateur de son poids optimal par rapport à sa taille. Pour apprécier un éventuel risque pour la santé, l\'IMC doit être associé à d\'autres paramètres (masse musculaire, graisse abdominale...) et son évolution avec l’âge doit être surveillée. En particulier, après 1 an, l’IMC doit diminuer au moins jusqu’à l’âge de 5 ans puis augmenter progressivement.',
          style: EnsTextStyle.text16_w400_normal_body,
        ),
        const SizedBox(height: 20),
        const Text('Quand calculer l’IMC de l’enfant ?', style: EnsTextStyle.text20_w400_normal_title),
        const SizedBox(height: 20),
        const Text(
          'Au cours de la croissance, l’IMC est calculé au moins une fois par an à partir de 2 ans',
          style: EnsTextStyle.text16_w400_normal_body,
        ),
        const SizedBox(height: 20),
        const Text('Comment interpréter les courbes de références ?', style: EnsTextStyle.text20_w400_normal_title),
        const SizedBox(height: 20),
        const Text(
          'Les courbes de référence de l’IMC ont été élaborées après 2 ans par l’International Obesity Task Force (IOTF) (Cole et la Pediatric Obesity 2012). Elles ont été construites afin de permettre une prédiction des valeurs d’IMC que l’enfant aurait à l’âge adulte, s’il se maintenait sur sa courbe. Ces courbes ont été prolongées avant deux ans par l’équipe du CRESS et leurs partenaires AFPA et CompuGroup Medical afin que ceux qui le souhaitent positionnent l’IMC des enfants avant deux ans. Toutefois, l’usage des seuils d’IMC avant deux ans n’est pas recommandé pour surveiller le surpoids.',
          style: EnsTextStyle.text16_w400_normal_body,
        ),
        const SizedBox(height: 20),
        const Text('Les courbes principales', style: EnsTextStyle.text20_w400_normal_body),
        const SizedBox(height: 20),
        const Text(
          'Les courbes tracées par défaut sur ce graphique, ou courbes principales, représentent les courbes dites IOTF-17 et IOTF-25. Si l’IMC de l’enfant se situe sur la courbe IOTF-17, et qu’il y reste jusqu’à l’âge adulte, son IMC sera de 17 kg/m2 à 18 ans. Si l’IMC de l’enfant se situe sur la courbe IOTF-25, et qu’il y reste jusqu’à l’âge adulte, son IMC vaudra 25 kg/m2 à 18 ans. Ainsi, si l’IMC de l’enfant se situe entre IOTF-17 et IOTF-25, et qu’il reste dans cet intervalle jusqu’à l’âge adulte, son IMC sera compris entre 17 et 25 km/m2 à 18 ans.',
          style: EnsTextStyle.text16_w400_normal_body,
        ),
        const SizedBox(height: 20),
        const Text('Les courbes détaillées', style: EnsTextStyle.text20_w400_normal_body),
        const SizedBox(height: 20),
        const Text(
          'Les courbes détaillées ou secondaires représentent les courbes dites IOTF16, IOTF18.5, IOTF30 et IOTF35 et s’interprètent de la même façon que les courbes principales.',
          style: EnsTextStyle.text16_w400_normal_body,
        ),
        const SizedBox(height: 20),
        const EnsSvg(EnsImages.imc_information_enfant, height: 340),
        const SizedBox(height: 8),
        Padding(
          padding: const EdgeInsets.only(bottom: 24),
          child: EnsExpandablePlusButton(
            expandedLabel: 'Masquer la description du graphique',
            collapsedLabel: 'Voir la description du graphique',
            onTap: () async {
              await Future.delayed(const Duration(milliseconds: 450));
              scrollController.animateTo(
                scrollController.position.maxScrollExtent,
                duration: const Duration(milliseconds: 300),
                curve: Curves.fastOutSlowIn,
              );
            },
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Interprétation de l\'IMC :\nSi l\'IMC est :',
                  style: EnsTextStyle.text14_w400_normal_body,
                ),
                EnsBulletPoint(text: 'inférieur à 16,5 kg/m² : Insuffisance pondérale de grade 3'),
                EnsBulletPoint(
                  text: 'à partir de 16 et inférieur à 17 kg/m² : Insuffisance pondérale de grade 2',
                ),
                EnsBulletPoint(
                  text: 'à partir de 17 et inférieur à 18.5 kg/m² : Insuffisance pondérale de grade 1',
                ),
                EnsBulletPoint(text: 'à partir de 18.5 et inférieur à 25 kg/m² : poids normal'),
                EnsBulletPoint(text: 'à partir de 25 et inférieur à 30 kg/m² : surcharge pondérale de grade 1'),
                EnsBulletPoint(text: 'à partir de 30 et inférieur à 35 kg/m² : surcharge pondérale de grade 2'),
                EnsBulletPoint(text: 'supérieur à 35 kg/m² : surcharge pondérale de grade 3'),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _InformationHeadCircumferenceForChildren extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'La mesure du périmètre crânien, ou tour de tête, permet un suivi de la croissance du cerveau. Elle est systématiquement effectuée lors des consultations de suivi de l’enfant de la naissance à 5 ans. L’interprétation des mesures doit prendre en compte les mesures antérieures et les périmètres crâniens des parents.',
          style: EnsTextStyle.text16_w400_normal_body,
        ),
        SizedBox(height: 20),
        Text('Comment interpréter les courbes de références ?', style: EnsTextStyle.text20_w400_normal_title),
        SizedBox(height: 20),
        Text('Les courbes principales', style: EnsTextStyle.text20_w400_normal_body),
        SizedBox(height: 20),
        Text(
          'Les courbes tracées par défaut sur ce graphique, dites courbes principales, représentent l’évolution avec l’âge du -2 écart-types, de la moyenne et du +2 écart-types de la distribution de la taille. Autrement dit, parmi 100 enfants du même âge, bien portants vivant en France métropolitaine, les courbes tracées par défaut sur ce graphique, dites courbes principales, représentent l’évolution avec l’âge du -2 écart-types, de la moyenne et du +2 écart-types de la distribution de la taille. Autrement dit, parmi 100 enfants du même âge, bien portants vivant en France métropolitaine,',
          style: EnsTextStyle.text16_w400_normal_body,
        ),
        SizedBox(height: 20),
        Text('Les courbes détaillées', style: EnsTextStyle.text20_w400_normal_body),
        SizedBox(height: 20),
        Text(
          'Les courbes détaillées ou secondaires représentent -3, -1, +1 et +3 écart-types dont l’interprétation est similaire à celle des courbes principales.',
          style: EnsTextStyle.text16_w400_normal_body,
        ),
        SizedBox(height: 20),
      ],
    );
  }
}

class _InformationHeightForChildren extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'L’interprétation des mesures est basée sur une analyse conjointe de la taille, du poids et de l’indice de masse corporelle. Elle tient compte des tailles des parents, des mesures antérieures et du stade pubertaire évalué par le médecin.',
          style: EnsTextStyle.text16_w400_normal_body,
        ),
        SizedBox(height: 20),
        Text('Quand mesurer l’enfant ?', style: EnsTextStyle.text20_w400_normal_title),
        SizedBox(height: 20),
        Text(
          'L’enfant sera mesuré(e) déshabillé(e), debout à partir d’une taille de 90 à 100 cm, plusieurs fois par an dans les premiers mois et jusqu’à 3 ans. Il(elle) sera ensuite mesuré(e) au moins une fois par an. Le suivi pubertaire sera assuré par un médecin par une inspection des organes génitaux externes.',
          style: EnsTextStyle.text16_w400_normal_body,
        ),
        SizedBox(height: 20),
        Text('Comment interpréter les courbes de références ?', style: EnsTextStyle.text20_w400_normal_title),
        SizedBox(height: 20),
        Text('Les courbes principales', style: EnsTextStyle.text20_w400_normal_body),
        SizedBox(height: 20),
        Text(
          'Les courbes tracées par défaut sur ce graphique, dites courbes principales, représentent l’évolution avec l’âge du -2 écart-types, de la moyenne et du +2 écart-types de la distribution de la taille. Autrement dit, parmi 100 enfants du même âge, bien portants vivant en France métropolitaine, Les courbes tracées par défaut sur ce graphique, dites courbes principales, représentent l’évolution avec l’âge du -2 écart-types, de la moyenne et du +2 écart-types de la distribution de la taille. Autrement dit, parmi 100 enfants du même âge, bien portants vivant en France métropolitaine,',
          style: EnsTextStyle.text16_w400_normal_body,
        ),
        SizedBox(height: 20),
        Text('Les courbes détaillées', style: EnsTextStyle.text20_w400_normal_body),
        SizedBox(height: 20),
        Text(
          'Les courbes détaillées ou secondaires représentent -3, -1, +1 et +3 écart-types dont l’interprétation est similaire à celle des courbes principales.',
          style: EnsTextStyle.text16_w400_normal_body,
        ),
        SizedBox(height: 20),
      ],
    );
  }
}

class _InformationWeightForChildren extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'L’interprétation des mesures est basée sur une analyse conjointe de la taille, du poids et de l’indice de masse corporelle. Elle tient compte des tailles des parents, des mesures antérieures et du stade pubertaire évalué par le médecin.',
          style: EnsTextStyle.text16_w400_normal_body,
        ),
        SizedBox(height: 20),
        Text('Comment peser votre enfant ?', style: EnsTextStyle.text20_w400_normal_title),
        SizedBox(height: 20),
        Text(
          'L’enfant sera pesé sans couche plusieurs fois par an jusqu’à environ 3 ans, puis il sera pesé déshabillé ou en vêtement léger au moins une fois par an. Le suivi pubertaire sera assuré par un médecin par une inspection des organes génitaux externes.',
          style: EnsTextStyle.text16_w400_normal_body,
        ),
        SizedBox(height: 20),
        Text('Comment interpréter les courbes de références ?', style: EnsTextStyle.text20_w400_normal_title),
        SizedBox(height: 20),
        Text('Les courbes principales', style: EnsTextStyle.text20_w400_normal_body),
        SizedBox(height: 20),
        Text(
          'Les courbes tracées par défaut sur le graphique, dites courbes principales, représentent le 3e percentile, le 50e percentile ou la médiane, et le 97e percentile. Autrement dit, parmi 100 enfants du même âge bien portants vivant en France métropolitaine, 3 enfants ont une mesure de poids située au-dessous de la courbe du 3e percentile et 97 enfants ont un poids situé au-dessous de la courbe du 97e percentile. Parmi 100 enfants du même âge bien portants vivants en France métropolitaine, 50 ont un poids supérieur et 50 ont un poids inférieur à la courbe du 50e percentile ou médiane',
          style: EnsTextStyle.text16_w400_normal_body,
        ),
        SizedBox(height: 20),
        Text('Les courbes détaillées', style: EnsTextStyle.text20_w400_normal_body),
        SizedBox(height: 20),
        Text(
          'Les courbes détaillées ou secondaires représentent les 1er, 10e, 25e, 75e, 90e et 99e percentiles dont l’interprétation est similaire à celle des courbes principales.',
          style: EnsTextStyle.text16_w400_normal_body,
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
