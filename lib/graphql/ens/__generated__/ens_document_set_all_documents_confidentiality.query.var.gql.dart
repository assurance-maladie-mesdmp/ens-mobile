// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_document_set_all_documents_confidentiality.query.var.gql.g.dart';

abstract class Gset_all_documents_confidentialityVars
    implements
        Built<Gset_all_documents_confidentialityVars,
            Gset_all_documents_confidentialityVarsBuilder> {
  Gset_all_documents_confidentialityVars._();

  factory Gset_all_documents_confidentialityVars(
      [void Function(Gset_all_documents_confidentialityVarsBuilder b)
          updates]) = _$Gset_all_documents_confidentialityVars;

  String get patientId;
  bool get documentsMaskedByDefault;
  static Serializer<Gset_all_documents_confidentialityVars> get serializer =>
      _$gsetAllDocumentsConfidentialityVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gset_all_documents_confidentialityVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gset_all_documents_confidentialityVars? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gset_all_documents_confidentialityVars.serializer,
        json,
      );
}
