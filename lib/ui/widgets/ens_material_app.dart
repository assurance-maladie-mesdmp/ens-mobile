/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:accessibility_tools/accessibility_tools.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:fr_cnamts_ens/infra/ens_navigation_observer.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/utils/opacity_utils.dart';
import 'package:fr_cnamts_ens/utils/plugin_utils.dart';

class EnsMaterialApp extends StatelessWidget {
  final String? initialRoute;
  final RouteFactory? onGenerateRoute;
  final RouteFactory? onUnknownRoute;
  final TransitionBuilder? builder;
  final GlobalKey<NavigatorState>? navigatorKey;
  final bool showSemanticsDebugger;
  final Widget? home;

  const EnsMaterialApp({
    super.key,
    this.initialRoute,
    this.onGenerateRoute,
    this.onUnknownRoute,
    this.builder,
    this.navigatorKey,
    this.showSemanticsDebugger = false,
    this.home,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      showSemanticsDebugger: showSemanticsDebugger,
      navigatorKey: navigatorKey,
      title: 'Mon Espace Santé',
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      locale: const Locale('fr', ''),
      supportedLocales: const [Locale('fr', '')],
      theme: ThemeData(
        hoverColor: EnsColors.neutral200,
        focusColor: EnsColors.neutral200,
        highlightColor: EnsColors.neutral200,
        splashColor: EnsColors.neutral200,
        colorSchemeSeed: EnsColors.primary,
        scaffoldBackgroundColor: EnsColors.neutral100,
        dialogBackgroundColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        snackBarTheme: const SnackBarThemeData(contentTextStyle: TextStyle(fontFamily: 'OpenSans')),
        fontFamily: 'OpenSans',
        bottomSheetTheme:
            BottomSheetThemeData(modalBackgroundColor: EnsColors.light.withAlpha(OpacityUtils.getAlpha(0))),
      ),
      navigatorObservers: [
        EnsNavigationObserver(),
      ],
      initialRoute: initialRoute,
      onGenerateRoute: onGenerateRoute,
      onUnknownRoute: onUnknownRoute,
      home: home,
      builder:
          PluginUtils.isAccessibilityToolsActivated() ? (context, child) => AccessibilityTools(child: child) : builder,
    );
  }
}
