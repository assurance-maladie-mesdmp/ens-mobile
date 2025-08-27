// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i2;

part 'ens_document_move_documents.query.var.gql.g.dart';

abstract class Gmove_documentsVars
    implements Built<Gmove_documentsVars, Gmove_documentsVarsBuilder> {
  Gmove_documentsVars._();

  factory Gmove_documentsVars(
          [void Function(Gmove_documentsVarsBuilder b) updates]) =
      _$Gmove_documentsVars;

  _i1.GMultipleDocumentsPatchInput get documentsMoveInput;
  static Serializer<Gmove_documentsVars> get serializer =>
      _$gmoveDocumentsVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        Gmove_documentsVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gmove_documentsVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        Gmove_documentsVars.serializer,
        json,
      );
}
