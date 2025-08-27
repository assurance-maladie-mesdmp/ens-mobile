// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i2;

part 'ens_aidants_aides_accept_invitation_from_aide.query.var.gql.g.dart';

abstract class Gaccept_invitation_from_aideVars
    implements
        Built<Gaccept_invitation_from_aideVars,
            Gaccept_invitation_from_aideVarsBuilder> {
  Gaccept_invitation_from_aideVars._();

  factory Gaccept_invitation_from_aideVars(
          [void Function(Gaccept_invitation_from_aideVarsBuilder b) updates]) =
      _$Gaccept_invitation_from_aideVars;

  _i1.GDelegationAcceptInvitationInput get input;
  static Serializer<Gaccept_invitation_from_aideVars> get serializer =>
      _$gacceptInvitationFromAideVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        Gaccept_invitation_from_aideVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gaccept_invitation_from_aideVars? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        Gaccept_invitation_from_aideVars.serializer,
        json,
      );
}
