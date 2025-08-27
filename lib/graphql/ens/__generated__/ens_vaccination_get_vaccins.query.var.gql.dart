// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_vaccination_get_vaccins.query.var.gql.g.dart';

abstract class Gget_vaccinsVars
    implements Built<Gget_vaccinsVars, Gget_vaccinsVarsBuilder> {
  Gget_vaccinsVars._();

  factory Gget_vaccinsVars([void Function(Gget_vaccinsVarsBuilder b) updates]) =
      _$Gget_vaccinsVars;

  static Serializer<Gget_vaccinsVars> get serializer =>
      _$ggetVaccinsVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_vaccinsVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_vaccinsVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_vaccinsVars.serializer,
        json,
      );
}
