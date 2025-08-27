// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_maladies.fragment.ast.gql.dart'
    as _i4;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_maladies.fragment.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_maladies.fragment.var.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i6;
import 'package:gql/ast.dart' as _i5;

part 'ens_maladies.fragment.req.gql.g.dart';

abstract class GmaladieReq
    implements
        Built<GmaladieReq, GmaladieReqBuilder>,
        _i1.FragmentRequest<_i2.GmaladieData, _i3.GmaladieVars> {
  GmaladieReq._();

  factory GmaladieReq([void Function(GmaladieReqBuilder b) updates]) =
      _$GmaladieReq;

  static void _initializeBuilder(GmaladieReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'maladie';

  @override
  _i3.GmaladieVars get vars;
  @override
  _i5.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GmaladieData? parseData(Map<String, dynamic> json) =>
      _i2.GmaladieData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GmaladieData data) => data.toJson();

  static Serializer<GmaladieReq> get serializer => _$gmaladieReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GmaladieReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GmaladieReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GmaladieReq.serializer,
        json,
      );
}

abstract class GtraitementLieReq
    implements
        Built<GtraitementLieReq, GtraitementLieReqBuilder>,
        _i1.FragmentRequest<_i2.GtraitementLieData, _i3.GtraitementLieVars> {
  GtraitementLieReq._();

  factory GtraitementLieReq(
          [void Function(GtraitementLieReqBuilder b) updates]) =
      _$GtraitementLieReq;

  static void _initializeBuilder(GtraitementLieReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'traitementLie';

  @override
  _i3.GtraitementLieVars get vars;
  @override
  _i5.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GtraitementLieData? parseData(Map<String, dynamic> json) =>
      _i2.GtraitementLieData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GtraitementLieData data) => data.toJson();

  static Serializer<GtraitementLieReq> get serializer =>
      _$gtraitementLieReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GtraitementLieReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GtraitementLieReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GtraitementLieReq.serializer,
        json,
      );
}
