// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_allergies.fragment.var.gql.g.dart';

abstract class GallergieVars
    implements Built<GallergieVars, GallergieVarsBuilder> {
  GallergieVars._();

  factory GallergieVars([void Function(GallergieVarsBuilder b) updates]) =
      _$GallergieVars;

  static Serializer<GallergieVars> get serializer => _$gallergieVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GallergieVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GallergieVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GallergieVars.serializer,
        json,
      );
}
