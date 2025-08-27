// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_questionnaire_ages_cles.fragment.var.gql.g.dart';

abstract class GstartQuestionnaireVars
    implements Built<GstartQuestionnaireVars, GstartQuestionnaireVarsBuilder> {
  GstartQuestionnaireVars._();

  factory GstartQuestionnaireVars(
          [void Function(GstartQuestionnaireVarsBuilder b) updates]) =
      _$GstartQuestionnaireVars;

  static Serializer<GstartQuestionnaireVars> get serializer =>
      _$gstartQuestionnaireVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GstartQuestionnaireVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GstartQuestionnaireVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GstartQuestionnaireVars.serializer,
        json,
      );
}

abstract class GendQuestionnaireVars
    implements Built<GendQuestionnaireVars, GendQuestionnaireVarsBuilder> {
  GendQuestionnaireVars._();

  factory GendQuestionnaireVars(
          [void Function(GendQuestionnaireVarsBuilder b) updates]) =
      _$GendQuestionnaireVars;

  static Serializer<GendQuestionnaireVars> get serializer =>
      _$gendQuestionnaireVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GendQuestionnaireVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GendQuestionnaireVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GendQuestionnaireVars.serializer,
        json,
      );
}

abstract class GquestionVars
    implements Built<GquestionVars, GquestionVarsBuilder> {
  GquestionVars._();

  factory GquestionVars([void Function(GquestionVarsBuilder b) updates]) =
      _$GquestionVars;

  static Serializer<GquestionVars> get serializer => _$gquestionVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GquestionVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GquestionVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GquestionVars.serializer,
        json,
      );
}

abstract class GchoiceQuestionVars
    implements Built<GchoiceQuestionVars, GchoiceQuestionVarsBuilder> {
  GchoiceQuestionVars._();

  factory GchoiceQuestionVars(
          [void Function(GchoiceQuestionVarsBuilder b) updates]) =
      _$GchoiceQuestionVars;

  static Serializer<GchoiceQuestionVars> get serializer =>
      _$gchoiceQuestionVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GchoiceQuestionVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GchoiceQuestionVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GchoiceQuestionVars.serializer,
        json,
      );
}

abstract class GconstraintsQuestionVars
    implements
        Built<GconstraintsQuestionVars, GconstraintsQuestionVarsBuilder> {
  GconstraintsQuestionVars._();

  factory GconstraintsQuestionVars(
          [void Function(GconstraintsQuestionVarsBuilder b) updates]) =
      _$GconstraintsQuestionVars;

  static Serializer<GconstraintsQuestionVars> get serializer =>
      _$gconstraintsQuestionVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GconstraintsQuestionVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GconstraintsQuestionVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GconstraintsQuestionVars.serializer,
        json,
      );
}
