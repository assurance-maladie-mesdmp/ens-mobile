// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_get_consents_for_service_by_oid.query.data.gql.g.dart';

abstract class Gget_consents_for_service_by_oidData
    implements
        Built<Gget_consents_for_service_by_oidData,
            Gget_consents_for_service_by_oidDataBuilder> {
  Gget_consents_for_service_by_oidData._();

  factory Gget_consents_for_service_by_oidData(
      [void Function(Gget_consents_for_service_by_oidDataBuilder b)
          updates]) = _$Gget_consents_for_service_by_oidData;

  static void _initializeBuilder(
          Gget_consents_for_service_by_oidDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<
          Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid>
      get fetchFinalitiesConsentsForServiceByOid;
  static Serializer<Gget_consents_for_service_by_oidData> get serializer =>
      _$ggetConsentsForServiceByOidDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_consents_for_service_by_oidData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_consents_for_service_by_oidData? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_consents_for_service_by_oidData.serializer,
        json,
      );
}

abstract class Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid
    implements
        Built<
            Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid,
            Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOidBuilder> {
  Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid._();

  factory Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid(
          [void Function(
                  Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOidBuilder
                      b)
              updates]) =
      _$Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid;

  static void _initializeBuilder(
          Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOidBuilder
              b) =>
      b..G__typename = 'FinalityModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get libelle;
  String get description;
  String get codeFinalite;
  bool get consenti;
  BuiltList<
          Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid_echangesDeDonnees>
      get echangesDeDonnees;
  static Serializer<
          Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid>
      get serializer =>
          _$ggetConsentsForServiceByOidDataFetchFinalitiesConsentsForServiceByOidSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid
                .serializer,
            json,
          );
}

abstract class Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid_echangesDeDonnees
    implements
        Built<
            Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid_echangesDeDonnees,
            Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid_echangesDeDonneesBuilder> {
  Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid_echangesDeDonnees._();

  factory Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid_echangesDeDonnees(
          [void Function(
                  Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid_echangesDeDonneesBuilder
                      b)
              updates]) =
      _$Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid_echangesDeDonnees;

  static void _initializeBuilder(
          Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid_echangesDeDonneesBuilder
              b) =>
      b..G__typename = 'EchangeDeDonneesViewModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get perimetre;
  String get action;
  BuiltList<
          Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid_echangesDeDonnees_categories>
      get categories;
  static Serializer<
          Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid_echangesDeDonnees>
      get serializer =>
          _$ggetConsentsForServiceByOidDataFetchFinalitiesConsentsForServiceByOidEchangesDeDonneesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid_echangesDeDonnees
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid_echangesDeDonnees?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid_echangesDeDonnees
                .serializer,
            json,
          );
}

abstract class Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid_echangesDeDonnees_categories
    implements
        Built<
            Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid_echangesDeDonnees_categories,
            Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid_echangesDeDonnees_categoriesBuilder> {
  Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid_echangesDeDonnees_categories._();

  factory Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid_echangesDeDonnees_categories(
          [void Function(
                  Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid_echangesDeDonnees_categoriesBuilder
                      b)
              updates]) =
      _$Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid_echangesDeDonnees_categories;

  static void _initializeBuilder(
          Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid_echangesDeDonnees_categoriesBuilder
              b) =>
      b..G__typename = 'CategorieViewModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get titre;
  String get description;
  static Serializer<
          Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid_echangesDeDonnees_categories>
      get serializer =>
          _$ggetConsentsForServiceByOidDataFetchFinalitiesConsentsForServiceByOidEchangesDeDonneesCategoriesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid_echangesDeDonnees_categories
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid_echangesDeDonnees_categories?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_consents_for_service_by_oidData_fetchFinalitiesConsentsForServiceByOid_echangesDeDonnees_categories
                .serializer,
            json,
          );
}
