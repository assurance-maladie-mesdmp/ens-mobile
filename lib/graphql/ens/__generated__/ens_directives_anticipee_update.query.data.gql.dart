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

part 'ens_directives_anticipee_update.query.data.gql.g.dart';

abstract class Gpost_directives_anticipeesData
    implements
        Built<Gpost_directives_anticipeesData,
            Gpost_directives_anticipeesDataBuilder> {
  Gpost_directives_anticipeesData._();

  factory Gpost_directives_anticipeesData(
          [void Function(Gpost_directives_anticipeesDataBuilder b) updates]) =
      _$Gpost_directives_anticipeesData;

  static void _initializeBuilder(Gpost_directives_anticipeesDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gpost_directives_anticipeesData_postAdvanceDirectives
      get postAdvanceDirectives;
  static Serializer<Gpost_directives_anticipeesData> get serializer =>
      _$gpostDirectivesAnticipeesDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gpost_directives_anticipeesData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gpost_directives_anticipeesData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gpost_directives_anticipeesData.serializer,
        json,
      );
}

abstract class Gpost_directives_anticipeesData_postAdvanceDirectives
    implements
        Built<Gpost_directives_anticipeesData_postAdvanceDirectives,
            Gpost_directives_anticipeesData_postAdvanceDirectivesBuilder> {
  Gpost_directives_anticipeesData_postAdvanceDirectives._();

  factory Gpost_directives_anticipeesData_postAdvanceDirectives(
      [void Function(
              Gpost_directives_anticipeesData_postAdvanceDirectivesBuilder b)
          updates]) = _$Gpost_directives_anticipeesData_postAdvanceDirectives;

  static void _initializeBuilder(
          Gpost_directives_anticipeesData_postAdvanceDirectivesBuilder b) =>
      b..G__typename = 'AdvanceDirectivesModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gpost_directives_anticipeesData_postAdvanceDirectives_document get document;
  static Serializer<Gpost_directives_anticipeesData_postAdvanceDirectives>
      get serializer =>
          _$gpostDirectivesAnticipeesDataPostAdvanceDirectivesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gpost_directives_anticipeesData_postAdvanceDirectives.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gpost_directives_anticipeesData_postAdvanceDirectives? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gpost_directives_anticipeesData_postAdvanceDirectives.serializer,
        json,
      );
}

abstract class Gpost_directives_anticipeesData_postAdvanceDirectives_document
    implements
        Built<Gpost_directives_anticipeesData_postAdvanceDirectives_document,
            Gpost_directives_anticipeesData_postAdvanceDirectives_documentBuilder>,
        _i2.GensDocument {
  Gpost_directives_anticipeesData_postAdvanceDirectives_document._();

  factory Gpost_directives_anticipeesData_postAdvanceDirectives_document(
          [void Function(
                  Gpost_directives_anticipeesData_postAdvanceDirectives_documentBuilder
                      b)
              updates]) =
      _$Gpost_directives_anticipeesData_postAdvanceDirectives_document;

  static void _initializeBuilder(
          Gpost_directives_anticipeesData_postAdvanceDirectives_documentBuilder
              b) =>
      b..G__typename = 'DocumentModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get title;
  @override
  Gpost_directives_anticipeesData_postAdvanceDirectives_document_uploadedBy
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
  Gpost_directives_anticipeesData_postAdvanceDirectives_document_folder?
      get folder;
  @override
  String? get type;
  static Serializer<
          Gpost_directives_anticipeesData_postAdvanceDirectives_document>
      get serializer =>
          _$gpostDirectivesAnticipeesDataPostAdvanceDirectivesDocumentSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gpost_directives_anticipeesData_postAdvanceDirectives_document
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gpost_directives_anticipeesData_postAdvanceDirectives_document?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gpost_directives_anticipeesData_postAdvanceDirectives_document
                .serializer,
            json,
          );
}

abstract class Gpost_directives_anticipeesData_postAdvanceDirectives_document_uploadedBy
    implements
        Built<
            Gpost_directives_anticipeesData_postAdvanceDirectives_document_uploadedBy,
            Gpost_directives_anticipeesData_postAdvanceDirectives_document_uploadedByBuilder>,
        _i2.GensDocument_uploadedBy {
  Gpost_directives_anticipeesData_postAdvanceDirectives_document_uploadedBy._();

  factory Gpost_directives_anticipeesData_postAdvanceDirectives_document_uploadedBy(
          [void Function(
                  Gpost_directives_anticipeesData_postAdvanceDirectives_document_uploadedByBuilder
                      b)
              updates]) =
      _$Gpost_directives_anticipeesData_postAdvanceDirectives_document_uploadedBy;

  static void _initializeBuilder(
          Gpost_directives_anticipeesData_postAdvanceDirectives_document_uploadedByBuilder
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
          Gpost_directives_anticipeesData_postAdvanceDirectives_document_uploadedBy>
      get serializer =>
          _$gpostDirectivesAnticipeesDataPostAdvanceDirectivesDocumentUploadedBySerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gpost_directives_anticipeesData_postAdvanceDirectives_document_uploadedBy
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gpost_directives_anticipeesData_postAdvanceDirectives_document_uploadedBy?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gpost_directives_anticipeesData_postAdvanceDirectives_document_uploadedBy
                .serializer,
            json,
          );
}

abstract class Gpost_directives_anticipeesData_postAdvanceDirectives_document_folder
    implements
        Built<
            Gpost_directives_anticipeesData_postAdvanceDirectives_document_folder,
            Gpost_directives_anticipeesData_postAdvanceDirectives_document_folderBuilder>,
        _i2.GensDocument_folder {
  Gpost_directives_anticipeesData_postAdvanceDirectives_document_folder._();

  factory Gpost_directives_anticipeesData_postAdvanceDirectives_document_folder(
          [void Function(
                  Gpost_directives_anticipeesData_postAdvanceDirectives_document_folderBuilder
                      b)
              updates]) =
      _$Gpost_directives_anticipeesData_postAdvanceDirectives_document_folder;

  static void _initializeBuilder(
          Gpost_directives_anticipeesData_postAdvanceDirectives_document_folderBuilder
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
          Gpost_directives_anticipeesData_postAdvanceDirectives_document_folder>
      get serializer =>
          _$gpostDirectivesAnticipeesDataPostAdvanceDirectivesDocumentFolderSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gpost_directives_anticipeesData_postAdvanceDirectives_document_folder
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gpost_directives_anticipeesData_postAdvanceDirectives_document_folder?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gpost_directives_anticipeesData_postAdvanceDirectives_document_folder
                .serializer,
            json,
          );
}
