// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_mesures_metadata_fields.fragment.ast.gql.dart'
    as _i4;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_mesures_metadata_fields.fragment.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_mesures_metadata_fields.fragment.var.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i6;
import 'package:gql/ast.dart' as _i5;

part 'ens_mesures_metadata_fields.fragment.req.gql.g.dart';

abstract class GmetadataFieldsReq
    implements
        Built<GmetadataFieldsReq, GmetadataFieldsReqBuilder>,
        _i1.FragmentRequest<_i2.GmetadataFieldsData, _i3.GmetadataFieldsVars> {
  GmetadataFieldsReq._();

  factory GmetadataFieldsReq(
          [void Function(GmetadataFieldsReqBuilder b) updates]) =
      _$GmetadataFieldsReq;

  static void _initializeBuilder(GmetadataFieldsReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'metadataFields';

  @override
  _i3.GmetadataFieldsVars get vars;
  @override
  _i5.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GmetadataFieldsData? parseData(Map<String, dynamic> json) =>
      _i2.GmetadataFieldsData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GmetadataFieldsData data) =>
      data.toJson();

  static Serializer<GmetadataFieldsReq> get serializer =>
      _$gmetadataFieldsReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GmetadataFieldsReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GmetadataFieldsReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GmetadataFieldsReq.serializer,
        json,
      );
}
