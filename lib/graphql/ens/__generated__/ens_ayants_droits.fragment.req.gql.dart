// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_ayants_droits.fragment.ast.gql.dart'
    as _i4;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_ayants_droits.fragment.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_ayants_droits.fragment.var.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i6;
import 'package:gql/ast.dart' as _i5;

part 'ens_ayants_droits.fragment.req.gql.g.dart';

abstract class GayantDroitsReq
    implements
        Built<GayantDroitsReq, GayantDroitsReqBuilder>,
        _i1.FragmentRequest<_i2.GayantDroitsData, _i3.GayantDroitsVars> {
  GayantDroitsReq._();

  factory GayantDroitsReq([void Function(GayantDroitsReqBuilder b) updates]) =
      _$GayantDroitsReq;

  static void _initializeBuilder(GayantDroitsReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'ayantDroits';

  @override
  _i3.GayantDroitsVars get vars;
  @override
  _i5.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GayantDroitsData? parseData(Map<String, dynamic> json) =>
      _i2.GayantDroitsData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GayantDroitsData data) => data.toJson();

  static Serializer<GayantDroitsReq> get serializer =>
      _$gayantDroitsReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GayantDroitsReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GayantDroitsReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GayantDroitsReq.serializer,
        json,
      );
}
