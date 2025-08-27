// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_catalogue_services.fragment.ast.gql.dart'
    as _i4;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_catalogue_services.fragment.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_catalogue_services.fragment.var.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i6;
import 'package:gql/ast.dart' as _i5;

part 'ens_catalogue_services.fragment.req.gql.g.dart';

abstract class GserviceReq
    implements
        Built<GserviceReq, GserviceReqBuilder>,
        _i1.FragmentRequest<_i2.GserviceData, _i3.GserviceVars> {
  GserviceReq._();

  factory GserviceReq([void Function(GserviceReqBuilder b) updates]) =
      _$GserviceReq;

  static void _initializeBuilder(GserviceReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'service';

  @override
  _i3.GserviceVars get vars;
  @override
  _i5.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GserviceData? parseData(Map<String, dynamic> json) =>
      _i2.GserviceData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GserviceData data) => data.toJson();

  static Serializer<GserviceReq> get serializer => _$gserviceReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GserviceReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GserviceReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GserviceReq.serializer,
        json,
      );
}

abstract class GregionReq
    implements
        Built<GregionReq, GregionReqBuilder>,
        _i1.FragmentRequest<_i2.GregionData, _i3.GregionVars> {
  GregionReq._();

  factory GregionReq([void Function(GregionReqBuilder b) updates]) =
      _$GregionReq;

  static void _initializeBuilder(GregionReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'region';

  @override
  _i3.GregionVars get vars;
  @override
  _i5.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GregionData? parseData(Map<String, dynamic> json) =>
      _i2.GregionData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GregionData data) => data.toJson();

  static Serializer<GregionReq> get serializer => _$gregionReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GregionReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GregionReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GregionReq.serializer,
        json,
      );
}

abstract class GthematicsReq
    implements
        Built<GthematicsReq, GthematicsReqBuilder>,
        _i1.FragmentRequest<_i2.GthematicsData, _i3.GthematicsVars> {
  GthematicsReq._();

  factory GthematicsReq([void Function(GthematicsReqBuilder b) updates]) =
      _$GthematicsReq;

  static void _initializeBuilder(GthematicsReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'thematics';

  @override
  _i3.GthematicsVars get vars;
  @override
  _i5.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GthematicsData? parseData(Map<String, dynamic> json) =>
      _i2.GthematicsData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GthematicsData data) => data.toJson();

  static Serializer<GthematicsReq> get serializer => _$gthematicsReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GthematicsReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GthematicsReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GthematicsReq.serializer,
        json,
      );
}
