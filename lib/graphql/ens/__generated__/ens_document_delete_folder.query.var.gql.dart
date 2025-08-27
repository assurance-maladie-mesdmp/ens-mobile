// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i2;

part 'ens_document_delete_folder.query.var.gql.g.dart';

abstract class Gdelete_folderVars
    implements Built<Gdelete_folderVars, Gdelete_folderVarsBuilder> {
  Gdelete_folderVars._();

  factory Gdelete_folderVars(
          [void Function(Gdelete_folderVarsBuilder b) updates]) =
      _$Gdelete_folderVars;

  _i1.GDeleteFolderInputs get deleteFolderInputs;
  static Serializer<Gdelete_folderVars> get serializer =>
      _$gdeleteFolderVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        Gdelete_folderVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gdelete_folderVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        Gdelete_folderVars.serializer,
        json,
      );
}
