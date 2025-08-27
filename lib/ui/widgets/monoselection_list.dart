/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:fr_cnamts_ens/ui/ens_colors.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/ens_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/form/ens_radio_button.dart';
import 'package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart';

class MonoselectionList<T> extends StatelessWidget {
  final List<T> itemList;
  final String Function(T) labelBuilder;
  final ValueNotifier<T?> controller;
  final void Function(T) onSelectionChange;
  final void Function()? tagOnTap;

  const MonoselectionList({
    required this.itemList,
    required this.labelBuilder,
    required this.controller,
    required this.onSelectionChange,
    this.tagOnTap,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        ListViewWithScrollbar.separated(
          padding: const EdgeInsets.only(bottom: 80),
          itemBuilder: (_, index) {
            if (index == 0 || index == itemList.length + 1) {
              return const SizedBox();
            }
            final T item = itemList[index - 1];
            return _MonoselectionListItem<T>(
              item: item,
              currentlySelectedItem: controller.value,
              label: labelBuilder(item),
              onSelected: () => onSelectionChange(item),
            );
          },
          separatorBuilder: (_, __) => const Divider(height: 2, thickness: 1, color: EnsColors.neutral200),
          itemCount: itemList.length + 2,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
          child: SizedBox(
            width: double.infinity,
            child: EnsButton(
              label: 'Valider',
              onTap: () {
                tagOnTap?.call();
                Navigator.pop(context, controller.value);
              },
              isDisabled: controller.value == null,
            ),
          ),
        ),
      ],
    );
  }
}

class _MonoselectionListItem<T> extends StatelessWidget {
  final T item;
  final T? currentlySelectedItem;
  final String label;
  final void Function() onSelected;

  const _MonoselectionListItem({
    required this.item,
    required this.label,
    required this.onSelected,
    required this.currentlySelectedItem,
  });

  @override
  Widget build(BuildContext context) {
    return EnsRadioButton<T?>(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
      value: item,
      groupValue: currentlySelectedItem,
      label: label,
      defaultLabelStyle: EnsTextStyle.text16_w700_normal_title,
      selectedLabelStyle: EnsTextStyle.text16_w700_primary,
      onSelected: onSelected,
    );
  }
}
