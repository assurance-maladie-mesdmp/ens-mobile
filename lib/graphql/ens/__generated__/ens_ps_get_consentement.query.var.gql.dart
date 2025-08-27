// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i2;

part 'ens_ps_get_consentement.query.var.gql.g.dart';

abstract class Gget_consentement_psVars
    implements
        Built<Gget_consentement_psVars, Gget_consentement_psVarsBuilder> {
  Gget_consentement_psVars._();

  factory Gget_consentement_psVars(
          [void Function(Gget_consentement_psVarsBuilder b) updates]) =
      _$Gget_consentement_psVars;

  _i1.GGetDmpConsentementInput get dmpConsentementInput;
  static Serializer<Gget_consentement_psVars> get serializer =>
      _$ggetConsentementPsVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        Gget_consentement_psVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_consentement_psVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        Gget_consentement_psVars.serializer,
        json,
      );
}
