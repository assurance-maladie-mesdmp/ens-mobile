// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i2;

part 'ens_document_update_document_data.query.var.gql.g.dart';

abstract class Gupdate_document_dataVars
    implements
        Built<Gupdate_document_dataVars, Gupdate_document_dataVarsBuilder> {
  Gupdate_document_dataVars._();

  factory Gupdate_document_dataVars(
          [void Function(Gupdate_document_dataVarsBuilder b) updates]) =
      _$Gupdate_document_dataVars;

  _i1.GDocumentUpdateInput get documentUpdateInput;
  static Serializer<Gupdate_document_dataVars> get serializer =>
      _$gupdateDocumentDataVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        Gupdate_document_dataVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gupdate_document_dataVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        Gupdate_document_dataVars.serializer,
        json,
      );
}
