/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'package:equatable/equatable.dart';
import 'package:fr_cnamts_ens/utils/extensions/string_extensions.dart';

class EnsAutocompleteInputDataDisplayModel extends Equatable {
  final String label;
  final String? description;
  final List<FormattedElementLabel> formattedLabel;

  const EnsAutocompleteInputDataDisplayModel._internal(this.label, this.description, this.formattedLabel);

  factory EnsAutocompleteInputDataDisplayModel(
    String label,
    String? description, {
    String cleanedPatternToHighlight = '',
  }) {
    final List<FormattedElementLabel> formattedLabel;
    if (cleanedPatternToHighlight.isEmpty) {
      formattedLabel = [FormattedElementLabel(label, false)];
    } else {
      final cleanedLabel = label.replaceAllDiacriticsWithSameSize().toLowerCase();
      String currentCleanedLabel = cleanedLabel;
      if (currentCleanedLabel.contains(cleanedPatternToHighlight)) {
        final formattedLabelResult = <FormattedElementLabel>[];

        int startIndex = 0;

        while (currentCleanedLabel.contains(cleanedPatternToHighlight)) {
          final index = currentCleanedLabel.indexOf(cleanedPatternToHighlight);

          if (index > 0) {
            final nonHighlightedSubstring = label.substring(startIndex, startIndex + index);
            formattedLabelResult.add(FormattedElementLabel(nonHighlightedSubstring, false));
          }

          int lengthOfAllPatternsToHighlightFound = cleanedPatternToHighlight.length;
          while (currentCleanedLabel
                  .substring(index + lengthOfAllPatternsToHighlightFound)
                  .indexOf(cleanedPatternToHighlight) ==
              0) {
            lengthOfAllPatternsToHighlightFound += cleanedPatternToHighlight.length;
          }

          final highlightedSubstring =
              label.substring(startIndex + index, startIndex + index + lengthOfAllPatternsToHighlightFound);
          formattedLabelResult.add(FormattedElementLabel(highlightedSubstring, true));
          startIndex += index + lengthOfAllPatternsToHighlightFound;
          currentCleanedLabel = cleanedLabel.substring(startIndex);
        }

        if (startIndex < label.length) {
          final nonHighlightedSubstring = label.substring(startIndex);
          formattedLabelResult.add(FormattedElementLabel(nonHighlightedSubstring, false));
        }
        formattedLabel = formattedLabelResult;
      } else {
        formattedLabel = [FormattedElementLabel(label, false)];
      }
    }
    return EnsAutocompleteInputDataDisplayModel._internal(label, description, formattedLabel);
  }

  @override
  List<Object?> get props => [label, description, formattedLabel];
}

class FormattedElementLabel extends Equatable {
  final String partOfLabel;
  final bool highlighted;

  const FormattedElementLabel(this.partOfLabel, this.highlighted);

  @override
  String toString() => '\'$partOfLabel\' ${highlighted ? 'highlighted' : 'not highlighted'}';

  @override
  List<Object?> get props => [partOfLabel, highlighted];
}
