// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_enrolement_liste_rattachement.fragment.ast.gql.dart'
    as _i4;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_enrolement_liste_rattachement.fragment.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_enrolement_liste_rattachement.fragment.var.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i6;
import 'package:gql/ast.dart' as _i5;

part 'ens_enrolement_liste_rattachement.fragment.req.gql.g.dart';

abstract class GprofilRattacheReq
    implements
        Built<GprofilRattacheReq, GprofilRattacheReqBuilder>,
        _i1.FragmentRequest<_i2.GprofilRattacheData, _i3.GprofilRattacheVars> {
  GprofilRattacheReq._();

  factory GprofilRattacheReq(
          [void Function(GprofilRattacheReqBuilder b) updates]) =
      _$GprofilRattacheReq;

  static void _initializeBuilder(GprofilRattacheReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'profilRattache';

  @override
  _i3.GprofilRattacheVars get vars;
  @override
  _i5.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GprofilRattacheData? parseData(Map<String, dynamic> json) =>
      _i2.GprofilRattacheData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GprofilRattacheData data) =>
      data.toJson();

  static Serializer<GprofilRattacheReq> get serializer =>
      _$gprofilRattacheReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GprofilRattacheReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GprofilRattacheReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GprofilRattacheReq.serializer,
        json,
      );
}
