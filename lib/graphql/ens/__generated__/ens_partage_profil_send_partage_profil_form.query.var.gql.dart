// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i2;

part 'ens_partage_profil_send_partage_profil_form.query.var.gql.g.dart';

abstract class Gsend_partage_profil_formVars
    implements
        Built<Gsend_partage_profil_formVars,
            Gsend_partage_profil_formVarsBuilder> {
  Gsend_partage_profil_formVars._();

  factory Gsend_partage_profil_formVars(
          [void Function(Gsend_partage_profil_formVarsBuilder b) updates]) =
      _$Gsend_partage_profil_formVars;

  _i1.GInvitationSecondRLInput get invitationSecondRLInput;
  static Serializer<Gsend_partage_profil_formVars> get serializer =>
      _$gsendPartageProfilFormVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        Gsend_partage_profil_formVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gsend_partage_profil_formVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        Gsend_partage_profil_formVars.serializer,
        json,
      );
}
