// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_enrolement_get_enrolment_suggestions.data.gql.g.dart';

abstract class GEnrolmentUserNameAvailabilityData
    implements
        Built<GEnrolmentUserNameAvailabilityData,
            GEnrolmentUserNameAvailabilityDataBuilder> {
  GEnrolmentUserNameAvailabilityData._();

  factory GEnrolmentUserNameAvailabilityData(
      [void Function(GEnrolmentUserNameAvailabilityDataBuilder b)
          updates]) = _$GEnrolmentUserNameAvailabilityData;

  static void _initializeBuilder(GEnrolmentUserNameAvailabilityDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GEnrolmentUserNameAvailabilityData_enrolmentUserNameAvailability
      get enrolmentUserNameAvailability;
  static Serializer<GEnrolmentUserNameAvailabilityData> get serializer =>
      _$gEnrolmentUserNameAvailabilityDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GEnrolmentUserNameAvailabilityData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GEnrolmentUserNameAvailabilityData? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GEnrolmentUserNameAvailabilityData.serializer,
        json,
      );
}

abstract class GEnrolmentUserNameAvailabilityData_enrolmentUserNameAvailability
    implements
        Built<GEnrolmentUserNameAvailabilityData_enrolmentUserNameAvailability,
            GEnrolmentUserNameAvailabilityData_enrolmentUserNameAvailabilityBuilder> {
  GEnrolmentUserNameAvailabilityData_enrolmentUserNameAvailability._();

  factory GEnrolmentUserNameAvailabilityData_enrolmentUserNameAvailability(
          [void Function(
                  GEnrolmentUserNameAvailabilityData_enrolmentUserNameAvailabilityBuilder
                      b)
              updates]) =
      _$GEnrolmentUserNameAvailabilityData_enrolmentUserNameAvailability;

  static void _initializeBuilder(
          GEnrolmentUserNameAvailabilityData_enrolmentUserNameAvailabilityBuilder
              b) =>
      b..G__typename = 'UserNameAvailabilityModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool get isAvailable;
  BuiltList<String> get suggestions;
  static Serializer<
          GEnrolmentUserNameAvailabilityData_enrolmentUserNameAvailability>
      get serializer =>
          _$gEnrolmentUserNameAvailabilityDataEnrolmentUserNameAvailabilitySerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GEnrolmentUserNameAvailabilityData_enrolmentUserNameAvailability
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GEnrolmentUserNameAvailabilityData_enrolmentUserNameAvailability?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            GEnrolmentUserNameAvailabilityData_enrolmentUserNameAvailability
                .serializer,
            json,
          );
}
