// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_messagerie_message_response.fragment.ast.gql.dart'
    as _i4;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_messagerie_message_response.fragment.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_messagerie_message_response.fragment.var.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i6;
import 'package:gql/ast.dart' as _i5;

part 'ens_messagerie_message_response.fragment.req.gql.g.dart';

abstract class GmessageResponseReq
    implements
        Built<GmessageResponseReq, GmessageResponseReqBuilder>,
        _i1
        .FragmentRequest<_i2.GmessageResponseData, _i3.GmessageResponseVars> {
  GmessageResponseReq._();

  factory GmessageResponseReq(
          [void Function(GmessageResponseReqBuilder b) updates]) =
      _$GmessageResponseReq;

  static void _initializeBuilder(GmessageResponseReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'messageResponse';

  @override
  _i3.GmessageResponseVars get vars;
  @override
  _i5.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GmessageResponseData? parseData(Map<String, dynamic> json) =>
      _i2.GmessageResponseData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GmessageResponseData data) =>
      data.toJson();

  static Serializer<GmessageResponseReq> get serializer =>
      _$gmessageResponseReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GmessageResponseReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GmessageResponseReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GmessageResponseReq.serializer,
        json,
      );
}

abstract class GContactDetailFragmentReq
    implements
        Built<GContactDetailFragmentReq, GContactDetailFragmentReqBuilder>,
        _i1.FragmentRequest<_i2.GContactDetailFragmentData,
            _i3.GContactDetailFragmentVars> {
  GContactDetailFragmentReq._();

  factory GContactDetailFragmentReq(
          [void Function(GContactDetailFragmentReqBuilder b) updates]) =
      _$GContactDetailFragmentReq;

  static void _initializeBuilder(GContactDetailFragmentReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'ContactDetailFragment';

  @override
  _i3.GContactDetailFragmentVars get vars;
  @override
  _i5.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GContactDetailFragmentData? parseData(Map<String, dynamic> json) =>
      _i2.GContactDetailFragmentData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GContactDetailFragmentData data) =>
      data.toJson();

  static Serializer<GContactDetailFragmentReq> get serializer =>
      _$gContactDetailFragmentReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GContactDetailFragmentReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GContactDetailFragmentReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GContactDetailFragmentReq.serializer,
        json,
      );
}
