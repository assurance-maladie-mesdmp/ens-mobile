// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_enrolement_send_otp_to_update_user_contact.query.data.gql.g.dart';

abstract class Gsend_otp_to_update_user_contact_in_enrolementData
    implements
        Built<Gsend_otp_to_update_user_contact_in_enrolementData,
            Gsend_otp_to_update_user_contact_in_enrolementDataBuilder> {
  Gsend_otp_to_update_user_contact_in_enrolementData._();

  factory Gsend_otp_to_update_user_contact_in_enrolementData(
      [void Function(
              Gsend_otp_to_update_user_contact_in_enrolementDataBuilder b)
          updates]) = _$Gsend_otp_to_update_user_contact_in_enrolementData;

  static void _initializeBuilder(
          Gsend_otp_to_update_user_contact_in_enrolementDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gsend_otp_to_update_user_contact_in_enrolementData_sendOtpUpdateContact
      get sendOtpUpdateContact;
  static Serializer<Gsend_otp_to_update_user_contact_in_enrolementData>
      get serializer => _$gsendOtpToUpdateUserContactInEnrolementDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gsend_otp_to_update_user_contact_in_enrolementData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gsend_otp_to_update_user_contact_in_enrolementData? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gsend_otp_to_update_user_contact_in_enrolementData.serializer,
        json,
      );
}

abstract class Gsend_otp_to_update_user_contact_in_enrolementData_sendOtpUpdateContact
    implements
        Built<
            Gsend_otp_to_update_user_contact_in_enrolementData_sendOtpUpdateContact,
            Gsend_otp_to_update_user_contact_in_enrolementData_sendOtpUpdateContactBuilder> {
  Gsend_otp_to_update_user_contact_in_enrolementData_sendOtpUpdateContact._();

  factory Gsend_otp_to_update_user_contact_in_enrolementData_sendOtpUpdateContact(
          [void Function(
                  Gsend_otp_to_update_user_contact_in_enrolementData_sendOtpUpdateContactBuilder
                      b)
              updates]) =
      _$Gsend_otp_to_update_user_contact_in_enrolementData_sendOtpUpdateContact;

  static void _initializeBuilder(
          Gsend_otp_to_update_user_contact_in_enrolementData_sendOtpUpdateContactBuilder
              b) =>
      b..G__typename = 'SendNewCodeEnrolmentSuccess';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool get success;
  static Serializer<
          Gsend_otp_to_update_user_contact_in_enrolementData_sendOtpUpdateContact>
      get serializer =>
          _$gsendOtpToUpdateUserContactInEnrolementDataSendOtpUpdateContactSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gsend_otp_to_update_user_contact_in_enrolementData_sendOtpUpdateContact
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gsend_otp_to_update_user_contact_in_enrolementData_sendOtpUpdateContact?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gsend_otp_to_update_user_contact_in_enrolementData_sendOtpUpdateContact
                .serializer,
            json,
          );
}
