// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_acteur_sante_auteur.fragment.var.gql.g.dart';

abstract class GepisodePsAuteurVars
    implements Built<GepisodePsAuteurVars, GepisodePsAuteurVarsBuilder> {
  GepisodePsAuteurVars._();

  factory GepisodePsAuteurVars(
          [void Function(GepisodePsAuteurVarsBuilder b) updates]) =
      _$GepisodePsAuteurVars;

  static Serializer<GepisodePsAuteurVars> get serializer =>
      _$gepisodePsAuteurVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GepisodePsAuteurVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GepisodePsAuteurVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GepisodePsAuteurVars.serializer,
        json,
      );
}

abstract class GepisodeEsAuteurVars
    implements Built<GepisodeEsAuteurVars, GepisodeEsAuteurVarsBuilder> {
  GepisodeEsAuteurVars._();

  factory GepisodeEsAuteurVars(
          [void Function(GepisodeEsAuteurVarsBuilder b) updates]) =
      _$GepisodeEsAuteurVars;

  static Serializer<GepisodeEsAuteurVars> get serializer =>
      _$gepisodeEsAuteurVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GepisodeEsAuteurVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GepisodeEsAuteurVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GepisodeEsAuteurVars.serializer,
        json,
      );
}
