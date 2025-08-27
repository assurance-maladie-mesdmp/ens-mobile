/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';

class ScrollviewWithScrollbar extends StatelessWidget {
  final Widget child;
  final Key? scrollViewKey;
  final EdgeInsetsGeometry? padding;
  final ScrollController? controller;
  final Axis scrollDirection;
  final ScrollPhysics? physics;

  const ScrollviewWithScrollbar({
    required this.child,
    this.scrollViewKey,
    this.padding,
    this.controller,
    this.scrollDirection = Axis.vertical,
    this.physics,
  });

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      controller: controller,
      // ignore: dont_use_singlechildscrollview
      child: SingleChildScrollView(
        key: scrollViewKey,
        padding: padding,
        controller: controller,
        scrollDirection: scrollDirection,
        physics: physics,
        child: child,
      ),
    );
  }
}

class CustomScrollViewWithScrollbar extends StatelessWidget {
  final List<Widget> slivers;

  const CustomScrollViewWithScrollbar({
    this.slivers = const <Widget>[],
  });

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      // ignore: dont_use_customscrollview
      child: CustomScrollView(
        slivers: slivers,
      ),
    );
  }
}

class ListViewWithScrollbar {
  const ListViewWithScrollbar._();

  static Widget basic({
    required List<Widget> children,
    bool shrinkWrap = false,
    ScrollController? controller,
  }) {
    return Scrollbar(
      controller: controller,
      // ignore: dont_use_listview
      child: ListView(
        controller: controller,
        shrinkWrap: shrinkWrap,
        children: children,
      ),
    );
  }

  static Widget separated({
    Key? key,
    EdgeInsetsGeometry? padding,
    required NullableIndexedWidgetBuilder itemBuilder,
    required IndexedWidgetBuilder separatorBuilder,
    required int itemCount,
    ScrollController? controller,
    bool shrinkWrap = false,
    bool? primary,
    ScrollPhysics? physics,
    Axis scrollDirection = Axis.vertical,
  }) {
    return Scrollbar(
      controller: controller,
      // ignore: dont_use_listview
      child: ListView.separated(
        key: key,
        padding: padding,
        itemBuilder: itemBuilder,
        separatorBuilder: separatorBuilder,
        shrinkWrap: shrinkWrap,
        primary: primary,
        itemCount: itemCount,
        physics: physics,
        scrollDirection: scrollDirection,
        controller: controller,
      ),
    );
  }

  static Widget builder({
    Key? key,
    EdgeInsetsGeometry? padding,
    ScrollController? controller,
    required NullableIndexedWidgetBuilder itemBuilder,
    required int itemCount,
    Axis scrollDirection = Axis.vertical,
    bool shrinkWrap = false,
    ScrollPhysics? physics,
  }) {
    return Scrollbar(
      controller: controller,
      // ignore: dont_use_listview
      child: ListView.builder(
        key: key,
        padding: padding,
        itemBuilder: itemBuilder,
        itemCount: itemCount,
        scrollDirection: scrollDirection,
        shrinkWrap: shrinkWrap,
        controller: controller,
        physics: physics,
      ),
    );
  }
}
