// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_discipline.fragment.ast.gql.dart'
    as _i4;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_discipline.fragment.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_discipline.fragment.var.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i6;
import 'package:gql/ast.dart' as _i5;

part 'ens_discipline.fragment.req.gql.g.dart';

abstract class GdisciplineResponseReq
    implements
        Built<GdisciplineResponseReq, GdisciplineResponseReqBuilder>,
        _i1.FragmentRequest<_i2.GdisciplineResponseData,
            _i3.GdisciplineResponseVars> {
  GdisciplineResponseReq._();

  factory GdisciplineResponseReq(
          [void Function(GdisciplineResponseReqBuilder b) updates]) =
      _$GdisciplineResponseReq;

  static void _initializeBuilder(GdisciplineResponseReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'disciplineResponse';

  @override
  _i3.GdisciplineResponseVars get vars;
  @override
  _i5.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GdisciplineResponseData? parseData(Map<String, dynamic> json) =>
      _i2.GdisciplineResponseData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GdisciplineResponseData data) =>
      data.toJson();

  static Serializer<GdisciplineResponseReq> get serializer =>
      _$gdisciplineResponseReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GdisciplineResponseReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GdisciplineResponseReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GdisciplineResponseReq.serializer,
        json,
      );
}
