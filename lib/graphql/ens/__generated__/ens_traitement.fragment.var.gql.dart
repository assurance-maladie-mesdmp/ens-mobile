// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_traitement.fragment.var.gql.g.dart';

abstract class GtraitementVars
    implements Built<GtraitementVars, GtraitementVarsBuilder> {
  GtraitementVars._();

  factory GtraitementVars([void Function(GtraitementVarsBuilder b) updates]) =
      _$GtraitementVars;

  static Serializer<GtraitementVars> get serializer =>
      _$gtraitementVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GtraitementVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GtraitementVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GtraitementVars.serializer,
        json,
      );
}

abstract class GmaladieLieVars
    implements Built<GmaladieLieVars, GmaladieLieVarsBuilder> {
  GmaladieLieVars._();

  factory GmaladieLieVars([void Function(GmaladieLieVarsBuilder b) updates]) =
      _$GmaladieLieVars;

  static Serializer<GmaladieLieVars> get serializer =>
      _$gmaladieLieVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GmaladieLieVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GmaladieLieVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GmaladieLieVars.serializer,
        json,
      );
}

abstract class GallergieLieVars
    implements Built<GallergieLieVars, GallergieLieVarsBuilder> {
  GallergieLieVars._();

  factory GallergieLieVars([void Function(GallergieLieVarsBuilder b) updates]) =
      _$GallergieLieVars;

  static Serializer<GallergieLieVars> get serializer =>
      _$gallergieLieVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GallergieLieVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GallergieLieVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GallergieLieVars.serializer,
        json,
      );
}

abstract class GmaladieSansTraitementLieVars
    implements
        Built<GmaladieSansTraitementLieVars,
            GmaladieSansTraitementLieVarsBuilder> {
  GmaladieSansTraitementLieVars._();

  factory GmaladieSansTraitementLieVars(
          [void Function(GmaladieSansTraitementLieVarsBuilder b) updates]) =
      _$GmaladieSansTraitementLieVars;

  static Serializer<GmaladieSansTraitementLieVars> get serializer =>
      _$gmaladieSansTraitementLieVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GmaladieSansTraitementLieVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GmaladieSansTraitementLieVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GmaladieSansTraitementLieVars.serializer,
        json,
      );
}
