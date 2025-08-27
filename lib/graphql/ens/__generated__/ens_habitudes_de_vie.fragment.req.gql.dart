// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_habitudes_de_vie.fragment.ast.gql.dart'
    as _i4;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_habitudes_de_vie.fragment.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_habitudes_de_vie.fragment.var.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i6;
import 'package:gql/ast.dart' as _i5;

part 'ens_habitudes_de_vie.fragment.req.gql.g.dart';

abstract class GhabitudesDeVieReq
    implements
        Built<GhabitudesDeVieReq, GhabitudesDeVieReqBuilder>,
        _i1.FragmentRequest<_i2.GhabitudesDeVieData, _i3.GhabitudesDeVieVars> {
  GhabitudesDeVieReq._();

  factory GhabitudesDeVieReq(
          [void Function(GhabitudesDeVieReqBuilder b) updates]) =
      _$GhabitudesDeVieReq;

  static void _initializeBuilder(GhabitudesDeVieReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'habitudesDeVie';

  @override
  _i3.GhabitudesDeVieVars get vars;
  @override
  _i5.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GhabitudesDeVieData? parseData(Map<String, dynamic> json) =>
      _i2.GhabitudesDeVieData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GhabitudesDeVieData data) =>
      data.toJson();

  static Serializer<GhabitudesDeVieReq> get serializer =>
      _$ghabitudesDeVieReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GhabitudesDeVieReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GhabitudesDeVieReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GhabitudesDeVieReq.serializer,
        json,
      );
}
