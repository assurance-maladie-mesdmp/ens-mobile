// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_groupe_sanguin_get_groupe_sanguin.query.var.gql.g.dart';

abstract class Gget_groupe_sanguinVars
    implements Built<Gget_groupe_sanguinVars, Gget_groupe_sanguinVarsBuilder> {
  Gget_groupe_sanguinVars._();

  factory Gget_groupe_sanguinVars(
          [void Function(Gget_groupe_sanguinVarsBuilder b) updates]) =
      _$Gget_groupe_sanguinVars;

  String get patientId;
  static Serializer<Gget_groupe_sanguinVars> get serializer =>
      _$ggetGroupeSanguinVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_groupe_sanguinVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_groupe_sanguinVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_groupe_sanguinVars.serializer,
        json,
      );
}
