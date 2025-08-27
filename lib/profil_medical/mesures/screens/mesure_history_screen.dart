/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/infra/redux/ens_state.dart';
import 'package:fr_cnamts_ens/profil_medical/courbes_reference/redux/courbes_reference_actions.dart';
import 'package:fr_cnamts_ens/profil_medical/courbes_reference/redux/courbes_reference_states.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/domain/models/ens_mesure_type.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/screens/mesure_information_screen.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/screens/viewmodels/last_mesures_screen_view_model.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/screens/viewmodels/mesure_history_view_model.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/screens/widgets/empty_mesure.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/screens/widgets/ens_mesure_chart.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/screens/widgets/ens_mesure_form_bottom_sheet.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/screens/widgets/last_mesure_header.dart';
import 'package:fr_cnamts_ens/profil_medical/mesures/screens/widgets/mesure_history_widget.dart';
import 'package:fr_cnamts_ens/tags/pml/tags_mesures.dart';
import 'package:fr_cnamts_ens/traces/domain/ens_send_trace.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/error_page.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_app_bar_sub_level.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_floating_action_add_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';
import 'package:fr_cnamts_ens/ui/widgets/skeletons.dart';
import 'package:fr_cnamts_ens/ui_generated/ens_images.dart';
import 'package:fr_cnamts_ens/utils/screen_status.dart';
import 'package:fr_cnamts_ens/utils/text_scale_utils.dart';

class MesureHistoryScreen extends StatelessWidget {
  static const routeName = '/mesures/history';

  @override
  Widget build(BuildContext context) {
    final mesureType = ModalRoute.of(context)!.settings.arguments! as EnsMesureType;

    return StoreConnector<EnsState, MesureHistoryViewModel>(
      converter: (store) => MesureHistoryViewModel.from(store, mesureType: mesureType),
      distinct: true,
      onInitialBuild: (vm) {
        vm.loadData();
        if (mesureType.availablePeriodsInCarnetdeSante.isNotEmpty) {
          vm.loadCourbes();
        }
        final tag = TagMesures.getTagMesureDetails(vm.mesureType);
        if (tag != null) {
          context.tagAction(tag);
        }
        vm.traceAction(EnsSendTrace(EnsTraceType.CONSULT_MESURE, params: {'nomMesure': vm.mesureType.label}));
      },
      onWillChange: (oldVm, vm) {
        if (oldVm?.lastMesuresStatus.isNotSuccess() == true && vm.lastMesuresStatus.isSuccess()) {
          vm.loadHistory();
        }
      },
      onDispose: (store) {
        if (store.state.courbesReferenceState.typeOfCurvesToDisplay.contains(TypeOfCurve.SECONDAIRE)) {
          store.dispatch(const RemoveTypeOfCurveToDisplayAction(TypeOfCurve.SECONDAIRE));
        }
        if (!store.state.courbesReferenceState.typeOfCurvesToDisplay.contains(TypeOfCurve.PRINCIPALE)) {
          store.dispatch(const AddTypeOfCurveToDisplayAction(TypeOfCurve.PRINCIPALE));
        }
      },
      builder: (context, vm) {
        if (vm.lastMesuresStatus.isLoading() || vm.historyStatus == ScreenStatus.LOADING) {
          return _Loading();
        } else if (vm is MesureHistoryViewModelExisting && vm.historyStatus != ScreenStatus.ERROR) {
          return _Content(vm: vm);
        } else {
          return _Error(vm);
        }
      },
    );
  }
}

class _Content extends StatefulWidget {
  final MesureHistoryViewModelExisting vm;

  const _Content({required this.vm});

  @override
  State<_Content> createState() => _ContentState();
}

class _ContentState extends State<_Content> {
  String? selectedValueId;
  final ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    final vm = widget.vm;
    Widget? body;

    if (vm is MesureHistoryViewModelEmpty) {
      body = EmptyMesure(
        vm.emptyMesure,
        addCallback: vm.shouldDisplayAddButton ? () => _displayForm(context, vm) : null,
      );
    } else if (vm is MesureHistoryViewModelWithValues) {
      body = _HistoryBody(vm, selectedValueId, _selectionCallback);
    }

    return Scaffold(
      appBar: EnsAppBarSubLevel(
        title: vm.title,
        action: vm.shouldDisplayInfoButton ? _InfoButton(vm.mesureType) : null,
      ),
      body: body,
      backgroundColor: EnsColors.light,
      bottomNavigationBar: Container(
        height: 0,
      ),
      floatingActionButton: vm.shouldDisplayAddButton && vm is! MesureHistoryViewModelEmpty
          ? EnsFloatingActionAddButton(
              tooltip: 'Ajouter une nouvelle mesure',
              onPressed: () {
                final tag = TagMesures.getTagAjoutMesureClick(vm.mesureType);
                if (tag != null) {
                  context.tagAction(tag);
                }
                _displayForm(context, vm);
              },
            )
          : null,
    );
  }

  void _selectionCallback(String? id) {
    setState(() {
      selectedValueId = id;
    });
  }

  void _displayForm(BuildContext context, MesureHistoryViewModelExisting vm) {
    showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      builder: (BuildContext _) => EnsMesureFormBottomSheet(mesureType: vm.mesureType, fromIncitation: false),
    );
  }
}

class _Error extends StatelessWidget {
  final MesureHistoryViewModel vm;

  const _Error(this.vm);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const EnsAppBarSubLevel(title: 'Erreur'),
      body: ErrorPage(reloadFunction: vm.loadData),
    );
  }
}

class _InfoButton extends StatelessWidget {
  final EnsMesureType mesureType;

  const _InfoButton(this.mesureType);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: IconButton(
        onPressed: () {
          final tag = TagMesures.getTagInfoClick(mesureType);
          if (tag != null) {
            context.tagAction(tag);
          }
          Navigator.pushNamed(context, MesureInformationScreen.routeName, arguments: mesureType);
        },
        tooltip: 'Information',
        icon: const EnsSvg(EnsImages.ic_info_circle_outlined),
        splashRadius: 28,
      ),
    );
  }
}

class _SimpleMeasureBody extends StatelessWidget {
  final MesureHistoryViewModelWithValues vm;
  final String? selectedValueId;
  final void Function(String?) selectionCallback;
  static const EXTENDED_HEIGHT = 216.0;
  static const COLLAPSED_HEIGHT = 58.0;
  static const NORMAL_TEXT_SPACE = 24.0;
  static const MEASURE_TEXT_SPACE = 42.0;
  static const BASE_NUMBER_OF_TEXT = 1.0;
  static const SCALING_RATION_AFTER_WHICH_HEADER_IS_INPINNED = 1.9;

  const _SimpleMeasureBody(this.vm, this.selectedValueId, this.selectionCallback);

  double _headerHeightValueFor(
    double baseHeight,
    double textScaleValue,
    AdditionalViewSection? additionalViewSection,
  ) {
    final additionalHeight = additionalViewSection?.sectionHeight(textScaleValue) ?? 0.0;
    final additionalViewSectionTextToAccountFor = additionalViewSection?.numberOfTextToAccountFor() ?? 0.0;
    final numberOfTextToScale = BASE_NUMBER_OF_TEXT + additionalViewSectionTextToAccountFor;
    final textScaleOffSet =
        ((textScaleValue * NORMAL_TEXT_SPACE) * numberOfTextToScale) + (textScaleValue * MEASURE_TEXT_SPACE);
    final expandedHeight = baseHeight + additionalHeight + textScaleOffSet;
    return expandedHeight;
  }

  @override
  Widget build(BuildContext context) {
    final textScale = TextScaleUtils.getTextScaleFactor(context);
    final additionnalViewSection = vm.lastMesure.hasAdditionalViewSection();
    final expandedHeight = _headerHeightValueFor(EXTENDED_HEIGHT, textScale, additionnalViewSection);
    final collapsedHeight = _headerHeightValueFor(COLLAPSED_HEIGHT, textScale, additionnalViewSection);
    final pinned = additionnalViewSection != AdditionalViewSection.TARGET && textScale <= 2 ||
        textScale <= SCALING_RATION_AFTER_WHICH_HEADER_IS_INPINNED;
    return SafeArea(
      child: CustomScrollViewWithScrollbar(
        slivers: <Widget>[
          SliverAppBar(
            pinned: pinned,
            automaticallyImplyLeading: false,
            stretch: false,
            backgroundColor: EnsColors.neutral200,
            surfaceTintColor: Colors.transparent,
            expandedHeight: expandedHeight,
            collapsedHeight: collapsedHeight,
            flexibleSpace: LastMesureHeader(
              dm: vm.lastMesure,
              expandedHeight: expandedHeight,
              collapsedHeight: collapsedHeight,
              onTargetDelete: vm.deleteMesureTarget,
            ),
          ),
          SliverToBoxAdapter(
            child: ColoredBox(
              color: EnsColors.neutral200,
              child: MesureHistoryWidget(mesureType: vm.mesureType, selectedValueId: selectedValueId),
            ),
          ),
        ],
      ),
    );
  }
}

class _HistoryBody extends StatelessWidget {
  final MesureHistoryViewModelWithValues vm;
  final String? selectedValueId;
  final void Function(String?) selectionCallback;

  const _HistoryBody(this.vm, this.selectedValueId, this.selectionCallback);

  @override
  Widget build(BuildContext context) {
    return vm.shouldDisplayChart
        ? _ChartHistoryBody(vm, selectedValueId, selectionCallback)
        : Stack(
            fit: StackFit.expand,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(flex: 5, child: Container(color: EnsColors.neutral200)),
                  Expanded(flex: 2, child: Container(color: EnsColors.light)),
                ],
              ),
              _SimpleMeasureBody(vm, selectedValueId, selectionCallback),
            ],
          );
  }
}

class _ChartHistoryBody extends StatelessWidget {
  final MesureHistoryViewModelWithValues vm;
  final String? selectedValueId;
  final void Function(String?) selectionCallback;

  const _ChartHistoryBody(this.vm, this.selectedValueId, this.selectionCallback);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ScrollviewWithScrollbar(
        child: Column(
          children: [
            ExcludeSemantics(
              child: ColoredBox(
                color: EnsColors.neutral100,
                child: EnsMesureChart(mesureType: vm.mesureType, onValuePressedCallback: selectionCallback),
              ),
            ),
            MesureHistoryWidget(mesureType: vm.mesureType, selectedValueId: selectedValueId),
            const SizedBox(
              height: 48,
            ),
          ],
        ),
      ),
    );
  }
}

class ChartWidget extends StatelessWidget {
  final MesureHistoryViewModelWithValues vm;
  final void Function(String?) selectionCallback;

  const ChartWidget({required this.vm, required this.selectionCallback});

  @override
  Widget build(BuildContext context) {
    return ScrollviewWithScrollbar(
      child: Column(
        children: [
          ExcludeSemantics(
            child: ColoredBox(
              color: EnsColors.neutral100,
              child: EnsMesureChart(mesureType: vm.mesureType, onValuePressedCallback: selectionCallback),
            ),
          ),
        ],
      ),
    );
  }
}

class _Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const EnsAppBarSubLevel(title: ''),
      body: Column(
        children: [
          const SizedBox(height: 32),
          const Padding(
            padding: EdgeInsets.only(left: 16, right: 100),
            child: SkeletonBox(height: 24),
          ),
          const SizedBox(height: 24),
          const Padding(
            padding: EdgeInsets.only(left: 16, right: 100),
            child: SkeletonBox(height: 24),
          ),
          const SizedBox(height: 24),
          const Padding(
            padding: EdgeInsets.only(left: 16, right: 100),
            child: SkeletonBox(height: 24),
          ),
          const SizedBox(height: 24),
          Container(
            padding: const EdgeInsets.all(24),
            width: double.infinity,
            decoration: BoxDecoration(
              color: EnsColors.light,
              border: Border.all(color: EnsColors.neutral200),
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SkeletonBox(width: 172, height: 20),
                SizedBox(height: 12),
                SkeletonBox(width: 208, height: 12),
                SizedBox(height: 12),
                SkeletonBox(width: 208, height: 12),
                SizedBox(height: 12),
                SkeletonBox(width: 160, height: 12),
                SizedBox(height: 20),
                SkeletonBox(width: 188, height: 12),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(24),
            width: double.infinity,
            decoration: BoxDecoration(
              color: EnsColors.light,
              border: Border.all(color: EnsColors.neutral200),
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SkeletonBox(width: 172, height: 20),
                SizedBox(height: 12),
                SkeletonBox(width: 208, height: 12),
                SizedBox(height: 12),
                SkeletonBox(width: 208, height: 12),
                SizedBox(height: 12),
                SkeletonBox(width: 160, height: 12),
                SizedBox(height: 20),
                SkeletonBox(width: 188, height: 12),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
