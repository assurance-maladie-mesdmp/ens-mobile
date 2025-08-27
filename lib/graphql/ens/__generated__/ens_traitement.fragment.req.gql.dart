// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_traitement.fragment.ast.gql.dart'
    as _i4;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_traitement.fragment.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_traitement.fragment.var.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i6;
import 'package:gql/ast.dart' as _i5;

part 'ens_traitement.fragment.req.gql.g.dart';

abstract class GtraitementReq
    implements
        Built<GtraitementReq, GtraitementReqBuilder>,
        _i1.FragmentRequest<_i2.GtraitementData, _i3.GtraitementVars> {
  GtraitementReq._();

  factory GtraitementReq([void Function(GtraitementReqBuilder b) updates]) =
      _$GtraitementReq;

  static void _initializeBuilder(GtraitementReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'traitement';

  @override
  _i3.GtraitementVars get vars;
  @override
  _i5.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GtraitementData? parseData(Map<String, dynamic> json) =>
      _i2.GtraitementData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GtraitementData data) => data.toJson();

  static Serializer<GtraitementReq> get serializer =>
      _$gtraitementReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GtraitementReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GtraitementReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GtraitementReq.serializer,
        json,
      );
}

abstract class GmaladieLieReq
    implements
        Built<GmaladieLieReq, GmaladieLieReqBuilder>,
        _i1.FragmentRequest<_i2.GmaladieLieData, _i3.GmaladieLieVars> {
  GmaladieLieReq._();

  factory GmaladieLieReq([void Function(GmaladieLieReqBuilder b) updates]) =
      _$GmaladieLieReq;

  static void _initializeBuilder(GmaladieLieReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'maladieLie';

  @override
  _i3.GmaladieLieVars get vars;
  @override
  _i5.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GmaladieLieData? parseData(Map<String, dynamic> json) =>
      _i2.GmaladieLieData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GmaladieLieData data) => data.toJson();

  static Serializer<GmaladieLieReq> get serializer =>
      _$gmaladieLieReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GmaladieLieReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GmaladieLieReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GmaladieLieReq.serializer,
        json,
      );
}

abstract class GallergieLieReq
    implements
        Built<GallergieLieReq, GallergieLieReqBuilder>,
        _i1.FragmentRequest<_i2.GallergieLieData, _i3.GallergieLieVars> {
  GallergieLieReq._();

  factory GallergieLieReq([void Function(GallergieLieReqBuilder b) updates]) =
      _$GallergieLieReq;

  static void _initializeBuilder(GallergieLieReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'allergieLie';

  @override
  _i3.GallergieLieVars get vars;
  @override
  _i5.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GallergieLieData? parseData(Map<String, dynamic> json) =>
      _i2.GallergieLieData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GallergieLieData data) => data.toJson();

  static Serializer<GallergieLieReq> get serializer =>
      _$gallergieLieReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GallergieLieReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GallergieLieReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GallergieLieReq.serializer,
        json,
      );
}

abstract class GmaladieSansTraitementLieReq
    implements
        Built<GmaladieSansTraitementLieReq,
            GmaladieSansTraitementLieReqBuilder>,
        _i1.FragmentRequest<_i2.GmaladieSansTraitementLieData,
            _i3.GmaladieSansTraitementLieVars> {
  GmaladieSansTraitementLieReq._();

  factory GmaladieSansTraitementLieReq(
          [void Function(GmaladieSansTraitementLieReqBuilder b) updates]) =
      _$GmaladieSansTraitementLieReq;

  static void _initializeBuilder(GmaladieSansTraitementLieReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'maladieSansTraitementLie';

  @override
  _i3.GmaladieSansTraitementLieVars get vars;
  @override
  _i5.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GmaladieSansTraitementLieData? parseData(Map<String, dynamic> json) =>
      _i2.GmaladieSansTraitementLieData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GmaladieSansTraitementLieData data) =>
      data.toJson();

  static Serializer<GmaladieSansTraitementLieReq> get serializer =>
      _$gmaladieSansTraitementLieReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GmaladieSansTraitementLieReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GmaladieSansTraitementLieReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GmaladieSansTraitementLieReq.serializer,
        json,
      );
}
