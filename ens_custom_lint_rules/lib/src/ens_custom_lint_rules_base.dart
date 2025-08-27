/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

import 'dart:io';

import 'package:analyzer/dart/ast/ast.dart';
import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:analyzer/error/error.dart';
import 'package:analyzer/error/listener.dart';
import 'package:analyzer/source/source_range.dart';
import 'package:custom_lint_builder/custom_lint_builder.dart';

part 'dont_use_lint_rule.dart';
part 'ens_padding_lint_rule.dart';
part 'ens_unnecessary_statefull_lint_rule.dart';
part 'equatable_lint_rule.dart';

PluginBase createPlugin() => _EnsLintPlugin();

class _EnsLintPlugin extends PluginBase {
  @override
  List<LintRule> getLintRules(CustomLintConfigs configs) => [
        const _DontReturnWidgetInMethods(),
        const _DontUseSingleChildScrollView(),
        const _DontUseListView(),
        const _DontUseCustomScrollView(),
        const _DontUseRichText(),
        const _DontUsePopScope(),
        const _DontUseHardCodedAssetPath(),
        const _DontUseForm(),
        _DontUseProhibitedStaticMethods('Text', 'rich', 'EnsRichText'),
        const _NameCorrectlyYourTestFile(),
        const _AddAllPropsInEquatable(),
        const _AvoidWrappingInPadding(),
        const _UnnecessaryStatefullLint(),
        const _TestFileNotAssociatedToLibFile(),
        const _DontUseInkWell(),
        const _DontUseSvgPictureAsset(),
      ];

  @override
  List<Assist> getAssists() => [];
}

class _DontReturnWidgetInMethods extends DartLintRule {
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
      for (var method in element.methods) {
        if (!method.isStatic &&
            method.name != 'build' &&
            method.returnType.getDisplayString(withNullability: false) == 'Widget') {
          reporter.reportErrorForElement(_code, method);
        }
      }
    });
  }

  static const _code = LintCode(
    name: 'dont_return_widget_in_methods',
    problemMessage: 'On ne doit pas retourner de widgets dans les methodes',
    correctionMessage: 'Extraire dans un Widget privé à la place',
  );

  const _DontReturnWidgetInMethods() : super(code: _code);
}

class _DontUseProhibitedInvocationsFix extends DartFix {
  final String replacement;

  _DontUseProhibitedInvocationsFix(this.replacement);

  @override
  void run(
    CustomLintResolver resolver,
    ChangeReporter reporter,
    CustomLintContext context,
    AnalysisError analysisError,
    List<AnalysisError> others,
  ) {
    final changeBuilder = reporter.createChangeBuilder(
      message: 'Remplacer par $replacement',
      priority: 1,
    );
    changeBuilder.addDartFileEdit((builder) {
      builder.addSimpleReplacement(
        SourceRange(analysisError.offset, analysisError.length),
        replacement,
      );
      builder.importLibraryElement(Uri.parse('package:fr_cnamts_ens/ui/widgets/ens_rich_text.dart'));
    });
  }
}

class _DontUseProhibitedStaticMethods extends DartLintRule {
  final String bannedMethod;
  final String bannedClass;
  final String replacement;

  @override
  void run(
    CustomLintResolver resolver,
    ErrorReporter reporter,
    CustomLintContext context,
  ) {
    context.registry.addConstructorName((node) {
      final actualMethodName = node.name?.name;
      if (bannedMethod == actualMethodName && (node.staticElement?.displayName.contains(bannedClass) ?? false)) {
        reporter.reportErrorForNode(code, node);
      }
    });
  }

  @override
  List<Fix> getFixes() {
    return [_DontUseProhibitedInvocationsFix(replacement)];
  }

  _DontUseProhibitedStaticMethods(this.bannedClass, this.bannedMethod, this.replacement)
      : super(
            code: LintCode(
          name: 'dont_use_prohibited_static_methods',
          problemMessage: 'On ne doit pas utiliser $bannedClass.$bannedMethod mais $replacement',
        ));
}

class _NameCorrectlyYourTestFile extends DartLintRule {
  @override
  void run(
    CustomLintResolver resolver,
    ErrorReporter reporter,
    CustomLintContext context,
  ) {
    var path = resolver.path;

    if (path.contains('/test/') && !(path.endsWith('_test.dart'))) {
      context.registry.addFunctionDeclaration((node) {
        if (node.declaredElement?.displayName == 'main') {
          reporter.reportErrorForNode(
              LintCode(
                name: 'name_correctly_your_test_file',
                problemMessage: 'Le fichier $path est mal nommé, il doit finir par *_test.dart.',
                correctionMessage: 'Si on ne nomme pas un test en *_test.dart il ne passera pas sur la CI',
              ),
              node);
        }
      });
    }
  }

  const _NameCorrectlyYourTestFile()
      : super(
            code: const LintCode(
          name: 'name_correctly_your_test_file',
          problemMessage: 'Si on ne nomme pas un test en *_test.dart il ne passera pas sur la CI',
        ));
}

class _TestFileNotAssociatedToLibFile extends DartLintRule {
  @override
  Future<void> run(
    CustomLintResolver resolver,
    ErrorReporter reporter,
    CustomLintContext context,
  ) async {
    final path = resolver.path;
    if (path.contains('/test/') && path.endsWith('_test.dart') && !path.contains('a11y')) {
      final regex = RegExp(r"/([^/]+)$");
      final libFileNameWithTest = regex.firstMatch(path);
      if (libFileNameWithTest != null) {
        String result = libFileNameWithTest.group(1)!;
        final libFileName = result.substring(0, result.length - 10) + ".dart";
        final repertoire = _getRepertoire(path);
        if (repertoire != null && !_rechercherFichier(repertoire, libFileName)) {
          context.registry.addFunctionDeclaration((node) {
            if (node.declaredElement?.displayName == 'main') {
              reporter.reportErrorForNode(
                  LintCode(
                    name: 'test_fil_not_associated_to_lib_file',
                    problemMessage:
                        'Le fichier $path est mal nommé, la racine du nom doit correspondre à un fichier source.',
                    correctionMessage:
                        'Si on ne nomme pas un test en avec la même racine qu\'un fichier source, ils ne sont pas liés',
                  ),
                  node);
            }
          });
        }
      }
    }
  }

  String? _getRepertoire(String path) {
    RegExp regex = RegExp(r"^(.*?/ens-mobile/)");
    Match? match = regex.firstMatch(path);
    return match?.group(1)!;
  }

  bool _rechercherFichier(String repertoire, String nomFichier) {
    Directory directory = Directory(repertoire);

    if (!directory.existsSync()) {
      return false;
    }

    List<FileSystemEntity> fichiers = directory.listSync(recursive: true);

    for (var fichier in fichiers) {
      if (fichier is File && fichier.uri.pathSegments.last == nomFichier) {
        return true;
      }
    }

    return false;
  }

  const _TestFileNotAssociatedToLibFile()
      : super(
            code: const LintCode(
          name: 'test_file_not_associated_to_lib_file',
          problemMessage:
              'Si on ne nomme pas un test en avec la même racine qu\'un fichier source, ils ne sont pas liés',
        ));
}
