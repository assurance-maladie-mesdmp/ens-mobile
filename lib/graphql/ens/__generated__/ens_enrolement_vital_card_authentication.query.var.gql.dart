// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i2;

part 'ens_enrolement_vital_card_authentication.query.var.gql.g.dart';

abstract class Gvital_card_authenticationVars
    implements
        Built<Gvital_card_authenticationVars,
            Gvital_card_authenticationVarsBuilder> {
  Gvital_card_authenticationVars._();

  factory Gvital_card_authenticationVars(
          [void Function(Gvital_card_authenticationVarsBuilder b) updates]) =
      _$Gvital_card_authenticationVars;

  _i1.GVitalCardAuthenticationInput get input;
  static Serializer<Gvital_card_authenticationVars> get serializer =>
      _$gvitalCardAuthenticationVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        Gvital_card_authenticationVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gvital_card_authenticationVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        Gvital_card_authenticationVars.serializer,
        json,
      );
}
