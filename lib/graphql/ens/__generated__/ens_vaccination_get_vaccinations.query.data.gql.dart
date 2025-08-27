// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_vaccination_get_vaccinations.query.data.gql.g.dart';

abstract class Gget_vaccinationsData
    implements Built<Gget_vaccinationsData, Gget_vaccinationsDataBuilder> {
  Gget_vaccinationsData._();

  factory Gget_vaccinationsData(
          [void Function(Gget_vaccinationsDataBuilder b) updates]) =
      _$Gget_vaccinationsData;

  static void _initializeBuilder(Gget_vaccinationsDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gget_vaccinationsData_vaccines get vaccines;
  static Serializer<Gget_vaccinationsData> get serializer =>
      _$ggetVaccinationsDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_vaccinationsData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_vaccinationsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_vaccinationsData.serializer,
        json,
      );
}

abstract class Gget_vaccinationsData_vaccines
    implements
        Built<Gget_vaccinationsData_vaccines,
            Gget_vaccinationsData_vaccinesBuilder> {
  Gget_vaccinationsData_vaccines._();

  factory Gget_vaccinationsData_vaccines(
          [void Function(Gget_vaccinationsData_vaccinesBuilder b) updates]) =
      _$Gget_vaccinationsData_vaccines;

  static void _initializeBuilder(Gget_vaccinationsData_vaccinesBuilder b) =>
      b..G__typename = 'VaccinesListModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<Gget_vaccinationsData_vaccines_vaccines> get vaccines;
  static Serializer<Gget_vaccinationsData_vaccines> get serializer =>
      _$ggetVaccinationsDataVaccinesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_vaccinationsData_vaccines.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_vaccinationsData_vaccines? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_vaccinationsData_vaccines.serializer,
        json,
      );
}

abstract class Gget_vaccinationsData_vaccines_vaccines
    implements
        Built<Gget_vaccinationsData_vaccines_vaccines,
            Gget_vaccinationsData_vaccines_vaccinesBuilder> {
  Gget_vaccinationsData_vaccines_vaccines._();

  factory Gget_vaccinationsData_vaccines_vaccines(
      [void Function(Gget_vaccinationsData_vaccines_vaccinesBuilder b)
          updates]) = _$Gget_vaccinationsData_vaccines_vaccines;

  static void _initializeBuilder(
          Gget_vaccinationsData_vaccines_vaccinesBuilder b) =>
      b..G__typename = 'VaccineItemModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get vaccineId;
  String get effectiveTime;
  String get name;
  String? get lotNumber;
  _i2.GVaccineTypeOfAdministrationEnum get typeOfAdministration;
  String? get performer;
  String get author;
  String? get comment;
  String get pathologies;
  bool? get mandatory;
  bool get authoredByPatient;
  String? get vaccineRefId;
  static Serializer<Gget_vaccinationsData_vaccines_vaccines> get serializer =>
      _$ggetVaccinationsDataVaccinesVaccinesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_vaccinationsData_vaccines_vaccines.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_vaccinationsData_vaccines_vaccines? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_vaccinationsData_vaccines_vaccines.serializer,
        json,
      );
}
