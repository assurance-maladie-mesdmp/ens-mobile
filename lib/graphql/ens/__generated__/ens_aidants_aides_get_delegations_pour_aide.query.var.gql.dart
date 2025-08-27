// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_aidants_aides_get_delegations_pour_aide.query.var.gql.g.dart';

abstract class Gget_delegations_pour_aideVars
    implements
        Built<Gget_delegations_pour_aideVars,
            Gget_delegations_pour_aideVarsBuilder> {
  Gget_delegations_pour_aideVars._();

  factory Gget_delegations_pour_aideVars(
          [void Function(Gget_delegations_pour_aideVarsBuilder b) updates]) =
      _$Gget_delegations_pour_aideVars;

  static Serializer<Gget_delegations_pour_aideVars> get serializer =>
      _$ggetDelegationsPourAideVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_delegations_pour_aideVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_delegations_pour_aideVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_delegations_pour_aideVars.serializer,
        json,
      );
}
