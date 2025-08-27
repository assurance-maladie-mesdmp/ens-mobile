// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_document_dossier_fragment.ast.gql.dart'
    as _i4;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_document_dossier_fragment.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_document_dossier_fragment.var.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i6;
import 'package:gql/ast.dart' as _i5;

part 'ens_document_dossier_fragment.req.gql.g.dart';

abstract class GdossierReq
    implements
        Built<GdossierReq, GdossierReqBuilder>,
        _i1.FragmentRequest<_i2.GdossierData, _i3.GdossierVars> {
  GdossierReq._();

  factory GdossierReq([void Function(GdossierReqBuilder b) updates]) =
      _$GdossierReq;

  static void _initializeBuilder(GdossierReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'dossier';

  @override
  _i3.GdossierVars get vars;
  @override
  _i5.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GdossierData? parseData(Map<String, dynamic> json) =>
      _i2.GdossierData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GdossierData data) => data.toJson();

  static Serializer<GdossierReq> get serializer => _$gdossierReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GdossierReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GdossierReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GdossierReq.serializer,
        json,
      );
}
