// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_personal_information.fragment.data.gql.g.dart';

abstract class GpersonalInformation {
  String get G__typename;
  String get lastName;
  String get firstName;
  String get birthDate;
  String get sex;
  String? get mail;
  String? get phoneNumber;
  String get ins;
  String? get onboarding;
  String? get inseeCode;
  String? get cguAcceptedAt;
  bool get hasConfidentialitySettingsSet;
  String get ensStatus;
  Map<String, dynamic> toJson();
}

abstract class GpersonalInformationData
    implements
        Built<GpersonalInformationData, GpersonalInformationDataBuilder>,
        GpersonalInformation {
  GpersonalInformationData._();

  factory GpersonalInformationData(
          [void Function(GpersonalInformationDataBuilder b) updates]) =
      _$GpersonalInformationData;

  static void _initializeBuilder(GpersonalInformationDataBuilder b) =>
      b..G__typename = 'PersonalInformationModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get lastName;
  @override
  String get firstName;
  @override
  String get birthDate;
  @override
  String get sex;
  @override
  String? get mail;
  @override
  String? get phoneNumber;
  @override
  String get ins;
  @override
  String? get onboarding;
  @override
  String? get inseeCode;
  @override
  String? get cguAcceptedAt;
  @override
  bool get hasConfidentialitySettingsSet;
  @override
  String get ensStatus;
  static Serializer<GpersonalInformationData> get serializer =>
      _$gpersonalInformationDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GpersonalInformationData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GpersonalInformationData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GpersonalInformationData.serializer,
        json,
      );
}
