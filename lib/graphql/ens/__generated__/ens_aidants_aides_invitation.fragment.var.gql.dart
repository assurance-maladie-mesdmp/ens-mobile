// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_aidants_aides_invitation.fragment.var.gql.g.dart';

abstract class GinvitationVars
    implements Built<GinvitationVars, GinvitationVarsBuilder> {
  GinvitationVars._();

  factory GinvitationVars([void Function(GinvitationVarsBuilder b) updates]) =
      _$GinvitationVars;

  static Serializer<GinvitationVars> get serializer =>
      _$ginvitationVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GinvitationVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GinvitationVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GinvitationVars.serializer,
        json,
      );
}
