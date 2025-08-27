// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_document_get_document_attachment.query.data.gql.g.dart';

abstract class Gget_document_attachmentData
    implements
        Built<Gget_document_attachmentData,
            Gget_document_attachmentDataBuilder> {
  Gget_document_attachmentData._();

  factory Gget_document_attachmentData(
          [void Function(Gget_document_attachmentDataBuilder b) updates]) =
      _$Gget_document_attachmentData;

  static void _initializeBuilder(Gget_document_attachmentDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gget_document_attachmentData_document get document;
  static Serializer<Gget_document_attachmentData> get serializer =>
      _$ggetDocumentAttachmentDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_document_attachmentData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_document_attachmentData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_document_attachmentData.serializer,
        json,
      );
}

abstract class Gget_document_attachmentData_document
    implements
        Built<Gget_document_attachmentData_document,
            Gget_document_attachmentData_documentBuilder> {
  Gget_document_attachmentData_document._();

  factory Gget_document_attachmentData_document(
      [void Function(Gget_document_attachmentData_documentBuilder b)
          updates]) = _$Gget_document_attachmentData_document;

  static void _initializeBuilder(
          Gget_document_attachmentData_documentBuilder b) =>
      b..G__typename = 'DocumentDetailModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get attachment;
  String get mimeType;
  BuiltList<String> get measureIds;
  static Serializer<Gget_document_attachmentData_document> get serializer =>
      _$ggetDocumentAttachmentDataDocumentSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_document_attachmentData_document.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_document_attachmentData_document? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_document_attachmentData_document.serializer,
        json,
      );
}
