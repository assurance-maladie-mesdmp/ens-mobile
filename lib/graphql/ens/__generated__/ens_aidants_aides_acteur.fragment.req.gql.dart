// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_aidants_aides_acteur.fragment.ast.gql.dart'
    as _i4;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_aidants_aides_acteur.fragment.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_aidants_aides_acteur.fragment.var.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i6;
import 'package:gql/ast.dart' as _i5;

part 'ens_aidants_aides_acteur.fragment.req.gql.g.dart';

abstract class GacteurReq
    implements
        Built<GacteurReq, GacteurReqBuilder>,
        _i1.FragmentRequest<_i2.GacteurData, _i3.GacteurVars> {
  GacteurReq._();

  factory GacteurReq([void Function(GacteurReqBuilder b) updates]) =
      _$GacteurReq;

  static void _initializeBuilder(GacteurReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'acteur';

  @override
  _i3.GacteurVars get vars;
  @override
  _i5.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GacteurData? parseData(Map<String, dynamic> json) =>
      _i2.GacteurData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GacteurData data) => data.toJson();

  static Serializer<GacteurReq> get serializer => _$gacteurReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GacteurReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GacteurReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GacteurReq.serializer,
        json,
      );
}
