// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_document_delete_folder.query.data.gql.g.dart';

abstract class Gdelete_folderData
    implements Built<Gdelete_folderData, Gdelete_folderDataBuilder> {
  Gdelete_folderData._();

  factory Gdelete_folderData(
          [void Function(Gdelete_folderDataBuilder b) updates]) =
      _$Gdelete_folderData;

  static void _initializeBuilder(Gdelete_folderDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gdelete_folderData_deleteFolder get deleteFolder;
  static Serializer<Gdelete_folderData> get serializer =>
      _$gdeleteFolderDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gdelete_folderData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gdelete_folderData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gdelete_folderData.serializer,
        json,
      );
}

abstract class Gdelete_folderData_deleteFolder
    implements
        Built<Gdelete_folderData_deleteFolder,
            Gdelete_folderData_deleteFolderBuilder> {
  Gdelete_folderData_deleteFolder._();

  factory Gdelete_folderData_deleteFolder(
          [void Function(Gdelete_folderData_deleteFolderBuilder b) updates]) =
      _$Gdelete_folderData_deleteFolder;

  static void _initializeBuilder(Gdelete_folderData_deleteFolderBuilder b) =>
      b..G__typename = 'Success';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool get success;
  static Serializer<Gdelete_folderData_deleteFolder> get serializer =>
      _$gdeleteFolderDataDeleteFolderSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gdelete_folderData_deleteFolder.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gdelete_folderData_deleteFolder? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gdelete_folderData_deleteFolder.serializer,
        json,
      );
}
