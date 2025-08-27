// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_document_get_document_attachment.query.var.gql.g.dart';

abstract class Gget_document_attachmentVars
    implements
        Built<Gget_document_attachmentVars,
            Gget_document_attachmentVarsBuilder> {
  Gget_document_attachmentVars._();

  factory Gget_document_attachmentVars(
          [void Function(Gget_document_attachmentVarsBuilder b) updates]) =
      _$Gget_document_attachmentVars;

  String get documentId;
  String get patientId;
  static Serializer<Gget_document_attachmentVars> get serializer =>
      _$ggetDocumentAttachmentVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_document_attachmentVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_document_attachmentVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_document_attachmentVars.serializer,
        json,
      );
}
