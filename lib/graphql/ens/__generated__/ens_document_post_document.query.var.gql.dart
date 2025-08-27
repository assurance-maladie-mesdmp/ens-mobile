// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i2;

part 'ens_document_post_document.query.var.gql.g.dart';

abstract class Gpost_documentVars
    implements Built<Gpost_documentVars, Gpost_documentVarsBuilder> {
  Gpost_documentVars._();

  factory Gpost_documentVars(
          [void Function(Gpost_documentVarsBuilder b) updates]) =
      _$Gpost_documentVars;

  _i1.GDocumentInput get input;
  static Serializer<Gpost_documentVars> get serializer =>
      _$gpostDocumentVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        Gpost_documentVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gpost_documentVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        Gpost_documentVars.serializer,
        json,
      );
}
