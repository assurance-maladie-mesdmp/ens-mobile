// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i2;

part 'ens_aidants_aides_delete_delegation.query.var.gql.g.dart';

abstract class Gdelete_delegationVars
    implements Built<Gdelete_delegationVars, Gdelete_delegationVarsBuilder> {
  Gdelete_delegationVars._();

  factory Gdelete_delegationVars(
          [void Function(Gdelete_delegationVarsBuilder b) updates]) =
      _$Gdelete_delegationVars;

  _i1.GDelegationRevokeInput get input;
  static Serializer<Gdelete_delegationVars> get serializer =>
      _$gdeleteDelegationVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        Gdelete_delegationVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gdelete_delegationVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        Gdelete_delegationVars.serializer,
        json,
      );
}
