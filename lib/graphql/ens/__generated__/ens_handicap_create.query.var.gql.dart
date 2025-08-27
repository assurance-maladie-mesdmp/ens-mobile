// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i2;

part 'ens_handicap_create.query.var.gql.g.dart';

abstract class Gadd_handicapVars
    implements Built<Gadd_handicapVars, Gadd_handicapVarsBuilder> {
  Gadd_handicapVars._();

  factory Gadd_handicapVars(
          [void Function(Gadd_handicapVarsBuilder b) updates]) =
      _$Gadd_handicapVars;

  _i1.GDisabilityInput get disabilityInput;
  static Serializer<Gadd_handicapVars> get serializer =>
      _$gaddHandicapVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        Gadd_handicapVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gadd_handicapVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        Gadd_handicapVars.serializer,
        json,
      );
}
