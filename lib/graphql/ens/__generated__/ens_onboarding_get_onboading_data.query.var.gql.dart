// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i2;

part 'ens_onboarding_get_onboading_data.query.var.gql.g.dart';

abstract class Gget_onboarding_dataVars
    implements
        Built<Gget_onboarding_dataVars, Gget_onboarding_dataVarsBuilder> {
  Gget_onboarding_dataVars._();

  factory Gget_onboarding_dataVars(
          [void Function(Gget_onboarding_dataVarsBuilder b) updates]) =
      _$Gget_onboarding_dataVars;

  _i1.GGetDmpConsentementInput get dmpConsentementInput;
  String get patientId;
  static Serializer<Gget_onboarding_dataVars> get serializer =>
      _$ggetOnboardingDataVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        Gget_onboarding_dataVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_onboarding_dataVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        Gget_onboarding_dataVars.serializer,
        json,
      );
}
