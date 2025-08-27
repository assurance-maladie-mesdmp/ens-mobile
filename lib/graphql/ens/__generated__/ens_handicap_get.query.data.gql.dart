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

part 'ens_handicap_get.query.data.gql.g.dart';

abstract class Gget_handicapsData
    implements Built<Gget_handicapsData, Gget_handicapsDataBuilder> {
  Gget_handicapsData._();

  factory Gget_handicapsData(
          [void Function(Gget_handicapsDataBuilder b) updates]) =
      _$Gget_handicapsData;

  static void _initializeBuilder(Gget_handicapsDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gget_handicapsData_fetchAllDisabilities get fetchAllDisabilities;
  Gget_handicapsData_unconcerned get unconcerned;
  static Serializer<Gget_handicapsData> get serializer =>
      _$ggetHandicapsDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_handicapsData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_handicapsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_handicapsData.serializer,
        json,
      );
}

abstract class Gget_handicapsData_fetchAllDisabilities
    implements
        Built<Gget_handicapsData_fetchAllDisabilities,
            Gget_handicapsData_fetchAllDisabilitiesBuilder> {
  Gget_handicapsData_fetchAllDisabilities._();

  factory Gget_handicapsData_fetchAllDisabilities(
      [void Function(Gget_handicapsData_fetchAllDisabilitiesBuilder b)
          updates]) = _$Gget_handicapsData_fetchAllDisabilities;

  static void _initializeBuilder(
          Gget_handicapsData_fetchAllDisabilitiesBuilder b) =>
      b..G__typename = 'DisabilityListModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<Gget_handicapsData_fetchAllDisabilities_disabilities>
      get disabilities;
  static Serializer<Gget_handicapsData_fetchAllDisabilities> get serializer =>
      _$ggetHandicapsDataFetchAllDisabilitiesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_handicapsData_fetchAllDisabilities.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_handicapsData_fetchAllDisabilities? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_handicapsData_fetchAllDisabilities.serializer,
        json,
      );
}

abstract class Gget_handicapsData_fetchAllDisabilities_disabilities
    implements
        Built<Gget_handicapsData_fetchAllDisabilities_disabilities,
            Gget_handicapsData_fetchAllDisabilities_disabilitiesBuilder> {
  Gget_handicapsData_fetchAllDisabilities_disabilities._();

  factory Gget_handicapsData_fetchAllDisabilities_disabilities(
      [void Function(
              Gget_handicapsData_fetchAllDisabilities_disabilitiesBuilder b)
          updates]) = _$Gget_handicapsData_fetchAllDisabilities_disabilities;

  static void _initializeBuilder(
          Gget_handicapsData_fetchAllDisabilities_disabilitiesBuilder b) =>
      b..G__typename = 'DisabilityModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  String? get comment;
  _i2.GDisabilityRateEnum? get disabilityRate;
  _i2.GHumanHelpEnum get humanHelp;
  String? get technicalHelp;
  BuiltList<_i2.GDisabilitiesTypesEnum> get types;
  static Serializer<Gget_handicapsData_fetchAllDisabilities_disabilities>
      get serializer =>
          _$ggetHandicapsDataFetchAllDisabilitiesDisabilitiesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_handicapsData_fetchAllDisabilities_disabilities.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_handicapsData_fetchAllDisabilities_disabilities? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_handicapsData_fetchAllDisabilities_disabilities.serializer,
        json,
      );
}

abstract class Gget_handicapsData_unconcerned
    implements
        Built<Gget_handicapsData_unconcerned,
            Gget_handicapsData_unconcernedBuilder> {
  Gget_handicapsData_unconcerned._();

  factory Gget_handicapsData_unconcerned(
          [void Function(Gget_handicapsData_unconcernedBuilder b) updates]) =
      _$Gget_handicapsData_unconcerned;

  static void _initializeBuilder(Gget_handicapsData_unconcernedBuilder b) =>
      b..G__typename = 'UnconcernedModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get declarationDate;
  static Serializer<Gget_handicapsData_unconcerned> get serializer =>
      _$ggetHandicapsDataUnconcernedSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_handicapsData_unconcerned.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_handicapsData_unconcerned? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_handicapsData_unconcerned.serializer,
        json,
      );
}
