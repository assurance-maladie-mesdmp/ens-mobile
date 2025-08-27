// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_es.fragment.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_es_get_es.query.data.gql.g.dart';

abstract class Gget_etablissements_de_santeData
    implements
        Built<Gget_etablissements_de_santeData,
            Gget_etablissements_de_santeDataBuilder> {
  Gget_etablissements_de_santeData._();

  factory Gget_etablissements_de_santeData(
          [void Function(Gget_etablissements_de_santeDataBuilder b) updates]) =
      _$Gget_etablissements_de_santeData;

  static void _initializeBuilder(Gget_etablissements_de_santeDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gget_etablissements_de_santeData_getHealthStructures get getHealthStructures;
  static Serializer<Gget_etablissements_de_santeData> get serializer =>
      _$ggetEtablissementsDeSanteDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_etablissements_de_santeData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_etablissements_de_santeData? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_etablissements_de_santeData.serializer,
        json,
      );
}

abstract class Gget_etablissements_de_santeData_getHealthStructures
    implements
        Built<Gget_etablissements_de_santeData_getHealthStructures,
            Gget_etablissements_de_santeData_getHealthStructuresBuilder> {
  Gget_etablissements_de_santeData_getHealthStructures._();

  factory Gget_etablissements_de_santeData_getHealthStructures(
      [void Function(
              Gget_etablissements_de_santeData_getHealthStructuresBuilder b)
          updates]) = _$Gget_etablissements_de_santeData_getHealthStructures;

  static void _initializeBuilder(
          Gget_etablissements_de_santeData_getHealthStructuresBuilder b) =>
      b..G__typename = 'HealthStructureListModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<
          Gget_etablissements_de_santeData_getHealthStructures_healthStructures>
      get healthStructures;
  static Serializer<Gget_etablissements_de_santeData_getHealthStructures>
      get serializer =>
          _$ggetEtablissementsDeSanteDataGetHealthStructuresSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_etablissements_de_santeData_getHealthStructures.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_etablissements_de_santeData_getHealthStructures? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_etablissements_de_santeData_getHealthStructures.serializer,
        json,
      );
}

abstract class Gget_etablissements_de_santeData_getHealthStructures_healthStructures
    implements
        Built<
            Gget_etablissements_de_santeData_getHealthStructures_healthStructures,
            Gget_etablissements_de_santeData_getHealthStructures_healthStructuresBuilder> {
  Gget_etablissements_de_santeData_getHealthStructures_healthStructures._();

  factory Gget_etablissements_de_santeData_getHealthStructures_healthStructures(
          [void Function(
                  Gget_etablissements_de_santeData_getHealthStructures_healthStructuresBuilder
                      b)
              updates]) =
      _$Gget_etablissements_de_santeData_getHealthStructures_healthStructures;

  static void _initializeBuilder(
          Gget_etablissements_de_santeData_getHealthStructures_healthStructuresBuilder
              b) =>
      b..G__typename = 'HealthStructureReferentialModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  String? get alias;
  String? get activity;
  String? get organizationId;
  bool get isContactable;
  String? get mail;
  Gget_etablissements_de_santeData_getHealthStructures_healthStructures_addresses?
      get addresses;
  bool get active;
  static Serializer<
          Gget_etablissements_de_santeData_getHealthStructures_healthStructures>
      get serializer =>
          _$ggetEtablissementsDeSanteDataGetHealthStructuresHealthStructuresSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_etablissements_de_santeData_getHealthStructures_healthStructures
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_etablissements_de_santeData_getHealthStructures_healthStructures?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_etablissements_de_santeData_getHealthStructures_healthStructures
                .serializer,
            json,
          );
}

abstract class Gget_etablissements_de_santeData_getHealthStructures_healthStructures_addresses
    implements
        Built<
            Gget_etablissements_de_santeData_getHealthStructures_healthStructures_addresses,
            Gget_etablissements_de_santeData_getHealthStructures_healthStructures_addressesBuilder>,
        _i2.Gadresse_ps_es {
  Gget_etablissements_de_santeData_getHealthStructures_healthStructures_addresses._();

  factory Gget_etablissements_de_santeData_getHealthStructures_healthStructures_addresses(
          [void Function(
                  Gget_etablissements_de_santeData_getHealthStructures_healthStructures_addressesBuilder
                      b)
              updates]) =
      _$Gget_etablissements_de_santeData_getHealthStructures_healthStructures_addresses;

  static void _initializeBuilder(
          Gget_etablissements_de_santeData_getHealthStructures_healthStructures_addressesBuilder
              b) =>
      b..G__typename = 'HealthProfessionalAddressModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get adresseName;
  @override
  String? get cityZipCode;
  @override
  String? get roadNumber;
  @override
  String? get labelRoadType;
  @override
  String? get road;
  @override
  String? get commune;
  @override
  String? get numeroTelephone;
  static Serializer<
          Gget_etablissements_de_santeData_getHealthStructures_healthStructures_addresses>
      get serializer =>
          _$ggetEtablissementsDeSanteDataGetHealthStructuresHealthStructuresAddressesSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_etablissements_de_santeData_getHealthStructures_healthStructures_addresses
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_etablissements_de_santeData_getHealthStructures_healthStructures_addresses?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_etablissements_de_santeData_getHealthStructures_healthStructures_addresses
                .serializer,
            json,
          );
}
