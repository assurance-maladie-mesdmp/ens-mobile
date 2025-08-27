// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i2;

part 'ens_ps_role_add_role_or_add_ps_and_role.var.gql.g.dart';

abstract class Gupdate_professionel_sante_roleVars
    implements
        Built<Gupdate_professionel_sante_roleVars,
            Gupdate_professionel_sante_roleVarsBuilder> {
  Gupdate_professionel_sante_roleVars._();

  factory Gupdate_professionel_sante_roleVars(
      [void Function(Gupdate_professionel_sante_roleVarsBuilder b)
          updates]) = _$Gupdate_professionel_sante_roleVars;

  String get patientId;
  String get psNationalId;
  _i1.GHealthProfessionalRoleEnum get role;
  static Serializer<Gupdate_professionel_sante_roleVars> get serializer =>
      _$gupdateProfessionelSanteRoleVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        Gupdate_professionel_sante_roleVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gupdate_professionel_sante_roleVars? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        Gupdate_professionel_sante_roleVars.serializer,
        json,
      );
}
