// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_document_mark_document.data.gql.g.dart';

abstract class Gmark_documentData
    implements Built<Gmark_documentData, Gmark_documentDataBuilder> {
  Gmark_documentData._();

  factory Gmark_documentData(
          [void Function(Gmark_documentDataBuilder b) updates]) =
      _$Gmark_documentData;

  static void _initializeBuilder(Gmark_documentDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gmark_documentData_markDocument get markDocument;
  static Serializer<Gmark_documentData> get serializer =>
      _$gmarkDocumentDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gmark_documentData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gmark_documentData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gmark_documentData.serializer,
        json,
      );
}

abstract class Gmark_documentData_markDocument
    implements
        Built<Gmark_documentData_markDocument,
            Gmark_documentData_markDocumentBuilder> {
  Gmark_documentData_markDocument._();

  factory Gmark_documentData_markDocument(
          [void Function(Gmark_documentData_markDocumentBuilder b) updates]) =
      _$Gmark_documentData_markDocument;

  static void _initializeBuilder(Gmark_documentData_markDocumentBuilder b) =>
      b..G__typename = 'Success';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool get success;
  static Serializer<Gmark_documentData_markDocument> get serializer =>
      _$gmarkDocumentDataMarkDocumentSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gmark_documentData_markDocument.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gmark_documentData_markDocument? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gmark_documentData_markDocument.serializer,
        json,
      );
}
