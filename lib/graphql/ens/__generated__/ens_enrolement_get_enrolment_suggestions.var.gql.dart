// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_enrolement_get_enrolment_suggestions.var.gql.g.dart';

abstract class GEnrolmentUserNameAvailabilityVars
    implements
        Built<GEnrolmentUserNameAvailabilityVars,
            GEnrolmentUserNameAvailabilityVarsBuilder> {
  GEnrolmentUserNameAvailabilityVars._();

  factory GEnrolmentUserNameAvailabilityVars(
      [void Function(GEnrolmentUserNameAvailabilityVarsBuilder b)
          updates]) = _$GEnrolmentUserNameAvailabilityVars;

  String get userName;
  static Serializer<GEnrolmentUserNameAvailabilityVars> get serializer =>
      _$gEnrolmentUserNameAvailabilityVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GEnrolmentUserNameAvailabilityVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GEnrolmentUserNameAvailabilityVars? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GEnrolmentUserNameAvailabilityVars.serializer,
        json,
      );
}
