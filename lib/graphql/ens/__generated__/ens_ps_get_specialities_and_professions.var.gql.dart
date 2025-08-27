// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_ps_get_specialities_and_professions.var.gql.g.dart';

abstract class Gget_specialities_and_professionsVars
    implements
        Built<Gget_specialities_and_professionsVars,
            Gget_specialities_and_professionsVarsBuilder> {
  Gget_specialities_and_professionsVars._();

  factory Gget_specialities_and_professionsVars(
      [void Function(Gget_specialities_and_professionsVarsBuilder b)
          updates]) = _$Gget_specialities_and_professionsVars;

  static Serializer<Gget_specialities_and_professionsVars> get serializer =>
      _$ggetSpecialitiesAndProfessionsVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_specialities_and_professionsVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_specialities_and_professionsVars? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_specialities_and_professionsVars.serializer,
        json,
      );
}
