// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_document_get_document_default_confidentiality.query.data.gql.g.dart';

abstract class Gget_document_default_confidentialityData
    implements
        Built<Gget_document_default_confidentialityData,
            Gget_document_default_confidentialityDataBuilder> {
  Gget_document_default_confidentialityData._();

  factory Gget_document_default_confidentialityData(
      [void Function(Gget_document_default_confidentialityDataBuilder b)
          updates]) = _$Gget_document_default_confidentialityData;

  static void _initializeBuilder(
          Gget_document_default_confidentialityDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gget_document_default_confidentialityData_getDefaultConfidentiality?
      get getDefaultConfidentiality;
  static Serializer<Gget_document_default_confidentialityData> get serializer =>
      _$ggetDocumentDefaultConfidentialityDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_document_default_confidentialityData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_document_default_confidentialityData? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_document_default_confidentialityData.serializer,
        json,
      );
}

abstract class Gget_document_default_confidentialityData_getDefaultConfidentiality
    implements
        Built<
            Gget_document_default_confidentialityData_getDefaultConfidentiality,
            Gget_document_default_confidentialityData_getDefaultConfidentialityBuilder> {
  Gget_document_default_confidentialityData_getDefaultConfidentiality._();

  factory Gget_document_default_confidentialityData_getDefaultConfidentiality(
          [void Function(
                  Gget_document_default_confidentialityData_getDefaultConfidentialityBuilder
                      b)
              updates]) =
      _$Gget_document_default_confidentialityData_getDefaultConfidentiality;

  static void _initializeBuilder(
          Gget_document_default_confidentialityData_getDefaultConfidentialityBuilder
              b) =>
      b..G__typename = 'DefaultConfidentialityModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool get masked;
  static Serializer<
          Gget_document_default_confidentialityData_getDefaultConfidentiality>
      get serializer =>
          _$ggetDocumentDefaultConfidentialityDataGetDefaultConfidentialitySerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_document_default_confidentialityData_getDefaultConfidentiality
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_document_default_confidentialityData_getDefaultConfidentiality?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_document_default_confidentialityData_getDefaultConfidentiality
                .serializer,
            json,
          );
}
