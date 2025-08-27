// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_vaccination_get_vaccin_by_cip.query.var.gql.g.dart';

abstract class Gget_vaccin_by_cipVars
    implements Built<Gget_vaccin_by_cipVars, Gget_vaccin_by_cipVarsBuilder> {
  Gget_vaccin_by_cipVars._();

  factory Gget_vaccin_by_cipVars(
          [void Function(Gget_vaccin_by_cipVarsBuilder b) updates]) =
      _$Gget_vaccin_by_cipVars;

  String get cipCode;
  static Serializer<Gget_vaccin_by_cipVars> get serializer =>
      _$ggetVaccinByCipVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_vaccin_by_cipVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_vaccin_by_cipVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_vaccin_by_cipVars.serializer,
        json,
      );
}
