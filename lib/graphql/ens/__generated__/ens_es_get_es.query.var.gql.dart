// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_es_get_es.query.var.gql.g.dart';

abstract class Gget_etablissements_de_santeVars
    implements
        Built<Gget_etablissements_de_santeVars,
            Gget_etablissements_de_santeVarsBuilder> {
  Gget_etablissements_de_santeVars._();

  factory Gget_etablissements_de_santeVars(
          [void Function(Gget_etablissements_de_santeVarsBuilder b) updates]) =
      _$Gget_etablissements_de_santeVars;

  String get patientId;
  static Serializer<Gget_etablissements_de_santeVars> get serializer =>
      _$ggetEtablissementsDeSanteVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_etablissements_de_santeVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_etablissements_de_santeVars? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_etablissements_de_santeVars.serializer,
        json,
      );
}
