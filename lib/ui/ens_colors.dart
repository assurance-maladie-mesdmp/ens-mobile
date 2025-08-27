/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';

class EnsColors {
  // Couleurs principales
  static const primary = Color(0xFF0C419A);
  static const secondary = Color(0xFFD81E7E);
  static const tertiary = Color(0xFFA05BB6);

  // Couleurs des textes
  static const title = Color(0xFF262939);
  static const body = Color(0xFF495574);
  static const light = Colors.white;

  // Couleurs neutres
  static const neutral100 = Color(0xFFF9FAFF);
  static const neutral200 = Color(0xFFE7ECFA);
  static const neutral300 = Color(0xFFBDCCF8);
  static const neutral400 = Color(0xFFA0B2EC);

  static const neutralNew = Color(0xFFD9E1F7);

  // Couleurs des Inks
  static final inkHighlight = focus.withAlpha(10);
  static final inkSplash = focus.withAlpha(15);
  static const primaryHighlight = Color(0xFF0B3781);
  static const errorHighlight = Color(0xFF8B2E37);

  // Couleurs fonctionnelles
  static const success = Color(0xFF1E7B6F);
  static const success100 = Color(0xFFEAF3F2);

  static const error = Color(0xFFC7414F);
  static const error100 = Color(0xFFF9EDEF);

  static const info = Color(0xFF0C419A);
  static const info100 = Color(0xFFE7ECF5);

  static const disabled = Color(0xFF6D6F73);
  static const disabled100 = Color(0xFFECEEF0);
  static const disabled500 = Color(0xFFC1C4C9);

  static const focus = Color(0xFF0C75F6);

  static const background = Color(0xFF262939);

  // Illustrative
  static const illustrative01 = Color(0xFFBBF4ED);
  static const illustrative02 = Color(0xFFD9E7FF);
  static const illustrative03 = Color(0xFFCCE5EF);
  static const illustrative04 = Color(0xFFE9ECF8);
  static const illustrative05 = Color(0xFFF2DCF9);
  static const illustrative06 = Color(0xFFF8D8E8);
  static const illustrative07 = Color(0xFFFAE0E2);
  static const illustrative08 = Color(0xFFFDF0D3);
  static const illustrative10 = Color(0xFFF0B323);
  static const illustrative11 = Color(0xFF07C3F0);
  static const illustrative12 = Color(0xFF007FAD);
  static const illustrative13 = Color(0xFF5E74B8);

  static const illustration_login_background = Color(0xFFDCE3F8);

  static const gradient01 = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.centerRight,
    colors: [EnsColors.primary, Color(0xFF1058D1)],
  );

  static Map<String, Color> getAllColors = {
    'primary': const Color(0xFF0C419A),
    'secondary': const Color(0xFFD81E7E),
    'tertiary': const Color(0xFFA05BB6),
    'title': const Color(0xFF262939),
    'body': const Color(0xFF495574),
    'light': Colors.white,
    'neutral100': const Color(0xFFF9FAFF),
    'neutral200': const Color(0xFFE7ECFA),
    'neutral300': const Color(0xFFBDCCF8),
    'neutral400': const Color(0xFFA0B2EC),
    'inkHighlight': focus.withAlpha(10),
    'inkSplash': focus.withAlpha(15),
    'success': const Color(0xFF1E7B6F),
    'success100': const Color(0xFFEAF3F2),
    'error': const Color(0xFFC7414F),
    'error100': const Color(0xFFF9EDEF),
    'info': const Color(0xFF0C419A),
    'info100': const Color(0xFFE7ECF5),
    'disabled': const Color(0xFF6D6F73),
    'disabled100': const Color(0xFFECEEF0),
    'disabled500': const Color(0xFFC1C4C9),
    'focus': const Color(0xFF0C75F6),
    'illustrative01': const Color(0xFFBBF4ED),
    'illustrative02': const Color(0xFFD9E7FF),
    'illustration_login_background': const Color(0xFFDCE3F8),
    'illustrative03': const Color(0xFFCCE5EF),
    'illustrative04': const Color(0xFFE9EDF8),
    'illustrative05': const Color(0xFFF2DCF9),
    'illustrative06': const Color(0xFFF8D8E8),
    'illustrative07': const Color(0xFFFAE0E2),
    'illustrative08': const Color(0xFFFDF0D3),
    'illustrative09': const Color(0xFFE0ECEF),
    'illustrative10': const Color(0xFFF0B323),
    'illustrative11': const Color(0xFF07C3F0),
    'illustrative12': const Color(0xFF007FAD),
    'illustrative13': const Color(0xFF5E74B8),
    'background': const Color(0xFF262939),
  };
}
