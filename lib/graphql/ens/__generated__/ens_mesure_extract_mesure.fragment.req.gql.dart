// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_mesure_extract_mesure.fragment.ast.gql.dart'
    as _i4;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_mesure_extract_mesure.fragment.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_mesure_extract_mesure.fragment.var.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i6;
import 'package:gql/ast.dart' as _i5;

part 'ens_mesure_extract_mesure.fragment.req.gql.g.dart';

abstract class GextractMesureReq
    implements
        Built<GextractMesureReq, GextractMesureReqBuilder>,
        _i1.FragmentRequest<_i2.GextractMesureData, _i3.GextractMesureVars> {
  GextractMesureReq._();

  factory GextractMesureReq(
          [void Function(GextractMesureReqBuilder b) updates]) =
      _$GextractMesureReq;

  static void _initializeBuilder(GextractMesureReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'extractMesure';

  @override
  _i3.GextractMesureVars get vars;
  @override
  _i5.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GextractMesureData? parseData(Map<String, dynamic> json) =>
      _i2.GextractMesureData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GextractMesureData data) => data.toJson();

  static Serializer<GextractMesureReq> get serializer =>
      _$gextractMesureReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GextractMesureReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GextractMesureReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GextractMesureReq.serializer,
        json,
      );
}
