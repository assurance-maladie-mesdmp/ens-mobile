// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_maladies_get_maladies.query.var.gql.g.dart';

abstract class Gget_maladiesVars
    implements Built<Gget_maladiesVars, Gget_maladiesVarsBuilder> {
  Gget_maladiesVars._();

  factory Gget_maladiesVars(
          [void Function(Gget_maladiesVarsBuilder b) updates]) =
      _$Gget_maladiesVars;

  String get patientId;
  static Serializer<Gget_maladiesVars> get serializer =>
      _$ggetMaladiesVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_maladiesVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_maladiesVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_maladiesVars.serializer,
        json,
      );
}
