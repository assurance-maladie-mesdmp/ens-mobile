/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button_secondary.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_cross_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_rich_text.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/utils/device_utils.dart';

class EnsTutorialDialog extends StatefulWidget {
  final List<TutorialPage> pages;
  final void Function()? onClose;
  final void Function(int etape)? onNext;
  final void Function(int etape)? onPrevious;
  final void Function()? onFinish;
  final void Function(int etape)? onPageDisplayed;

  const EnsTutorialDialog({
    super.key,
    required this.pages,
    this.onClose,
    this.onNext,
    this.onPrevious,
    this.onFinish,
    this.onPageDisplayed,
  });

  @override
  State<EnsTutorialDialog> createState() => _EnsTutorialDialogState();
}

class _EnsTutorialDialogState extends State<EnsTutorialDialog> with TickerProviderStateMixin {
  int index = 0;
  late AnimationController _controller;
  late Animation<double> _animation;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 800),
      vsync: this,
    )..forward();
    _animation = CurvedAnimation(parent: _controller, curve: Curves.easeInOut);
    _pageController = PageController();

    widget.onPageDisplayed?.call(index + 1);
  }

  @override
  void dispose() {
    _controller.dispose();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final textStyle = DeviceUtils.isSmallDevice(context)
        ? EnsTextStyle.text12_w400_normal_body
        : EnsTextStyle.text14_w400_normal_body;
    return Dismissible(
      key: const Key('hsOnboardingKey'),
      direction: DismissDirection.down,
      onDismissed: (_) => _onClose(context),
      child: Scaffold(
        body: Material(
          color: EnsColors.neutral200,
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Align(alignment: Alignment.centerLeft, child: EnsCrossButton(onTap: () => _onClose(context))),
                Padding(
                  padding: const EdgeInsets.fromLTRB(24, 0, 24, 16),
                  child: _TransitioningText(
                    animation: _animation,
                    content: widget.pages[index],
                    height: _calculateMaxTextHeightForTitle(widget.pages, EnsTextStyle.text20_w400_normal_title),
                  ),
                ),
                if (widget.pages[index].descriptionText != null)
                  Padding(
                    padding: const EdgeInsets.fromLTRB(24, 0, 24, 16),
                    child: FadeTransition(
                      opacity: _animation,
                      child: SizedBox(
                        height: _calculateMaxTextHeightForDescription(widget.pages, textStyle),
                        child: Text(
                          widget.pages[index].descriptionText!,
                          style: textStyle,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                Flexible(
                  child: PageView.builder(
                    controller: _pageController,
                    onPageChanged: (newIndex) {
                      if (newIndex == index) return;
                      if (newIndex > index) {
                        widget.onNext?.call(index + 1);
                      } else if (newIndex < index) {
                        widget.onPrevious?.call(index + 1);
                      }
                      setState(() => index = newIndex);
                      widget.onPageDisplayed?.call(index + 1);
                    },
                    itemCount: widget.pages.length,
                    itemBuilder: (context, pageIndex) {
                      return _TransitioningPicto(animation: _animation, pageContent: widget.pages, index: pageIndex);
                    },
                  ),
                ),
                const SizedBox(height: 16),
                Center(
                  child: _Selector(
                    length: widget.pages.length,
                    indexController: ValueNotifier(index),
                    controller: _controller,
                  ),
                ),
                const SizedBox(height: 24),
                Padding(
                  padding: EdgeInsets.only(left: 24, right: 24, bottom: DeviceUtils.isSmallDevice(context) ? 8 : 40),
                  child: _NavigateButton(
                    index: index,
                    length: widget.pages.length - 1,
                    onClose: () => _onClose(context),
                    onNext: _onNext,
                    onPrevious: _onPrevious,
                    onFinish: widget.onFinish,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _onClose(BuildContext context) {
    widget.onClose?.call();
    Navigator.pop(context);
  }

  void _onNext() {
    _pageController.animateToPage(
      index + 1,
      duration: const Duration(milliseconds: 800),
      curve: Curves.easeInOut,
    );
  }

  void _onPrevious() {
    _pageController.animateToPage(
      index - 1,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  double _calculateMaxTextHeightForTitle(List<TutorialPage> pages, TextStyle style) {
    double maxHeight = 0;

    for (final TutorialPage page in pages) {
      final TextPainter textPainter = TextPainter(
        text: TextSpan(
          text: page.beginText,
          style: style,
          children: [
            TextSpan(text: page.highlightedText, style: style),
            TextSpan(text: page.endText, style: style),
          ],
        ),
        textDirection: TextDirection.ltr,
        textScaler: MediaQuery.of(context).textScaler,
      )..layout(maxWidth: MediaQuery.of(context).size.width - 48);

      if (textPainter.size.height > maxHeight) {
        maxHeight = textPainter.size.height;
      }
    }

    return maxHeight;
  }

  double _calculateMaxTextHeightForDescription(List<TutorialPage> pages, TextStyle style) {
    double maxHeight = 0;

    for (final TutorialPage page in pages) {
      final maxWidth = MediaQuery.of(context).size.width - 48;
      final TextPainter textPainter = TextPainter(
        text: TextSpan(
          text: page.descriptionText,
          style: style,
        ),
        textDirection: TextDirection.ltr,
        textScaler: MediaQuery.of(context).textScaler,
      )..layout(maxWidth: maxWidth);

      if (textPainter.size.height > maxHeight) {
        maxHeight = textPainter.size.height;
      }
    }

    return maxHeight;
  }
}

class _NavigateButton extends StatelessWidget {
  final int index;
  final int length;
  final void Function() onNext;
  final void Function() onClose;
  final void Function() onPrevious;
  final void Function()? onFinish;

  const _NavigateButton({
    required this.index,
    required this.length,
    required this.onClose,
    required this.onNext,
    required this.onPrevious,
    this.onFinish,
  });

  @override
  Widget build(BuildContext context) {
    if (index == 0) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(child: EnsButton(label: 'Suivant', onTap: onNext)),
        ],
      );
    } else if (index < length) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: EnsButtonSecondary(
              backgroundColor: Colors.transparent,
              label: 'Précédent',
              onTap: onPrevious,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(child: EnsButton(label: 'Suivant', onTap: onNext)),
        ],
      );
    } else {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: EnsButton(
              label: 'J\'ai compris',
              onTap: () {
                onFinish?.call();
                onClose();
              },
            ),
          ),
        ],
      );
    }
  }
}

class _TransitioningPicto extends StatelessWidget {
  final Animation<double> animation;
  final List<TutorialPage> pageContent;
  final int index;

  const _TransitioningPicto({required this.animation, required this.pageContent, required this.index});

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: animation,
      child: EnsSvg(
        pageContent[index].illustrationPath,
        fit: BoxFit.scaleDown,
        alignment: pageContent[index].illustrationEndAlignment,
      ),
    );
  }
}

class _TransitioningText extends StatelessWidget {
  final Animation<double> animation;
  final TutorialPage content;
  final double height;

  const _TransitioningText({required this.animation, required this.content, required this.height});

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: animation,
      child: SizedBox(
        height: height,
        child: EnsRichText(
          textAlign: content.textAlign,
          text: TextSpan(
            text: content.beginText,
            style: EnsTextStyle.text20_w400_normal_title,
            children: [
              TextSpan(
                text: content.highlightedText,
                style: EnsTextStyle.text20_w400_normal_title.copyWith(color: EnsColors.secondary),
              ),
              TextSpan(
                text: content.endText,
                style: EnsTextStyle.text20_w400_normal_title,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _Selector extends StatelessWidget {
  final ValueNotifier<int> indexController;
  final int length;
  final AnimationController controller;

  const _Selector({required this.indexController, required this.length, required this.controller});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: indexController,
      builder: (_, index, __) => Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          for (int i = 0; i < length; i++)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2),
              child: i == index
                  ? ScaleTransition(
                      scale: CurvedAnimation(parent: controller, curve: Curves.ease),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: EnsColors.primary,
                        ),
                        width: 12,
                        height: 12,
                      ),
                    )
                  : Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: EnsColors.neutral300,
                      ),
                      width: 8,
                      height: 8,
                    ),
            ),
        ],
      ),
    );
  }
}

class TutorialPage {
  final String beginText;
  final String highlightedText;
  final String endText;
  final TextAlign textAlign;
  final String illustrationPath;
  final Alignment illustrationEndAlignment;
  final String? descriptionText;

  TutorialPage({
    required this.beginText,
    required this.highlightedText,
    required this.endText,
    this.textAlign = TextAlign.center,
    required this.illustrationPath,
    this.illustrationEndAlignment = Alignment.center,
    this.descriptionText,
  });
}
