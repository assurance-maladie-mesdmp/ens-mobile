// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_vaccination_delete_vaccination.query.data.gql.g.dart';

abstract class Gdelete_vaccinationData
    implements Built<Gdelete_vaccinationData, Gdelete_vaccinationDataBuilder> {
  Gdelete_vaccinationData._();

  factory Gdelete_vaccinationData(
          [void Function(Gdelete_vaccinationDataBuilder b) updates]) =
      _$Gdelete_vaccinationData;

  static void _initializeBuilder(Gdelete_vaccinationDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gdelete_vaccinationData_deleteVaccine get deleteVaccine;
  static Serializer<Gdelete_vaccinationData> get serializer =>
      _$gdeleteVaccinationDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gdelete_vaccinationData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gdelete_vaccinationData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gdelete_vaccinationData.serializer,
        json,
      );
}

abstract class Gdelete_vaccinationData_deleteVaccine
    implements
        Built<Gdelete_vaccinationData_deleteVaccine,
            Gdelete_vaccinationData_deleteVaccineBuilder> {
  Gdelete_vaccinationData_deleteVaccine._();

  factory Gdelete_vaccinationData_deleteVaccine(
      [void Function(Gdelete_vaccinationData_deleteVaccineBuilder b)
          updates]) = _$Gdelete_vaccinationData_deleteVaccine;

  static void _initializeBuilder(
          Gdelete_vaccinationData_deleteVaccineBuilder b) =>
      b..G__typename = 'VaccinesListModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<Gdelete_vaccinationData_deleteVaccine_vaccines> get vaccines;
  static Serializer<Gdelete_vaccinationData_deleteVaccine> get serializer =>
      _$gdeleteVaccinationDataDeleteVaccineSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gdelete_vaccinationData_deleteVaccine.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gdelete_vaccinationData_deleteVaccine? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gdelete_vaccinationData_deleteVaccine.serializer,
        json,
      );
}

abstract class Gdelete_vaccinationData_deleteVaccine_vaccines
    implements
        Built<Gdelete_vaccinationData_deleteVaccine_vaccines,
            Gdelete_vaccinationData_deleteVaccine_vaccinesBuilder> {
  Gdelete_vaccinationData_deleteVaccine_vaccines._();

  factory Gdelete_vaccinationData_deleteVaccine_vaccines(
      [void Function(Gdelete_vaccinationData_deleteVaccine_vaccinesBuilder b)
          updates]) = _$Gdelete_vaccinationData_deleteVaccine_vaccines;

  static void _initializeBuilder(
          Gdelete_vaccinationData_deleteVaccine_vaccinesBuilder b) =>
      b..G__typename = 'VaccineItemModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get vaccineId;
  static Serializer<Gdelete_vaccinationData_deleteVaccine_vaccines>
      get serializer => _$gdeleteVaccinationDataDeleteVaccineVaccinesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gdelete_vaccinationData_deleteVaccine_vaccines.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gdelete_vaccinationData_deleteVaccine_vaccines? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gdelete_vaccinationData_deleteVaccine_vaccines.serializer,
        json,
      );
}
