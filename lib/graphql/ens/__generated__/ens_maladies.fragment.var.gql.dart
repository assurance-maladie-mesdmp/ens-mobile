// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_maladies.fragment.var.gql.g.dart';

abstract class GmaladieVars
    implements Built<GmaladieVars, GmaladieVarsBuilder> {
  GmaladieVars._();

  factory GmaladieVars([void Function(GmaladieVarsBuilder b) updates]) =
      _$GmaladieVars;

  static Serializer<GmaladieVars> get serializer => _$gmaladieVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GmaladieVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GmaladieVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GmaladieVars.serializer,
        json,
      );
}

abstract class GtraitementLieVars
    implements Built<GtraitementLieVars, GtraitementLieVarsBuilder> {
  GtraitementLieVars._();

  factory GtraitementLieVars(
          [void Function(GtraitementLieVarsBuilder b) updates]) =
      _$GtraitementLieVars;

  static Serializer<GtraitementLieVars> get serializer =>
      _$gtraitementLieVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GtraitementLieVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GtraitementLieVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GtraitementLieVars.serializer,
        json,
      );
}
