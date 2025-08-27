// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_document_rename_folder.query.data.gql.g.dart';

abstract class Grename_folderData
    implements Built<Grename_folderData, Grename_folderDataBuilder> {
  Grename_folderData._();

  factory Grename_folderData(
          [void Function(Grename_folderDataBuilder b) updates]) =
      _$Grename_folderData;

  static void _initializeBuilder(Grename_folderDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Grename_folderData_renameFolderV2 get renameFolderV2;
  static Serializer<Grename_folderData> get serializer =>
      _$grenameFolderDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Grename_folderData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Grename_folderData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Grename_folderData.serializer,
        json,
      );
}

abstract class Grename_folderData_renameFolderV2
    implements
        Built<Grename_folderData_renameFolderV2,
            Grename_folderData_renameFolderV2Builder> {
  Grename_folderData_renameFolderV2._();

  factory Grename_folderData_renameFolderV2(
          [void Function(Grename_folderData_renameFolderV2Builder b) updates]) =
      _$Grename_folderData_renameFolderV2;

  static void _initializeBuilder(Grename_folderData_renameFolderV2Builder b) =>
      b..G__typename = 'Success';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool get success;
  static Serializer<Grename_folderData_renameFolderV2> get serializer =>
      _$grenameFolderDataRenameFolderV2Serializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Grename_folderData_renameFolderV2.serializer,
        this,
      ) as Map<String, dynamic>);

  static Grename_folderData_renameFolderV2? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Grename_folderData_renameFolderV2.serializer,
        json,
      );
}
