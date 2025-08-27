// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_es_add_es.query.var.gql.g.dart';

abstract class Gadd_etablissement_de_santeVars
    implements
        Built<Gadd_etablissement_de_santeVars,
            Gadd_etablissement_de_santeVarsBuilder> {
  Gadd_etablissement_de_santeVars._();

  factory Gadd_etablissement_de_santeVars(
          [void Function(Gadd_etablissement_de_santeVarsBuilder b) updates]) =
      _$Gadd_etablissement_de_santeVars;

  String get patientId;
  String get esId;
  static Serializer<Gadd_etablissement_de_santeVars> get serializer =>
      _$gaddEtablissementDeSanteVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gadd_etablissement_de_santeVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gadd_etablissement_de_santeVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gadd_etablissement_de_santeVars.serializer,
        json,
      );
}
