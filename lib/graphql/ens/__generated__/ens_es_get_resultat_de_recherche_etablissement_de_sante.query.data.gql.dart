// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_es_get_resultat_de_recherche_etablissement_de_sante.query.data.gql.g.dart';

abstract class Gget_resultat_de_recherche_etablissements_de_santeData
    implements
        Built<Gget_resultat_de_recherche_etablissements_de_santeData,
            Gget_resultat_de_recherche_etablissements_de_santeDataBuilder> {
  Gget_resultat_de_recherche_etablissements_de_santeData._();

  factory Gget_resultat_de_recherche_etablissements_de_santeData(
      [void Function(
              Gget_resultat_de_recherche_etablissements_de_santeDataBuilder b)
          updates]) = _$Gget_resultat_de_recherche_etablissements_de_santeData;

  static void _initializeBuilder(
          Gget_resultat_de_recherche_etablissements_de_santeDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure
      get searchStructure;
  static Serializer<Gget_resultat_de_recherche_etablissements_de_santeData>
      get serializer =>
          _$ggetResultatDeRechercheEtablissementsDeSanteDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_resultat_de_recherche_etablissements_de_santeData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_resultat_de_recherche_etablissements_de_santeData? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_resultat_de_recherche_etablissements_de_santeData.serializer,
        json,
      );
}

abstract class Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure
    implements
        Built<
            Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure,
            Gget_resultat_de_recherche_etablissements_de_santeData_searchStructureBuilder> {
  Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure._();

  factory Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure(
          [void Function(
                  Gget_resultat_de_recherche_etablissements_de_santeData_searchStructureBuilder
                      b)
              updates]) =
      _$Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure;

  static void _initializeBuilder(
          Gget_resultat_de_recherche_etablissements_de_santeData_searchStructureBuilder
              b) =>
      b..G__typename = 'SearchStructureListModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<
          Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure_searchStructures>
      get searchStructures;
  static Serializer<
          Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure>
      get serializer =>
          _$ggetResultatDeRechercheEtablissementsDeSanteDataSearchStructureSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure
                .serializer,
            json,
          );
}

abstract class Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure_searchStructures
    implements
        Built<
            Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure_searchStructures,
            Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure_searchStructuresBuilder> {
  Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure_searchStructures._();

  factory Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure_searchStructures(
          [void Function(
                  Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure_searchStructuresBuilder
                      b)
              updates]) =
      _$Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure_searchStructures;

  static void _initializeBuilder(
          Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure_searchStructuresBuilder
              b) =>
      b..G__typename = 'SearchStructureModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get idFineg;
  String? get name;
  String? get alias;
  bool get active;
  String? get mail;
  Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure_searchStructures_address?
      get address;
  String? get activity;
  static Serializer<
          Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure_searchStructures>
      get serializer =>
          _$ggetResultatDeRechercheEtablissementsDeSanteDataSearchStructureSearchStructuresSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure_searchStructures
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure_searchStructures?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure_searchStructures
                .serializer,
            json,
          );
}

abstract class Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure_searchStructures_address
    implements
        Built<
            Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure_searchStructures_address,
            Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure_searchStructures_addressBuilder> {
  Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure_searchStructures_address._();

  factory Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure_searchStructures_address(
          [void Function(
                  Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure_searchStructures_addressBuilder
                      b)
              updates]) =
      _$Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure_searchStructures_address;

  static void _initializeBuilder(
          Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure_searchStructures_addressBuilder
              b) =>
      b..G__typename = 'Address';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get roadNumber;
  String? get roadType;
  String? get labelRoadType;
  String? get commune;
  String? get cityZipCode;
  String? get road;
  static Serializer<
          Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure_searchStructures_address>
      get serializer =>
          _$ggetResultatDeRechercheEtablissementsDeSanteDataSearchStructureSearchStructuresAddressSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure_searchStructures_address
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure_searchStructures_address?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_resultat_de_recherche_etablissements_de_santeData_searchStructure_searchStructures_address
                .serializer,
            json,
          );
}
