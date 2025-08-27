// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_questionnaire_ages_cles.fragment.ast.gql.dart'
    as _i4;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_questionnaire_ages_cles.fragment.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_questionnaire_ages_cles.fragment.var.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i6;
import 'package:gql/ast.dart' as _i5;

part 'ens_questionnaire_ages_cles.fragment.req.gql.g.dart';

abstract class GstartQuestionnaireReq
    implements
        Built<GstartQuestionnaireReq, GstartQuestionnaireReqBuilder>,
        _i1.FragmentRequest<_i2.GstartQuestionnaireData,
            _i3.GstartQuestionnaireVars> {
  GstartQuestionnaireReq._();

  factory GstartQuestionnaireReq(
          [void Function(GstartQuestionnaireReqBuilder b) updates]) =
      _$GstartQuestionnaireReq;

  static void _initializeBuilder(GstartQuestionnaireReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'startQuestionnaire';

  @override
  _i3.GstartQuestionnaireVars get vars;
  @override
  _i5.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GstartQuestionnaireData? parseData(Map<String, dynamic> json) =>
      _i2.GstartQuestionnaireData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GstartQuestionnaireData data) =>
      data.toJson();

  static Serializer<GstartQuestionnaireReq> get serializer =>
      _$gstartQuestionnaireReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GstartQuestionnaireReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GstartQuestionnaireReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GstartQuestionnaireReq.serializer,
        json,
      );
}

abstract class GendQuestionnaireReq
    implements
        Built<GendQuestionnaireReq, GendQuestionnaireReqBuilder>,
        _i1
        .FragmentRequest<_i2.GendQuestionnaireData, _i3.GendQuestionnaireVars> {
  GendQuestionnaireReq._();

  factory GendQuestionnaireReq(
          [void Function(GendQuestionnaireReqBuilder b) updates]) =
      _$GendQuestionnaireReq;

  static void _initializeBuilder(GendQuestionnaireReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'endQuestionnaire';

  @override
  _i3.GendQuestionnaireVars get vars;
  @override
  _i5.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GendQuestionnaireData? parseData(Map<String, dynamic> json) =>
      _i2.GendQuestionnaireData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GendQuestionnaireData data) =>
      data.toJson();

  static Serializer<GendQuestionnaireReq> get serializer =>
      _$gendQuestionnaireReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GendQuestionnaireReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GendQuestionnaireReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GendQuestionnaireReq.serializer,
        json,
      );
}

abstract class GquestionReq
    implements
        Built<GquestionReq, GquestionReqBuilder>,
        _i1.FragmentRequest<_i2.GquestionData, _i3.GquestionVars> {
  GquestionReq._();

  factory GquestionReq([void Function(GquestionReqBuilder b) updates]) =
      _$GquestionReq;

  static void _initializeBuilder(GquestionReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'question';

  @override
  _i3.GquestionVars get vars;
  @override
  _i5.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GquestionData? parseData(Map<String, dynamic> json) =>
      _i2.GquestionData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GquestionData data) => data.toJson();

  static Serializer<GquestionReq> get serializer => _$gquestionReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GquestionReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GquestionReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GquestionReq.serializer,
        json,
      );
}

abstract class GchoiceQuestionReq
    implements
        Built<GchoiceQuestionReq, GchoiceQuestionReqBuilder>,
        _i1.FragmentRequest<_i2.GchoiceQuestionData, _i3.GchoiceQuestionVars> {
  GchoiceQuestionReq._();

  factory GchoiceQuestionReq(
          [void Function(GchoiceQuestionReqBuilder b) updates]) =
      _$GchoiceQuestionReq;

  static void _initializeBuilder(GchoiceQuestionReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'choiceQuestion';

  @override
  _i3.GchoiceQuestionVars get vars;
  @override
  _i5.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GchoiceQuestionData? parseData(Map<String, dynamic> json) =>
      _i2.GchoiceQuestionData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GchoiceQuestionData data) =>
      data.toJson();

  static Serializer<GchoiceQuestionReq> get serializer =>
      _$gchoiceQuestionReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GchoiceQuestionReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GchoiceQuestionReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GchoiceQuestionReq.serializer,
        json,
      );
}

abstract class GconstraintsQuestionReq
    implements
        Built<GconstraintsQuestionReq, GconstraintsQuestionReqBuilder>,
        _i1.FragmentRequest<_i2.GconstraintsQuestionData,
            _i3.GconstraintsQuestionVars> {
  GconstraintsQuestionReq._();

  factory GconstraintsQuestionReq(
          [void Function(GconstraintsQuestionReqBuilder b) updates]) =
      _$GconstraintsQuestionReq;

  static void _initializeBuilder(GconstraintsQuestionReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'constraintsQuestion';

  @override
  _i3.GconstraintsQuestionVars get vars;
  @override
  _i5.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GconstraintsQuestionData? parseData(Map<String, dynamic> json) =>
      _i2.GconstraintsQuestionData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GconstraintsQuestionData data) =>
      data.toJson();

  static Serializer<GconstraintsQuestionReq> get serializer =>
      _$gconstraintsQuestionReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GconstraintsQuestionReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GconstraintsQuestionReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GconstraintsQuestionReq.serializer,
        json,
      );
}
