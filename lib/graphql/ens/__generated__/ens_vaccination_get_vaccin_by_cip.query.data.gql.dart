// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_vaccination_get_vaccin_by_cip.query.data.gql.g.dart';

abstract class Gget_vaccin_by_cipData
    implements Built<Gget_vaccin_by_cipData, Gget_vaccin_by_cipDataBuilder> {
  Gget_vaccin_by_cipData._();

  factory Gget_vaccin_by_cipData(
          [void Function(Gget_vaccin_by_cipDataBuilder b) updates]) =
      _$Gget_vaccin_by_cipData;

  static void _initializeBuilder(Gget_vaccin_by_cipDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gget_vaccin_by_cipData_vaccineRefByCipCode get vaccineRefByCipCode;
  static Serializer<Gget_vaccin_by_cipData> get serializer =>
      _$ggetVaccinByCipDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_vaccin_by_cipData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_vaccin_by_cipData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_vaccin_by_cipData.serializer,
        json,
      );
}

abstract class Gget_vaccin_by_cipData_vaccineRefByCipCode
    implements
        Built<Gget_vaccin_by_cipData_vaccineRefByCipCode,
            Gget_vaccin_by_cipData_vaccineRefByCipCodeBuilder> {
  Gget_vaccin_by_cipData_vaccineRefByCipCode._();

  factory Gget_vaccin_by_cipData_vaccineRefByCipCode(
      [void Function(Gget_vaccin_by_cipData_vaccineRefByCipCodeBuilder b)
          updates]) = _$Gget_vaccin_by_cipData_vaccineRefByCipCode;

  static void _initializeBuilder(
          Gget_vaccin_by_cipData_vaccineRefByCipCodeBuilder b) =>
      b..G__typename = 'VaccineRefModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get vaccineRefId;
  String get label;
  String get pathologies;
  String? get marketingStart;
  String? get marketingEnd;
  BuiltList<String> get cipCodes;
  static Serializer<Gget_vaccin_by_cipData_vaccineRefByCipCode>
      get serializer => _$ggetVaccinByCipDataVaccineRefByCipCodeSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_vaccin_by_cipData_vaccineRefByCipCode.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_vaccin_by_cipData_vaccineRefByCipCode? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_vaccin_by_cipData_vaccineRefByCipCode.serializer,
        json,
      );
}
