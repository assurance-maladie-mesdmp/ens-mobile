// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i2;

part 'ens_aidants_aides_send_invitation_to_potentiel_aidant.query.var.gql.g.dart';

abstract class Gsend_invitation_to_potentiel_aidantVars
    implements
        Built<Gsend_invitation_to_potentiel_aidantVars,
            Gsend_invitation_to_potentiel_aidantVarsBuilder> {
  Gsend_invitation_to_potentiel_aidantVars._();

  factory Gsend_invitation_to_potentiel_aidantVars(
      [void Function(Gsend_invitation_to_potentiel_aidantVarsBuilder b)
          updates]) = _$Gsend_invitation_to_potentiel_aidantVars;

  _i1.GDelegationInviteToCaregivingInput get delegationInviteToCaregivingInput;
  static Serializer<Gsend_invitation_to_potentiel_aidantVars> get serializer =>
      _$gsendInvitationToPotentielAidantVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        Gsend_invitation_to_potentiel_aidantVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gsend_invitation_to_potentiel_aidantVars? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        Gsend_invitation_to_potentiel_aidantVars.serializer,
        json,
      );
}
