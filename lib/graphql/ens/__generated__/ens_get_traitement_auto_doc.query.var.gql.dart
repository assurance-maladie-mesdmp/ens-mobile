// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_get_traitement_auto_doc.query.var.gql.g.dart';

abstract class Gget_treatment_doc_auto_finalityVars
    implements
        Built<Gget_treatment_doc_auto_finalityVars,
            Gget_treatment_doc_auto_finalityVarsBuilder> {
  Gget_treatment_doc_auto_finalityVars._();

  factory Gget_treatment_doc_auto_finalityVars(
      [void Function(Gget_treatment_doc_auto_finalityVarsBuilder b)
          updates]) = _$Gget_treatment_doc_auto_finalityVars;

  String get patientId;
  static Serializer<Gget_treatment_doc_auto_finalityVars> get serializer =>
      _$ggetTreatmentDocAutoFinalityVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_treatment_doc_auto_finalityVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_treatment_doc_auto_finalityVars? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_treatment_doc_auto_finalityVars.serializer,
        json,
      );
}
