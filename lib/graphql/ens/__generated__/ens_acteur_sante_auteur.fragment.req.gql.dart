// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_acteur_sante_auteur.fragment.ast.gql.dart'
    as _i4;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_acteur_sante_auteur.fragment.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_acteur_sante_auteur.fragment.var.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i6;
import 'package:gql/ast.dart' as _i5;

part 'ens_acteur_sante_auteur.fragment.req.gql.g.dart';

abstract class GepisodePsAuteurReq
    implements
        Built<GepisodePsAuteurReq, GepisodePsAuteurReqBuilder>,
        _i1
        .FragmentRequest<_i2.GepisodePsAuteurData, _i3.GepisodePsAuteurVars> {
  GepisodePsAuteurReq._();

  factory GepisodePsAuteurReq(
          [void Function(GepisodePsAuteurReqBuilder b) updates]) =
      _$GepisodePsAuteurReq;

  static void _initializeBuilder(GepisodePsAuteurReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'episodePsAuteur';

  @override
  _i3.GepisodePsAuteurVars get vars;
  @override
  _i5.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GepisodePsAuteurData? parseData(Map<String, dynamic> json) =>
      _i2.GepisodePsAuteurData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GepisodePsAuteurData data) =>
      data.toJson();

  static Serializer<GepisodePsAuteurReq> get serializer =>
      _$gepisodePsAuteurReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GepisodePsAuteurReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GepisodePsAuteurReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GepisodePsAuteurReq.serializer,
        json,
      );
}

abstract class GepisodeEsAuteurReq
    implements
        Built<GepisodeEsAuteurReq, GepisodeEsAuteurReqBuilder>,
        _i1
        .FragmentRequest<_i2.GepisodeEsAuteurData, _i3.GepisodeEsAuteurVars> {
  GepisodeEsAuteurReq._();

  factory GepisodeEsAuteurReq(
          [void Function(GepisodeEsAuteurReqBuilder b) updates]) =
      _$GepisodeEsAuteurReq;

  static void _initializeBuilder(GepisodeEsAuteurReqBuilder b) => b
    ..document = _i4.document
    ..fragmentName = 'episodeEsAuteur';

  @override
  _i3.GepisodeEsAuteurVars get vars;
  @override
  _i5.DocumentNode get document;
  @override
  String? get fragmentName;
  @override
  Map<String, dynamic> get idFields;
  @override
  _i2.GepisodeEsAuteurData? parseData(Map<String, dynamic> json) =>
      _i2.GepisodeEsAuteurData.fromJson(json);

  @override
  Map<String, dynamic> varsToJson() => vars.toJson();

  @override
  Map<String, dynamic> dataToJson(_i2.GepisodeEsAuteurData data) =>
      data.toJson();

  static Serializer<GepisodeEsAuteurReq> get serializer =>
      _$gepisodeEsAuteurReqSerializer;

  Map<String, dynamic> toJson() => (_i6.serializers.serializeWith(
        GepisodeEsAuteurReq.serializer,
        this,
      ) as Map<String, dynamic>);

  static GepisodeEsAuteurReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(
        GepisodeEsAuteurReq.serializer,
        json,
      );
}
