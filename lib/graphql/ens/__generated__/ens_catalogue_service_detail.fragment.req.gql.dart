// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_catalogue_service_detail.fragment.ast.gql.dart'
    as _i4;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_catalogue_service_detail.fragment.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_catalogue_service_detail.fragment.var.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i6;
import 'package:gql/ast.dart' as _i5;

part 'ens_catalogue_service_detail.fragment.req.gql.g.dart';

abstract class GdetailServiceReq
    implements
        Built<GdetailServiceReq, GdetailServiceReqBuilder>,
        _i1.FragmentRequest<_i2.GdetailServiceData, _i3.GdetailServiceVars> {
  GdetailServiceReq._();

  factory GdetailServiceReq(
          [void Function(GdetailServiceReqBuilder b) updates]) =
      _$GdetailServiceReq;

  static void _initializeBuilder(GdetailServiceReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'detailService';

  @override
  _i3.GdetailServiceVars get vars;
  @override
  _i5.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GdetailServiceData? parseData(Map<String, dynamic> json) =>
      _i2.GdetailServiceData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GdetailServiceData data) => data.toJson();

  static Serializer<GdetailServiceReq> get serializer =>
      _$gdetailServiceReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GdetailServiceReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GdetailServiceReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GdetailServiceReq.serializer,
        json,
      );
}
