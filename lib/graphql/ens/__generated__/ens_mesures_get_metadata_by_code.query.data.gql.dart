// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_mesures_metadata_fields.fragment.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_mesures_get_metadata_by_code.query.data.gql.g.dart';

abstract class Gget_metadata_by_codeData
    implements
        Built<Gget_metadata_by_codeData, Gget_metadata_by_codeDataBuilder> {
  Gget_metadata_by_codeData._();

  factory Gget_metadata_by_codeData(
          [void Function(Gget_metadata_by_codeDataBuilder b) updates]) =
      _$Gget_metadata_by_codeData;

  static void _initializeBuilder(Gget_metadata_by_codeDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gget_metadata_by_codeData_measureMetaData get measureMetaData;
  static Serializer<Gget_metadata_by_codeData> get serializer =>
      _$ggetMetadataByCodeDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_metadata_by_codeData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_metadata_by_codeData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_metadata_by_codeData.serializer,
        json,
      );
}

abstract class Gget_metadata_by_codeData_measureMetaData
    implements
        Built<Gget_metadata_by_codeData_measureMetaData,
            Gget_metadata_by_codeData_measureMetaDataBuilder>,
        _i2.GmetadataFields {
  Gget_metadata_by_codeData_measureMetaData._();

  factory Gget_metadata_by_codeData_measureMetaData(
      [void Function(Gget_metadata_by_codeData_measureMetaDataBuilder b)
          updates]) = _$Gget_metadata_by_codeData_measureMetaData;

  static void _initializeBuilder(
          Gget_metadata_by_codeData_measureMetaDataBuilder b) =>
      b..G__typename = 'MeasureMetaDataModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  BuiltList<Gget_metadata_by_codeData_measureMetaData_metrics>? get metrics;
  @override
  BuiltList<Gget_metadata_by_codeData_measureMetaData_comments>? get comments;
  static Serializer<Gget_metadata_by_codeData_measureMetaData> get serializer =>
      _$ggetMetadataByCodeDataMeasureMetaDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_metadata_by_codeData_measureMetaData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_metadata_by_codeData_measureMetaData? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_metadata_by_codeData_measureMetaData.serializer,
        json,
      );
}

abstract class Gget_metadata_by_codeData_measureMetaData_metrics
    implements
        Built<Gget_metadata_by_codeData_measureMetaData_metrics,
            Gget_metadata_by_codeData_measureMetaData_metricsBuilder>,
        _i2.GmetadataFields_metrics {
  Gget_metadata_by_codeData_measureMetaData_metrics._();

  factory Gget_metadata_by_codeData_measureMetaData_metrics(
      [void Function(Gget_metadata_by_codeData_measureMetaData_metricsBuilder b)
          updates]) = _$Gget_metadata_by_codeData_measureMetaData_metrics;

  static void _initializeBuilder(
          Gget_metadata_by_codeData_measureMetaData_metricsBuilder b) =>
      b..G__typename = 'MetricMetaDataModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  _i3.GMeasureCode get code;
  @override
  String get unit;
  @override
  String get label;
  @override
  String get placeholder;
  @override
  String? get maxlength;
  @override
  String? get hint;
  @override
  BuiltList<Gget_metadata_by_codeData_measureMetaData_metrics_constraints>
      get constraints;
  static Serializer<Gget_metadata_by_codeData_measureMetaData_metrics>
      get serializer =>
          _$ggetMetadataByCodeDataMeasureMetaDataMetricsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_metadata_by_codeData_measureMetaData_metrics.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_metadata_by_codeData_measureMetaData_metrics? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_metadata_by_codeData_measureMetaData_metrics.serializer,
        json,
      );
}

abstract class Gget_metadata_by_codeData_measureMetaData_metrics_constraints
    implements
        Built<Gget_metadata_by_codeData_measureMetaData_metrics_constraints,
            Gget_metadata_by_codeData_measureMetaData_metrics_constraintsBuilder>,
        _i2.GmetadataFields_metrics_constraints {
  Gget_metadata_by_codeData_measureMetaData_metrics_constraints._();

  factory Gget_metadata_by_codeData_measureMetaData_metrics_constraints(
          [void Function(
                  Gget_metadata_by_codeData_measureMetaData_metrics_constraintsBuilder
                      b)
              updates]) =
      _$Gget_metadata_by_codeData_measureMetaData_metrics_constraints;

  static void _initializeBuilder(
          Gget_metadata_by_codeData_measureMetaData_metrics_constraintsBuilder
              b) =>
      b..G__typename = 'ConstraintMetaDataModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get regexp;
  @override
  String get message;
  @override
  Gget_metadata_by_codeData_measureMetaData_metrics_constraints_range?
      get range;
  static Serializer<
          Gget_metadata_by_codeData_measureMetaData_metrics_constraints>
      get serializer =>
          _$ggetMetadataByCodeDataMeasureMetaDataMetricsConstraintsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_metadata_by_codeData_measureMetaData_metrics_constraints
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_metadata_by_codeData_measureMetaData_metrics_constraints?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_metadata_by_codeData_measureMetaData_metrics_constraints
                .serializer,
            json,
          );
}

abstract class Gget_metadata_by_codeData_measureMetaData_metrics_constraints_range
    implements
        Built<
            Gget_metadata_by_codeData_measureMetaData_metrics_constraints_range,
            Gget_metadata_by_codeData_measureMetaData_metrics_constraints_rangeBuilder>,
        _i2.GmetadataFields_metrics_constraints_range {
  Gget_metadata_by_codeData_measureMetaData_metrics_constraints_range._();

  factory Gget_metadata_by_codeData_measureMetaData_metrics_constraints_range(
          [void Function(
                  Gget_metadata_by_codeData_measureMetaData_metrics_constraints_rangeBuilder
                      b)
              updates]) =
      _$Gget_metadata_by_codeData_measureMetaData_metrics_constraints_range;

  static void _initializeBuilder(
          Gget_metadata_by_codeData_measureMetaData_metrics_constraints_rangeBuilder
              b) =>
      b..G__typename = 'RangeModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  double? get min;
  @override
  double? get max;
  static Serializer<
          Gget_metadata_by_codeData_measureMetaData_metrics_constraints_range>
      get serializer =>
          _$ggetMetadataByCodeDataMeasureMetaDataMetricsConstraintsRangeSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_metadata_by_codeData_measureMetaData_metrics_constraints_range
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_metadata_by_codeData_measureMetaData_metrics_constraints_range?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_metadata_by_codeData_measureMetaData_metrics_constraints_range
                .serializer,
            json,
          );
}

abstract class Gget_metadata_by_codeData_measureMetaData_comments
    implements
        Built<Gget_metadata_by_codeData_measureMetaData_comments,
            Gget_metadata_by_codeData_measureMetaData_commentsBuilder>,
        _i2.GmetadataFields_comments {
  Gget_metadata_by_codeData_measureMetaData_comments._();

  factory Gget_metadata_by_codeData_measureMetaData_comments(
      [void Function(
              Gget_metadata_by_codeData_measureMetaData_commentsBuilder b)
          updates]) = _$Gget_metadata_by_codeData_measureMetaData_comments;

  static void _initializeBuilder(
          Gget_metadata_by_codeData_measureMetaData_commentsBuilder b) =>
      b..G__typename = 'CommentMetaDataModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get code;
  @override
  String get label;
  @override
  String get placeholder;
  @override
  BuiltList<Gget_metadata_by_codeData_measureMetaData_comments_options>?
      get options;
  static Serializer<Gget_metadata_by_codeData_measureMetaData_comments>
      get serializer =>
          _$ggetMetadataByCodeDataMeasureMetaDataCommentsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_metadata_by_codeData_measureMetaData_comments.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_metadata_by_codeData_measureMetaData_comments? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_metadata_by_codeData_measureMetaData_comments.serializer,
        json,
      );
}

abstract class Gget_metadata_by_codeData_measureMetaData_comments_options
    implements
        Built<Gget_metadata_by_codeData_measureMetaData_comments_options,
            Gget_metadata_by_codeData_measureMetaData_comments_optionsBuilder>,
        _i2.GmetadataFields_comments_options {
  Gget_metadata_by_codeData_measureMetaData_comments_options._();

  factory Gget_metadata_by_codeData_measureMetaData_comments_options(
      [void Function(
              Gget_metadata_by_codeData_measureMetaData_comments_optionsBuilder
                  b)
          updates]) = _$Gget_metadata_by_codeData_measureMetaData_comments_options;

  static void _initializeBuilder(
          Gget_metadata_by_codeData_measureMetaData_comments_optionsBuilder
              b) =>
      b..G__typename = 'OptionMetaDataModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get code;
  @override
  String get label;
  @override
  Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata?
      get extraValueMetadata;
  static Serializer<Gget_metadata_by_codeData_measureMetaData_comments_options>
      get serializer =>
          _$ggetMetadataByCodeDataMeasureMetaDataCommentsOptionsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_metadata_by_codeData_measureMetaData_comments_options.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_metadata_by_codeData_measureMetaData_comments_options? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_metadata_by_codeData_measureMetaData_comments_options.serializer,
        json,
      );
}

abstract class Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata
    implements
        Built<
            Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata,
            Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadataBuilder>,
        _i2.GmetadataFields_comments_options_extraValueMetadata {
  Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata._();

  factory Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata(
          [void Function(
                  Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadataBuilder
                      b)
              updates]) =
      _$Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata;

  static void _initializeBuilder(
          Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadataBuilder
              b) =>
      b..G__typename = 'OptionExtraValueMetaDataModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get fieldLabel;
  @override
  double get maxLength;
  @override
  BuiltList<
          Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata_constraints>
      get constraints;
  static Serializer<
          Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata>
      get serializer =>
          _$ggetMetadataByCodeDataMeasureMetaDataCommentsOptionsExtraValueMetadataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata
                .serializer,
            json,
          );
}

abstract class Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata_constraints
    implements
        Built<
            Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata_constraints,
            Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata_constraintsBuilder>,
        _i2.GmetadataFields_comments_options_extraValueMetadata_constraints {
  Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata_constraints._();

  factory Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata_constraints(
          [void Function(
                  Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata_constraintsBuilder
                      b)
              updates]) =
      _$Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata_constraints;

  static void _initializeBuilder(
          Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata_constraintsBuilder
              b) =>
      b..G__typename = 'ConstraintMetaDataModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get regexp;
  @override
  String get message;
  @override
  Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata_constraints_range?
      get range;
  static Serializer<
          Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata_constraints>
      get serializer =>
          _$ggetMetadataByCodeDataMeasureMetaDataCommentsOptionsExtraValueMetadataConstraintsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata_constraints
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata_constraints?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata_constraints
                .serializer,
            json,
          );
}

abstract class Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata_constraints_range
    implements
        Built<
            Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata_constraints_range,
            Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata_constraints_rangeBuilder>,
        _i2
        .GmetadataFields_comments_options_extraValueMetadata_constraints_range {
  Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata_constraints_range._();

  factory Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata_constraints_range(
          [void Function(
                  Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata_constraints_rangeBuilder
                      b)
              updates]) =
      _$Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata_constraints_range;

  static void _initializeBuilder(
          Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata_constraints_rangeBuilder
              b) =>
      b..G__typename = 'RangeModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  double? get min;
  @override
  double? get max;
  static Serializer<
          Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata_constraints_range>
      get serializer =>
          _$ggetMetadataByCodeDataMeasureMetaDataCommentsOptionsExtraValueMetadataConstraintsRangeSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata_constraints_range
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata_constraints_range?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_metadata_by_codeData_measureMetaData_comments_options_extraValueMetadata_constraints_range
                .serializer,
            json,
          );
}
