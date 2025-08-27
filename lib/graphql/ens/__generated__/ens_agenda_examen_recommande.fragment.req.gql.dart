// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_agenda_examen_recommande.fragment.ast.gql.dart'
    as _i4;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_agenda_examen_recommande.fragment.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_agenda_examen_recommande.fragment.var.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i6;
import 'package:gql/ast.dart' as _i5;

part 'ens_agenda_examen_recommande.fragment.req.gql.g.dart';

abstract class GexamenRecommandeReq
    implements
        Built<GexamenRecommandeReq, GexamenRecommandeReqBuilder>,
        _i1
        .FragmentRequest<_i2.GexamenRecommandeData, _i3.GexamenRecommandeVars> {
  GexamenRecommandeReq._();

  factory GexamenRecommandeReq(
          [void Function(GexamenRecommandeReqBuilder b) updates]) =
      _$GexamenRecommandeReq;

  static void _initializeBuilder(GexamenRecommandeReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'examenRecommande';

  @override
  _i3.GexamenRecommandeVars get vars;
  @override
  _i5.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GexamenRecommandeData? parseData(Map<String, dynamic> json) =>
      _i2.GexamenRecommandeData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GexamenRecommandeData data) =>
      data.toJson();

  static Serializer<GexamenRecommandeReq> get serializer =>
      _$gexamenRecommandeReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GexamenRecommandeReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GexamenRecommandeReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GexamenRecommandeReq.serializer,
        json,
      );
}
