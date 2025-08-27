// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_ps_get_confidentialities.query.data.gql.g.dart';

abstract class Gget_confidentialities_psData
    implements
        Built<Gget_confidentialities_psData,
            Gget_confidentialities_psDataBuilder> {
  Gget_confidentialities_psData._();

  factory Gget_confidentialities_psData(
          [void Function(Gget_confidentialities_psDataBuilder b) updates]) =
      _$Gget_confidentialities_psData;

  static void _initializeBuilder(Gget_confidentialities_psDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gget_confidentialities_psData_getHealthProfessionalConfidentialities
      get getHealthProfessionalConfidentialities;
  static Serializer<Gget_confidentialities_psData> get serializer =>
      _$ggetConfidentialitiesPsDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_confidentialities_psData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_confidentialities_psData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_confidentialities_psData.serializer,
        json,
      );
}

abstract class Gget_confidentialities_psData_getHealthProfessionalConfidentialities
    implements
        Built<
            Gget_confidentialities_psData_getHealthProfessionalConfidentialities,
            Gget_confidentialities_psData_getHealthProfessionalConfidentialitiesBuilder> {
  Gget_confidentialities_psData_getHealthProfessionalConfidentialities._();

  factory Gget_confidentialities_psData_getHealthProfessionalConfidentialities(
          [void Function(
                  Gget_confidentialities_psData_getHealthProfessionalConfidentialitiesBuilder
                      b)
              updates]) =
      _$Gget_confidentialities_psData_getHealthProfessionalConfidentialities;

  static void _initializeBuilder(
          Gget_confidentialities_psData_getHealthProfessionalConfidentialitiesBuilder
              b) =>
      b..G__typename = 'DmpConsentementConfidentialityModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<
          Gget_confidentialities_psData_getHealthProfessionalConfidentialities_confidentialities>
      get confidentialities;
  bool get btg;
  static Serializer<
          Gget_confidentialities_psData_getHealthProfessionalConfidentialities>
      get serializer =>
          _$ggetConfidentialitiesPsDataGetHealthProfessionalConfidentialitiesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_confidentialities_psData_getHealthProfessionalConfidentialities
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_confidentialities_psData_getHealthProfessionalConfidentialities?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_confidentialities_psData_getHealthProfessionalConfidentialities
                .serializer,
            json,
          );
}

abstract class Gget_confidentialities_psData_getHealthProfessionalConfidentialities_confidentialities
    implements
        Built<
            Gget_confidentialities_psData_getHealthProfessionalConfidentialities_confidentialities,
            Gget_confidentialities_psData_getHealthProfessionalConfidentialities_confidentialitiesBuilder> {
  Gget_confidentialities_psData_getHealthProfessionalConfidentialities_confidentialities._();

  factory Gget_confidentialities_psData_getHealthProfessionalConfidentialities_confidentialities(
          [void Function(
                  Gget_confidentialities_psData_getHealthProfessionalConfidentialities_confidentialitiesBuilder
                      b)
              updates]) =
      _$Gget_confidentialities_psData_getHealthProfessionalConfidentialities_confidentialities;

  static void _initializeBuilder(
          Gget_confidentialities_psData_getHealthProfessionalConfidentialities_confidentialitiesBuilder
              b) =>
      b..G__typename = 'PsDmpConsentementConfidentialityModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get consentId;
  String get healthProfessionalId;
  String get status;
  String get startDate;
  static Serializer<
          Gget_confidentialities_psData_getHealthProfessionalConfidentialities_confidentialities>
      get serializer =>
          _$ggetConfidentialitiesPsDataGetHealthProfessionalConfidentialitiesConfidentialitiesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_confidentialities_psData_getHealthProfessionalConfidentialities_confidentialities
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_confidentialities_psData_getHealthProfessionalConfidentialities_confidentialities?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_confidentialities_psData_getHealthProfessionalConfidentialities_confidentialities
                .serializer,
            json,
          );
}
