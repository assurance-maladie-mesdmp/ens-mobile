// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i2;

part 'ens_document_mark_document.var.gql.g.dart';

abstract class Gmark_documentVars
    implements Built<Gmark_documentVars, Gmark_documentVarsBuilder> {
  Gmark_documentVars._();

  factory Gmark_documentVars(
          [void Function(Gmark_documentVarsBuilder b) updates]) =
      _$Gmark_documentVars;

  _i1.GSingleDocumentMarkInput get documentMarkInput;
  static Serializer<Gmark_documentVars> get serializer =>
      _$gmarkDocumentVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        Gmark_documentVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gmark_documentVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        Gmark_documentVars.serializer,
        json,
      );
}
