// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_vaccination_update_vaccination.query.data.gql.g.dart';

abstract class Gupdate_vaccinationData
    implements Built<Gupdate_vaccinationData, Gupdate_vaccinationDataBuilder> {
  Gupdate_vaccinationData._();

  factory Gupdate_vaccinationData(
          [void Function(Gupdate_vaccinationDataBuilder b) updates]) =
      _$Gupdate_vaccinationData;

  static void _initializeBuilder(Gupdate_vaccinationDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gupdate_vaccinationData_putVaccine get putVaccine;
  static Serializer<Gupdate_vaccinationData> get serializer =>
      _$gupdateVaccinationDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gupdate_vaccinationData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gupdate_vaccinationData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gupdate_vaccinationData.serializer,
        json,
      );
}

abstract class Gupdate_vaccinationData_putVaccine
    implements
        Built<Gupdate_vaccinationData_putVaccine,
            Gupdate_vaccinationData_putVaccineBuilder> {
  Gupdate_vaccinationData_putVaccine._();

  factory Gupdate_vaccinationData_putVaccine(
      [void Function(Gupdate_vaccinationData_putVaccineBuilder b)
          updates]) = _$Gupdate_vaccinationData_putVaccine;

  static void _initializeBuilder(Gupdate_vaccinationData_putVaccineBuilder b) =>
      b..G__typename = 'VaccinesListModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<Gupdate_vaccinationData_putVaccine_vaccines> get vaccines;
  static Serializer<Gupdate_vaccinationData_putVaccine> get serializer =>
      _$gupdateVaccinationDataPutVaccineSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gupdate_vaccinationData_putVaccine.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gupdate_vaccinationData_putVaccine? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gupdate_vaccinationData_putVaccine.serializer,
        json,
      );
}

abstract class Gupdate_vaccinationData_putVaccine_vaccines
    implements
        Built<Gupdate_vaccinationData_putVaccine_vaccines,
            Gupdate_vaccinationData_putVaccine_vaccinesBuilder> {
  Gupdate_vaccinationData_putVaccine_vaccines._();

  factory Gupdate_vaccinationData_putVaccine_vaccines(
      [void Function(Gupdate_vaccinationData_putVaccine_vaccinesBuilder b)
          updates]) = _$Gupdate_vaccinationData_putVaccine_vaccines;

  static void _initializeBuilder(
          Gupdate_vaccinationData_putVaccine_vaccinesBuilder b) =>
      b..G__typename = 'VaccineItemModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get vaccineId;
  static Serializer<Gupdate_vaccinationData_putVaccine_vaccines>
      get serializer => _$gupdateVaccinationDataPutVaccineVaccinesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gupdate_vaccinationData_putVaccine_vaccines.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gupdate_vaccinationData_putVaccine_vaccines? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gupdate_vaccinationData_putVaccine_vaccines.serializer,
        json,
      );
}
