// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_ps_get_resultat_de_recherche_ps.query.data.gql.g.dart';

abstract class Gget_resultat_de_recherche_professionnels_de_santeData
    implements
        Built<Gget_resultat_de_recherche_professionnels_de_santeData,
            Gget_resultat_de_recherche_professionnels_de_santeDataBuilder> {
  Gget_resultat_de_recherche_professionnels_de_santeData._();

  factory Gget_resultat_de_recherche_professionnels_de_santeData(
      [void Function(
              Gget_resultat_de_recherche_professionnels_de_santeDataBuilder b)
          updates]) = _$Gget_resultat_de_recherche_professionnels_de_santeData;

  static void _initializeBuilder(
          Gget_resultat_de_recherche_professionnels_de_santeDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity
      get getProfessionelSanteGroupedCity;
  static Serializer<Gget_resultat_de_recherche_professionnels_de_santeData>
      get serializer =>
          _$ggetResultatDeRechercheProfessionnelsDeSanteDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_resultat_de_recherche_professionnels_de_santeData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_resultat_de_recherche_professionnels_de_santeData? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_resultat_de_recherche_professionnels_de_santeData.serializer,
        json,
      );
}

abstract class Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity
    implements
        Built<
            Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity,
            Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCityBuilder> {
  Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity._();

  factory Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity(
          [void Function(
                  Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCityBuilder
                      b)
              updates]) =
      _$Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity;

  static void _initializeBuilder(
          Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCityBuilder
              b) =>
      b..G__typename = 'ResearchPSModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<
          Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity_ps>
      get ps;
  static Serializer<
          Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity>
      get serializer =>
          _$ggetResultatDeRechercheProfessionnelsDeSanteDataGetProfessionelSanteGroupedCitySerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity
                .serializer,
            json,
          );
}

abstract class Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity_ps
    implements
        Built<
            Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity_ps,
            Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity_psBuilder> {
  Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity_ps._();

  factory Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity_ps(
          [void Function(
                  Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity_psBuilder
                      b)
              updates]) =
      _$Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity_ps;

  static void _initializeBuilder(
          Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity_psBuilder
              b) =>
      b..G__typename = 'ResearchPS';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get identifiant;
  String get lastName;
  String get firstName;
  String? get profession;
  BuiltList<
          Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity_ps_structureAddress>
      get structureAddress;
  String? get specialities;
  bool get active;
  static Serializer<
          Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity_ps>
      get serializer =>
          _$ggetResultatDeRechercheProfessionnelsDeSanteDataGetProfessionelSanteGroupedCityPsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity_ps
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity_ps?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity_ps
                .serializer,
            json,
          );
}

abstract class Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity_ps_structureAddress
    implements
        Built<
            Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity_ps_structureAddress,
            Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity_ps_structureAddressBuilder> {
  Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity_ps_structureAddress._();

  factory Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity_ps_structureAddress(
          [void Function(
                  Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity_ps_structureAddressBuilder
                      b)
              updates]) =
      _$Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity_ps_structureAddress;

  static void _initializeBuilder(
          Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity_ps_structureAddressBuilder
              b) =>
      b..G__typename = 'Address';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get cityZipCode;
  String? get roadNumber;
  String? get labelRoadType;
  String? get road;
  String? get commune;
  static Serializer<
          Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity_ps_structureAddress>
      get serializer =>
          _$ggetResultatDeRechercheProfessionnelsDeSanteDataGetProfessionelSanteGroupedCityPsStructureAddressSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity_ps_structureAddress
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity_ps_structureAddress?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_resultat_de_recherche_professionnels_de_santeData_getProfessionelSanteGroupedCity_ps_structureAddress
                .serializer,
            json,
          );
}
