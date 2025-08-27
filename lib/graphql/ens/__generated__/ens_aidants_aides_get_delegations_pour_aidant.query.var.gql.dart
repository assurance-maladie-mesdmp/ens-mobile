// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_aidants_aides_get_delegations_pour_aidant.query.var.gql.g.dart';

abstract class Gget_delegations_pour_aidantVars
    implements
        Built<Gget_delegations_pour_aidantVars,
            Gget_delegations_pour_aidantVarsBuilder> {
  Gget_delegations_pour_aidantVars._();

  factory Gget_delegations_pour_aidantVars(
          [void Function(Gget_delegations_pour_aidantVarsBuilder b) updates]) =
      _$Gget_delegations_pour_aidantVars;

  static Serializer<Gget_delegations_pour_aidantVars> get serializer =>
      _$ggetDelegationsPourAidantVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_delegations_pour_aidantVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_delegations_pour_aidantVars? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_delegations_pour_aidantVars.serializer,
        json,
      );
}
