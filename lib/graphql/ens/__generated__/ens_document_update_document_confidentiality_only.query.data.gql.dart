// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_document_update_document_confidentiality_only.query.data.gql.g.dart';

abstract class Gupdate_document_confidentiality_onlyData
    implements
        Built<Gupdate_document_confidentiality_onlyData,
            Gupdate_document_confidentiality_onlyDataBuilder> {
  Gupdate_document_confidentiality_onlyData._();

  factory Gupdate_document_confidentiality_onlyData(
      [void Function(Gupdate_document_confidentiality_onlyDataBuilder b)
          updates]) = _$Gupdate_document_confidentiality_onlyData;

  static void _initializeBuilder(
          Gupdate_document_confidentiality_onlyDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gupdate_document_confidentiality_onlyData_updateConfidentialityDocument
      get updateConfidentialityDocument;
  static Serializer<Gupdate_document_confidentiality_onlyData> get serializer =>
      _$gupdateDocumentConfidentialityOnlyDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gupdate_document_confidentiality_onlyData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gupdate_document_confidentiality_onlyData? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gupdate_document_confidentiality_onlyData.serializer,
        json,
      );
}

abstract class Gupdate_document_confidentiality_onlyData_updateConfidentialityDocument
    implements
        Built<
            Gupdate_document_confidentiality_onlyData_updateConfidentialityDocument,
            Gupdate_document_confidentiality_onlyData_updateConfidentialityDocumentBuilder> {
  Gupdate_document_confidentiality_onlyData_updateConfidentialityDocument._();

  factory Gupdate_document_confidentiality_onlyData_updateConfidentialityDocument(
          [void Function(
                  Gupdate_document_confidentiality_onlyData_updateConfidentialityDocumentBuilder
                      b)
              updates]) =
      _$Gupdate_document_confidentiality_onlyData_updateConfidentialityDocument;

  static void _initializeBuilder(
          Gupdate_document_confidentiality_onlyData_updateConfidentialityDocumentBuilder
              b) =>
      b..G__typename = 'Success';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool get success;
  static Serializer<
          Gupdate_document_confidentiality_onlyData_updateConfidentialityDocument>
      get serializer =>
          _$gupdateDocumentConfidentialityOnlyDataUpdateConfidentialityDocumentSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gupdate_document_confidentiality_onlyData_updateConfidentialityDocument
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gupdate_document_confidentiality_onlyData_updateConfidentialityDocument?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gupdate_document_confidentiality_onlyData_updateConfidentialityDocument
                .serializer,
            json,
          );
}
