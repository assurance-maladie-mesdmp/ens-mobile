// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_habitudes_de_vie_get.query.var.gql.g.dart';

abstract class Gget_habitudes_de_vieVars
    implements
        Built<Gget_habitudes_de_vieVars, Gget_habitudes_de_vieVarsBuilder> {
  Gget_habitudes_de_vieVars._();

  factory Gget_habitudes_de_vieVars(
          [void Function(Gget_habitudes_de_vieVarsBuilder b) updates]) =
      _$Gget_habitudes_de_vieVars;

  String get patientId;
  static Serializer<Gget_habitudes_de_vieVars> get serializer =>
      _$ggetHabitudesDeVieVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_habitudes_de_vieVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_habitudes_de_vieVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_habitudes_de_vieVars.serializer,
        json,
      );
}
