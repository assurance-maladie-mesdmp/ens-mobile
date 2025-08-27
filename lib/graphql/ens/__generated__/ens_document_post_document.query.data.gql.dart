// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_document_post_document.query.data.gql.g.dart';

abstract class Gpost_documentData
    implements Built<Gpost_documentData, Gpost_documentDataBuilder> {
  Gpost_documentData._();

  factory Gpost_documentData(
          [void Function(Gpost_documentDataBuilder b) updates]) =
      _$Gpost_documentData;

  static void _initializeBuilder(Gpost_documentDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gpost_documentData_postDocument get postDocument;
  static Serializer<Gpost_documentData> get serializer =>
      _$gpostDocumentDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gpost_documentData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gpost_documentData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gpost_documentData.serializer,
        json,
      );
}

abstract class Gpost_documentData_postDocument
    implements
        Built<Gpost_documentData_postDocument,
            Gpost_documentData_postDocumentBuilder> {
  Gpost_documentData_postDocument._();

  factory Gpost_documentData_postDocument(
          [void Function(Gpost_documentData_postDocumentBuilder b) updates]) =
      _$Gpost_documentData_postDocument;

  static void _initializeBuilder(Gpost_documentData_postDocumentBuilder b) =>
      b..G__typename = 'DocumentModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  static Serializer<Gpost_documentData_postDocument> get serializer =>
      _$gpostDocumentDataPostDocumentSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gpost_documentData_postDocument.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gpost_documentData_postDocument? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gpost_documentData_postDocument.serializer,
        json,
      );
}
