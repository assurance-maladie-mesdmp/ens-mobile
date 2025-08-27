// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i2;

part 'ens_account_validate_otp.query.var.gql.g.dart';

abstract class Gvalidate_otpVars
    implements Built<Gvalidate_otpVars, Gvalidate_otpVarsBuilder> {
  Gvalidate_otpVars._();

  factory Gvalidate_otpVars(
          [void Function(Gvalidate_otpVarsBuilder b) updates]) =
      _$Gvalidate_otpVars;

  _i1.GValidateOtpInput get input;
  static Serializer<Gvalidate_otpVars> get serializer =>
      _$gvalidateOtpVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        Gvalidate_otpVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gvalidate_otpVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        Gvalidate_otpVars.serializer,
        json,
      );
}
