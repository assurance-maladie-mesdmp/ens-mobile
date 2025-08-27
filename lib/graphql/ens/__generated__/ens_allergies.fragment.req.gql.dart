// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_allergies.fragment.ast.gql.dart'
    as _i4;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_allergies.fragment.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_allergies.fragment.var.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i6;
import 'package:gql/ast.dart' as _i5;

part 'ens_allergies.fragment.req.gql.g.dart';

abstract class GallergieReq
    implements
        Built<GallergieReq, GallergieReqBuilder>,
        _i1.FragmentRequest<_i2.GallergieData, _i3.GallergieVars> {
  GallergieReq._();

  factory GallergieReq([void Function(GallergieReqBuilder b) updates]) =
      _$GallergieReq;

  static void _initializeBuilder(GallergieReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'allergie';

  @override
  _i3.GallergieVars get vars;
  @override
  _i5.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GallergieData? parseData(Map<String, dynamic> json) =>
      _i2.GallergieData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GallergieData data) => data.toJson();

  static Serializer<GallergieReq> get serializer => _$gallergieReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GallergieReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GallergieReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GallergieReq.serializer,
        json,
      );
}
