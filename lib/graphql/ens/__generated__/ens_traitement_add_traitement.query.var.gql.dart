// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i2;

part 'ens_traitement_add_traitement.query.var.gql.g.dart';

abstract class Gadd_traitementVars
    implements Built<Gadd_traitementVars, Gadd_traitementVarsBuilder> {
  Gadd_traitementVars._();

  factory Gadd_traitementVars(
          [void Function(Gadd_traitementVarsBuilder b) updates]) =
      _$Gadd_traitementVars;

  _i1.GTreatmentInput get treatment;
  static Serializer<Gadd_traitementVars> get serializer =>
      _$gaddTraitementVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        Gadd_traitementVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gadd_traitementVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        Gadd_traitementVars.serializer,
        json,
      );
}
