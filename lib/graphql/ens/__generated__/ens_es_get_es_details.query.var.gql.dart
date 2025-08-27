// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_es_get_es_details.query.var.gql.g.dart';

abstract class Gget_es_detailsVars
    implements Built<Gget_es_detailsVars, Gget_es_detailsVarsBuilder> {
  Gget_es_detailsVars._();

  factory Gget_es_detailsVars(
          [void Function(Gget_es_detailsVarsBuilder b) updates]) =
      _$Gget_es_detailsVars;

  String get id;
  String get patientId;
  static Serializer<Gget_es_detailsVars> get serializer =>
      _$ggetEsDetailsVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_es_detailsVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_es_detailsVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_es_detailsVars.serializer,
        json,
      );
}
