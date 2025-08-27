// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_get_synthese_pml.query.data.gql.g.dart';

abstract class Gget_synthese_pmlData
    implements Built<Gget_synthese_pmlData, Gget_synthese_pmlDataBuilder> {
  Gget_synthese_pmlData._();

  factory Gget_synthese_pmlData(
          [void Function(Gget_synthese_pmlDataBuilder b) updates]) =
      _$Gget_synthese_pmlData;

  static void _initializeBuilder(Gget_synthese_pmlDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gget_synthese_pmlData_getMedicalSynthesisPDF get getMedicalSynthesisPDF;
  static Serializer<Gget_synthese_pmlData> get serializer =>
      _$ggetSynthesePmlDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_synthese_pmlData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_synthese_pmlData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_synthese_pmlData.serializer,
        json,
      );
}

abstract class Gget_synthese_pmlData_getMedicalSynthesisPDF
    implements
        Built<Gget_synthese_pmlData_getMedicalSynthesisPDF,
            Gget_synthese_pmlData_getMedicalSynthesisPDFBuilder> {
  Gget_synthese_pmlData_getMedicalSynthesisPDF._();

  factory Gget_synthese_pmlData_getMedicalSynthesisPDF(
      [void Function(Gget_synthese_pmlData_getMedicalSynthesisPDFBuilder b)
          updates]) = _$Gget_synthese_pmlData_getMedicalSynthesisPDF;

  static void _initializeBuilder(
          Gget_synthese_pmlData_getMedicalSynthesisPDFBuilder b) =>
      b..G__typename = 'ExportToPdfModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get name;
  String get mimeType;
  String get binary;
  static Serializer<Gget_synthese_pmlData_getMedicalSynthesisPDF>
      get serializer => _$ggetSynthesePmlDataGetMedicalSynthesisPDFSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_synthese_pmlData_getMedicalSynthesisPDF.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_synthese_pmlData_getMedicalSynthesisPDF? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_synthese_pmlData_getMedicalSynthesisPDF.serializer,
        json,
      );
}
