// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i2;

part 'ens_ps_add_ps.query.var.gql.g.dart';

abstract class Gadd_professionnel_de_santeVars
    implements
        Built<Gadd_professionnel_de_santeVars,
            Gadd_professionnel_de_santeVarsBuilder> {
  Gadd_professionnel_de_santeVars._();

  factory Gadd_professionnel_de_santeVars(
          [void Function(Gadd_professionnel_de_santeVarsBuilder b) updates]) =
      _$Gadd_professionnel_de_santeVars;

  String get patientId;
  String get psId;
  _i1.GHealthProfessionalRoleEnum? get role;
  static Serializer<Gadd_professionnel_de_santeVars> get serializer =>
      _$gaddProfessionnelDeSanteVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        Gadd_professionnel_de_santeVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gadd_professionnel_de_santeVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        Gadd_professionnel_de_santeVars.serializer,
        json,
      );
}
