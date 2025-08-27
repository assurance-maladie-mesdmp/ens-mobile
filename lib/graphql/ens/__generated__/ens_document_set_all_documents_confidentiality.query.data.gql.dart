// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_document_set_all_documents_confidentiality.query.data.gql.g.dart';

abstract class Gset_all_documents_confidentialityData
    implements
        Built<Gset_all_documents_confidentialityData,
            Gset_all_documents_confidentialityDataBuilder> {
  Gset_all_documents_confidentialityData._();

  factory Gset_all_documents_confidentialityData(
      [void Function(Gset_all_documents_confidentialityDataBuilder b)
          updates]) = _$Gset_all_documents_confidentialityData;

  static void _initializeBuilder(
          Gset_all_documents_confidentialityDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gset_all_documents_confidentialityData_setAllDocumentsConfidentiality
      get setAllDocumentsConfidentiality;
  static Serializer<Gset_all_documents_confidentialityData> get serializer =>
      _$gsetAllDocumentsConfidentialityDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gset_all_documents_confidentialityData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gset_all_documents_confidentialityData? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gset_all_documents_confidentialityData.serializer,
        json,
      );
}

abstract class Gset_all_documents_confidentialityData_setAllDocumentsConfidentiality
    implements
        Built<
            Gset_all_documents_confidentialityData_setAllDocumentsConfidentiality,
            Gset_all_documents_confidentialityData_setAllDocumentsConfidentialityBuilder> {
  Gset_all_documents_confidentialityData_setAllDocumentsConfidentiality._();

  factory Gset_all_documents_confidentialityData_setAllDocumentsConfidentiality(
          [void Function(
                  Gset_all_documents_confidentialityData_setAllDocumentsConfidentialityBuilder
                      b)
              updates]) =
      _$Gset_all_documents_confidentialityData_setAllDocumentsConfidentiality;

  static void _initializeBuilder(
          Gset_all_documents_confidentialityData_setAllDocumentsConfidentialityBuilder
              b) =>
      b..G__typename = 'Success';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool get success;
  static Serializer<
          Gset_all_documents_confidentialityData_setAllDocumentsConfidentiality>
      get serializer =>
          _$gsetAllDocumentsConfidentialityDataSetAllDocumentsConfidentialitySerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gset_all_documents_confidentialityData_setAllDocumentsConfidentiality
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gset_all_documents_confidentialityData_setAllDocumentsConfidentiality?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gset_all_documents_confidentialityData_setAllDocumentsConfidentiality
                .serializer,
            json,
          );
}
