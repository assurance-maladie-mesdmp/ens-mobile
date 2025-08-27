// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_account_set_onboarding_done.query.var.gql.g.dart';

abstract class Gset_onboarding_doneVars
    implements
        Built<Gset_onboarding_doneVars, Gset_onboarding_doneVarsBuilder> {
  Gset_onboarding_doneVars._();

  factory Gset_onboarding_doneVars(
          [void Function(Gset_onboarding_doneVarsBuilder b) updates]) =
      _$Gset_onboarding_doneVars;

  String get onboardingDate;
  String get patientId;
  static Serializer<Gset_onboarding_doneVars> get serializer =>
      _$gsetOnboardingDoneVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gset_onboarding_doneVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gset_onboarding_doneVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gset_onboarding_doneVars.serializer,
        json,
      );
}
