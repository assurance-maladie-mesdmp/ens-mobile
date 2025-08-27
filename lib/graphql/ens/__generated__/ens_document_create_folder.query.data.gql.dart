// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_document_create_folder.query.data.gql.g.dart';

abstract class Gcreate_folderData
    implements Built<Gcreate_folderData, Gcreate_folderDataBuilder> {
  Gcreate_folderData._();

  factory Gcreate_folderData(
          [void Function(Gcreate_folderDataBuilder b) updates]) =
      _$Gcreate_folderData;

  static void _initializeBuilder(Gcreate_folderDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gcreate_folderData_createFolderV2 get createFolderV2;
  static Serializer<Gcreate_folderData> get serializer =>
      _$gcreateFolderDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gcreate_folderData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gcreate_folderData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gcreate_folderData.serializer,
        json,
      );
}

abstract class Gcreate_folderData_createFolderV2
    implements
        Built<Gcreate_folderData_createFolderV2,
            Gcreate_folderData_createFolderV2Builder> {
  Gcreate_folderData_createFolderV2._();

  factory Gcreate_folderData_createFolderV2(
          [void Function(Gcreate_folderData_createFolderV2Builder b) updates]) =
      _$Gcreate_folderData_createFolderV2;

  static void _initializeBuilder(Gcreate_folderData_createFolderV2Builder b) =>
      b..G__typename = 'CreatedFolder';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  static Serializer<Gcreate_folderData_createFolderV2> get serializer =>
      _$gcreateFolderDataCreateFolderV2Serializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gcreate_folderData_createFolderV2.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gcreate_folderData_createFolderV2? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gcreate_folderData_createFolderV2.serializer,
        json,
      );
}
