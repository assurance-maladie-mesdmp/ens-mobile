// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i2;

part 'ens_es_get_resultat_de_recherche_etablissement_de_sante.query.var.gql.g.dart';

abstract class Gget_resultat_de_recherche_etablissements_de_santeVars
    implements
        Built<Gget_resultat_de_recherche_etablissements_de_santeVars,
            Gget_resultat_de_recherche_etablissements_de_santeVarsBuilder> {
  Gget_resultat_de_recherche_etablissements_de_santeVars._();

  factory Gget_resultat_de_recherche_etablissements_de_santeVars(
      [void Function(
              Gget_resultat_de_recherche_etablissements_de_santeVarsBuilder b)
          updates]) = _$Gget_resultat_de_recherche_etablissements_de_santeVars;

  _i1.GSearchStructureInputModel get searchStructureInput;
  static Serializer<Gget_resultat_de_recherche_etablissements_de_santeVars>
      get serializer =>
          _$ggetResultatDeRechercheEtablissementsDeSanteVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        Gget_resultat_de_recherche_etablissements_de_santeVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_resultat_de_recherche_etablissements_de_santeVars? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        Gget_resultat_de_recherche_etablissements_de_santeVars.serializer,
        json,
      );
}
