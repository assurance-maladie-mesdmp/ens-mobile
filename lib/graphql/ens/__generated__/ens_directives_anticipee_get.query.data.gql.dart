// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_documents.fragment.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_directives_anticipee_get.query.data.gql.g.dart';

abstract class Gget_directives_anticipeesData
    implements
        Built<Gget_directives_anticipeesData,
            Gget_directives_anticipeesDataBuilder> {
  Gget_directives_anticipeesData._();

  factory Gget_directives_anticipeesData(
          [void Function(Gget_directives_anticipeesDataBuilder b) updates]) =
      _$Gget_directives_anticipeesData;

  static void _initializeBuilder(Gget_directives_anticipeesDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gget_directives_anticipeesData_advanceDirectives get advanceDirectives;
  static Serializer<Gget_directives_anticipeesData> get serializer =>
      _$ggetDirectivesAnticipeesDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_directives_anticipeesData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_directives_anticipeesData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_directives_anticipeesData.serializer,
        json,
      );
}

abstract class Gget_directives_anticipeesData_advanceDirectives
    implements
        Built<Gget_directives_anticipeesData_advanceDirectives,
            Gget_directives_anticipeesData_advanceDirectivesBuilder> {
  Gget_directives_anticipeesData_advanceDirectives._();

  factory Gget_directives_anticipeesData_advanceDirectives(
      [void Function(Gget_directives_anticipeesData_advanceDirectivesBuilder b)
          updates]) = _$Gget_directives_anticipeesData_advanceDirectives;

  static void _initializeBuilder(
          Gget_directives_anticipeesData_advanceDirectivesBuilder b) =>
      b..G__typename = 'AdvanceDirectivesModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gget_directives_anticipeesData_advanceDirectives_document get document;
  static Serializer<Gget_directives_anticipeesData_advanceDirectives>
      get serializer =>
          _$ggetDirectivesAnticipeesDataAdvanceDirectivesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_directives_anticipeesData_advanceDirectives.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_directives_anticipeesData_advanceDirectives? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_directives_anticipeesData_advanceDirectives.serializer,
        json,
      );
}

abstract class Gget_directives_anticipeesData_advanceDirectives_document
    implements
        Built<Gget_directives_anticipeesData_advanceDirectives_document,
            Gget_directives_anticipeesData_advanceDirectives_documentBuilder>,
        _i2.GensDocument {
  Gget_directives_anticipeesData_advanceDirectives_document._();

  factory Gget_directives_anticipeesData_advanceDirectives_document(
      [void Function(
              Gget_directives_anticipeesData_advanceDirectives_documentBuilder
                  b)
          updates]) = _$Gget_directives_anticipeesData_advanceDirectives_document;

  static void _initializeBuilder(
          Gget_directives_anticipeesData_advanceDirectives_documentBuilder b) =>
      b..G__typename = 'DocumentModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get title;
  @override
  Gget_directives_anticipeesData_advanceDirectives_document_uploadedBy
      get uploadedBy;
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
  Gget_directives_anticipeesData_advanceDirectives_document_folder? get folder;
  @override
  String? get type;
  static Serializer<Gget_directives_anticipeesData_advanceDirectives_document>
      get serializer =>
          _$ggetDirectivesAnticipeesDataAdvanceDirectivesDocumentSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_directives_anticipeesData_advanceDirectives_document.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_directives_anticipeesData_advanceDirectives_document? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_directives_anticipeesData_advanceDirectives_document.serializer,
        json,
      );
}

abstract class Gget_directives_anticipeesData_advanceDirectives_document_uploadedBy
    implements
        Built<
            Gget_directives_anticipeesData_advanceDirectives_document_uploadedBy,
            Gget_directives_anticipeesData_advanceDirectives_document_uploadedByBuilder>,
        _i2.GensDocument_uploadedBy {
  Gget_directives_anticipeesData_advanceDirectives_document_uploadedBy._();

  factory Gget_directives_anticipeesData_advanceDirectives_document_uploadedBy(
          [void Function(
                  Gget_directives_anticipeesData_advanceDirectives_document_uploadedByBuilder
                      b)
              updates]) =
      _$Gget_directives_anticipeesData_advanceDirectives_document_uploadedBy;

  static void _initializeBuilder(
          Gget_directives_anticipeesData_advanceDirectives_document_uploadedByBuilder
              b) =>
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
  static Serializer<
          Gget_directives_anticipeesData_advanceDirectives_document_uploadedBy>
      get serializer =>
          _$ggetDirectivesAnticipeesDataAdvanceDirectivesDocumentUploadedBySerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_directives_anticipeesData_advanceDirectives_document_uploadedBy
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_directives_anticipeesData_advanceDirectives_document_uploadedBy?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_directives_anticipeesData_advanceDirectives_document_uploadedBy
                .serializer,
            json,
          );
}

abstract class Gget_directives_anticipeesData_advanceDirectives_document_folder
    implements
        Built<Gget_directives_anticipeesData_advanceDirectives_document_folder,
            Gget_directives_anticipeesData_advanceDirectives_document_folderBuilder>,
        _i2.GensDocument_folder {
  Gget_directives_anticipeesData_advanceDirectives_document_folder._();

  factory Gget_directives_anticipeesData_advanceDirectives_document_folder(
          [void Function(
                  Gget_directives_anticipeesData_advanceDirectives_document_folderBuilder
                      b)
              updates]) =
      _$Gget_directives_anticipeesData_advanceDirectives_document_folder;

  static void _initializeBuilder(
          Gget_directives_anticipeesData_advanceDirectives_document_folderBuilder
              b) =>
      b..G__typename = 'FolderViewModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get title;
  static Serializer<
          Gget_directives_anticipeesData_advanceDirectives_document_folder>
      get serializer =>
          _$ggetDirectivesAnticipeesDataAdvanceDirectivesDocumentFolderSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_directives_anticipeesData_advanceDirectives_document_folder
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_directives_anticipeesData_advanceDirectives_document_folder?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_directives_anticipeesData_advanceDirectives_document_folder
                .serializer,
            json,
          );
}
