// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_agenda_examen_recommande.fragment.var.gql.g.dart';

abstract class GexamenRecommandeVars
    implements Built<GexamenRecommandeVars, GexamenRecommandeVarsBuilder> {
  GexamenRecommandeVars._();

  factory GexamenRecommandeVars(
          [void Function(GexamenRecommandeVarsBuilder b) updates]) =
      _$GexamenRecommandeVars;

  static Serializer<GexamenRecommandeVars> get serializer =>
      _$gexamenRecommandeVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GexamenRecommandeVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GexamenRecommandeVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GexamenRecommandeVars.serializer,
        json,
      );
}
