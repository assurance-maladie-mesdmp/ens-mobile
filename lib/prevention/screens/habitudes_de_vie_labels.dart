/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

enum PreventionHabitudesDeVieLabels {
  POUR_MOI('Suivez vos habitudes de vie pour prendre soin de vous et de votre santé'),
  POUR_UN_TIERS('Suivez ses habitudes de vie pour prendre soin de sa santé');

  final String label;

  const PreventionHabitudesDeVieLabels(this.label);
}

enum PreventionPersonnaliseHabitudesDeVieLabels {
  POUR_MOI(
    'En suivant mes habitudes de vie, je peux bénéficier de conseils personnalisés pour préserver ma santé.',
  ),
  POUR_UN_TIERS(
    'En suivant ses habitudes de vie, je peux bénéficier de conseils personnalisés pour préserver sa santé.',
  );

  final String label;

  const PreventionPersonnaliseHabitudesDeVieLabels(this.label);
}

enum PreventionPersonnaliseHabitudesDeVieCategorieLabels {
  ALIMENTATION(
    title: 'Je fais le point sur mes habitudes alimentaires',
    description:
        'En répondant aux questions suivantes, je peux bénéficier de conseils pour une alimentation plus saine.',
  ),
  ACTIVITE_PHYSIQUE(
    title: 'Je fais le point le point sur mes activités physique',
    description: 'En répondant aux questions suivantes, je peux bénéficier de conseils pour m’aider à rester en forme.',
  ),
  TABAC(
    title: 'Je fais le point sur ma consommation de tabac',
    description: 'En répondant aux questions suivantes, je peux bénéficier de conseils en lien avec ma consommation.',
  );

  final String title;
  final String description;

  const PreventionPersonnaliseHabitudesDeVieCategorieLabels({required this.title, required this.description});
}
