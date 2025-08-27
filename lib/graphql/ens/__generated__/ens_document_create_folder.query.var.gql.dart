// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i2;

part 'ens_document_create_folder.query.var.gql.g.dart';

abstract class Gcreate_folderVars
    implements Built<Gcreate_folderVars, Gcreate_folderVarsBuilder> {
  Gcreate_folderVars._();

  factory Gcreate_folderVars(
          [void Function(Gcreate_folderVarsBuilder b) updates]) =
      _$Gcreate_folderVars;

  _i1.GCreateFolderInputs get createFolderInputs;
  static Serializer<Gcreate_folderVars> get serializer =>
      _$gcreateFolderVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        Gcreate_folderVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gcreate_folderVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        Gcreate_folderVars.serializer,
        json,
      );
}
