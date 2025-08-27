// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_documents_get_documents.query.var.gql.g.dart';

abstract class Gget_documentsVars
    implements Built<Gget_documentsVars, Gget_documentsVarsBuilder> {
  Gget_documentsVars._();

  factory Gget_documentsVars(
          [void Function(Gget_documentsVarsBuilder b) updates]) =
      _$Gget_documentsVars;

  String get patientId;
  static Serializer<Gget_documentsVars> get serializer =>
      _$ggetDocumentsVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_documentsVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_documentsVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_documentsVars.serializer,
        json,
      );
}
