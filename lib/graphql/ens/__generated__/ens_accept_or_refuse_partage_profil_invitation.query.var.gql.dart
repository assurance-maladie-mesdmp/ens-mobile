// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i2;

part 'ens_accept_or_refuse_partage_profil_invitation.query.var.gql.g.dart';

abstract class Gaccept_or_refuse_partage_profil_invitationVars
    implements
        Built<Gaccept_or_refuse_partage_profil_invitationVars,
            Gaccept_or_refuse_partage_profil_invitationVarsBuilder> {
  Gaccept_or_refuse_partage_profil_invitationVars._();

  factory Gaccept_or_refuse_partage_profil_invitationVars(
      [void Function(Gaccept_or_refuse_partage_profil_invitationVarsBuilder b)
          updates]) = _$Gaccept_or_refuse_partage_profil_invitationVars;

  _i1.GAccessValidatedOrRejectedInput get accessValidatedOrRejectedInput;
  static Serializer<Gaccept_or_refuse_partage_profil_invitationVars>
      get serializer => _$gacceptOrRefusePartageProfilInvitationVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        Gaccept_or_refuse_partage_profil_invitationVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gaccept_or_refuse_partage_profil_invitationVars? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        Gaccept_or_refuse_partage_profil_invitationVars.serializer,
        json,
      );
}
