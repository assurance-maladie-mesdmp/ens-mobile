// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_personal_information.fragment.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_get_personal_information.query.data.gql.g.dart';

abstract class Gget_personal_informationData
    implements
        Built<Gget_personal_informationData,
            Gget_personal_informationDataBuilder> {
  Gget_personal_informationData._();

  factory Gget_personal_informationData(
          [void Function(Gget_personal_informationDataBuilder b) updates]) =
      _$Gget_personal_informationData;

  static void _initializeBuilder(Gget_personal_informationDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gget_personal_informationData_getPersonalInformation?
      get getPersonalInformation;
  static Serializer<Gget_personal_informationData> get serializer =>
      _$ggetPersonalInformationDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_personal_informationData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_personal_informationData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_personal_informationData.serializer,
        json,
      );
}

abstract class Gget_personal_informationData_getPersonalInformation
    implements
        Built<Gget_personal_informationData_getPersonalInformation,
            Gget_personal_informationData_getPersonalInformationBuilder>,
        _i2.GpersonalInformation {
  Gget_personal_informationData_getPersonalInformation._();

  factory Gget_personal_informationData_getPersonalInformation(
      [void Function(
              Gget_personal_informationData_getPersonalInformationBuilder b)
          updates]) = _$Gget_personal_informationData_getPersonalInformation;

  static void _initializeBuilder(
          Gget_personal_informationData_getPersonalInformationBuilder b) =>
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
  static Serializer<Gget_personal_informationData_getPersonalInformation>
      get serializer =>
          _$ggetPersonalInformationDataGetPersonalInformationSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_personal_informationData_getPersonalInformation.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_personal_informationData_getPersonalInformation? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_personal_informationData_getPersonalInformation.serializer,
        json,
      );
}
