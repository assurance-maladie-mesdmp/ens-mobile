// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i2;

part 'ens_add_consent_for_service_by_oid.query.var.gql.g.dart';

abstract class Gadd_consent_for_service_by_oidVars
    implements
        Built<Gadd_consent_for_service_by_oidVars,
            Gadd_consent_for_service_by_oidVarsBuilder> {
  Gadd_consent_for_service_by_oidVars._();

  factory Gadd_consent_for_service_by_oidVars(
      [void Function(Gadd_consent_for_service_by_oidVarsBuilder b)
          updates]) = _$Gadd_consent_for_service_by_oidVars;

  _i1.GChangeFinalityConsentByServiceOidInput
      get addFinalityConsentByServiceOid;
  static Serializer<Gadd_consent_for_service_by_oidVars> get serializer =>
      _$gaddConsentForServiceByOidVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        Gadd_consent_for_service_by_oidVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gadd_consent_for_service_by_oidVars? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        Gadd_consent_for_service_by_oidVars.serializer,
        json,
      );
}
