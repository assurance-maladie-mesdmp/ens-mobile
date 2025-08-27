// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_discipline.fragment.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_ps_get_specialities_and_professions.data.gql.g.dart';

abstract class Gget_specialities_and_professionsData
    implements
        Built<Gget_specialities_and_professionsData,
            Gget_specialities_and_professionsDataBuilder> {
  Gget_specialities_and_professionsData._();

  factory Gget_specialities_and_professionsData(
      [void Function(Gget_specialities_and_professionsDataBuilder b)
          updates]) = _$Gget_specialities_and_professionsData;

  static void _initializeBuilder(
          Gget_specialities_and_professionsDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<Gget_specialities_and_professionsData_specialities>
      get specialities;
  BuiltList<Gget_specialities_and_professionsData_professions> get professions;
  static Serializer<Gget_specialities_and_professionsData> get serializer =>
      _$ggetSpecialitiesAndProfessionsDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_specialities_and_professionsData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_specialities_and_professionsData? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_specialities_and_professionsData.serializer,
        json,
      );
}

abstract class Gget_specialities_and_professionsData_specialities
    implements
        Built<Gget_specialities_and_professionsData_specialities,
            Gget_specialities_and_professionsData_specialitiesBuilder>,
        _i2.GdisciplineResponse {
  Gget_specialities_and_professionsData_specialities._();

  factory Gget_specialities_and_professionsData_specialities(
      [void Function(
              Gget_specialities_and_professionsData_specialitiesBuilder b)
          updates]) = _$Gget_specialities_and_professionsData_specialities;

  static void _initializeBuilder(
          Gget_specialities_and_professionsData_specialitiesBuilder b) =>
      b..G__typename = 'DisciplineModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get treCode;
  @override
  String? get label;
  static Serializer<Gget_specialities_and_professionsData_specialities>
      get serializer =>
          _$ggetSpecialitiesAndProfessionsDataSpecialitiesSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_specialities_and_professionsData_specialities.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_specialities_and_professionsData_specialities? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_specialities_and_professionsData_specialities.serializer,
        json,
      );
}

abstract class Gget_specialities_and_professionsData_professions
    implements
        Built<Gget_specialities_and_professionsData_professions,
            Gget_specialities_and_professionsData_professionsBuilder>,
        _i2.GdisciplineResponse {
  Gget_specialities_and_professionsData_professions._();

  factory Gget_specialities_and_professionsData_professions(
      [void Function(Gget_specialities_and_professionsData_professionsBuilder b)
          updates]) = _$Gget_specialities_and_professionsData_professions;

  static void _initializeBuilder(
          Gget_specialities_and_professionsData_professionsBuilder b) =>
      b..G__typename = 'DisciplineModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get treCode;
  @override
  String? get label;
  static Serializer<Gget_specialities_and_professionsData_professions>
      get serializer =>
          _$ggetSpecialitiesAndProfessionsDataProfessionsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_specialities_and_professionsData_professions.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_specialities_and_professionsData_professions? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_specialities_and_professionsData_professions.serializer,
        json,
      );
}
