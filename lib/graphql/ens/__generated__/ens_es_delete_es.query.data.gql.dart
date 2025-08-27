// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_es_delete_es.query.data.gql.g.dart';

abstract class Gdelete_etablissement_de_santeData
    implements
        Built<Gdelete_etablissement_de_santeData,
            Gdelete_etablissement_de_santeDataBuilder> {
  Gdelete_etablissement_de_santeData._();

  factory Gdelete_etablissement_de_santeData(
      [void Function(Gdelete_etablissement_de_santeDataBuilder b)
          updates]) = _$Gdelete_etablissement_de_santeData;

  static void _initializeBuilder(Gdelete_etablissement_de_santeDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gdelete_etablissement_de_santeData_deleteHealthStructure
      get deleteHealthStructure;
  static Serializer<Gdelete_etablissement_de_santeData> get serializer =>
      _$gdeleteEtablissementDeSanteDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gdelete_etablissement_de_santeData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gdelete_etablissement_de_santeData? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gdelete_etablissement_de_santeData.serializer,
        json,
      );
}

abstract class Gdelete_etablissement_de_santeData_deleteHealthStructure
    implements
        Built<Gdelete_etablissement_de_santeData_deleteHealthStructure,
            Gdelete_etablissement_de_santeData_deleteHealthStructureBuilder> {
  Gdelete_etablissement_de_santeData_deleteHealthStructure._();

  factory Gdelete_etablissement_de_santeData_deleteHealthStructure(
      [void Function(
              Gdelete_etablissement_de_santeData_deleteHealthStructureBuilder b)
          updates]) = _$Gdelete_etablissement_de_santeData_deleteHealthStructure;

  static void _initializeBuilder(
          Gdelete_etablissement_de_santeData_deleteHealthStructureBuilder b) =>
      b..G__typename = 'Success';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool get success;
  static Serializer<Gdelete_etablissement_de_santeData_deleteHealthStructure>
      get serializer =>
          _$gdeleteEtablissementDeSanteDataDeleteHealthStructureSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gdelete_etablissement_de_santeData_deleteHealthStructure.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gdelete_etablissement_de_santeData_deleteHealthStructure? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gdelete_etablissement_de_santeData_deleteHealthStructure.serializer,
        json,
      );
}
