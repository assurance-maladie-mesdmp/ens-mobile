// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_ps_role_remove_role.var.gql.g.dart';

abstract class Gdelete_professionnel_sante_roleVars
    implements
        Built<Gdelete_professionnel_sante_roleVars,
            Gdelete_professionnel_sante_roleVarsBuilder> {
  Gdelete_professionnel_sante_roleVars._();

  factory Gdelete_professionnel_sante_roleVars(
      [void Function(Gdelete_professionnel_sante_roleVarsBuilder b)
          updates]) = _$Gdelete_professionnel_sante_roleVars;

  String get patientId;
  String get psIdNat;
  static Serializer<Gdelete_professionnel_sante_roleVars> get serializer =>
      _$gdeleteProfessionnelSanteRoleVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gdelete_professionnel_sante_roleVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gdelete_professionnel_sante_roleVars? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gdelete_professionnel_sante_roleVars.serializer,
        json,
      );
}
