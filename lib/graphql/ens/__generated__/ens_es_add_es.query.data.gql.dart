// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_es_add_es.query.data.gql.g.dart';

abstract class Gadd_etablissement_de_santeData
    implements
        Built<Gadd_etablissement_de_santeData,
            Gadd_etablissement_de_santeDataBuilder> {
  Gadd_etablissement_de_santeData._();

  factory Gadd_etablissement_de_santeData(
          [void Function(Gadd_etablissement_de_santeDataBuilder b) updates]) =
      _$Gadd_etablissement_de_santeData;

  static void _initializeBuilder(Gadd_etablissement_de_santeDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gadd_etablissement_de_santeData_postHealthStructure get postHealthStructure;
  static Serializer<Gadd_etablissement_de_santeData> get serializer =>
      _$gaddEtablissementDeSanteDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gadd_etablissement_de_santeData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gadd_etablissement_de_santeData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gadd_etablissement_de_santeData.serializer,
        json,
      );
}

abstract class Gadd_etablissement_de_santeData_postHealthStructure
    implements
        Built<Gadd_etablissement_de_santeData_postHealthStructure,
            Gadd_etablissement_de_santeData_postHealthStructureBuilder> {
  Gadd_etablissement_de_santeData_postHealthStructure._();

  factory Gadd_etablissement_de_santeData_postHealthStructure(
      [void Function(
              Gadd_etablissement_de_santeData_postHealthStructureBuilder b)
          updates]) = _$Gadd_etablissement_de_santeData_postHealthStructure;

  static void _initializeBuilder(
          Gadd_etablissement_de_santeData_postHealthStructureBuilder b) =>
      b..G__typename = 'Success';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool get success;
  static Serializer<Gadd_etablissement_de_santeData_postHealthStructure>
      get serializer =>
          _$gaddEtablissementDeSanteDataPostHealthStructureSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gadd_etablissement_de_santeData_postHealthStructure.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gadd_etablissement_de_santeData_postHealthStructure? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gadd_etablissement_de_santeData_postHealthStructure.serializer,
        json,
      );
}
