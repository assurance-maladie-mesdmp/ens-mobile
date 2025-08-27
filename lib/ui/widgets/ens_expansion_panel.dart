/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_expand_icon.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_ink_well.dart';

const double _kPanelHeaderCollapsedHeight = kMinInteractiveDimension;
const EdgeInsets _kPanelHeaderExpandedDefaultPadding = EdgeInsets.symmetric(
  vertical: 64.0 - _kPanelHeaderCollapsedHeight,
);

class _SaltedKey<S, V> extends LocalKey {
  const _SaltedKey(this.salt, this.value);

  final S salt;
  final V value;

  @override
  bool operator ==(Object other) {
    if (other.runtimeType != runtimeType) {
      return false;
    }
    return other is _SaltedKey<S, V> && other.salt == salt && other.value == value;
  }

  @override
  int get hashCode => Object.hash(runtimeType, salt, value);

  @override
  String toString() {
    final String saltString = S == String ? "<'$salt'>" : '<$salt>';
    final String valueString = V == String ? "<'$value'>" : '<$value>';
    return '[$saltString $valueString]';
  }
}

typedef EnsExpansionPanelCallback = void Function(int panelIndex, bool isExpanded);

typedef EnsExpansionPanelHeaderBuilder = Widget Function(BuildContext context, bool isExpanded);

class EnsExpansionPanel {
  EnsExpansionPanel({
    required this.headerBuilder,
    required this.body,
    this.isExpanded = false,
    this.canTapOnHeader = false,
    this.backgroundColor = EnsColors.light,
    this.iconColor,
    this.iconPadding = const EdgeInsets.all(8),
    this.collapsedTileArrowDirection = ArrowDirection.UP,
    this.margin = EdgeInsets.zero,
    this.borderRadius = 0,
    this.shadow,
    this.titleAbove,
  });

  final EnsExpansionPanelHeaderBuilder headerBuilder;
  final Widget body;
  final bool isExpanded;
  final bool canTapOnHeader;
  final Color? backgroundColor;
  final EdgeInsets iconPadding;
  final Color? iconColor;
  final ArrowDirection collapsedTileArrowDirection;
  final EdgeInsets margin;
  final double borderRadius;
  final List<BoxShadow>? shadow;
  final Widget? titleAbove;
}

class ExpansionPanelRadio extends EnsExpansionPanel {
  ExpansionPanelRadio({
    required this.value,
    required super.headerBuilder,
    required super.body,
    super.canTapOnHeader,
    super.backgroundColor,
  });

  final Object value;
}

class EnsExpansionPanelList extends StatefulWidget {
  const EnsExpansionPanelList({
    super.key,
    this.children = const <EnsExpansionPanel>[],
    this.expansionCallback,
    this.animationDuration = kThemeAnimationDuration,
    this.expandedHeaderPadding = _kPanelHeaderExpandedDefaultPadding,
    this.collapsedHeaderPadding = EdgeInsets.zero,
    this.dividerColor,
    this.elevation = 2,
    this.spaceBetweenItems = 0,
    this.hasDivider = true,
  })  : _allowOnlyOnePanelOpen = false,
        initialOpenPanelValue = null;

  const EnsExpansionPanelList.radio({
    super.key,
    this.children = const <ExpansionPanelRadio>[],
    this.expansionCallback,
    this.animationDuration = kThemeAnimationDuration,
    this.initialOpenPanelValue,
    this.expandedHeaderPadding = _kPanelHeaderExpandedDefaultPadding,
    this.collapsedHeaderPadding = EdgeInsets.zero,
    this.dividerColor,
    this.elevation = 2,
    this.spaceBetweenItems = 0,
    this.hasDivider = true,
  }) : _allowOnlyOnePanelOpen = true;

  final List<EnsExpansionPanel> children;

  final EnsExpansionPanelCallback? expansionCallback;

  final Duration animationDuration;

  final bool _allowOnlyOnePanelOpen;

  final Object? initialOpenPanelValue;

  final EdgeInsets expandedHeaderPadding;

  final EdgeInsets collapsedHeaderPadding;

  final Color? dividerColor;

  final double elevation;

  final bool hasDivider;

  final double spaceBetweenItems;

  @override
  State<StatefulWidget> createState() => _ExpansionPanelListState();
}

class _ExpansionPanelListState extends State<EnsExpansionPanelList> {
  ExpansionPanelRadio? _currentOpenPanel;

  @override
  void initState() {
    super.initState();
    if (widget._allowOnlyOnePanelOpen) {
      assert(_allIdentifiersUnique(), 'All ExpansionPanelRadio identifier values must be unique.');
      if (widget.initialOpenPanelValue != null) {
        _currentOpenPanel =
            searchPanelByValue(widget.children.cast<ExpansionPanelRadio>(), widget.initialOpenPanelValue);
      }
    }
  }

  @override
  void didUpdateWidget(EnsExpansionPanelList oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (widget._allowOnlyOnePanelOpen) {
      assert(_allIdentifiersUnique(), 'All ExpansionPanelRadio identifier values must be unique.');
      if (!oldWidget._allowOnlyOnePanelOpen) {
        _currentOpenPanel =
            searchPanelByValue(widget.children.cast<ExpansionPanelRadio>(), widget.initialOpenPanelValue);
      }
    } else {
      _currentOpenPanel = null;
    }
  }

  bool _allIdentifiersUnique() {
    final Map<Object, bool> identifierMap = <Object, bool>{};
    for (final ExpansionPanelRadio child in widget.children.cast<ExpansionPanelRadio>()) {
      identifierMap[child.value] = true;
    }
    return identifierMap.length == widget.children.length;
  }

  bool _isChildExpanded(int index) {
    if (widget._allowOnlyOnePanelOpen) {
      final ExpansionPanelRadio radioWidget = widget.children[index] as ExpansionPanelRadio;
      return _currentOpenPanel?.value == radioWidget.value;
    }
    return widget.children[index].isExpanded;
  }

  void _handlePressed(bool isExpanded, int index) {
    widget.expansionCallback?.call(index, isExpanded);

    if (widget._allowOnlyOnePanelOpen) {
      final ExpansionPanelRadio pressedChild = widget.children[index] as ExpansionPanelRadio;

      for (int childIndex = 0; childIndex < widget.children.length; childIndex += 1) {
        final ExpansionPanelRadio child = widget.children[childIndex] as ExpansionPanelRadio;
        if (widget.expansionCallback != null && childIndex != index && child.value == _currentOpenPanel?.value) {
          widget.expansionCallback!(childIndex, false);
        }
      }

      setState(() {
        _currentOpenPanel = isExpanded ? null : pressedChild;
      });
    }
  }

  ExpansionPanelRadio? searchPanelByValue(List<ExpansionPanelRadio> panels, Object? value) {
    for (final ExpansionPanelRadio panel in panels) {
      if (panel.value == value) return panel;
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    assert(
      kElevationToShadow.containsKey(widget.elevation),
      'Invalid value for elevation. See the kElevationToShadow constant for'
      ' possible elevation values.',
    );

    final List<MergeableMaterialItem> items = <MergeableMaterialItem>[];

    for (int index = 0; index < widget.children.length; index += 1) {
      if (_isChildExpanded(index) && index != 0 && !_isChildExpanded(index - 1)) {
        items.add(MaterialGap(key: _SaltedKey<BuildContext, int>(context, index * 2 - 1)));
      }

      final EnsExpansionPanel child = widget.children[index];
      final Widget headerWidget = child.headerBuilder(
        context,
        _isChildExpanded(index),
      );

      Widget expandIconContainer = Container(
        margin: const EdgeInsetsDirectional.only(end: 16.0),
        child: EnsExpandIcon(
          color: child.iconColor,
          padding: child.iconPadding,
          collapsedTileArrowDirection: child.collapsedTileArrowDirection,
          isExpanded: _isChildExpanded(index),
          onPressed: !child.canTapOnHeader ? (bool isExpanded) => _handlePressed(isExpanded, index) : null,
        ),
      );
      if (!child.canTapOnHeader) {
        final MaterialLocalizations localizations = MaterialLocalizations.of(context);
        expandIconContainer = Semantics(
          label: _isChildExpanded(index) ? localizations.expandedIconTapHint : localizations.collapsedIconTapHint,
          container: true,
          child: expandIconContainer,
        );
      }
      Widget header = Row(
        children: <Widget>[
          Expanded(
            child: AnimatedContainer(
              duration: widget.animationDuration,
              curve: Curves.fastOutSlowIn,
              margin: _isChildExpanded(index) ? widget.expandedHeaderPadding : widget.collapsedHeaderPadding,
              child: ConstrainedBox(
                constraints: const BoxConstraints(minHeight: _kPanelHeaderCollapsedHeight),
                child: headerWidget,
              ),
            ),
          ),
          expandIconContainer,
        ],
      );
      if (child.canTapOnHeader) {
        header = MergeSemantics(
          child: EnsInkWell(
            borderRadius: BorderRadius.circular(child.borderRadius),
            onTap: () => _handlePressed(_isChildExpanded(index), index),
            child: header,
          ),
        );
      }
      items.add(
        MaterialSlice(
          key: _SaltedKey<BuildContext, int>(context, index * 2),
          color: EnsColors.neutral100,
          child: Padding(
            padding: EdgeInsets.only(bottom: widget.spaceBetweenItems),
            child: Column(
              key: _SaltedKey<BuildContext, int>(context, index * 2),
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (child.titleAbove != null) child.titleAbove!,
                Container(
                  margin: child.margin,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(child.borderRadius),
                    boxShadow: child.shadow,
                  ),
                  child: Material(
                    borderRadius: BorderRadius.circular(child.borderRadius),
                    color: child.backgroundColor,
                    child: Column(
                      children: <Widget>[
                        header,
                        AnimatedCrossFade(
                          firstChild: Container(height: 0.0),
                          secondChild: child.body,
                          firstCurve: const Interval(0.0, 0.6, curve: Curves.fastOutSlowIn),
                          secondCurve: const Interval(0.4, 1.0, curve: Curves.fastOutSlowIn),
                          sizeCurve: Curves.fastOutSlowIn,
                          crossFadeState:
                              _isChildExpanded(index) ? CrossFadeState.showSecond : CrossFadeState.showFirst,
                          duration: widget.animationDuration,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );

      if (_isChildExpanded(index) && index != widget.children.length - 1) {
        items.add(MaterialGap(key: _SaltedKey<BuildContext, int>(context, index * 2 + 1)));
      }
    }

    return MergeableMaterial(
      hasDividers: widget.hasDivider,
      dividerColor: widget.dividerColor,
      elevation: widget.elevation,
      children: items,
    );
  }
}
