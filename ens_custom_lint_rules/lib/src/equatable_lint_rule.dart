/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'ens_custom_lint_rules_base.dart';

class _AddAllPropsInEquatable extends DartLintRule {
  @override
  void run(
    CustomLintResolver resolver,
    ErrorReporter reporter,
    CustomLintContext context,
  ) {
    context.registry.addClassDeclaration((node) {
      final element = node.declaredElement;
      if (element == null) {
        return;
      }

      if (_isEquatableDescendant(element)) {
        for (final accessor in element.accessors) {
          if (accessor.name == 'props') {
            final data = accessor.source.contents.data;
            var nameOffset = accessor.nameOffset;
            var nameLength = accessor.nameLength;
            if (data.length > nameOffset + nameLength) {
              final apresNom = data.substring(nameOffset);
              final indexOfOpening = apresNom.indexOf('[');
              if (indexOfOpening == -1) return;
              final apresTableau = apresNom.substring(1 + indexOfOpening);
              final indexOfClosing = apresTableau.indexOf(']');
              if (indexOfClosing == -1) return;
              final finalite = apresTableau.substring(0, indexOfClosing);
              final fields = element.fields;
              final List<String> nomManquants = fields
                  .where((element) => !(element.type.getDisplayString(withNullability: false).contains('Function')))
                  .where((element) => !element.isConstantEvaluated)
                  .where((element) => element.nameOffset >= 0)
                  .map((champ) => champ.name)
                  .where((element) => element != 'props' && !element.contains('store'))
                  .where((element) => !finalite.contains(element))
                  .toList();
              if (nomManquants.isNotEmpty) {
                reporter.reportErrorForElement(
                    LintCode(
                      name: 'add_all_props_in_equatable',
                      problemMessage: 'Il manque les params ${nomManquants.join(', ')} dans les props',
                      correctionMessage: 'Ajouter toutes les variables dans les props',
                    ),
                    accessor);
              }
            }
          }
        }
      }
    });
  }

  bool _isEquatableDescendant(ClassElement element) {
    if (element.supertype == null) return false;
    if (element.supertype!.element.name == 'Equatable') return true;
    return _isInterfaceEquatableDescendant(element.supertype!.element);
  }

  bool _isInterfaceEquatableDescendant(InterfaceElement element) {
    if (element.supertype == null) return false;
    if (element.supertype!.element.name == 'Equatable') return true;
    return _isInterfaceEquatableDescendant(element.supertype!.element);
  }

  static const _code = LintCode(
    name: 'add_all_props_in_equatable',
    problemMessage: 'Ajouter toutes les variables dans les props',
  );

  const _AddAllPropsInEquatable() : super(code: _code);
}
