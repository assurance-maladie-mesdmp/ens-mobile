// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_account_set_onboarding_done.query.data.gql.g.dart';

abstract class Gset_onboarding_doneData
    implements
        Built<Gset_onboarding_doneData, Gset_onboarding_doneDataBuilder> {
  Gset_onboarding_doneData._();

  factory Gset_onboarding_doneData(
          [void Function(Gset_onboarding_doneDataBuilder b) updates]) =
      _$Gset_onboarding_doneData;

  static void _initializeBuilder(Gset_onboarding_doneDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gset_onboarding_doneData_setOnboarding get setOnboarding;
  Gset_onboarding_doneData_setPreferenceConfidentialityDate
      get setPreferenceConfidentialityDate;
  static Serializer<Gset_onboarding_doneData> get serializer =>
      _$gsetOnboardingDoneDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gset_onboarding_doneData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gset_onboarding_doneData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gset_onboarding_doneData.serializer,
        json,
      );
}

abstract class Gset_onboarding_doneData_setOnboarding
    implements
        Built<Gset_onboarding_doneData_setOnboarding,
            Gset_onboarding_doneData_setOnboardingBuilder> {
  Gset_onboarding_doneData_setOnboarding._();

  factory Gset_onboarding_doneData_setOnboarding(
      [void Function(Gset_onboarding_doneData_setOnboardingBuilder b)
          updates]) = _$Gset_onboarding_doneData_setOnboarding;

  static void _initializeBuilder(
          Gset_onboarding_doneData_setOnboardingBuilder b) =>
      b..G__typename = 'Success';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool get success;
  static Serializer<Gset_onboarding_doneData_setOnboarding> get serializer =>
      _$gsetOnboardingDoneDataSetOnboardingSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gset_onboarding_doneData_setOnboarding.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gset_onboarding_doneData_setOnboarding? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gset_onboarding_doneData_setOnboarding.serializer,
        json,
      );
}

abstract class Gset_onboarding_doneData_setPreferenceConfidentialityDate
    implements
        Built<Gset_onboarding_doneData_setPreferenceConfidentialityDate,
            Gset_onboarding_doneData_setPreferenceConfidentialityDateBuilder> {
  Gset_onboarding_doneData_setPreferenceConfidentialityDate._();

  factory Gset_onboarding_doneData_setPreferenceConfidentialityDate(
      [void Function(
              Gset_onboarding_doneData_setPreferenceConfidentialityDateBuilder
                  b)
          updates]) = _$Gset_onboarding_doneData_setPreferenceConfidentialityDate;

  static void _initializeBuilder(
          Gset_onboarding_doneData_setPreferenceConfidentialityDateBuilder b) =>
      b..G__typename = 'Success';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool get success;
  static Serializer<Gset_onboarding_doneData_setPreferenceConfidentialityDate>
      get serializer =>
          _$gsetOnboardingDoneDataSetPreferenceConfidentialityDateSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gset_onboarding_doneData_setPreferenceConfidentialityDate.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gset_onboarding_doneData_setPreferenceConfidentialityDate? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gset_onboarding_doneData_setPreferenceConfidentialityDate.serializer,
        json,
      );
}
