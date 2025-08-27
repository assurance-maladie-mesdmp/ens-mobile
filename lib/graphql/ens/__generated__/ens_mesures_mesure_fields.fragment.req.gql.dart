// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_mesures_mesure_fields.fragment.ast.gql.dart'
    as _i4;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_mesures_mesure_fields.fragment.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_mesures_mesure_fields.fragment.var.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i6;
import 'package:gql/ast.dart' as _i5;

part 'ens_mesures_mesure_fields.fragment.req.gql.g.dart';

abstract class GmesureFieldsReq
    implements
        Built<GmesureFieldsReq, GmesureFieldsReqBuilder>,
        _i1.FragmentRequest<_i2.GmesureFieldsData, _i3.GmesureFieldsVars> {
  GmesureFieldsReq._();

  factory GmesureFieldsReq([void Function(GmesureFieldsReqBuilder b) updates]) =
      _$GmesureFieldsReq;

  static void _initializeBuilder(GmesureFieldsReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'mesureFields';

  @override
  _i3.GmesureFieldsVars get vars;
  @override
  _i5.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GmesureFieldsData? parseData(Map<String, dynamic> json) =>
      _i2.GmesureFieldsData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GmesureFieldsData data) => data.toJson();

  static Serializer<GmesureFieldsReq> get serializer =>
      _$gmesureFieldsReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GmesureFieldsReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GmesureFieldsReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GmesureFieldsReq.serializer,
        json,
      );
}
