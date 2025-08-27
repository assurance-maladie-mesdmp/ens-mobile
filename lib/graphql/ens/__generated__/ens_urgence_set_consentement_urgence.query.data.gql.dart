// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_urgence_set_consentement_urgence.query.data.gql.g.dart';

abstract class Gset_consentement_urgenceData
    implements
        Built<Gset_consentement_urgenceData,
            Gset_consentement_urgenceDataBuilder> {
  Gset_consentement_urgenceData._();

  factory Gset_consentement_urgenceData(
          [void Function(Gset_consentement_urgenceDataBuilder b) updates]) =
      _$Gset_consentement_urgenceData;

  static void _initializeBuilder(Gset_consentement_urgenceDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gset_consentement_urgenceData_setETREAT get setETREAT;
  Gset_consentement_urgenceData_setBTG get setBTG;
  Gset_consentement_urgenceData_setMASKED get setMASKED;
  static Serializer<Gset_consentement_urgenceData> get serializer =>
      _$gsetConsentementUrgenceDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gset_consentement_urgenceData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gset_consentement_urgenceData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gset_consentement_urgenceData.serializer,
        json,
      );
}

abstract class Gset_consentement_urgenceData_setETREAT
    implements
        Built<Gset_consentement_urgenceData_setETREAT,
            Gset_consentement_urgenceData_setETREATBuilder> {
  Gset_consentement_urgenceData_setETREAT._();

  factory Gset_consentement_urgenceData_setETREAT(
      [void Function(Gset_consentement_urgenceData_setETREATBuilder b)
          updates]) = _$Gset_consentement_urgenceData_setETREAT;

  static void _initializeBuilder(
          Gset_consentement_urgenceData_setETREATBuilder b) =>
      b..G__typename = 'Success';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool get success;
  static Serializer<Gset_consentement_urgenceData_setETREAT> get serializer =>
      _$gsetConsentementUrgenceDataSetETREATSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gset_consentement_urgenceData_setETREAT.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gset_consentement_urgenceData_setETREAT? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gset_consentement_urgenceData_setETREAT.serializer,
        json,
      );
}

abstract class Gset_consentement_urgenceData_setBTG
    implements
        Built<Gset_consentement_urgenceData_setBTG,
            Gset_consentement_urgenceData_setBTGBuilder> {
  Gset_consentement_urgenceData_setBTG._();

  factory Gset_consentement_urgenceData_setBTG(
      [void Function(Gset_consentement_urgenceData_setBTGBuilder b)
          updates]) = _$Gset_consentement_urgenceData_setBTG;

  static void _initializeBuilder(
          Gset_consentement_urgenceData_setBTGBuilder b) =>
      b..G__typename = 'Success';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool get success;
  static Serializer<Gset_consentement_urgenceData_setBTG> get serializer =>
      _$gsetConsentementUrgenceDataSetBTGSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gset_consentement_urgenceData_setBTG.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gset_consentement_urgenceData_setBTG? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gset_consentement_urgenceData_setBTG.serializer,
        json,
      );
}

abstract class Gset_consentement_urgenceData_setMASKED
    implements
        Built<Gset_consentement_urgenceData_setMASKED,
            Gset_consentement_urgenceData_setMASKEDBuilder> {
  Gset_consentement_urgenceData_setMASKED._();

  factory Gset_consentement_urgenceData_setMASKED(
      [void Function(Gset_consentement_urgenceData_setMASKEDBuilder b)
          updates]) = _$Gset_consentement_urgenceData_setMASKED;

  static void _initializeBuilder(
          Gset_consentement_urgenceData_setMASKEDBuilder b) =>
      b..G__typename = 'Success';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool get success;
  static Serializer<Gset_consentement_urgenceData_setMASKED> get serializer =>
      _$gsetConsentementUrgenceDataSetMASKEDSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gset_consentement_urgenceData_setMASKED.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gset_consentement_urgenceData_setMASKED? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gset_consentement_urgenceData_setMASKED.serializer,
        json,
      );
}
