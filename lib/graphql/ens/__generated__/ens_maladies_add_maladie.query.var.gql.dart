// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i2;

part 'ens_maladies_add_maladie.query.var.gql.g.dart';

abstract class Gadd_maladieVars
    implements Built<Gadd_maladieVars, Gadd_maladieVarsBuilder> {
  Gadd_maladieVars._();

  factory Gadd_maladieVars([void Function(Gadd_maladieVarsBuilder b) updates]) =
      _$Gadd_maladieVars;

  _i1.GDiseaseInput get disease;
  static Serializer<Gadd_maladieVars> get serializer =>
      _$gaddMaladieVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        Gadd_maladieVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gadd_maladieVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        Gadd_maladieVars.serializer,
        json,
      );
}
