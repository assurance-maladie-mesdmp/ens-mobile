// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_es.fragment.ast.gql.dart'
    as _i4;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_es.fragment.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_es.fragment.var.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i6;
import 'package:gql/ast.dart' as _i5;

part 'ens_es.fragment.req.gql.g.dart';

abstract class Gadresse_ps_esReq
    implements
        Built<Gadresse_ps_esReq, Gadresse_ps_esReqBuilder>,
        _i1.FragmentRequest<_i2.Gadresse_ps_esData, _i3.Gadresse_ps_esVars> {
  Gadresse_ps_esReq._();

  factory Gadresse_ps_esReq(
          [void Function(Gadresse_ps_esReqBuilder b) updates]) =
      _$Gadresse_ps_esReq;

  static void _initializeBuilder(Gadresse_ps_esReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'adresse_ps_es';

  @override
  _i3.Gadresse_ps_esVars get vars;
  @override
  _i5.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.Gadresse_ps_esData? parseData(Map<String, dynamic> json) =>
      _i2.Gadresse_ps_esData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.Gadresse_ps_esData data) => data.toJson();

  static Serializer<Gadresse_ps_esReq> get serializer =>
      _$gadressePsEsReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        Gadresse_ps_esReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gadresse_ps_esReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        Gadresse_ps_esReq.serializer,
        json,
      );
}
