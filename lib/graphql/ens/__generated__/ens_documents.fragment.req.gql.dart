// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_documents.fragment.ast.gql.dart'
    as _i4;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_documents.fragment.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_documents.fragment.var.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i6;
import 'package:gql/ast.dart' as _i5;

part 'ens_documents.fragment.req.gql.g.dart';

abstract class GensDocumentReq
    implements
        Built<GensDocumentReq, GensDocumentReqBuilder>,
        _i1.FragmentRequest<_i2.GensDocumentData, _i3.GensDocumentVars> {
  GensDocumentReq._();

  factory GensDocumentReq([void Function(GensDocumentReqBuilder b) updates]) =
      _$GensDocumentReq;

  static void _initializeBuilder(GensDocumentReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'ensDocument';

  @override
  _i3.GensDocumentVars get vars;
  @override
  _i5.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GensDocumentData? parseData(Map<String, dynamic> json) =>
      _i2.GensDocumentData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GensDocumentData data) => data.toJson();

  static Serializer<GensDocumentReq> get serializer =>
      _$gensDocumentReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GensDocumentReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GensDocumentReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GensDocumentReq.serializer,
        json,
      );
}
