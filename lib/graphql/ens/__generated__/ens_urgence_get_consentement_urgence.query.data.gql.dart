// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_dmp_consentement.fragment.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_urgence_get_consentement_urgence.query.data.gql.g.dart';

abstract class Gget_consentement_urgenceData
    implements
        Built<Gget_consentement_urgenceData,
            Gget_consentement_urgenceDataBuilder> {
  Gget_consentement_urgenceData._();

  factory Gget_consentement_urgenceData(
          [void Function(Gget_consentement_urgenceDataBuilder b) updates]) =
      _$Gget_consentement_urgenceData;

  static void _initializeBuilder(Gget_consentement_urgenceDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<Gget_consentement_urgenceData_getDmpConsentement>
      get getDmpConsentement;
  static Serializer<Gget_consentement_urgenceData> get serializer =>
      _$ggetConsentementUrgenceDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_consentement_urgenceData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_consentement_urgenceData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_consentement_urgenceData.serializer,
        json,
      );
}

abstract class Gget_consentement_urgenceData_getDmpConsentement
    implements
        Built<Gget_consentement_urgenceData_getDmpConsentement,
            Gget_consentement_urgenceData_getDmpConsentementBuilder>,
        _i2.GdmpConsentement {
  Gget_consentement_urgenceData_getDmpConsentement._();

  factory Gget_consentement_urgenceData_getDmpConsentement(
      [void Function(Gget_consentement_urgenceData_getDmpConsentementBuilder b)
          updates]) = _$Gget_consentement_urgenceData_getDmpConsentement;

  static void _initializeBuilder(
          Gget_consentement_urgenceData_getDmpConsentementBuilder b) =>
      b..G__typename = 'DmpConsentementModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get identifier;
  @override
  String get purpose;
  @override
  String get type;
  static Serializer<Gget_consentement_urgenceData_getDmpConsentement>
      get serializer =>
          _$ggetConsentementUrgenceDataGetDmpConsentementSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_consentement_urgenceData_getDmpConsentement.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_consentement_urgenceData_getDmpConsentement? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_consentement_urgenceData_getDmpConsentement.serializer,
        json,
      );
}
