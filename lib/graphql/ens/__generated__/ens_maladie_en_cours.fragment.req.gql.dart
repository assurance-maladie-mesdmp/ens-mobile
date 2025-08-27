// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_maladie_en_cours.fragment.ast.gql.dart'
    as _i4;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_maladie_en_cours.fragment.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_maladie_en_cours.fragment.var.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i6;
import 'package:gql/ast.dart' as _i5;

part 'ens_maladie_en_cours.fragment.req.gql.g.dart';

abstract class GmaladieEnCoursReq
    implements
        Built<GmaladieEnCoursReq, GmaladieEnCoursReqBuilder>,
        _i1.FragmentRequest<_i2.GmaladieEnCoursData, _i3.GmaladieEnCoursVars> {
  GmaladieEnCoursReq._();

  factory GmaladieEnCoursReq(
          [void Function(GmaladieEnCoursReqBuilder b) updates]) =
      _$GmaladieEnCoursReq;

  static void _initializeBuilder(GmaladieEnCoursReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'maladieEnCours';

  @override
  _i3.GmaladieEnCoursVars get vars;
  @override
  _i5.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GmaladieEnCoursData? parseData(Map<String, dynamic> json) =>
      _i2.GmaladieEnCoursData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GmaladieEnCoursData data) =>
      data.toJson();

  static Serializer<GmaladieEnCoursReq> get serializer =>
      _$gmaladieEnCoursReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GmaladieEnCoursReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GmaladieEnCoursReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GmaladieEnCoursReq.serializer,
        json,
      );
}
