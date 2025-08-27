// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i2;

part 'ens_mesures_metadata_fields.fragment.data.gql.g.dart';

abstract class GmetadataFields {
  String get G__typename;
  BuiltList<GmetadataFields_metrics>? get metrics;
  BuiltList<GmetadataFields_comments>? get comments;
  Map<String, dynamic> toJson();
}

abstract class GmetadataFields_metrics {
  String get G__typename;
  _i1.GMeasureCode get code;
  String get unit;
  String get label;
  String get placeholder;
  String? get maxlength;
  String? get hint;
  BuiltList<GmetadataFields_metrics_constraints> get constraints;
  Map<String, dynamic> toJson();
}

abstract class GmetadataFields_metrics_constraints {
  String get G__typename;
  String? get regexp;
  String get message;
  GmetadataFields_metrics_constraints_range? get range;
  Map<String, dynamic> toJson();
}

abstract class GmetadataFields_metrics_constraints_range {
  String get G__typename;
  double? get min;
  double? get max;
  Map<String, dynamic> toJson();
}

abstract class GmetadataFields_comments {
  String get G__typename;
  String get code;
  String get label;
  String get placeholder;
  BuiltList<GmetadataFields_comments_options>? get options;
  Map<String, dynamic> toJson();
}

abstract class GmetadataFields_comments_options {
  String get G__typename;
  String get code;
  String get label;
  GmetadataFields_comments_options_extraValueMetadata? get extraValueMetadata;
  Map<String, dynamic> toJson();
}

abstract class GmetadataFields_comments_options_extraValueMetadata {
  String get G__typename;
  String get fieldLabel;
  double get maxLength;
  BuiltList<GmetadataFields_comments_options_extraValueMetadata_constraints>
      get constraints;
  Map<String, dynamic> toJson();
}

abstract class GmetadataFields_comments_options_extraValueMetadata_constraints {
  String get G__typename;
  String? get regexp;
  String get message;
  GmetadataFields_comments_options_extraValueMetadata_constraints_range?
      get range;
  Map<String, dynamic> toJson();
}

abstract class GmetadataFields_comments_options_extraValueMetadata_constraints_range {
  String get G__typename;
  double? get min;
  double? get max;
  Map<String, dynamic> toJson();
}

abstract class GmetadataFieldsData
    implements
        Built<GmetadataFieldsData, GmetadataFieldsDataBuilder>,
        GmetadataFields {
  GmetadataFieldsData._();

  factory GmetadataFieldsData(
          [void Function(GmetadataFieldsDataBuilder b) updates]) =
      _$GmetadataFieldsData;

  static void _initializeBuilder(GmetadataFieldsDataBuilder b) =>
      b..G__typename = 'MeasureMetaDataModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  BuiltList<GmetadataFieldsData_metrics>? get metrics;
  @override
  BuiltList<GmetadataFieldsData_comments>? get comments;
  static Serializer<GmetadataFieldsData> get serializer =>
      _$gmetadataFieldsDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GmetadataFieldsData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GmetadataFieldsData? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GmetadataFieldsData.serializer,
        json,
      );
}

abstract class GmetadataFieldsData_metrics
    implements
        Built<GmetadataFieldsData_metrics, GmetadataFieldsData_metricsBuilder>,
        GmetadataFields_metrics {
  GmetadataFieldsData_metrics._();

  factory GmetadataFieldsData_metrics(
          [void Function(GmetadataFieldsData_metricsBuilder b) updates]) =
      _$GmetadataFieldsData_metrics;

  static void _initializeBuilder(GmetadataFieldsData_metricsBuilder b) =>
      b..G__typename = 'MetricMetaDataModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  _i1.GMeasureCode get code;
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
  BuiltList<GmetadataFieldsData_metrics_constraints> get constraints;
  static Serializer<GmetadataFieldsData_metrics> get serializer =>
      _$gmetadataFieldsDataMetricsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GmetadataFieldsData_metrics.serializer,
        this,
      ) as Map<String, dynamic>);

  static GmetadataFieldsData_metrics? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GmetadataFieldsData_metrics.serializer,
        json,
      );
}

abstract class GmetadataFieldsData_metrics_constraints
    implements
        Built<GmetadataFieldsData_metrics_constraints,
            GmetadataFieldsData_metrics_constraintsBuilder>,
        GmetadataFields_metrics_constraints {
  GmetadataFieldsData_metrics_constraints._();

  factory GmetadataFieldsData_metrics_constraints(
      [void Function(GmetadataFieldsData_metrics_constraintsBuilder b)
          updates]) = _$GmetadataFieldsData_metrics_constraints;

  static void _initializeBuilder(
          GmetadataFieldsData_metrics_constraintsBuilder b) =>
      b..G__typename = 'ConstraintMetaDataModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get regexp;
  @override
  String get message;
  @override
  GmetadataFieldsData_metrics_constraints_range? get range;
  static Serializer<GmetadataFieldsData_metrics_constraints> get serializer =>
      _$gmetadataFieldsDataMetricsConstraintsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GmetadataFieldsData_metrics_constraints.serializer,
        this,
      ) as Map<String, dynamic>);

  static GmetadataFieldsData_metrics_constraints? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GmetadataFieldsData_metrics_constraints.serializer,
        json,
      );
}

abstract class GmetadataFieldsData_metrics_constraints_range
    implements
        Built<GmetadataFieldsData_metrics_constraints_range,
            GmetadataFieldsData_metrics_constraints_rangeBuilder>,
        GmetadataFields_metrics_constraints_range {
  GmetadataFieldsData_metrics_constraints_range._();

  factory GmetadataFieldsData_metrics_constraints_range(
      [void Function(GmetadataFieldsData_metrics_constraints_rangeBuilder b)
          updates]) = _$GmetadataFieldsData_metrics_constraints_range;

  static void _initializeBuilder(
          GmetadataFieldsData_metrics_constraints_rangeBuilder b) =>
      b..G__typename = 'RangeModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  double? get min;
  @override
  double? get max;
  static Serializer<GmetadataFieldsData_metrics_constraints_range>
      get serializer => _$gmetadataFieldsDataMetricsConstraintsRangeSerializer;

  @override
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GmetadataFieldsData_metrics_constraints_range.serializer,
        this,
      ) as Map<String, dynamic>);

  static GmetadataFieldsData_metrics_constraints_range? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GmetadataFieldsData_metrics_constraints_range.serializer,
        json,
      );
}

abstract class GmetadataFieldsData_comments
    implements
        Built<GmetadataFieldsData_comments,
            GmetadataFieldsData_commentsBuilder>,
        GmetadataFields_comments {
  GmetadataFieldsData_comments._();

  factory GmetadataFieldsData_comments(
          [void Function(GmetadataFieldsData_commentsBuilder b) updates]) =
      _$GmetadataFieldsData_comments;

  static void _initializeBuilder(GmetadataFieldsData_commentsBuilder b) =>
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
  BuiltList<GmetadataFieldsData_comments_options>? get options;
  static Serializer<GmetadataFieldsData_comments> get serializer =>
      _$gmetadataFieldsDataCommentsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GmetadataFieldsData_comments.serializer,
        this,
      ) as Map<String, dynamic>);

  static GmetadataFieldsData_comments? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GmetadataFieldsData_comments.serializer,
        json,
      );
}

abstract class GmetadataFieldsData_comments_options
    implements
        Built<GmetadataFieldsData_comments_options,
            GmetadataFieldsData_comments_optionsBuilder>,
        GmetadataFields_comments_options {
  GmetadataFieldsData_comments_options._();

  factory GmetadataFieldsData_comments_options(
      [void Function(GmetadataFieldsData_comments_optionsBuilder b)
          updates]) = _$GmetadataFieldsData_comments_options;

  static void _initializeBuilder(
          GmetadataFieldsData_comments_optionsBuilder b) =>
      b..G__typename = 'OptionMetaDataModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get code;
  @override
  String get label;
  @override
  GmetadataFieldsData_comments_options_extraValueMetadata?
      get extraValueMetadata;
  static Serializer<GmetadataFieldsData_comments_options> get serializer =>
      _$gmetadataFieldsDataCommentsOptionsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GmetadataFieldsData_comments_options.serializer,
        this,
      ) as Map<String, dynamic>);

  static GmetadataFieldsData_comments_options? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GmetadataFieldsData_comments_options.serializer,
        json,
      );
}

abstract class GmetadataFieldsData_comments_options_extraValueMetadata
    implements
        Built<GmetadataFieldsData_comments_options_extraValueMetadata,
            GmetadataFieldsData_comments_options_extraValueMetadataBuilder>,
        GmetadataFields_comments_options_extraValueMetadata {
  GmetadataFieldsData_comments_options_extraValueMetadata._();

  factory GmetadataFieldsData_comments_options_extraValueMetadata(
      [void Function(
              GmetadataFieldsData_comments_options_extraValueMetadataBuilder b)
          updates]) = _$GmetadataFieldsData_comments_options_extraValueMetadata;

  static void _initializeBuilder(
          GmetadataFieldsData_comments_options_extraValueMetadataBuilder b) =>
      b..G__typename = 'OptionExtraValueMetaDataModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get fieldLabel;
  @override
  double get maxLength;
  @override
  BuiltList<GmetadataFieldsData_comments_options_extraValueMetadata_constraints>
      get constraints;
  static Serializer<GmetadataFieldsData_comments_options_extraValueMetadata>
      get serializer =>
          _$gmetadataFieldsDataCommentsOptionsExtraValueMetadataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GmetadataFieldsData_comments_options_extraValueMetadata.serializer,
        this,
      ) as Map<String, dynamic>);

  static GmetadataFieldsData_comments_options_extraValueMetadata? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GmetadataFieldsData_comments_options_extraValueMetadata.serializer,
        json,
      );
}

abstract class GmetadataFieldsData_comments_options_extraValueMetadata_constraints
    implements
        Built<
            GmetadataFieldsData_comments_options_extraValueMetadata_constraints,
            GmetadataFieldsData_comments_options_extraValueMetadata_constraintsBuilder>,
        GmetadataFields_comments_options_extraValueMetadata_constraints {
  GmetadataFieldsData_comments_options_extraValueMetadata_constraints._();

  factory GmetadataFieldsData_comments_options_extraValueMetadata_constraints(
          [void Function(
                  GmetadataFieldsData_comments_options_extraValueMetadata_constraintsBuilder
                      b)
              updates]) =
      _$GmetadataFieldsData_comments_options_extraValueMetadata_constraints;

  static void _initializeBuilder(
          GmetadataFieldsData_comments_options_extraValueMetadata_constraintsBuilder
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
  GmetadataFieldsData_comments_options_extraValueMetadata_constraints_range?
      get range;
  static Serializer<
          GmetadataFieldsData_comments_options_extraValueMetadata_constraints>
      get serializer =>
          _$gmetadataFieldsDataCommentsOptionsExtraValueMetadataConstraintsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GmetadataFieldsData_comments_options_extraValueMetadata_constraints
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GmetadataFieldsData_comments_options_extraValueMetadata_constraints?
      fromJson(Map<String, dynamic> json) => _i2.serializers.deserializeWith(
            GmetadataFieldsData_comments_options_extraValueMetadata_constraints
                .serializer,
            json,
          );
}

abstract class GmetadataFieldsData_comments_options_extraValueMetadata_constraints_range
    implements
        Built<
            GmetadataFieldsData_comments_options_extraValueMetadata_constraints_range,
            GmetadataFieldsData_comments_options_extraValueMetadata_constraints_rangeBuilder>,
        GmetadataFields_comments_options_extraValueMetadata_constraints_range {
  GmetadataFieldsData_comments_options_extraValueMetadata_constraints_range._();

  factory GmetadataFieldsData_comments_options_extraValueMetadata_constraints_range(
          [void Function(
                  GmetadataFieldsData_comments_options_extraValueMetadata_constraints_rangeBuilder
                      b)
              updates]) =
      _$GmetadataFieldsData_comments_options_extraValueMetadata_constraints_range;

  static void _initializeBuilder(
          GmetadataFieldsData_comments_options_extraValueMetadata_constraints_rangeBuilder
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
          GmetadataFieldsData_comments_options_extraValueMetadata_constraints_range>
      get serializer =>
          _$gmetadataFieldsDataCommentsOptionsExtraValueMetadataConstraintsRangeSerializer;

  @override
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GmetadataFieldsData_comments_options_extraValueMetadata_constraints_range
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GmetadataFieldsData_comments_options_extraValueMetadata_constraints_range?
      fromJson(Map<String, dynamic> json) => _i2.serializers.deserializeWith(
            GmetadataFieldsData_comments_options_extraValueMetadata_constraints_range
                .serializer,
            json,
          );
}
