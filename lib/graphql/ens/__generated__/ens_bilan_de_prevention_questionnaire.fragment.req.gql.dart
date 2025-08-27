// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_bilan_de_prevention_questionnaire.fragment.ast.gql.dart'
    as _i4;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_bilan_de_prevention_questionnaire.fragment.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_bilan_de_prevention_questionnaire.fragment.var.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i6;
import 'package:gql/ast.dart' as _i5;

part 'ens_bilan_de_prevention_questionnaire.fragment.req.gql.g.dart';

abstract class GquestionnaireReq
    implements
        Built<GquestionnaireReq, GquestionnaireReqBuilder>,
        _i1.FragmentRequest<_i2.GquestionnaireData, _i3.GquestionnaireVars> {
  GquestionnaireReq._();

  factory GquestionnaireReq(
          [void Function(GquestionnaireReqBuilder b) updates]) =
      _$GquestionnaireReq;

  static void _initializeBuilder(GquestionnaireReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'questionnaire';

  @override
  _i3.GquestionnaireVars get vars;
  @override
  _i5.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GquestionnaireData? parseData(Map<String, dynamic> json) =>
      _i2.GquestionnaireData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GquestionnaireData data) => data.toJson();

  static Serializer<GquestionnaireReq> get serializer =>
      _$gquestionnaireReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GquestionnaireReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GquestionnaireReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GquestionnaireReq.serializer,
        json,
      );
}
