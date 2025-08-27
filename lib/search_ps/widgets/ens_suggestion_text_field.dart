/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:fr_cnamts_ens/ui/ens_text_style.dart';
import 'package:fr_cnamts_ens/ui/widgets/skeletons.dart';

class EnsSuggestionTextField<T> extends StatelessWidget {
  const EnsSuggestionTextField({
    super.key,
    required this.textController,
    this.onTap,
    required this.enabled,
    required this.itemBuilder,
    required this.onSuggestionSelected,
    required this.displaySuggestions,
    required this.inputDecoration,
    this.onChanged,
    this.textCapitalization,
    this.style,
    this.emptyBuilder,
    this.hideOnEmpty = false,
    this.suggestionsController,
    this.maxLength,
  });

  final InputDecoration inputDecoration;
  final TextEditingController textController;
  final void Function()? onTap;
  final bool enabled;
  final Widget Function(T) itemBuilder;
  final void Function(T) onSuggestionSelected;
  final Future<List<T>> Function(String) displaySuggestions;
  final void Function(String)? onChanged;
  final TextCapitalization? textCapitalization;
  final TextStyle? style;
  final Widget Function(BuildContext)? emptyBuilder;
  final bool hideOnEmpty;
  final SuggestionsController<T>? suggestionsController;
  final int? maxLength;

  @override
  Widget build(BuildContext context) {
    return TypeAheadField<T>(
      controller: textController,
      debounceDuration: const Duration(milliseconds: 500),
      suggestionsController: suggestionsController,
      builder: (context, controller, focusNode) => TextFormField(
        textCapitalization: textCapitalization ?? TextCapitalization.none,
        onTap: onTap,
        enabled: enabled,
        textAlign: TextAlign.left,
        controller: controller,
        focusNode: focusNode,
        style: style ?? EnsTextStyle.text16_w600_title,
        scrollPadding: const EdgeInsets.only(bottom: 100),
        onChanged: onChanged,
        decoration: inputDecoration,
        maxLength: maxLength,
      ),
      decorationBuilder: (context, child) {
        return Material(
          type: MaterialType.card,
          elevation: 4,
          borderRadius: BorderRadius.circular(4),
          child: child,
        );
      },
      suggestionsCallback: (pattern) => displaySuggestions(pattern),
      onSelected: (suggestion) => onSuggestionSelected(suggestion),
      itemBuilder: (_, suggestion) => itemBuilder(suggestion),
      errorBuilder: (context, error) {
        return const ListTile(
          enabled: false,
          title: Text('Une erreur est survenue pendant la recherche', style: EnsTextStyle.text14_w600_normal_title),
        );
      },
      emptyBuilder: emptyBuilder ?? _defaultEmptyBuilder,
      loadingBuilder: (context) {
        return const Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(title: SkeletonBox(width: double.infinity)),
            ListTile(title: SkeletonBox(width: double.infinity)),
            ListTile(title: SkeletonBox(width: double.infinity)),
          ],
        );
      },
      hideOnEmpty: textController.text.length < 2,
    );
  }

  ListTile _defaultEmptyBuilder(BuildContext context) {
    return const ListTile(
      enabled: false,
      title: Text('Aucun résultat', style: EnsTextStyle.text14_w600_normal_title),
    );
  }
}
