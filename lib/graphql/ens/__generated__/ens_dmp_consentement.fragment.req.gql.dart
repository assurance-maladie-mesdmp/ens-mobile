// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_dmp_consentement.fragment.ast.gql.dart'
    as _i4;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_dmp_consentement.fragment.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_dmp_consentement.fragment.var.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i6;
import 'package:gql/ast.dart' as _i5;

part 'ens_dmp_consentement.fragment.req.gql.g.dart';

abstract class GdmpConsentementReq
    implements
        Built<GdmpConsentementReq, GdmpConsentementReqBuilder>,
        _i1
        .FragmentRequest<_i2.GdmpConsentementData, _i3.GdmpConsentementVars> {
  GdmpConsentementReq._();

  factory GdmpConsentementReq(
          [void Function(GdmpConsentementReqBuilder b) updates]) =
      _$GdmpConsentementReq;

  static void _initializeBuilder(GdmpConsentementReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'dmpConsentement';

  @override
  _i3.GdmpConsentementVars get vars;
  @override
  _i5.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GdmpConsentementData? parseData(Map<String, dynamic> json) =>
      _i2.GdmpConsentementData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GdmpConsentementData data) =>
      data.toJson();

  static Serializer<GdmpConsentementReq> get serializer =>
      _$gdmpConsentementReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GdmpConsentementReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GdmpConsentementReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GdmpConsentementReq.serializer,
        json,
      );
}
