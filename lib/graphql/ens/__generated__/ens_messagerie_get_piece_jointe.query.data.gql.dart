// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_messagerie_get_piece_jointe.query.data.gql.g.dart';

abstract class Gget_piece_jointeData
    implements Built<Gget_piece_jointeData, Gget_piece_jointeDataBuilder> {
  Gget_piece_jointeData._();

  factory Gget_piece_jointeData(
          [void Function(Gget_piece_jointeDataBuilder b) updates]) =
      _$Gget_piece_jointeData;

  static void _initializeBuilder(Gget_piece_jointeDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gget_piece_jointeData_getMessageFile get getMessageFile;
  static Serializer<Gget_piece_jointeData> get serializer =>
      _$ggetPieceJointeDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_piece_jointeData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_piece_jointeData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_piece_jointeData.serializer,
        json,
      );
}

abstract class Gget_piece_jointeData_getMessageFile
    implements
        Built<Gget_piece_jointeData_getMessageFile,
            Gget_piece_jointeData_getMessageFileBuilder> {
  Gget_piece_jointeData_getMessageFile._();

  factory Gget_piece_jointeData_getMessageFile(
      [void Function(Gget_piece_jointeData_getMessageFileBuilder b)
          updates]) = _$Gget_piece_jointeData_getMessageFile;

  static void _initializeBuilder(
          Gget_piece_jointeData_getMessageFileBuilder b) =>
      b..G__typename = 'FileModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get attachment;
  String get createdAt;
  String get mimeType;
  String get name;
  bool get canAddToDMP;
  static Serializer<Gget_piece_jointeData_getMessageFile> get serializer =>
      _$ggetPieceJointeDataGetMessageFileSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_piece_jointeData_getMessageFile.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_piece_jointeData_getMessageFile? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_piece_jointeData_getMessageFile.serializer,
        json,
      );
}
