// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_aidants_aides_get_invitations_from_aides.query.var.gql.g.dart';

abstract class Gget_invitations_from_aidesVars
    implements
        Built<Gget_invitations_from_aidesVars,
            Gget_invitations_from_aidesVarsBuilder> {
  Gget_invitations_from_aidesVars._();

  factory Gget_invitations_from_aidesVars(
          [void Function(Gget_invitations_from_aidesVarsBuilder b) updates]) =
      _$Gget_invitations_from_aidesVars;

  static Serializer<Gget_invitations_from_aidesVars> get serializer =>
      _$ggetInvitationsFromAidesVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_invitations_from_aidesVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_invitations_from_aidesVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_invitations_from_aidesVars.serializer,
        json,
      );
}
