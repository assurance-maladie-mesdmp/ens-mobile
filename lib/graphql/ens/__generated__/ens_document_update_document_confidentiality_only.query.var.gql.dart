// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i2;

part 'ens_document_update_document_confidentiality_only.query.var.gql.g.dart';

abstract class Gupdate_document_confidentiality_onlyVars
    implements
        Built<Gupdate_document_confidentiality_onlyVars,
            Gupdate_document_confidentiality_onlyVarsBuilder> {
  Gupdate_document_confidentiality_onlyVars._();

  factory Gupdate_document_confidentiality_onlyVars(
      [void Function(Gupdate_document_confidentiality_onlyVarsBuilder b)
          updates]) = _$Gupdate_document_confidentiality_onlyVars;

  _i1.GDocumentUpdateConfidentialityInput
      get documentUpdateConfidentialityInput;
  static Serializer<Gupdate_document_confidentiality_onlyVars> get serializer =>
      _$gupdateDocumentConfidentialityOnlyVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        Gupdate_document_confidentiality_onlyVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gupdate_document_confidentiality_onlyVars? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        Gupdate_document_confidentiality_onlyVars.serializer,
        json,
      );
}
