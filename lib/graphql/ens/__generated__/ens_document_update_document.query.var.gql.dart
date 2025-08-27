// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i2;

part 'ens_document_update_document.query.var.gql.g.dart';

abstract class Gupdate_documentVars
    implements Built<Gupdate_documentVars, Gupdate_documentVarsBuilder> {
  Gupdate_documentVars._();

  factory Gupdate_documentVars(
          [void Function(Gupdate_documentVarsBuilder b) updates]) =
      _$Gupdate_documentVars;

  _i1.GDocumentPropertiesUpdateInput get documentPropertiesUpdateInput;
  static Serializer<Gupdate_documentVars> get serializer =>
      _$gupdateDocumentVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        Gupdate_documentVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gupdate_documentVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        Gupdate_documentVars.serializer,
        json,
      );
}
