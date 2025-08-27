// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i2;

part 'ens_aidants_aides_fetch_potentiel_aidant.query.var.gql.g.dart';

abstract class Gfetch_potentiel_aidantVars
    implements
        Built<Gfetch_potentiel_aidantVars, Gfetch_potentiel_aidantVarsBuilder> {
  Gfetch_potentiel_aidantVars._();

  factory Gfetch_potentiel_aidantVars(
          [void Function(Gfetch_potentiel_aidantVarsBuilder b) updates]) =
      _$Gfetch_potentiel_aidantVars;

  _i1.GDelegationMatchPotentialDelegateInput
      get delegationMatchPotentialDelegateInput;
  static Serializer<Gfetch_potentiel_aidantVars> get serializer =>
      _$gfetchPotentielAidantVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        Gfetch_potentiel_aidantVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gfetch_potentiel_aidantVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        Gfetch_potentiel_aidantVars.serializer,
        json,
      );
}
