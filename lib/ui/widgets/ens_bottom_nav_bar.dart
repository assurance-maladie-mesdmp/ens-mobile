/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'dart:io';
import 'dart:math';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fr_cnamts_ens/analytics/screens/viewmodels/analytics_view_model.dart';
import 'package:fr_cnamts_ens/bottom_navigation_tabs/bottom_navigation_tabs_screen.dart';
import 'package:fr_cnamts_ens/home/home_tags.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_ink_well.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_svg.dart';
import 'package:fr_cnamts_ens/utils/opacity_utils.dart';

const double DEFAULT_BAR_HEIGHT = 72;
const double DEFAULT_INDICATOR_HEIGHT = 4;
const double ICON_SIZE = 24;

// ignore: must_be_immutable
class EnsBottomNavigationBar extends StatefulWidget {
  final Color? activeColor;
  final Color? inactiveColor;
  final Color? inactiveStripColor;
  final Color? indicatorColor;
  final bool enableShadow;
  int currentIndex;

  /// Called when a item is tapped.
  ///
  /// This provide the selected item's index.
  final ValueChanged<int> onTap;

  final void Function(String, String)? onLongPress;
  final void Function()? onTapUp;

  /// The items of this navigation bar.
  ///
  /// This should contain at least two items and five at most.
  final List<EnsNavigationBarItem> items;

  /// The selected item is indicator height.
  ///
  /// Defaults to [DEFAULT_INDICATOR_HEIGHT].
  final double indicatorHeight;

  /// Change the navigation bar's size.
  ///
  /// Defaults to [DEFAULT_BAR_HEIGHT].
  final double height;

  EnsBottomNavigationBar({
    super.key,
    required this.onTap,
    required this.items,
    this.activeColor,
    this.inactiveColor,
    this.inactiveStripColor,
    this.indicatorColor,
    this.enableShadow = true,
    this.currentIndex = 0,
    this.height = DEFAULT_BAR_HEIGHT,
    this.indicatorHeight = DEFAULT_INDICATOR_HEIGHT,
    this.onLongPress,
    this.onTapUp,
  }) : assert(items.length >= 2 && items.length <= 5);

  @override
  State createState() => _EnsBottomNavigationBarState();
}

class _EnsBottomNavigationBarState extends State<EnsBottomNavigationBar> with TickerProviderStateMixin {
  List<EnsNavigationBarItem> get items => widget.items;
  double width = 0;
  Color? activeColor;
  bool tabsChangedAtLeastOnce = false;

  late final AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    )..repeat(reverse: true);
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    activeColor = widget.activeColor ?? Theme.of(context).primaryColor;

    return Container(
      decoration: BoxDecoration(
        boxShadow: widget.enableShadow
            ? [
                BoxShadow(
                  color: Colors.black.withAlpha(OpacityUtils.getAlpha(0.06)),
                  blurRadius: 10,
                  offset: const Offset(0, -10),
                ),
              ]
            : null,
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(topRight: Radius.circular(24), topLeft: Radius.circular(24)),
        child: Row(
          children: items.map((item) {
            final index = items.indexOf(item);
            return Material(
              color: item.backgroundColor,
              child: GestureDetector(
                onLongPress: () {
                  widget.onLongPress?.call(item.iconUri, item.title);
                },
                onLongPressUp: widget.onTapUp,
                child: EnsInkWell(
                  onTap: () {
                    _select(index, context);
                    _animationController.reset();
                    _animationController.forward();
                    HapticFeedback.mediumImpact();
                    setState(() {
                      if (!tabsChangedAtLeastOnce) {
                        tabsChangedAtLeastOnce = true;
                      }
                    });
                  },
                  child: _buildItemWidget(item, index == widget.currentIndex),
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }

  void _select(int index, BuildContext context) {
    widget.currentIndex = index;
    widget.onTap(widget.currentIndex);
    _tagBottomNavBarItemClick(context, index);
    setState(() {});
  }

  //ignore: dont_return_widget_in_methods
  Widget _buildItemWidget(EnsNavigationBarItem item, bool isSelected) {
    return Semantics(
      selected: isSelected,
      label: item.semanticLabel,
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: Platform.isIOS ? 0 : getNavBarBottomPadding(context)),
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 16),
              height: Platform.isIOS ? widget.height + getNavBarBottomPadding(context) : widget.height,
              width: width / items.length,
              child: Column(
                children: [
                  if (items.indexOf(item) == widget.currentIndex) ...[
                    if (tabsChangedAtLeastOnce)
                      _IconeEtTexteAvecAnimation(
                        item: item,
                        color: activeColor,
                        animationControler: _animationController,
                      )
                    else
                      _IconeEtTexte(
                        item: item,
                        icon: item.selectedIconUri,
                        color: activeColor,
                      ),
                  ] else
                    _IconeEtTexte(
                      item: item,
                      icon: item.iconUri,
                      color: widget.inactiveColor,
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _tagBottomNavBarItemClick(BuildContext context, int index) {
    switch (index) {
      case 0:
        context.tagAction(HomeTags.tag_11_item_accueil_nav_bar);
      case 1:
        context.tagAction(HomeTags.tag_8_item_documents_nav_bar);
      case 2:
        context.tagAction(HomeTags.tag_11_item_messagerie_nav_bar);
      case 3:
        context.tagAction(HomeTags.tag_11_item_profil_medical_nav_bar);
      case 4:
        context.tagAction(HomeTags.tag_11_item_plus_nav_bar);
    }
  }
}

class EnsNavigationBarItem extends Equatable {
  final String title;
  final String iconUri;
  final String selectedIconUri;
  final Color backgroundColor;
  final String semanticLabel;

  const EnsNavigationBarItem({
    required this.title,
    required this.iconUri,
    required this.selectedIconUri,
    this.backgroundColor = EnsColors.light,
    required this.semanticLabel,
  });

  @override
  List<Object?> get props => [
        title,
        iconUri,
        selectedIconUri,
        backgroundColor,
        semanticLabel,
      ];
}

class _IconeEtTexte extends StatelessWidget {
  final EnsNavigationBarItem item;
  final String icon;
  final Color? color;

  const _IconeEtTexte({
    required this.item,
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        EnsSvg(
          icon,
          height: ICON_SIZE,
          width: ICON_SIZE,
          svgKey: const ValueKey<int>(0),
        ),
        MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaler: TextScaler.noScaling),
          child: _Text(
            text: item.title,
            color: color,
          ),
        ),
      ],
    );
  }
}

class _IconeEtTexteAvecAnimation extends StatelessWidget {
  final EnsNavigationBarItem item;
  final Color? color;
  final Animation<double> animationControler;

  const _IconeEtTexteAvecAnimation({
    required this.item,
    required this.color,
    required this.animationControler,
  });

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: Tween(begin: 0.8, end: 1.0).animate(CurvedAnimation(parent: animationControler, curve: Curves.bounceOut)),
      child: _IconeEtTexte(item: item, color: color, icon: item.selectedIconUri),
    );
  }
}

class _Text extends StatelessWidget {
  final String text;
  final Color? color;

  const _Text({
    required this.text,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle.merge(
      child: Semantics(excludeSemantics: true, child: Text(text)),
      textAlign: TextAlign.center,
      style: EnsTextStyle.text10_w600_normal_body.copyWith(
        color: color,
      ),
    );
  }
}

double getNavBarBottomPadding(BuildContext context) {
  final bottomInset =
      MediaQuery.of(BottomNavigationTabsScreen.keyEnsBottomNavigationBar?.currentContext ?? context).padding.bottom;
  return Platform.isIOS ? max(0, bottomInset - 16) : bottomInset;
}
