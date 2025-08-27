// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_document_update_document_data.query.data.gql.g.dart';

abstract class Gupdate_document_dataData
    implements
        Built<Gupdate_document_dataData, Gupdate_document_dataDataBuilder> {
  Gupdate_document_dataData._();

  factory Gupdate_document_dataData(
          [void Function(Gupdate_document_dataDataBuilder b) updates]) =
      _$Gupdate_document_dataData;

  static void _initializeBuilder(Gupdate_document_dataDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gupdate_document_dataData_updateDocument get updateDocument;
  static Serializer<Gupdate_document_dataData> get serializer =>
      _$gupdateDocumentDataDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gupdate_document_dataData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gupdate_document_dataData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gupdate_document_dataData.serializer,
        json,
      );
}

abstract class Gupdate_document_dataData_updateDocument
    implements
        Built<Gupdate_document_dataData_updateDocument,
            Gupdate_document_dataData_updateDocumentBuilder> {
  Gupdate_document_dataData_updateDocument._();

  factory Gupdate_document_dataData_updateDocument(
      [void Function(Gupdate_document_dataData_updateDocumentBuilder b)
          updates]) = _$Gupdate_document_dataData_updateDocument;

  static void _initializeBuilder(
          Gupdate_document_dataData_updateDocumentBuilder b) =>
      b..G__typename = 'Success';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool get success;
  static Serializer<Gupdate_document_dataData_updateDocument> get serializer =>
      _$gupdateDocumentDataDataUpdateDocumentSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gupdate_document_dataData_updateDocument.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gupdate_document_dataData_updateDocument? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gupdate_document_dataData_updateDocument.serializer,
        json,
      );
}
