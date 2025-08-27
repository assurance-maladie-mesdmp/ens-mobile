// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i2;

part 'ens_get_ayants_droits.query.var.gql.g.dart';

abstract class Gget_ayants_droitsVars
    implements Built<Gget_ayants_droitsVars, Gget_ayants_droitsVarsBuilder> {
  Gget_ayants_droitsVars._();

  factory Gget_ayants_droitsVars(
          [void Function(Gget_ayants_droitsVarsBuilder b) updates]) =
      _$Gget_ayants_droitsVars;

  _i1.GGetAyantsDroitsInput get input;
  _i1.GGetPendingInvitationInput get getPendingInvitationsInput;
  static Serializer<Gget_ayants_droitsVars> get serializer =>
      _$ggetAyantsDroitsVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        Gget_ayants_droitsVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_ayants_droitsVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        Gget_ayants_droitsVars.serializer,
        json,
      );
}
