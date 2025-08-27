// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_document_get_document_default_confidentiality.query.var.gql.g.dart';

abstract class Gget_document_default_confidentialityVars
    implements
        Built<Gget_document_default_confidentialityVars,
            Gget_document_default_confidentialityVarsBuilder> {
  Gget_document_default_confidentialityVars._();

  factory Gget_document_default_confidentialityVars(
      [void Function(Gget_document_default_confidentialityVarsBuilder b)
          updates]) = _$Gget_document_default_confidentialityVars;

  String get patientId;
  static Serializer<Gget_document_default_confidentialityVars> get serializer =>
      _$ggetDocumentDefaultConfidentialityVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_document_default_confidentialityVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_document_default_confidentialityVars? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_document_default_confidentialityVars.serializer,
        json,
      );
}
