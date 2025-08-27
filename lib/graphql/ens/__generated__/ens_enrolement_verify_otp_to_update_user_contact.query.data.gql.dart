// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_enrolement_verify_otp_to_update_user_contact.query.data.gql.g.dart';

abstract class Gverify_otp_to_update_user_contact_in_enrolementData
    implements
        Built<Gverify_otp_to_update_user_contact_in_enrolementData,
            Gverify_otp_to_update_user_contact_in_enrolementDataBuilder> {
  Gverify_otp_to_update_user_contact_in_enrolementData._();

  factory Gverify_otp_to_update_user_contact_in_enrolementData(
      [void Function(
              Gverify_otp_to_update_user_contact_in_enrolementDataBuilder b)
          updates]) = _$Gverify_otp_to_update_user_contact_in_enrolementData;

  static void _initializeBuilder(
          Gverify_otp_to_update_user_contact_in_enrolementDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gverify_otp_to_update_user_contact_in_enrolementData_verifyOtpUpdateContact
      get verifyOtpUpdateContact;
  static Serializer<Gverify_otp_to_update_user_contact_in_enrolementData>
      get serializer =>
          _$gverifyOtpToUpdateUserContactInEnrolementDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gverify_otp_to_update_user_contact_in_enrolementData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gverify_otp_to_update_user_contact_in_enrolementData? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gverify_otp_to_update_user_contact_in_enrolementData.serializer,
        json,
      );
}

abstract class Gverify_otp_to_update_user_contact_in_enrolementData_verifyOtpUpdateContact
    implements
        Built<
            Gverify_otp_to_update_user_contact_in_enrolementData_verifyOtpUpdateContact,
            Gverify_otp_to_update_user_contact_in_enrolementData_verifyOtpUpdateContactBuilder> {
  Gverify_otp_to_update_user_contact_in_enrolementData_verifyOtpUpdateContact._();

  factory Gverify_otp_to_update_user_contact_in_enrolementData_verifyOtpUpdateContact(
          [void Function(
                  Gverify_otp_to_update_user_contact_in_enrolementData_verifyOtpUpdateContactBuilder
                      b)
              updates]) =
      _$Gverify_otp_to_update_user_contact_in_enrolementData_verifyOtpUpdateContact;

  static void _initializeBuilder(
          Gverify_otp_to_update_user_contact_in_enrolementData_verifyOtpUpdateContactBuilder
              b) =>
      b..G__typename = 'VerifyOtpUpdateContactModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool get isOtpCodeValid;
  static Serializer<
          Gverify_otp_to_update_user_contact_in_enrolementData_verifyOtpUpdateContact>
      get serializer =>
          _$gverifyOtpToUpdateUserContactInEnrolementDataVerifyOtpUpdateContactSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gverify_otp_to_update_user_contact_in_enrolementData_verifyOtpUpdateContact
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gverify_otp_to_update_user_contact_in_enrolementData_verifyOtpUpdateContact?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gverify_otp_to_update_user_contact_in_enrolementData_verifyOtpUpdateContact
                .serializer,
            json,
          );
}
