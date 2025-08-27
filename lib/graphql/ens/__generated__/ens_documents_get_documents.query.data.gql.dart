// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_document_dossier_fragment.data.gql.dart'
    as _i4;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_documents.fragment.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_documents_get_documents.query.data.gql.g.dart';

abstract class Gget_documentsData
    implements Built<Gget_documentsData, Gget_documentsDataBuilder> {
  Gget_documentsData._();

  factory Gget_documentsData(
          [void Function(Gget_documentsDataBuilder b) updates]) =
      _$Gget_documentsData;

  static void _initializeBuilder(Gget_documentsDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gget_documentsData_documents? get documents;
  BuiltList<Gget_documentsData_fetchAllFolders>? get fetchAllFolders;
  static Serializer<Gget_documentsData> get serializer =>
      _$ggetDocumentsDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_documentsData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_documentsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_documentsData.serializer,
        json,
      );
}

abstract class Gget_documentsData_documents
    implements
        Built<Gget_documentsData_documents,
            Gget_documentsData_documentsBuilder> {
  Gget_documentsData_documents._();

  factory Gget_documentsData_documents(
          [void Function(Gget_documentsData_documentsBuilder b) updates]) =
      _$Gget_documentsData_documents;

  static void _initializeBuilder(Gget_documentsData_documentsBuilder b) =>
      b..G__typename = 'DocumentListModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<Gget_documentsData_documents_documents> get documents;
  static Serializer<Gget_documentsData_documents> get serializer =>
      _$ggetDocumentsDataDocumentsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_documentsData_documents.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_documentsData_documents? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_documentsData_documents.serializer,
        json,
      );
}

abstract class Gget_documentsData_documents_documents
    implements
        Built<Gget_documentsData_documents_documents,
            Gget_documentsData_documents_documentsBuilder>,
        _i2.GensDocument {
  Gget_documentsData_documents_documents._();

  factory Gget_documentsData_documents_documents(
      [void Function(Gget_documentsData_documents_documentsBuilder b)
          updates]) = _$Gget_documentsData_documents_documents;

  static void _initializeBuilder(
          Gget_documentsData_documents_documentsBuilder b) =>
      b..G__typename = 'DocumentModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get title;
  @override
  Gget_documentsData_documents_documents_uploadedBy get uploadedBy;
  @override
  String get createdAt;
  @override
  String? get reportDate;
  @override
  _i3.GCategory get category;
  @override
  bool? get pinned;
  @override
  BuiltList<_i3.GConfidentiality> get confidentialities;
  @override
  bool get canOwnerDelete;
  @override
  bool get covidCertificate;
  @override
  bool get canUpdateCategory;
  @override
  bool get canUpdateConfidentialityOnly;
  @override
  bool get canUpdateTitle;
  @override
  bool get canUpdateCreatedAt;
  @override
  Gget_documentsData_documents_documents_folder? get folder;
  @override
  String? get type;
  static Serializer<Gget_documentsData_documents_documents> get serializer =>
      _$ggetDocumentsDataDocumentsDocumentsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_documentsData_documents_documents.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_documentsData_documents_documents? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_documentsData_documents_documents.serializer,
        json,
      );
}

abstract class Gget_documentsData_documents_documents_uploadedBy
    implements
        Built<Gget_documentsData_documents_documents_uploadedBy,
            Gget_documentsData_documents_documents_uploadedByBuilder>,
        _i2.GensDocument_uploadedBy {
  Gget_documentsData_documents_documents_uploadedBy._();

  factory Gget_documentsData_documents_documents_uploadedBy(
      [void Function(Gget_documentsData_documents_documents_uploadedByBuilder b)
          updates]) = _$Gget_documentsData_documents_documents_uploadedBy;

  static void _initializeBuilder(
          Gget_documentsData_documents_documents_uploadedByBuilder b) =>
      b..G__typename = 'IdentityModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  _i3.GSourceAuthor get sourceAuthor;
  @override
  String? get firstName;
  @override
  String? get lastName;
  @override
  bool get isPsClickable;
  static Serializer<Gget_documentsData_documents_documents_uploadedBy>
      get serializer =>
          _$ggetDocumentsDataDocumentsDocumentsUploadedBySerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_documentsData_documents_documents_uploadedBy.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_documentsData_documents_documents_uploadedBy? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_documentsData_documents_documents_uploadedBy.serializer,
        json,
      );
}

abstract class Gget_documentsData_documents_documents_folder
    implements
        Built<Gget_documentsData_documents_documents_folder,
            Gget_documentsData_documents_documents_folderBuilder>,
        _i2.GensDocument_folder {
  Gget_documentsData_documents_documents_folder._();

  factory Gget_documentsData_documents_documents_folder(
      [void Function(Gget_documentsData_documents_documents_folderBuilder b)
          updates]) = _$Gget_documentsData_documents_documents_folder;

  static void _initializeBuilder(
          Gget_documentsData_documents_documents_folderBuilder b) =>
      b..G__typename = 'FolderViewModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get title;
  static Serializer<Gget_documentsData_documents_documents_folder>
      get serializer => _$ggetDocumentsDataDocumentsDocumentsFolderSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_documentsData_documents_documents_folder.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_documentsData_documents_documents_folder? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_documentsData_documents_documents_folder.serializer,
        json,
      );
}

abstract class Gget_documentsData_fetchAllFolders
    implements
        Built<Gget_documentsData_fetchAllFolders,
            Gget_documentsData_fetchAllFoldersBuilder>,
        _i4.Gdossier {
  Gget_documentsData_fetchAllFolders._();

  factory Gget_documentsData_fetchAllFolders(
      [void Function(Gget_documentsData_fetchAllFoldersBuilder b)
          updates]) = _$Gget_documentsData_fetchAllFolders;

  static void _initializeBuilder(Gget_documentsData_fetchAllFoldersBuilder b) =>
      b..G__typename = 'FolderViewModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get title;
  static Serializer<Gget_documentsData_fetchAllFolders> get serializer =>
      _$ggetDocumentsDataFetchAllFoldersSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_documentsData_fetchAllFolders.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_documentsData_fetchAllFolders? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_documentsData_fetchAllFolders.serializer,
        json,
      );
}
