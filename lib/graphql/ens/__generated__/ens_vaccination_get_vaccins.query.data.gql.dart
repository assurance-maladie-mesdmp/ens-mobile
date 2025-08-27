// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_vaccination_get_vaccins.query.data.gql.g.dart';

abstract class Gget_vaccinsData
    implements Built<Gget_vaccinsData, Gget_vaccinsDataBuilder> {
  Gget_vaccinsData._();

  factory Gget_vaccinsData([void Function(Gget_vaccinsDataBuilder b) updates]) =
      _$Gget_vaccinsData;

  static void _initializeBuilder(Gget_vaccinsDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<Gget_vaccinsData_vaccinesRef> get vaccinesRef;
  static Serializer<Gget_vaccinsData> get serializer =>
      _$ggetVaccinsDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_vaccinsData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_vaccinsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_vaccinsData.serializer,
        json,
      );
}

abstract class Gget_vaccinsData_vaccinesRef
    implements
        Built<Gget_vaccinsData_vaccinesRef,
            Gget_vaccinsData_vaccinesRefBuilder> {
  Gget_vaccinsData_vaccinesRef._();

  factory Gget_vaccinsData_vaccinesRef(
          [void Function(Gget_vaccinsData_vaccinesRefBuilder b) updates]) =
      _$Gget_vaccinsData_vaccinesRef;

  static void _initializeBuilder(Gget_vaccinsData_vaccinesRefBuilder b) =>
      b..G__typename = 'VaccineRefModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get vaccineRefId;
  String get label;
  String get pathologies;
  String? get marketingStart;
  String? get marketingEnd;
  BuiltList<String> get cipCodes;
  static Serializer<Gget_vaccinsData_vaccinesRef> get serializer =>
      _$ggetVaccinsDataVaccinesRefSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_vaccinsData_vaccinesRef.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_vaccinsData_vaccinesRef? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_vaccinsData_vaccinesRef.serializer,
        json,
      );
}
