// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_ps_get_consentement.query.data.gql.g.dart';

abstract class Gget_consentement_psData
    implements
        Built<Gget_consentement_psData, Gget_consentement_psDataBuilder> {
  Gget_consentement_psData._();

  factory Gget_consentement_psData(
          [void Function(Gget_consentement_psDataBuilder b) updates]) =
      _$Gget_consentement_psData;

  static void _initializeBuilder(Gget_consentement_psDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<Gget_consentement_psData_getDmpConsentementForHealthcareStaff>
      get getDmpConsentementForHealthcareStaff;
  static Serializer<Gget_consentement_psData> get serializer =>
      _$ggetConsentementPsDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_consentement_psData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_consentement_psData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_consentement_psData.serializer,
        json,
      );
}

abstract class Gget_consentement_psData_getDmpConsentementForHealthcareStaff
    implements
        Built<Gget_consentement_psData_getDmpConsentementForHealthcareStaff,
            Gget_consentement_psData_getDmpConsentementForHealthcareStaffBuilder> {
  Gget_consentement_psData_getDmpConsentementForHealthcareStaff._();

  factory Gget_consentement_psData_getDmpConsentementForHealthcareStaff(
          [void Function(
                  Gget_consentement_psData_getDmpConsentementForHealthcareStaffBuilder
                      b)
              updates]) =
      _$Gget_consentement_psData_getDmpConsentementForHealthcareStaff;

  static void _initializeBuilder(
          Gget_consentement_psData_getDmpConsentementForHealthcareStaffBuilder
              b) =>
      b..G__typename = 'DmpConsentementHealthcareStaffModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gget_consentement_psData_getDmpConsentementForHealthcareStaff_dmpConsentementModel
      get dmpConsentementModel;
  String get startDate;
  String? get firstName;
  String? get lastName;
  String get id;
  String get healthcareStaffType;
  static Serializer<
          Gget_consentement_psData_getDmpConsentementForHealthcareStaff>
      get serializer =>
          _$ggetConsentementPsDataGetDmpConsentementForHealthcareStaffSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_consentement_psData_getDmpConsentementForHealthcareStaff
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_consentement_psData_getDmpConsentementForHealthcareStaff?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_consentement_psData_getDmpConsentementForHealthcareStaff
                .serializer,
            json,
          );
}

abstract class Gget_consentement_psData_getDmpConsentementForHealthcareStaff_dmpConsentementModel
    implements
        Built<
            Gget_consentement_psData_getDmpConsentementForHealthcareStaff_dmpConsentementModel,
            Gget_consentement_psData_getDmpConsentementForHealthcareStaff_dmpConsentementModelBuilder> {
  Gget_consentement_psData_getDmpConsentementForHealthcareStaff_dmpConsentementModel._();

  factory Gget_consentement_psData_getDmpConsentementForHealthcareStaff_dmpConsentementModel(
          [void Function(
                  Gget_consentement_psData_getDmpConsentementForHealthcareStaff_dmpConsentementModelBuilder
                      b)
              updates]) =
      _$Gget_consentement_psData_getDmpConsentementForHealthcareStaff_dmpConsentementModel;

  static void _initializeBuilder(
          Gget_consentement_psData_getDmpConsentementForHealthcareStaff_dmpConsentementModelBuilder
              b) =>
      b..G__typename = 'DmpConsentementModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get type;
  String get identifier;
  static Serializer<
          Gget_consentement_psData_getDmpConsentementForHealthcareStaff_dmpConsentementModel>
      get serializer =>
          _$ggetConsentementPsDataGetDmpConsentementForHealthcareStaffDmpConsentementModelSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_consentement_psData_getDmpConsentementForHealthcareStaff_dmpConsentementModel
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_consentement_psData_getDmpConsentementForHealthcareStaff_dmpConsentementModel?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_consentement_psData_getDmpConsentementForHealthcareStaff_dmpConsentementModel
                .serializer,
            json,
          );
}
