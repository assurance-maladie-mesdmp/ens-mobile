// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_document_delete_documents.query.data.gql.g.dart';

abstract class Gdelete_documentsData
    implements Built<Gdelete_documentsData, Gdelete_documentsDataBuilder> {
  Gdelete_documentsData._();

  factory Gdelete_documentsData(
          [void Function(Gdelete_documentsDataBuilder b) updates]) =
      _$Gdelete_documentsData;

  static void _initializeBuilder(Gdelete_documentsDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gdelete_documentsData_deleteDocuments get deleteDocuments;
  static Serializer<Gdelete_documentsData> get serializer =>
      _$gdeleteDocumentsDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gdelete_documentsData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gdelete_documentsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gdelete_documentsData.serializer,
        json,
      );
}

abstract class Gdelete_documentsData_deleteDocuments
    implements
        Built<Gdelete_documentsData_deleteDocuments,
            Gdelete_documentsData_deleteDocumentsBuilder> {
  Gdelete_documentsData_deleteDocuments._();

  factory Gdelete_documentsData_deleteDocuments(
      [void Function(Gdelete_documentsData_deleteDocumentsBuilder b)
          updates]) = _$Gdelete_documentsData_deleteDocuments;

  static void _initializeBuilder(
          Gdelete_documentsData_deleteDocumentsBuilder b) =>
      b..G__typename = 'Success';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool get success;
  static Serializer<Gdelete_documentsData_deleteDocuments> get serializer =>
      _$gdeleteDocumentsDataDeleteDocumentsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gdelete_documentsData_deleteDocuments.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gdelete_documentsData_deleteDocuments? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gdelete_documentsData_deleteDocuments.serializer,
        json,
      );
}
