// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_traitement_get_traitements.query.var.gql.g.dart';

abstract class Gget_traitementsVars
    implements Built<Gget_traitementsVars, Gget_traitementsVarsBuilder> {
  Gget_traitementsVars._();

  factory Gget_traitementsVars(
          [void Function(Gget_traitementsVarsBuilder b) updates]) =
      _$Gget_traitementsVars;

  String get patientId;
  static Serializer<Gget_traitementsVars> get serializer =>
      _$ggetTraitementsVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_traitementsVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_traitementsVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_traitementsVars.serializer,
        json,
      );
}
