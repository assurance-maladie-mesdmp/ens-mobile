// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_es_delete_es.query.var.gql.g.dart';

abstract class Gdelete_etablissement_de_santeVars
    implements
        Built<Gdelete_etablissement_de_santeVars,
            Gdelete_etablissement_de_santeVarsBuilder> {
  Gdelete_etablissement_de_santeVars._();

  factory Gdelete_etablissement_de_santeVars(
      [void Function(Gdelete_etablissement_de_santeVarsBuilder b)
          updates]) = _$Gdelete_etablissement_de_santeVars;

  String get patientId;
  String get esOrganizationId;
  static Serializer<Gdelete_etablissement_de_santeVars> get serializer =>
      _$gdeleteEtablissementDeSanteVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gdelete_etablissement_de_santeVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gdelete_etablissement_de_santeVars? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gdelete_etablissement_de_santeVars.serializer,
        json,
      );
}
