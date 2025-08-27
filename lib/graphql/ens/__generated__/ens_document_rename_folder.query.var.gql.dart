// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i2;

part 'ens_document_rename_folder.query.var.gql.g.dart';

abstract class Grename_folderVars
    implements Built<Grename_folderVars, Grename_folderVarsBuilder> {
  Grename_folderVars._();

  factory Grename_folderVars(
          [void Function(Grename_folderVarsBuilder b) updates]) =
      _$Grename_folderVars;

  _i1.GRenameFolderInputs get renameFolderInputs;
  static Serializer<Grename_folderVars> get serializer =>
      _$grenameFolderVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        Grename_folderVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Grename_folderVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        Grename_folderVars.serializer,
        json,
      );
}
