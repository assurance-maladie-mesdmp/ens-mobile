// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_get_traitement_auto_doc.query.data.gql.g.dart';

abstract class Gget_treatment_doc_auto_finalityData
    implements
        Built<Gget_treatment_doc_auto_finalityData,
            Gget_treatment_doc_auto_finalityDataBuilder> {
  Gget_treatment_doc_auto_finalityData._();

  factory Gget_treatment_doc_auto_finalityData(
      [void Function(Gget_treatment_doc_auto_finalityDataBuilder b)
          updates]) = _$Gget_treatment_doc_auto_finalityData;

  static void _initializeBuilder(
          Gget_treatment_doc_auto_finalityDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gget_treatment_doc_auto_finalityData_fetchTreatmentDocAutoFinalityByPatientId
      get fetchTreatmentDocAutoFinalityByPatientId;
  static Serializer<Gget_treatment_doc_auto_finalityData> get serializer =>
      _$ggetTreatmentDocAutoFinalityDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_treatment_doc_auto_finalityData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_treatment_doc_auto_finalityData? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_treatment_doc_auto_finalityData.serializer,
        json,
      );
}

abstract class Gget_treatment_doc_auto_finalityData_fetchTreatmentDocAutoFinalityByPatientId
    implements
        Built<
            Gget_treatment_doc_auto_finalityData_fetchTreatmentDocAutoFinalityByPatientId,
            Gget_treatment_doc_auto_finalityData_fetchTreatmentDocAutoFinalityByPatientIdBuilder> {
  Gget_treatment_doc_auto_finalityData_fetchTreatmentDocAutoFinalityByPatientId._();

  factory Gget_treatment_doc_auto_finalityData_fetchTreatmentDocAutoFinalityByPatientId(
          [void Function(
                  Gget_treatment_doc_auto_finalityData_fetchTreatmentDocAutoFinalityByPatientIdBuilder
                      b)
              updates]) =
      _$Gget_treatment_doc_auto_finalityData_fetchTreatmentDocAutoFinalityByPatientId;

  static void _initializeBuilder(
          Gget_treatment_doc_auto_finalityData_fetchTreatmentDocAutoFinalityByPatientIdBuilder
              b) =>
      b..G__typename = 'ConsentFinalitiesViewModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool? get consent;
  bool? get isWhitelisted;
  static Serializer<
          Gget_treatment_doc_auto_finalityData_fetchTreatmentDocAutoFinalityByPatientId>
      get serializer =>
          _$ggetTreatmentDocAutoFinalityDataFetchTreatmentDocAutoFinalityByPatientIdSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_treatment_doc_auto_finalityData_fetchTreatmentDocAutoFinalityByPatientId
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_treatment_doc_auto_finalityData_fetchTreatmentDocAutoFinalityByPatientId?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_treatment_doc_auto_finalityData_fetchTreatmentDocAutoFinalityByPatientId
                .serializer,
            json,
          );
}
