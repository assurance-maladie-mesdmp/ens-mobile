// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_document_update_document.query.data.gql.g.dart';

abstract class Gupdate_documentData
    implements Built<Gupdate_documentData, Gupdate_documentDataBuilder> {
  Gupdate_documentData._();

  factory Gupdate_documentData(
          [void Function(Gupdate_documentDataBuilder b) updates]) =
      _$Gupdate_documentData;

  static void _initializeBuilder(Gupdate_documentDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gupdate_documentData_updateDocumentProperties get updateDocumentProperties;
  static Serializer<Gupdate_documentData> get serializer =>
      _$gupdateDocumentDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gupdate_documentData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gupdate_documentData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gupdate_documentData.serializer,
        json,
      );
}

abstract class Gupdate_documentData_updateDocumentProperties
    implements
        Built<Gupdate_documentData_updateDocumentProperties,
            Gupdate_documentData_updateDocumentPropertiesBuilder> {
  Gupdate_documentData_updateDocumentProperties._();

  factory Gupdate_documentData_updateDocumentProperties(
      [void Function(Gupdate_documentData_updateDocumentPropertiesBuilder b)
          updates]) = _$Gupdate_documentData_updateDocumentProperties;

  static void _initializeBuilder(
          Gupdate_documentData_updateDocumentPropertiesBuilder b) =>
      b..G__typename = 'Success';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool get success;
  static Serializer<Gupdate_documentData_updateDocumentProperties>
      get serializer => _$gupdateDocumentDataUpdateDocumentPropertiesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gupdate_documentData_updateDocumentProperties.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gupdate_documentData_updateDocumentProperties? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gupdate_documentData_updateDocumentProperties.serializer,
        json,
      );
}
