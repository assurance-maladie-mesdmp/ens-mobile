// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_vaccination_add_vaccination.query.data.gql.g.dart';

abstract class Gadd_vaccinationData
    implements Built<Gadd_vaccinationData, Gadd_vaccinationDataBuilder> {
  Gadd_vaccinationData._();

  factory Gadd_vaccinationData(
          [void Function(Gadd_vaccinationDataBuilder b) updates]) =
      _$Gadd_vaccinationData;

  static void _initializeBuilder(Gadd_vaccinationDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gadd_vaccinationData_postVaccine get postVaccine;
  static Serializer<Gadd_vaccinationData> get serializer =>
      _$gaddVaccinationDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gadd_vaccinationData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gadd_vaccinationData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gadd_vaccinationData.serializer,
        json,
      );
}

abstract class Gadd_vaccinationData_postVaccine
    implements
        Built<Gadd_vaccinationData_postVaccine,
            Gadd_vaccinationData_postVaccineBuilder> {
  Gadd_vaccinationData_postVaccine._();

  factory Gadd_vaccinationData_postVaccine(
          [void Function(Gadd_vaccinationData_postVaccineBuilder b) updates]) =
      _$Gadd_vaccinationData_postVaccine;

  static void _initializeBuilder(Gadd_vaccinationData_postVaccineBuilder b) =>
      b..G__typename = 'VaccinesListModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<Gadd_vaccinationData_postVaccine_vaccines> get vaccines;
  static Serializer<Gadd_vaccinationData_postVaccine> get serializer =>
      _$gaddVaccinationDataPostVaccineSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gadd_vaccinationData_postVaccine.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gadd_vaccinationData_postVaccine? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gadd_vaccinationData_postVaccine.serializer,
        json,
      );
}

abstract class Gadd_vaccinationData_postVaccine_vaccines
    implements
        Built<Gadd_vaccinationData_postVaccine_vaccines,
            Gadd_vaccinationData_postVaccine_vaccinesBuilder> {
  Gadd_vaccinationData_postVaccine_vaccines._();

  factory Gadd_vaccinationData_postVaccine_vaccines(
      [void Function(Gadd_vaccinationData_postVaccine_vaccinesBuilder b)
          updates]) = _$Gadd_vaccinationData_postVaccine_vaccines;

  static void _initializeBuilder(
          Gadd_vaccinationData_postVaccine_vaccinesBuilder b) =>
      b..G__typename = 'VaccineItemModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get vaccineId;
  static Serializer<Gadd_vaccinationData_postVaccine_vaccines> get serializer =>
      _$gaddVaccinationDataPostVaccineVaccinesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gadd_vaccinationData_postVaccine_vaccines.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gadd_vaccinationData_postVaccine_vaccines? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gadd_vaccinationData_postVaccine_vaccines.serializer,
        json,
      );
}
