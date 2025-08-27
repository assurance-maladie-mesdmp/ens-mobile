/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/enrolement/domain/generated_carte_vitale.dart';
import 'package:fr_cnamts_ens/enrolement/redux/enrolement_redux.dart';
import 'package:fr_cnamts_ens/enrolement/screens/activation_screen.dart';
import 'package:fr_cnamts_ens/enrolement/screens/cas_jumeaux_screen.dart';
import 'package:fr_cnamts_ens/enrolement/screens/choix_carte_vitale_screen.dart';
import 'package:fr_cnamts_ens/enrolement/screens/code_provisoire_screen.dart';
import 'package:fr_cnamts_ens/enrolement/screens/coordonees_screen.dart';
import 'package:fr_cnamts_ens/enrolement/screens/enrolement_welcome_screen.dart';
import 'package:fr_cnamts_ens/enrolement/screens/identifiants_form_screen.dart';
import 'package:fr_cnamts_ens/enrolement/screens/identite_form_screen.dart';
import 'package:fr_cnamts_ens/enrolement/screens/profil_active_confirmation_screen.dart';
import 'package:fr_cnamts_ens/enrolement/screens/representant_legal_screen.dart';
import 'package:fr_cnamts_ens/enrolement/screens/update_coordonnees_screen.dart';
import 'package:fr_cnamts_ens/enrolement/screens/viewmodels/identite_form_screen_view_model.dart';
import 'package:fr_cnamts_ens/enrolement/screens/widgets/stepper_enrolement.dart';
import 'package:fr_cnamts_ens/infra/injection/ens_module_container.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_initial_state.dart';
import 'package:fr_cnamts_ens/privacy/redux/privacy_actions.dart';
import 'package:fr_cnamts_ens/tags/tags_enrolement.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/widgets/action_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/bottom_sheets/generation_nir_bottom_sheet.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_pop_scope.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:fr_cnamts_ens/utils/feature_flags_helper.dart';
import 'package:fr_cnamts_ens/utils/navigation_utils.dart';

class EnrolementGlobalScreen extends StatefulWidget {
  static const routeName = '/enrolement';

  const EnrolementGlobalScreen({super.key});

  @override
  State<EnrolementGlobalScreen> createState() => EnrolementGlobalScreenState();
}

class EnrolementGlobalScreenState extends State<EnrolementGlobalScreen> {
  int stepperEnrolementMaxValue = isFranceConnectPlusEnabled ? 9 : 10;
  List<String> navigationRoutes = [];
  String? _routeWithoutBack;
  GeneratedCarteVitale? generatedFormValues;

  @override
  void initState() {
    super.initState();
    final routeName = isFranceConnectPlusEnabled ? ChoixCarteVitaleScreen.routeName : EnrolementWelcomeScreen.routeName;
    navigationRoutes = [routeName];
  }

  @override
  Widget build(BuildContext context) {
    return StoreConnector<EnsInitialState, IdentiteFormScreenViewModel>(
      converter: (store) => IdentiteFormScreenViewModel(store, EnsModuleContainer.currentInjector.getAppConfig()),
      distinct: true,
      builder: (context, vm) {
        final shouldDisplaySecondaryIcon =
            navigationRoutes.last != ChoixCarteVitaleScreen.routeName && vm.shouldShowNirGenerationIcon!;
        return EnsPopScope.shouldNotPop(
          onPopInvoked: (navigator) => _onPreviousCall(navigator),
          child: Scaffold(
            appBar: EnsAppBarSubLevel(
              title: '',
              automaticallyImplyLeading: navigationRoutes.last != _routeWithoutBack,
              action: ActionButton(
                icon: const EnsSvg(EnsImages.ic_cookie),
                secondaryIcon: const EnsSvg(EnsImages.ic_id_card_filled, color: EnsColors.title),
                shouldDisplaySecondaryIcon: shouldDisplaySecondaryIcon,
                tooltip: 'Gérer ses données de navigation',
                onTap: () {
                  context.tagInitialAction(TagsEnrolement.tag_2402_enrolement_cookies);
                  StoreProvider.of<EnsInitialState>(context).dispatch(PrivacyOpenParametersAction());
                },
                onSecondaryTap: () {
                  _showInfoBottomSheet(context);
                },
              ),
            ),
            body: SafeArea(
              child: LayoutBuilder(
                builder: (_, constraints) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      StepperEnrolement(
                        width: constraints.maxWidth,
                        maxValue: stepperEnrolementMaxValue,
                        value: navigationRoutes.length,
                      ),
                      Expanded(
                        child: ScrollviewWithScrollbar(
                          child: ConstrainedBox(
                            constraints: BoxConstraints(
                              minHeight: constraints.maxHeight,
                            ),
                            child: IntrinsicHeight(
                              child: _Content(
                                onNextCall: onNextCall,
                                onCall: onCall,
                                routeCibleName: navigationRoutes.last,
                                changeStepperMaxValue: changeStepperMaxValue,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        );
      },
    );
  }

  Future<void> _showInfoBottomSheet(BuildContext context) async {
    generatedFormValues = await showModalBottomSheet<GeneratedCarteVitale>(
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) => const GenerationNirBottomSheet(),
    );
  }

  Future<void> _onPreviousCall(NavigatorState navigator) async {
    if (navigationRoutes.length <= 1) {
      _quitEnrolement(navigator);
    } else if (navigationRoutes.last == _routeWithoutBack) {
      final shouldPop = await NavigationUtils.onWillPop(
        context,
        'Quitter la page ?',
        'En quittant cette page, l\'activation de votre profil sera perdu.',
        'Quitter',
      );
      if (shouldPop) _quitEnrolement(navigator);
    } else {
      setState(() => navigationRoutes.removeLast());
    }
  }

  void _quitEnrolement(NavigatorState navigator) {
    StoreProvider.of<EnsInitialState>(context).dispatch(ResetEnrolementAction());
    navigator.pop();
  }

  void onCall(String routeName) {
    setState(() {
      while (navigationRoutes.last != routeName) {
        navigationRoutes.removeLast();
      }
    });
  }

  void onNextCall(String routeName) {
    setState(() {
      navigationRoutes.add(routeName);
      _routeWithoutBack = _getRouteWithoutBack(navigationRoutes);
    });
  }

  void changeStepperMaxValue(int newStepperMaxValue) {
    setState(() => stepperEnrolementMaxValue = newStepperMaxValue);
  }
}

class _Content extends StatelessWidget {
  final String routeCibleName;
  final void Function(String) onNextCall;
  final void Function(String) onCall;
  final void Function(int) changeStepperMaxValue;

  const _Content({
    required this.routeCibleName,
    required this.onNextCall,
    required this.onCall,
    required this.changeStepperMaxValue,
  });

  @override
  Widget build(BuildContext context) {
    switch (routeCibleName) {
      case EnrolementWelcomeScreen.routeName:
        return EnrolementWelcomeScreen(onNextCall);
      case ChoixCarteVitaleScreen.routeName:
        return ChoixCarteVitaleScreen(onNextCall);
      case IdentiteFormScreen.routeName:
        return IdentiteFormScreen(onNextCall, changeStepperMaxValue);
      case CasJumeauxScreen.routeName:
        return CasJumeauxScreen(onNextCall);
      case CoordonneesScreen.routeName:
        return CoordonneesScreen(onNextCall);
      case CodeProvisoireFormScreen.routeName:
        return CodeProvisoireFormScreen(
          onNextCall: onNextCall,
          onCall: onCall,
          changeStepperMaxValue: changeStepperMaxValue,
        );
      case RepresentantLegalScreen.routeName:
        return RepresentantLegalScreen(onNextCall);
      case ActivationScreen.routeName:
        return ActivationScreen(onNextCall);
      case UpdateCoordonneesScreen.routeName:
        return UpdateCoordonneesScreen(onNextCall);
      case IdentifiantsFormScreen.routeName:
        return const IdentifiantsFormScreen();
      case ProfilActiveConfirmationScreen.routeName:
        return const ProfilActiveConfirmationScreen();
      default:
        return Container();
    }
  }
}

String? _getRouteWithoutBack(List<String> routesList) {
  final codeProvisoireRouteName = routesList.firstWhereOrNull((route) => route == CodeProvisoireFormScreen.routeName);

  if (codeProvisoireRouteName != null) {
    final indexCodeProvisoireScreen = routesList.indexOf(codeProvisoireRouteName);
    if (indexCodeProvisoireScreen != -1 && routesList.length > indexCodeProvisoireScreen + 1) {
      return routesList[indexCodeProvisoireScreen + 1];
    }
  }
  return null;
}
