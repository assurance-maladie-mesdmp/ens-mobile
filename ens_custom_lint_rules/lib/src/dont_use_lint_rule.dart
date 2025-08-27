/*
  Copyright (c) 2020-2025 Caisse Nationale d’Assurance Maladie et Ministère de la Santé et de l’Accès aux Soins. All rights reserved.
  Use of this source code is governed by a CeCILL v2.1 license that can be found in the LICENSE file.
*/

part of 'ens_custom_lint_rules_base.dart';

class _DontUseSingleChildScrollView extends DartLintRule {
  @override
  void run(CustomLintResolver resolver, ErrorReporter reporter, CustomLintContext context) {
    context.registry.addConstructorName((node) {
      var staticElement = node.staticElement;
      if (staticElement != null) {
        var className = staticElement.enclosingElement.name;
        var classDisplayName = staticElement.enclosingElement.displayName;
        if (className == 'SingleChildScrollView' || classDisplayName == 'SingleChildScrollView') {
          reporter.reportErrorForNode(code, node);
        }
      }
    });
  }

  @override
  List<Fix> getFixes() {
    return [_DontUseSingleChildScrollViewFix()];
  }

  const _DontUseSingleChildScrollView()
      : super(
          code: const LintCode(
            name: 'dont_use_singlechildscrollview',
            problemMessage: 'On ne doit pas utiliser SingleChildScrollView mais ScrollviewWithScrollbar',
          ),
        );
}

class _DontUseSingleChildScrollViewFix extends DartFix {
  @override
  void run(
    CustomLintResolver resolver,
    ChangeReporter reporter,
    CustomLintContext context,
    AnalysisError analysisError,
    List<AnalysisError> others,
  ) {
    final changeBuilder = reporter.createChangeBuilder(
      message: 'Remplacer par ScrollviewWithScrollbar',
      priority: 1,
    );
    changeBuilder.addDartFileEdit((builder) {
      builder.addSimpleReplacement(
        SourceRange(analysisError.offset, analysisError.length),
        'ScrollviewWithScrollbar',
      );
      builder.importLibraryElement(Uri.parse('package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart'));
    });
  }
}

class _DontUseListView extends DartLintRule {
  @override
  void run(CustomLintResolver resolver, ErrorReporter reporter, CustomLintContext context) {
    context.registry.addConstructorName((node) {
      var staticElement = node.staticElement;
      if (staticElement != null) {
        var className = staticElement.enclosingElement.name;
        var classDisplayName = staticElement.enclosingElement.displayName;
        if (className == 'ListView' || classDisplayName == 'ListView') {
          reporter.reportErrorForNode(code, node);
        }
      }
    });
  }

  @override
  List<Fix> getFixes() {
    return [_DontUseListViewFix()];
  }

  const _DontUseListView()
      : super(
          code: const LintCode(
            name: 'dont_use_listview',
            problemMessage: 'On ne doit pas utiliser ListView mais ListViewWithScrollbar',
          ),
        );
}

class _DontUseListViewFix extends DartFix {
  @override
  void run(
    CustomLintResolver resolver,
    ChangeReporter reporter,
    CustomLintContext context,
    AnalysisError analysisError,
    List<AnalysisError> others,
  ) {
    final changeBuilder = reporter.createChangeBuilder(
      message: 'Remplacer par ListViewWithScrollbar',
      priority: 1,
    );
    changeBuilder.addDartFileEdit((builder) {
      builder.addSimpleReplacement(
        SourceRange(analysisError.offset, 8),
        'ListViewWithScrollbar',
      );
      builder.importLibraryElement(Uri.parse('package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart'));
    });
  }
}

class _DontUseCustomScrollView extends DartLintRule {
  @override
  void run(CustomLintResolver resolver, ErrorReporter reporter, CustomLintContext context) {
    context.registry.addConstructorName((node) {
      var staticElement = node.staticElement;
      if (staticElement != null) {
        var className = staticElement.enclosingElement.name;
        var classDisplayName = staticElement.enclosingElement.displayName;
        if (className == 'CustomScrollView' || classDisplayName == 'CustomScrollView') {
          reporter.reportErrorForNode(code, node);
        }
      }
    });
  }

  @override
  List<Fix> getFixes() {
    return [_DontUseCustomScrollViewFix()];
  }

  const _DontUseCustomScrollView()
      : super(
          code: const LintCode(
            name: 'dont_use_customscrollview',
            problemMessage: 'On ne doit pas utiliser CustomScrollView mais CustomScrollViewWithScrollbar',
          ),
        );
}

class _DontUseCustomScrollViewFix extends DartFix {
  @override
  void run(
    CustomLintResolver resolver,
    ChangeReporter reporter,
    CustomLintContext context,
    AnalysisError analysisError,
    List<AnalysisError> others,
  ) {
    final changeBuilder = reporter.createChangeBuilder(
      message: 'Remplacer par CustomScrollViewWithScrollbar',
      priority: 1,
    );
    changeBuilder.addDartFileEdit((builder) {
      builder.addSimpleReplacement(
        SourceRange(analysisError.offset, analysisError.length),
        'CustomScrollViewWithScrollbar',
      );
      builder.importLibraryElement(Uri.parse('package:fr_cnamts_ens/ui/widgets/scrollview_with_scrollbar.dart'));
    });
  }
}

class _DontUseRichText extends DartLintRule {
  @override
  void run(CustomLintResolver resolver, ErrorReporter reporter, CustomLintContext context) {
    context.registry.addConstructorName((node) {
      var staticElement = node.staticElement;
      if (staticElement != null) {
        var className = staticElement.enclosingElement.name;
        var classDisplayName = staticElement.enclosingElement.displayName;
        if (className == 'RichText' || classDisplayName == 'RichText') {
          reporter.reportErrorForNode(code, node);
        }
      }
    });
  }

  @override
  List<Fix> getFixes() {
    return [_DontUseRichTextFix()];
  }

  const _DontUseRichText()
      : super(
          code: const LintCode(
            name: 'dont_use_richtext',
            problemMessage: 'On ne doit pas utiliser RichText mais EnsRichText',
          ),
        );
}

class _DontUseRichTextFix extends DartFix {
  @override
  void run(
    CustomLintResolver resolver,
    ChangeReporter reporter,
    CustomLintContext context,
    AnalysisError analysisError,
    List<AnalysisError> others,
  ) {
    final changeBuilder = reporter.createChangeBuilder(
      message: 'Remplacer par EnsRichText',
      priority: 1,
    );
    changeBuilder.addDartFileEdit((builder) {
      builder.addSimpleReplacement(
        SourceRange(analysisError.offset, analysisError.length),
        'EnsRichText',
      );
      builder.importLibraryElement(Uri.parse('package:fr_cnamts_ens/ui/widgets/ens_rich_text.dart'));
    });
  }
}

class _DontUsePopScope extends DartLintRule {
  @override
  void run(CustomLintResolver resolver, ErrorReporter reporter, CustomLintContext context) {
    context.registry.addConstructorName((node) {
      var staticElement = node.staticElement;
      if (staticElement != null) {
        var className = staticElement.enclosingElement.name;
        var classDisplayName = staticElement.enclosingElement.displayName;
        if (className == 'PopScope' || classDisplayName == 'PopScope') {
          reporter.reportErrorForNode(code, node);
        }
      }
    });
  }

  @override
  List<Fix> getFixes() {
    return [_DontUsePopScopeFix()];
  }

  const _DontUsePopScope()
      : super(
          code: const LintCode(
            name: 'dont_use_popscope',
            problemMessage: 'On ne doit pas utiliser PopScope mais EnsPopScope',
          ),
        );
}

class _DontUsePopScopeFix extends DartFix {
  @override
  void run(
    CustomLintResolver resolver,
    ChangeReporter reporter,
    CustomLintContext context,
    AnalysisError analysisError,
    List<AnalysisError> others,
  ) {
    final changeBuilder = reporter.createChangeBuilder(
      message: 'Remplacer par EnsPopScope',
      priority: 1,
    );
    changeBuilder.addDartFileEdit((builder) {
      builder.addSimpleReplacement(
        SourceRange(analysisError.offset, analysisError.length),
        'EnsPopScope',
      );
      builder.importLibraryElement(Uri.parse('package:fr_cnamts_ens/ui/widgets/ens_pop_scope.dart'));
    });
  }
}

class _DontUseHardCodedAssetPath extends DartLintRule {
  @override
  void run(CustomLintResolver resolver, ErrorReporter reporter, CustomLintContext context) {
    context.registry.addSimpleStringLiteral((node) {
      var value = node.value;
      if (value.startsWith('assets/images')) {
        reporter.reportErrorForNode(code, node);
      }
    });
  }

  const _DontUseHardCodedAssetPath()
      : super(
          code: const LintCode(
            name: 'dont_use_hard_coded_asset_path',
            problemMessage: 'On ne doit pas utiliser de chemin d\'asset codé en dur',
            correctionMessage:
                'Utiliser les constantes de la classe EnsImages générée par la commande \'Spider build\'',
          ),
        );
}

class _DontUseInkWell extends DartLintRule {
  @override
  void run(CustomLintResolver resolver, ErrorReporter reporter, CustomLintContext context) {
    context.registry.addConstructorName((node) {
      var staticElement = node.staticElement;
      if (staticElement != null) {
        var className = staticElement.enclosingElement.name;
        var classDisplayName = staticElement.enclosingElement.displayName;
        if (className == 'InkWell' || classDisplayName == 'InkWell') {
          reporter.reportErrorForNode(code, node);
        }
      }
    });
  }

  @override
  List<Fix> getFixes() {
    return [_DontUseInkWellFix()];
  }

  const _DontUseInkWell()
      : super(
          code: const LintCode(
            name: 'dont_use_inkwell',
            problemMessage: 'On ne doit pas utiliser InkWell mais EnsInkWell',
          ),
        );
}

class _DontUseInkWellFix extends DartFix {
  @override
  void run(
    CustomLintResolver resolver,
    ChangeReporter reporter,
    CustomLintContext context,
    AnalysisError analysisError,
    List<AnalysisError> others,
  ) {
    final changeBuilder = reporter.createChangeBuilder(
      message: 'Remplacer par EnsInkWell',
      priority: 1,
    );
    changeBuilder.addDartFileEdit((builder) {
      builder.addSimpleReplacement(
        SourceRange(analysisError.offset, analysisError.length),
        'EnsInkWell',
      );
      builder.importLibraryElement(Uri.parse('package:fr_cnamts_ens/ui/widgets/ens_ink_well.dart'));
    });
  }
}

class _DontUseSvgPictureAsset extends DartLintRule {
  @override
  void run(CustomLintResolver resolver, ErrorReporter reporter, CustomLintContext context) {
    context.registry.addConstructorName((node) {
      var staticElement = node.staticElement;
      if (staticElement != null) {
        var classDisplayName = staticElement.displayName;
        if (classDisplayName == 'SvgPicture.asset') {
          reporter.reportErrorForNode(code, node);
        }
      }
    });
  }

  @override
  List<Fix> getFixes() {
    return [_DontUseSvgPictureAssetFix()];
  }

  const _DontUseSvgPictureAsset()
      : super(
          code: const LintCode(
            name: 'dont_use_svg_picture_asset',
            problemMessage: 'On ne doit pas utiliser SvgPicture.asset mais EnsSvg',
          ),
        );
}

class _DontUseSvgPictureAssetFix extends DartFix {
  @override
  void run(
    CustomLintResolver resolver,
    ChangeReporter reporter,
    CustomLintContext context,
    AnalysisError analysisError,
    List<AnalysisError> others,
  ) {
    final changeBuilder = reporter.createChangeBuilder(
      message: 'Remplacer par EnsSvg',
      priority: 1,
    );
    changeBuilder.addDartFileEdit((builder) {
      builder.addSimpleReplacement(
        SourceRange(analysisError.offset, analysisError.length),
        'EnsSvg',
      );
      builder.importLibraryElement(Uri.parse('package:fr_cnamts_ens/ui/widgets/ens_svg.dart'));
    });
  }
}

class _DontUseForm extends DartLintRule {
  @override
  void run(CustomLintResolver resolver, ErrorReporter reporter, CustomLintContext context) {
    context.registry.addConstructorName((node) {
      var staticElement = node.staticElement;
      if (staticElement != null) {
        var className = staticElement.enclosingElement.name;
        var classDisplayName = staticElement.enclosingElement.displayName;
        if (className == 'Form' || classDisplayName == 'Form') {
          reporter.reportErrorForNode(code, node);
        }
      }
    });
  }

  @override
  List<Fix> getFixes() {
    return [_DontUseFormFix()];
  }

  const _DontUseForm()
      : super(
          code: const LintCode(
            name: 'dont_use_form',
            problemMessage: 'On ne doit pas utiliser Form mais EnsForm',
          ),
        );
}

class _DontUseFormFix extends DartFix {
  @override
  void run(
    CustomLintResolver resolver,
    ChangeReporter reporter,
    CustomLintContext context,
    AnalysisError analysisError,
    List<AnalysisError> others,
  ) {
    final changeBuilder = reporter.createChangeBuilder(
      message: 'Remplacer par EnsForm',
      priority: 1,
    );
    changeBuilder.addDartFileEdit((builder) {
      builder.addSimpleReplacement(
        SourceRange(analysisError.offset, analysisError.length),
        'EnsForm',
      );
      builder.importLibraryElement(Uri.parse('package:fr_cnamts_ens/ui/widgets/ens_form.dart'));
    });
  }
}
