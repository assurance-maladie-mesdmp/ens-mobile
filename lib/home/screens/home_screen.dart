/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/bottom_navigation_tabs/bottom_navigation_tabs_screen.dart';
import 'package:fr_cnamts_ens/home/screens/viewmodels/home_background_image_view_model.dart';
import 'package:fr_cnamts_ens/home/screens/viewmodels/home_screen_view_model.dart';
import 'package:fr_cnamts_ens/home/widgets/app_update_widget.dart';
import 'package:fr_cnamts_ens/home/widgets/hello_widget.dart';
import 'package:fr_cnamts_ens/home/widgets/home_incitation_pml_buttons_widget.dart';
import 'package:fr_cnamts_ens/home/widgets/raccourcis_widget.dart';
import 'package:fr_cnamts_ens/home/widgets/vaccinations_and_traitements_and_examen_recommandes_widget.dart';
import 'package:fr_cnamts_ens/infra/injection/ens_module_container.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/messages_pannes/domain/models/ens_message_panne.dart';
import 'package:fr_cnamts_ens/prevention/screens/old_prevention_screen.dart';
import 'package:fr_cnamts_ens/prevention/screens/prevention_personnalisee_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/mon_histoire_de_sante/screens/widgets/home_latest_mon_histoire_de_sante_items_widget.dart';
import 'package:fr_cnamts_ens/tags/tags_home.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/error_page.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_carousel.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_carousel_item.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_message_panne_widget.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';
import 'package:fr_cnamts_ens/ui/widgets/skeletons.dart';
import 'package:fr_cnamts_ens/user/cgu/widget/additional_home_screens_container.dart';
import 'package:fr_cnamts_ens/utils/feature_flags_helper.dart';
import 'package:fr_cnamts_ens/utils/screen_status.dart';

class HomeScreen extends StatefulWidget {
  static const deeplinkRouteName = '/synchronisation/retour-mes';

  const HomeScreen();

  @override
  State<StatefulWidget> createState() {
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  bool onboardingIsBeingShown = false;

  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 800),
      vsync: this,
    )..forward();
    _animation = CurvedAnimation(parent: _controller, curve: Curves.linearToEaseOut);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AdditionalHomeScreensContainer(
      child: StoreConnector<EnsState, HomeScreenViewModel>(
        converter: (store) => HomeScreenViewModel.from(store),
        distinct: true,
        onInitialBuild: (vm) {
          context.tagAction(TagsHome.tag_653_home_connecte);
          vm.interruptionService();
        },
        builder: (_, vm) {
          return Scaffold(
            backgroundColor: vm.userDataFetchingStatus == ScreenStatus.ERROR ? null : EnsColors.neutral100,
            body: _HomePage(vm, _controller, _animation),
          );
        },
      ),
    );
  }
}

class _HomePage extends StatelessWidget {
  final HomeScreenViewModel vm;
  final AnimationController controller;
  final Animation<double> animation;

  const _HomePage(this.vm, this.controller, this.animation);

  @override
  Widget build(BuildContext context) {
    if (vm.userDataFetchingStatus == ScreenStatus.ERROR) {
      return _ErrorScreen(vm);
    }

    return Stack(
      children: [
        Material(
          color: Colors.transparent,
          child: ScrollviewWithScrollbar(
            padding: const EdgeInsets.only(bottom: 32),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (vm.messagePanne == null)
                  Container(
                    height: MediaQuery.of(context).padding.top,
                    color: EnsColors.neutral100,
                  )
                else
                  _MessagePannePlaceholder(
                    message: vm.messagePanne!,
                    sizeFactor: animation,
                  ),
                Stack(
                  children: [
                    const _HomeBackgroundImage(),
                    _HomeSuccessBody(vm: vm),
                  ],
                ),
                if (!EnsModuleContainer.currentInjector.isGuestMode())
                  const SizedBox(height: EXTRA_VERTICAL_PADDING_FOR_GUEST_MODE_CONTENT),
              ],
            ),
          ),
        ),
        if (vm.messagePanne != null)
          Column(
            children: [
              Container(
                height: MediaQuery.of(context).padding.top,
                color: EnsColors.neutral100,
              ),
              SizeTransition(
                sizeFactor: animation,
                axis: Axis.vertical,
                child: EnsMessagePanneWidget(
                  message: vm.messagePanne!,
                  onCloseCallback: () async {
                    controller.reverse();
                    await Future.delayed(const Duration(seconds: 1));
                    vm.closeMessagePanne();
                  },
                ),
              ),
            ],
          ),
        AppUpdateWidget(),
      ],
    );
  }
}

class _HomeBackgroundImage extends StatelessWidget {
  const _HomeBackgroundImage();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: StoreConnector<EnsState, HomeBackgroundImageViewModel>(
        converter: (store) => HomeBackgroundImageViewModel(store),
        distinct: true,
        builder: (_, vm) => EnsSvg(
          vm.backgroundImageName,
          width: MediaQuery.of(context).size.width,
          height: 280,
          fit: BoxFit.cover,
          alignment: Alignment.topCenter,
          placeholderBuilder: (_) => const SizedBox(width: double.infinity, height: 160),
        ),
      ),
    );
  }
}

class _MessagePannePlaceholder extends StatelessWidget {
  final EnsMessagePanne message;
  final Animation<double> sizeFactor;

  const _MessagePannePlaceholder({
    required this.message,
    required this.sizeFactor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
      child: SizeTransition(
        sizeFactor: sizeFactor,
        axis: Axis.vertical,
        child: Visibility(
          visible: false,
          maintainState: true,
          maintainAnimation: true,
          maintainSize: true,
          child: EnsMessagePanneWidget(message: message),
        ),
      ),
    );
  }
}

class _HomeSuccessBody extends StatelessWidget {
  final HomeScreenViewModel vm;

  const _HomeSuccessBody({required this.vm});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 145),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: HomeIncitationPmlButtonsWidget(),
            ),
            const SizedBox(height: 24),
            if (vm.articlesMonActuSante != null && vm.articlesMonActuSante!.isNotEmpty)
              _CarouselActu(vm: vm)
            else if (vm.monActuStatus == ScreenStatus.LOADING)
              const _HomeCarouselSkeleton(),
            HelloWidget(),
            VaccinationsAndTraitementsAndExamenRecommandesWidget(),
            const SizedBox(height: 24),
            const HomeLatestMonHistoireDeSanteItemsWidget(),
            const SizedBox(height: 24),
            RaccourcisWidget(
              profilType: vm.profilType,
            ),
          ],
        ),
      ],
    );
  }
}

class _CarouselActu extends StatelessWidget {
  final HomeScreenViewModel vm;

  const _CarouselActu({required this.vm});

  static const HOME_MAX_COUNT = 4;

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
            child: Text(
              vm.actuLabel,
              textAlign: TextAlign.start,
              style: EnsTextStyle.text20_w400_normal_title,
            ),
          ),
          MediaQuery.withClampedTextScaling(
            maxScaleFactor: 2,
            child: EnsCarousel(
              height: 210,
              viewportFraction: 0.80,
              disableCenter: true,
              enableInfiniteScroll: false,
              padEnds: false,
              items: [
                ...vm.articlesMonActuSante!.take(HOME_MAX_COUNT).map(
                      (displayModel) => EnsCarouselItemHomeActu(
                        id: displayModel.id,
                        image: displayModel.image,
                        backgroundColor: displayModel.backgroundColor.verticalImage,
                        content: displayModel.title,
                        hasDetailArticle: displayModel.hasDetailArticle,
                        link: displayModel.link,
                        linkName: displayModel.linkText,
                        imageFromCms: displayModel.imageFromCms,
                        tagOnTap: () {
                          if (displayModel.questionnaireTag != null) {
                            context.tagAction(displayModel.questionnaireTag!);
                          } else if (displayModel.link == null) {
                            context.tagAction(
                              TagsHome.tag_443_button_lire_larticle,
                            );
                          } else if (displayModel.link!.contains('http')) {
                            context.tagAction(
                              TagsHome.tag_861_button_redirection_externe_actu_sante,
                            );
                          } else {
                            context.tagAction(
                              TagsHome.tag_860_button_redirection_interne_actu_sante,
                            );
                          }
                        },
                        shouldShowDetails: displayModel.shouldShowDetails,
                        shouldShowVisiteMedicaleBottomSheet: displayModel.showVisiteMedicaleBottomSheet,
                        questionnaireCode: displayModel.questionnaireCode,
                      ),
                    ),
                EnsCarouselHomeEndItem(
                  label: isPreventionPersonnaliseeEnabled
                      ? 'Accéder à plus de prévention'
                      : 'Voir plus d\'articles de prévention',
                  onTapAction: () {
                    context.tagAction(TagsHome.tag_2348_button_voir_plus_articles);
                    if (isPreventionPersonnaliseeEnabled) {
                      Navigator.pushNamed(context, PreventionPersonnaliseeScreen.routeName);
                    } else {
                      Navigator.pushNamed(context, OldPreventionScreen.routeName);
                    }
                  },
                ),
              ],
              tapOnPrevious: () {
                context.tagAction(TagsHome.tag_648_button_article_precedent);
              },
              tapOnNext: () {
                context.tagAction(TagsHome.tag_649_button_article_suivant);
              },
            ),
          ),
        ],
      );
}

class _HomeCarouselSkeleton extends StatelessWidget {
  const _HomeCarouselSkeleton();

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
                    height: 168,
                    decoration: BoxDecoration(
                      color: EnsColors.light,
                      border: Border.all(color: EnsColors.light),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SkeletonBox(width: 172, height: 20, radius: 24),
                        SizedBox(height: 12),
                        SkeletonBox(width: 228, height: 20),
                        SizedBox(height: 28),
                        SkeletonBox(width: 256, height: 12),
                        SizedBox(height: 12),
                        SkeletonBox(width: 200, height: 12),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Container(
                  height: 168,
                  width: 24,
                  decoration: BoxDecoration(
                    color: EnsColors.light,
                    border: Border.all(color: EnsColors.neutral200),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(radius: 16, backgroundColor: EnsColors.light),
                SizedBox(width: 76),
                CircleAvatar(radius: 16, backgroundColor: EnsColors.light),
              ],
            ),
          ],
        ),
      );
}

class _ErrorScreen extends StatelessWidget {
  final HomeScreenViewModel vm;

  const _ErrorScreen(this.vm);

  @override
  Widget build(BuildContext context) {
    return ErrorPage(
      reloadFunction: () {
        vm.refreshData();
      },
    );
  }
}
