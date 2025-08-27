// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_account_validate_otp.query.data.gql.g.dart';

abstract class Gvalidate_otpData
    implements Built<Gvalidate_otpData, Gvalidate_otpDataBuilder> {
  Gvalidate_otpData._();

  factory Gvalidate_otpData(
          [void Function(Gvalidate_otpDataBuilder b) updates]) =
      _$Gvalidate_otpData;

  static void _initializeBuilder(Gvalidate_otpDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gvalidate_otpData_validateOtp get validateOtp;
  static Serializer<Gvalidate_otpData> get serializer =>
      _$gvalidateOtpDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gvalidate_otpData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gvalidate_otpData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gvalidate_otpData.serializer,
        json,
      );
}

abstract class Gvalidate_otpData_validateOtp
    implements
        Built<Gvalidate_otpData_validateOtp,
            Gvalidate_otpData_validateOtpBuilder> {
  Gvalidate_otpData_validateOtp._();

  factory Gvalidate_otpData_validateOtp(
          [void Function(Gvalidate_otpData_validateOtpBuilder b) updates]) =
      _$Gvalidate_otpData_validateOtp;

  static void _initializeBuilder(Gvalidate_otpData_validateOtpBuilder b) =>
      b..G__typename = 'Success';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool get success;
  static Serializer<Gvalidate_otpData_validateOtp> get serializer =>
      _$gvalidateOtpDataValidateOtpSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gvalidate_otpData_validateOtp.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gvalidate_otpData_validateOtp? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gvalidate_otpData_validateOtp.serializer,
        json,
      );
}
