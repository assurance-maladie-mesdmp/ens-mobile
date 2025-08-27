// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i2;

part 'ens_document_delete_documents.query.var.gql.g.dart';

abstract class Gdelete_documentsVars
    implements Built<Gdelete_documentsVars, Gdelete_documentsVarsBuilder> {
  Gdelete_documentsVars._();

  factory Gdelete_documentsVars(
          [void Function(Gdelete_documentsVarsBuilder b) updates]) =
      _$Gdelete_documentsVars;

  _i1.GDocumentsDeletionInput get input;
  static Serializer<Gdelete_documentsVars> get serializer =>
      _$gdeleteDocumentsVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        Gdelete_documentsVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gdelete_documentsVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        Gdelete_documentsVars.serializer,
        json,
      );
}
