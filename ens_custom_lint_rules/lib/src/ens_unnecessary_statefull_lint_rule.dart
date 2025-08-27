/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'ens_custom_lint_rules_base.dart';

class _UnnecessaryStatefullLint extends DartLintRule {
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

      if (_isStatefullWidget(element)) {
        final start = node.leftBracket;
        final end = node.rightBracket;
        final classBodyString = resolver.source.contents.data.substring(start.offset, end.offset);
        if (!classBodyString.contains('setState') &&
            !classBodyString.contains('initState') &&
            !classBodyString.contains('didUpdateWidget') &&
            !classBodyString.contains('dispose')) {
          reporter.reportErrorForNode(_code, node);
        }
      }
    });
  }

  bool _isStatefullWidget(ClassElement element) {
    if (element.supertype == null) return false;
    return element.supertype!.element.name == 'State';
  }

  static const _code = LintCode(
    name: 'unnecessary_statefull_widget',
    problemMessage: 'Si on n\'utilise pas de setState, pas besoin d\'avoir de Statefull Widget',
  );

  const _UnnecessaryStatefullLint() : super(code: _code);
}
