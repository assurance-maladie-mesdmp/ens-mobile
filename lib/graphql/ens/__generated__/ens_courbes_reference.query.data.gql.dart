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

part 'ens_courbes_reference.query.data.gql.g.dart';

abstract class Gget_courbes_referenceData
    implements
        Built<Gget_courbes_referenceData, Gget_courbes_referenceDataBuilder> {
  Gget_courbes_referenceData._();

  factory Gget_courbes_referenceData(
          [void Function(Gget_courbes_referenceDataBuilder b) updates]) =
      _$Gget_courbes_referenceData;

  static void _initializeBuilder(Gget_courbes_referenceDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gget_courbes_referenceData_measureGrowthMetrics get measureGrowthMetrics;
  static Serializer<Gget_courbes_referenceData> get serializer =>
      _$ggetCourbesReferenceDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_courbes_referenceData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_courbes_referenceData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_courbes_referenceData.serializer,
        json,
      );
}

abstract class Gget_courbes_referenceData_measureGrowthMetrics
    implements
        Built<Gget_courbes_referenceData_measureGrowthMetrics,
            Gget_courbes_referenceData_measureGrowthMetricsBuilder> {
  Gget_courbes_referenceData_measureGrowthMetrics._();

  factory Gget_courbes_referenceData_measureGrowthMetrics(
      [void Function(Gget_courbes_referenceData_measureGrowthMetricsBuilder b)
          updates]) = _$Gget_courbes_referenceData_measureGrowthMetrics;

  static void _initializeBuilder(
          Gget_courbes_referenceData_measureGrowthMetricsBuilder b) =>
      b..G__typename = 'MeasureGrowthMetricsModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<Gget_courbes_referenceData_measureGrowthMetrics_categories>
      get categories;
  static Serializer<Gget_courbes_referenceData_measureGrowthMetrics>
      get serializer =>
          _$ggetCourbesReferenceDataMeasureGrowthMetricsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_courbes_referenceData_measureGrowthMetrics.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_courbes_referenceData_measureGrowthMetrics? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_courbes_referenceData_measureGrowthMetrics.serializer,
        json,
      );
}

abstract class Gget_courbes_referenceData_measureGrowthMetrics_categories
    implements
        Built<Gget_courbes_referenceData_measureGrowthMetrics_categories,
            Gget_courbes_referenceData_measureGrowthMetrics_categoriesBuilder> {
  Gget_courbes_referenceData_measureGrowthMetrics_categories._();

  factory Gget_courbes_referenceData_measureGrowthMetrics_categories(
      [void Function(
              Gget_courbes_referenceData_measureGrowthMetrics_categoriesBuilder
                  b)
          updates]) = _$Gget_courbes_referenceData_measureGrowthMetrics_categories;

  static void _initializeBuilder(
          Gget_courbes_referenceData_measureGrowthMetrics_categoriesBuilder
              b) =>
      b..G__typename = 'CurvesListModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  _i2.GMeasureCategory get name;
  BuiltList<Gget_courbes_referenceData_measureGrowthMetrics_categories_data>
      get data;
  static Serializer<Gget_courbes_referenceData_measureGrowthMetrics_categories>
      get serializer =>
          _$ggetCourbesReferenceDataMeasureGrowthMetricsCategoriesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_courbes_referenceData_measureGrowthMetrics_categories.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_courbes_referenceData_measureGrowthMetrics_categories? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_courbes_referenceData_measureGrowthMetrics_categories.serializer,
        json,
      );
}

abstract class Gget_courbes_referenceData_measureGrowthMetrics_categories_data
    implements
        Built<Gget_courbes_referenceData_measureGrowthMetrics_categories_data,
            Gget_courbes_referenceData_measureGrowthMetrics_categories_dataBuilder> {
  Gget_courbes_referenceData_measureGrowthMetrics_categories_data._();

  factory Gget_courbes_referenceData_measureGrowthMetrics_categories_data(
          [void Function(
                  Gget_courbes_referenceData_measureGrowthMetrics_categories_dataBuilder
                      b)
              updates]) =
      _$Gget_courbes_referenceData_measureGrowthMetrics_categories_data;

  static void _initializeBuilder(
          Gget_courbes_referenceData_measureGrowthMetrics_categories_dataBuilder
              b) =>
      b..G__typename = 'CurvesCategoryModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get date;
  double get measure;
  static Serializer<
          Gget_courbes_referenceData_measureGrowthMetrics_categories_data>
      get serializer =>
          _$ggetCourbesReferenceDataMeasureGrowthMetricsCategoriesDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_courbes_referenceData_measureGrowthMetrics_categories_data
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_courbes_referenceData_measureGrowthMetrics_categories_data?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_courbes_referenceData_measureGrowthMetrics_categories_data
                .serializer,
            json,
          );
}
