// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i2;

part 'ens_enrolement_verify_otp_to_update_user_contact.query.var.gql.g.dart';

abstract class Gverify_otp_to_update_user_contact_in_enrolementVars
    implements
        Built<Gverify_otp_to_update_user_contact_in_enrolementVars,
            Gverify_otp_to_update_user_contact_in_enrolementVarsBuilder> {
  Gverify_otp_to_update_user_contact_in_enrolementVars._();

  factory Gverify_otp_to_update_user_contact_in_enrolementVars(
      [void Function(
              Gverify_otp_to_update_user_contact_in_enrolementVarsBuilder b)
          updates]) = _$Gverify_otp_to_update_user_contact_in_enrolementVars;

  _i1.GVerifyOtpUpdateContactInput get verifyOtpUpdateContact;
  static Serializer<Gverify_otp_to_update_user_contact_in_enrolementVars>
      get serializer =>
          _$gverifyOtpToUpdateUserContactInEnrolementVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        Gverify_otp_to_update_user_contact_in_enrolementVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gverify_otp_to_update_user_contact_in_enrolementVars? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        Gverify_otp_to_update_user_contact_in_enrolementVars.serializer,
        json,
      );
}
