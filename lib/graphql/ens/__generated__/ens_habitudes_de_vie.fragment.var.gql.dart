// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_habitudes_de_vie.fragment.var.gql.g.dart';

abstract class GhabitudesDeVieVars
    implements Built<GhabitudesDeVieVars, GhabitudesDeVieVarsBuilder> {
  GhabitudesDeVieVars._();

  factory GhabitudesDeVieVars(
          [void Function(GhabitudesDeVieVarsBuilder b) updates]) =
      _$GhabitudesDeVieVars;

  static Serializer<GhabitudesDeVieVars> get serializer =>
      _$ghabitudesDeVieVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GhabitudesDeVieVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GhabitudesDeVieVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GhabitudesDeVieVars.serializer,
        json,
      );
}
