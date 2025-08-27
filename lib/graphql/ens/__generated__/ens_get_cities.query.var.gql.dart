// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i2;

part 'ens_get_cities.query.var.gql.g.dart';

abstract class Gget_citiesVars
    implements Built<Gget_citiesVars, Gget_citiesVarsBuilder> {
  Gget_citiesVars._();

  factory Gget_citiesVars([void Function(Gget_citiesVarsBuilder b) updates]) =
      _$Gget_citiesVars;

  _i1.GGetCityInput get input;
  static Serializer<Gget_citiesVars> get serializer =>
      _$ggetCitiesVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        Gget_citiesVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_citiesVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        Gget_citiesVars.serializer,
        json,
      );
}
