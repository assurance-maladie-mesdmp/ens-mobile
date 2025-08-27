// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_ps.fragment.ast.gql.dart'
    as _i4;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_ps.fragment.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_ps.fragment.var.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i6;
import 'package:gql/ast.dart' as _i5;

part 'ens_ps.fragment.req.gql.g.dart';

abstract class GpsReq
    implements
        Built<GpsReq, GpsReqBuilder>,
        _i1.FragmentRequest<_i2.GpsData, _i3.GpsVars> {
  GpsReq._();

  factory GpsReq([void Function(GpsReqBuilder b) updates]) = _$GpsReq;

  static void _initializeBuilder(GpsReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'ps';

  @override
  _i3.GpsVars get vars;
  @override
  _i5.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GpsData? parseData(Map<String, dynamic> json) =>
      _i2.GpsData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GpsData data) => data.toJson();

  static Serializer<GpsReq> get serializer => _$gpsReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GpsReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GpsReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GpsReq.serializer,
        json,
      );
}
