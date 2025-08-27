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

part 'ens_recommandation_get_delayed_recommendations.query.data.gql.g.dart';

abstract class Gget_delayed_recommendationsData
    implements
        Built<Gget_delayed_recommendationsData,
            Gget_delayed_recommendationsDataBuilder> {
  Gget_delayed_recommendationsData._();

  factory Gget_delayed_recommendationsData(
          [void Function(Gget_delayed_recommendationsDataBuilder b) updates]) =
      _$Gget_delayed_recommendationsData;

  static void _initializeBuilder(Gget_delayed_recommendationsDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<Gget_delayed_recommendationsData_getDelayedRecommendations>?
      get getDelayedRecommendations;
  static Serializer<Gget_delayed_recommendationsData> get serializer =>
      _$ggetDelayedRecommendationsDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_delayed_recommendationsData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_delayed_recommendationsData? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_delayed_recommendationsData.serializer,
        json,
      );
}

abstract class Gget_delayed_recommendationsData_getDelayedRecommendations
    implements
        Built<Gget_delayed_recommendationsData_getDelayedRecommendations,
            Gget_delayed_recommendationsData_getDelayedRecommendationsBuilder> {
  Gget_delayed_recommendationsData_getDelayedRecommendations._();

  factory Gget_delayed_recommendationsData_getDelayedRecommendations(
      [void Function(
              Gget_delayed_recommendationsData_getDelayedRecommendationsBuilder
                  b)
          updates]) = _$Gget_delayed_recommendationsData_getDelayedRecommendations;

  static void _initializeBuilder(
          Gget_delayed_recommendationsData_getDelayedRecommendationsBuilder
              b) =>
      b..G__typename = 'DelayedRecommendationViewModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  _i2.GRecommendationCode get code;
  double get priority;
  Gget_delayed_recommendationsData_getDelayedRecommendations_preference
      get preference;
  Gget_delayed_recommendationsData_getDelayedRecommendations_data? get data;
  static Serializer<Gget_delayed_recommendationsData_getDelayedRecommendations>
      get serializer =>
          _$ggetDelayedRecommendationsDataGetDelayedRecommendationsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_delayed_recommendationsData_getDelayedRecommendations.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_delayed_recommendationsData_getDelayedRecommendations? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_delayed_recommendationsData_getDelayedRecommendations.serializer,
        json,
      );
}

abstract class Gget_delayed_recommendationsData_getDelayedRecommendations_preference
    implements
        Built<
            Gget_delayed_recommendationsData_getDelayedRecommendations_preference,
            Gget_delayed_recommendationsData_getDelayedRecommendations_preferenceBuilder> {
  Gget_delayed_recommendationsData_getDelayedRecommendations_preference._();

  factory Gget_delayed_recommendationsData_getDelayedRecommendations_preference(
          [void Function(
                  Gget_delayed_recommendationsData_getDelayedRecommendations_preferenceBuilder
                      b)
              updates]) =
      _$Gget_delayed_recommendationsData_getDelayedRecommendations_preference;

  static void _initializeBuilder(
          Gget_delayed_recommendationsData_getDelayedRecommendations_preferenceBuilder
              b) =>
      b..G__typename = 'DelayedRecommendationPreference';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool get doitEtreAffichee;
  static Serializer<
          Gget_delayed_recommendationsData_getDelayedRecommendations_preference>
      get serializer =>
          _$ggetDelayedRecommendationsDataGetDelayedRecommendationsPreferenceSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_delayed_recommendationsData_getDelayedRecommendations_preference
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_delayed_recommendationsData_getDelayedRecommendations_preference?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_delayed_recommendationsData_getDelayedRecommendations_preference
                .serializer,
            json,
          );
}

abstract class Gget_delayed_recommendationsData_getDelayedRecommendations_data
    implements
        Built<Gget_delayed_recommendationsData_getDelayedRecommendations_data,
            Gget_delayed_recommendationsData_getDelayedRecommendations_dataBuilder> {
  Gget_delayed_recommendationsData_getDelayedRecommendations_data._();

  factory Gget_delayed_recommendationsData_getDelayedRecommendations_data(
          [void Function(
                  Gget_delayed_recommendationsData_getDelayedRecommendations_dataBuilder
                      b)
              updates]) =
      _$Gget_delayed_recommendationsData_getDelayedRecommendations_data;

  static void _initializeBuilder(
          Gget_delayed_recommendationsData_getDelayedRecommendations_dataBuilder
              b) =>
      b..G__typename = 'DelayedRecommendationData';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<
          Gget_delayed_recommendationsData_getDelayedRecommendations_data_enfants>?
      get enfants;
  static Serializer<
          Gget_delayed_recommendationsData_getDelayedRecommendations_data>
      get serializer =>
          _$ggetDelayedRecommendationsDataGetDelayedRecommendationsDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_delayed_recommendationsData_getDelayedRecommendations_data
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_delayed_recommendationsData_getDelayedRecommendations_data?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_delayed_recommendationsData_getDelayedRecommendations_data
                .serializer,
            json,
          );
}

abstract class Gget_delayed_recommendationsData_getDelayedRecommendations_data_enfants
    implements
        Built<
            Gget_delayed_recommendationsData_getDelayedRecommendations_data_enfants,
            Gget_delayed_recommendationsData_getDelayedRecommendations_data_enfantsBuilder> {
  Gget_delayed_recommendationsData_getDelayedRecommendations_data_enfants._();

  factory Gget_delayed_recommendationsData_getDelayedRecommendations_data_enfants(
          [void Function(
                  Gget_delayed_recommendationsData_getDelayedRecommendations_data_enfantsBuilder
                      b)
              updates]) =
      _$Gget_delayed_recommendationsData_getDelayedRecommendations_data_enfants;

  static void _initializeBuilder(
          Gget_delayed_recommendationsData_getDelayedRecommendations_data_enfantsBuilder
              b) =>
      b..G__typename = 'DelayedRecommendationEnfant';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get nom;
  String get prenom;
  static Serializer<
          Gget_delayed_recommendationsData_getDelayedRecommendations_data_enfants>
      get serializer =>
          _$ggetDelayedRecommendationsDataGetDelayedRecommendationsDataEnfantsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_delayed_recommendationsData_getDelayedRecommendations_data_enfants
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_delayed_recommendationsData_getDelayedRecommendations_data_enfants?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_delayed_recommendationsData_getDelayedRecommendations_data_enfants
                .serializer,
            json,
          );
}
