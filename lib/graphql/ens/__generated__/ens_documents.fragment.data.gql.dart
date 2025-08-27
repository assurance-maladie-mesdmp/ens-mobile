// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i2;

part 'ens_documents.fragment.data.gql.g.dart';

abstract class GensDocument {
  String get G__typename;
  String get id;
  String get title;
  GensDocument_uploadedBy get uploadedBy;
  String get createdAt;
  String? get reportDate;
  _i1.GCategory get category;
  bool? get pinned;
  BuiltList<_i1.GConfidentiality> get confidentialities;
  bool get canOwnerDelete;
  bool get covidCertificate;
  bool get canUpdateCategory;
  bool get canUpdateConfidentialityOnly;
  bool get canUpdateTitle;
  bool get canUpdateCreatedAt;
  GensDocument_folder? get folder;
  String? get type;
  Map<String, dynamic> toJson();
}

abstract class GensDocument_uploadedBy {
  String get G__typename;
  String get id;
  _i1.GSourceAuthor get sourceAuthor;
  String? get firstName;
  String? get lastName;
  bool get isPsClickable;
  Map<String, dynamic> toJson();
}

abstract class GensDocument_folder {
  String get G__typename;
  String get id;
  String get title;
  Map<String, dynamic> toJson();
}

abstract class GensDocumentData
    implements Built<GensDocumentData, GensDocumentDataBuilder>, GensDocument {
  GensDocumentData._();

  factory GensDocumentData([void Function(GensDocumentDataBuilder b) updates]) =
      _$GensDocumentData;

  static void _initializeBuilder(GensDocumentDataBuilder b) =>
      b..G__typename = 'DocumentModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get title;
  @override
  GensDocumentData_uploadedBy get uploadedBy;
  @override
  String get createdAt;
  @override
  String? get reportDate;
  @override
  _i1.GCategory get category;
  @override
  bool? get pinned;
  @override
  BuiltList<_i1.GConfidentiality> get confidentialities;
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
  GensDocumentData_folder? get folder;
  @override
  String? get type;
  static Serializer<GensDocumentData> get serializer =>
      _$gensDocumentDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GensDocumentData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GensDocumentData? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GensDocumentData.serializer,
        json,
      );
}

abstract class GensDocumentData_uploadedBy
    implements
        Built<GensDocumentData_uploadedBy, GensDocumentData_uploadedByBuilder>,
        GensDocument_uploadedBy {
  GensDocumentData_uploadedBy._();

  factory GensDocumentData_uploadedBy(
          [void Function(GensDocumentData_uploadedByBuilder b) updates]) =
      _$GensDocumentData_uploadedBy;

  static void _initializeBuilder(GensDocumentData_uploadedByBuilder b) =>
      b..G__typename = 'IdentityModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  _i1.GSourceAuthor get sourceAuthor;
  @override
  String? get firstName;
  @override
  String? get lastName;
  @override
  bool get isPsClickable;
  static Serializer<GensDocumentData_uploadedBy> get serializer =>
      _$gensDocumentDataUploadedBySerializer;

  @override
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GensDocumentData_uploadedBy.serializer,
        this,
      ) as Map<String, dynamic>);

  static GensDocumentData_uploadedBy? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GensDocumentData_uploadedBy.serializer,
        json,
      );
}

abstract class GensDocumentData_folder
    implements
        Built<GensDocumentData_folder, GensDocumentData_folderBuilder>,
        GensDocument_folder {
  GensDocumentData_folder._();

  factory GensDocumentData_folder(
          [void Function(GensDocumentData_folderBuilder b) updates]) =
      _$GensDocumentData_folder;

  static void _initializeBuilder(GensDocumentData_folderBuilder b) =>
      b..G__typename = 'FolderViewModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get title;
  static Serializer<GensDocumentData_folder> get serializer =>
      _$gensDocumentDataFolderSerializer;

  @override
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GensDocumentData_folder.serializer,
        this,
      ) as Map<String, dynamic>);

  static GensDocumentData_folder? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GensDocumentData_folder.serializer,
        json,
      );
}
