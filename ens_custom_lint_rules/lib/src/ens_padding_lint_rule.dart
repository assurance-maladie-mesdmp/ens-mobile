/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'ens_custom_lint_rules_base.dart';

class _AvoidWrappingInPadding extends DartLintRule {
  @override
  void run(
    CustomLintResolver resolver,
    ErrorReporter reporter,
    CustomLintContext context,
  ) {
    context.registry.addInstanceCreationExpression((node) {
      final staticType = node.staticType;
      if (staticType is InterfaceType) {
        if (staticType.constructors
            .any((widget) => (widget.parameters.any((parameter) => parameter.name == 'padding')))) {
          final widgetParameters = node.argumentList.arguments;
          final Expression? childParameter =
              widgetParameters.where((parameter) => parameter.staticParameterElement?.name == 'child').firstOrNull;
          if (childParameter != null && childParameter is NamedExpression) {
            final childWidget = childParameter.expression;
            if (childWidget is InstanceCreationExpression && childWidget.staticType?.element?.name == 'Padding') {
              reporter.reportErrorForNode(code, node);
            }
          }
        }
      }
    });
  }

  static const _code = LintCode(
    name: 'avoid_wrapping_in_padding',
    problemMessage: 'Un widget comportant un attribut padding ne doit pas avoir en enfant direct un widget Padding',
    correctionMessage: 'Utiliser l\'attribut padding du widget',
  );

  const _AvoidWrappingInPadding() : super(code: _code);
}
