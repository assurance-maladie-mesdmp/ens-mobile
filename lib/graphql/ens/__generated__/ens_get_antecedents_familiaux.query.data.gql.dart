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

part 'ens_get_antecedents_familiaux.query.data.gql.g.dart';

abstract class Gget_antecedents_familiauxData
    implements
        Built<Gget_antecedents_familiauxData,
            Gget_antecedents_familiauxDataBuilder> {
  Gget_antecedents_familiauxData._();

  factory Gget_antecedents_familiauxData(
          [void Function(Gget_antecedents_familiauxDataBuilder b) updates]) =
      _$Gget_antecedents_familiauxData;

  static void _initializeBuilder(Gget_antecedents_familiauxDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gget_antecedents_familiauxData_familyHistories get familyHistories;
  Gget_antecedents_familiauxData_unconcerned get unconcerned;
  static Serializer<Gget_antecedents_familiauxData> get serializer =>
      _$ggetAntecedentsFamiliauxDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_antecedents_familiauxData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_antecedents_familiauxData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_antecedents_familiauxData.serializer,
        json,
      );
}

abstract class Gget_antecedents_familiauxData_familyHistories
    implements
        Built<Gget_antecedents_familiauxData_familyHistories,
            Gget_antecedents_familiauxData_familyHistoriesBuilder> {
  Gget_antecedents_familiauxData_familyHistories._();

  factory Gget_antecedents_familiauxData_familyHistories(
      [void Function(Gget_antecedents_familiauxData_familyHistoriesBuilder b)
          updates]) = _$Gget_antecedents_familiauxData_familyHistories;

  static void _initializeBuilder(
          Gget_antecedents_familiauxData_familyHistoriesBuilder b) =>
      b..G__typename = 'FamilyHistoryListModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<Gget_antecedents_familiauxData_familyHistories_familyHistories>
      get familyHistories;
  static Serializer<Gget_antecedents_familiauxData_familyHistories>
      get serializer => _$ggetAntecedentsFamiliauxDataFamilyHistoriesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_antecedents_familiauxData_familyHistories.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_antecedents_familiauxData_familyHistories? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_antecedents_familiauxData_familyHistories.serializer,
        json,
      );
}

abstract class Gget_antecedents_familiauxData_familyHistories_familyHistories
    implements
        Built<Gget_antecedents_familiauxData_familyHistories_familyHistories,
            Gget_antecedents_familiauxData_familyHistories_familyHistoriesBuilder> {
  Gget_antecedents_familiauxData_familyHistories_familyHistories._();

  factory Gget_antecedents_familiauxData_familyHistories_familyHistories(
          [void Function(
                  Gget_antecedents_familiauxData_familyHistories_familyHistoriesBuilder
                      b)
              updates]) =
      _$Gget_antecedents_familiauxData_familyHistories_familyHistories;

  static void _initializeBuilder(
          Gget_antecedents_familiauxData_familyHistories_familyHistoriesBuilder
              b) =>
      b..G__typename = 'FamilyHistoryModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  String? get comment;
  _i2.GFamilyRelationshipEnum get familyRelationship;
  static Serializer<
          Gget_antecedents_familiauxData_familyHistories_familyHistories>
      get serializer =>
          _$ggetAntecedentsFamiliauxDataFamilyHistoriesFamilyHistoriesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_antecedents_familiauxData_familyHistories_familyHistories
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_antecedents_familiauxData_familyHistories_familyHistories?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_antecedents_familiauxData_familyHistories_familyHistories
                .serializer,
            json,
          );
}

abstract class Gget_antecedents_familiauxData_unconcerned
    implements
        Built<Gget_antecedents_familiauxData_unconcerned,
            Gget_antecedents_familiauxData_unconcernedBuilder> {
  Gget_antecedents_familiauxData_unconcerned._();

  factory Gget_antecedents_familiauxData_unconcerned(
      [void Function(Gget_antecedents_familiauxData_unconcernedBuilder b)
          updates]) = _$Gget_antecedents_familiauxData_unconcerned;

  static void _initializeBuilder(
          Gget_antecedents_familiauxData_unconcernedBuilder b) =>
      b..G__typename = 'UnconcernedModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get declarationDate;
  static Serializer<Gget_antecedents_familiauxData_unconcerned>
      get serializer => _$ggetAntecedentsFamiliauxDataUnconcernedSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_antecedents_familiauxData_unconcerned.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_antecedents_familiauxData_unconcerned? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_antecedents_familiauxData_unconcerned.serializer,
        json,
      );
}
