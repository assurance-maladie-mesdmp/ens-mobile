// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_mesures_mesure_fields.fragment.data.gql.dart'
    as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_mesures_metadata_fields.fragment.data.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i4;

part 'ens_mesure_extract_mesure.fragment.data.gql.g.dart';

abstract class GextractMesure {
  String get G__typename;
  String get code;
  BuiltList<GextractMesure_measures> get measures;
  GextractMesure_metaData get metaData;
  Map<String, dynamic> toJson();
}

abstract class GextractMesure_measures implements _i1.GmesureFields {
  @override
  String get G__typename;
  @override
  String get id;
  @override
  String? get effectiveDate;
  @override
  BuiltList<GextractMesure_measures_comments>? get comments;
  @override
  BuiltList<GextractMesure_measures_metrics>? get metrics;
  @override
  GextractMesure_measures_author? get author;
  @override
  String get formattedMetricValue;
  @override
  String? get idDocument;
  @override
  String? get nameDocument;
  @override
  GextractMesure_measures_permissions get permissions;
  @override
  String? get growthMetricsIntervalText;
  @override
  Map<String, dynamic> toJson();
}

abstract class GextractMesure_measures_comments
    implements _i1.GmesureFields_comments {
  @override
  String get G__typename;
  @override
  String get code;
  @override
  String get value;
  @override
  String? get extra;
  @override
  Map<String, dynamic> toJson();
}

abstract class GextractMesure_measures_metrics
    implements _i1.GmesureFields_metrics {
  @override
  String get G__typename;
  @override
  _i2.GMeasureCode? get code;
  @override
  double get value;
  @override
  String get unit;
  @override
  Map<String, dynamic> toJson();
}

abstract class GextractMesure_measures_author
    implements _i1.GmesureFields_author {
  @override
  String get G__typename;
  @override
  String? get firstName;
  @override
  String? get lastName;
  @override
  Map<String, dynamic> toJson();
}

abstract class GextractMesure_measures_permissions
    implements _i1.GmesureFields_permissions {
  @override
  String get G__typename;
  @override
  bool get delete;
  @override
  bool get Gupdate;
  @override
  Map<String, dynamic> toJson();
}

abstract class GextractMesure_metaData implements _i3.GmetadataFields {
  @override
  String get G__typename;
  @override
  BuiltList<GextractMesure_metaData_metrics>? get metrics;
  @override
  BuiltList<GextractMesure_metaData_comments>? get comments;
  @override
  Map<String, dynamic> toJson();
}

abstract class GextractMesure_metaData_metrics
    implements _i3.GmetadataFields_metrics {
  @override
  String get G__typename;
  @override
  _i2.GMeasureCode get code;
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
  BuiltList<GextractMesure_metaData_metrics_constraints> get constraints;
  @override
  Map<String, dynamic> toJson();
}

abstract class GextractMesure_metaData_metrics_constraints
    implements _i3.GmetadataFields_metrics_constraints {
  @override
  String get G__typename;
  @override
  String? get regexp;
  @override
  String get message;
  @override
  GextractMesure_metaData_metrics_constraints_range? get range;
  @override
  Map<String, dynamic> toJson();
}

abstract class GextractMesure_metaData_metrics_constraints_range
    implements _i3.GmetadataFields_metrics_constraints_range {
  @override
  String get G__typename;
  @override
  double? get min;
  @override
  double? get max;
  @override
  Map<String, dynamic> toJson();
}

abstract class GextractMesure_metaData_comments
    implements _i3.GmetadataFields_comments {
  @override
  String get G__typename;
  @override
  String get code;
  @override
  String get label;
  @override
  String get placeholder;
  @override
  BuiltList<GextractMesure_metaData_comments_options>? get options;
  @override
  Map<String, dynamic> toJson();
}

abstract class GextractMesure_metaData_comments_options
    implements _i3.GmetadataFields_comments_options {
  @override
  String get G__typename;
  @override
  String get code;
  @override
  String get label;
  @override
  GextractMesure_metaData_comments_options_extraValueMetadata?
      get extraValueMetadata;
  @override
  Map<String, dynamic> toJson();
}

abstract class GextractMesure_metaData_comments_options_extraValueMetadata
    implements _i3.GmetadataFields_comments_options_extraValueMetadata {
  @override
  String get G__typename;
  @override
  String get fieldLabel;
  @override
  double get maxLength;
  @override
  BuiltList<
          GextractMesure_metaData_comments_options_extraValueMetadata_constraints>
      get constraints;
  @override
  Map<String, dynamic> toJson();
}

abstract class GextractMesure_metaData_comments_options_extraValueMetadata_constraints
    implements
        _i3.GmetadataFields_comments_options_extraValueMetadata_constraints {
  @override
  String get G__typename;
  @override
  String? get regexp;
  @override
  String get message;
  @override
  GextractMesure_metaData_comments_options_extraValueMetadata_constraints_range?
      get range;
  @override
  Map<String, dynamic> toJson();
}

abstract class GextractMesure_metaData_comments_options_extraValueMetadata_constraints_range
    implements
        _i3
        .GmetadataFields_comments_options_extraValueMetadata_constraints_range {
  @override
  String get G__typename;
  @override
  double? get min;
  @override
  double? get max;
  @override
  Map<String, dynamic> toJson();
}

abstract class GextractMesureData
    implements
        Built<GextractMesureData, GextractMesureDataBuilder>,
        GextractMesure {
  GextractMesureData._();

  factory GextractMesureData(
          [void Function(GextractMesureDataBuilder b) updates]) =
      _$GextractMesureData;

  static void _initializeBuilder(GextractMesureDataBuilder b) =>
      b..G__typename = 'MeasuresHistoryModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get code;
  @override
  BuiltList<GextractMesureData_measures> get measures;
  @override
  GextractMesureData_metaData get metaData;
  static Serializer<GextractMesureData> get serializer =>
      _$gextractMesureDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i4.serializers.serializeWith(
        GextractMesureData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GextractMesureData? fromJson(Map<String, dynamic> json) =>
      _i4.serializers.deserializeWith(
        GextractMesureData.serializer,
        json,
      );
}

abstract class GextractMesureData_measures
    implements
        Built<GextractMesureData_measures, GextractMesureData_measuresBuilder>,
        GextractMesure_measures,
        _i1.GmesureFields {
  GextractMesureData_measures._();

  factory GextractMesureData_measures(
          [void Function(GextractMesureData_measuresBuilder b) updates]) =
      _$GextractMesureData_measures;

  static void _initializeBuilder(GextractMesureData_measuresBuilder b) =>
      b..G__typename = 'MeasureModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String? get effectiveDate;
  @override
  BuiltList<GextractMesureData_measures_comments>? get comments;
  @override
  BuiltList<GextractMesureData_measures_metrics>? get metrics;
  @override
  GextractMesureData_measures_author? get author;
  @override
  String get formattedMetricValue;
  @override
  String? get idDocument;
  @override
  String? get nameDocument;
  @override
  GextractMesureData_measures_permissions get permissions;
  @override
  String? get growthMetricsIntervalText;
  static Serializer<GextractMesureData_measures> get serializer =>
      _$gextractMesureDataMeasuresSerializer;

  @override
  Map<String, dynamic> toJson() => (_i4.serializers.serializeWith(
        GextractMesureData_measures.serializer,
        this,
      ) as Map<String, dynamic>);

  static GextractMesureData_measures? fromJson(Map<String, dynamic> json) =>
      _i4.serializers.deserializeWith(
        GextractMesureData_measures.serializer,
        json,
      );
}

abstract class GextractMesureData_measures_comments
    implements
        Built<GextractMesureData_measures_comments,
            GextractMesureData_measures_commentsBuilder>,
        GextractMesure_measures_comments,
        _i1.GmesureFields_comments {
  GextractMesureData_measures_comments._();

  factory GextractMesureData_measures_comments(
      [void Function(GextractMesureData_measures_commentsBuilder b)
          updates]) = _$GextractMesureData_measures_comments;

  static void _initializeBuilder(
          GextractMesureData_measures_commentsBuilder b) =>
      b..G__typename = 'CommentModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get code;
  @override
  String get value;
  @override
  String? get extra;
  static Serializer<GextractMesureData_measures_comments> get serializer =>
      _$gextractMesureDataMeasuresCommentsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i4.serializers.serializeWith(
        GextractMesureData_measures_comments.serializer,
        this,
      ) as Map<String, dynamic>);

  static GextractMesureData_measures_comments? fromJson(
          Map<String, dynamic> json) =>
      _i4.serializers.deserializeWith(
        GextractMesureData_measures_comments.serializer,
        json,
      );
}

abstract class GextractMesureData_measures_metrics
    implements
        Built<GextractMesureData_measures_metrics,
            GextractMesureData_measures_metricsBuilder>,
        GextractMesure_measures_metrics,
        _i1.GmesureFields_metrics {
  GextractMesureData_measures_metrics._();

  factory GextractMesureData_measures_metrics(
      [void Function(GextractMesureData_measures_metricsBuilder b)
          updates]) = _$GextractMesureData_measures_metrics;

  static void _initializeBuilder(
          GextractMesureData_measures_metricsBuilder b) =>
      b..G__typename = 'MetricModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  _i2.GMeasureCode? get code;
  @override
  double get value;
  @override
  String get unit;
  static Serializer<GextractMesureData_measures_metrics> get serializer =>
      _$gextractMesureDataMeasuresMetricsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i4.serializers.serializeWith(
        GextractMesureData_measures_metrics.serializer,
        this,
      ) as Map<String, dynamic>);

  static GextractMesureData_measures_metrics? fromJson(
          Map<String, dynamic> json) =>
      _i4.serializers.deserializeWith(
        GextractMesureData_measures_metrics.serializer,
        json,
      );
}

abstract class GextractMesureData_measures_author
    implements
        Built<GextractMesureData_measures_author,
            GextractMesureData_measures_authorBuilder>,
        GextractMesure_measures_author,
        _i1.GmesureFields_author {
  GextractMesureData_measures_author._();

  factory GextractMesureData_measures_author(
      [void Function(GextractMesureData_measures_authorBuilder b)
          updates]) = _$GextractMesureData_measures_author;

  static void _initializeBuilder(GextractMesureData_measures_authorBuilder b) =>
      b..G__typename = 'AuthorModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get firstName;
  @override
  String? get lastName;
  static Serializer<GextractMesureData_measures_author> get serializer =>
      _$gextractMesureDataMeasuresAuthorSerializer;

  @override
  Map<String, dynamic> toJson() => (_i4.serializers.serializeWith(
        GextractMesureData_measures_author.serializer,
        this,
      ) as Map<String, dynamic>);

  static GextractMesureData_measures_author? fromJson(
          Map<String, dynamic> json) =>
      _i4.serializers.deserializeWith(
        GextractMesureData_measures_author.serializer,
        json,
      );
}

abstract class GextractMesureData_measures_permissions
    implements
        Built<GextractMesureData_measures_permissions,
            GextractMesureData_measures_permissionsBuilder>,
        GextractMesure_measures_permissions,
        _i1.GmesureFields_permissions {
  GextractMesureData_measures_permissions._();

  factory GextractMesureData_measures_permissions(
      [void Function(GextractMesureData_measures_permissionsBuilder b)
          updates]) = _$GextractMesureData_measures_permissions;

  static void _initializeBuilder(
          GextractMesureData_measures_permissionsBuilder b) =>
      b..G__typename = 'PermissionsModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  bool get delete;
  @override
  @BuiltValueField(wireName: 'update')
  bool get Gupdate;
  static Serializer<GextractMesureData_measures_permissions> get serializer =>
      _$gextractMesureDataMeasuresPermissionsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i4.serializers.serializeWith(
        GextractMesureData_measures_permissions.serializer,
        this,
      ) as Map<String, dynamic>);

  static GextractMesureData_measures_permissions? fromJson(
          Map<String, dynamic> json) =>
      _i4.serializers.deserializeWith(
        GextractMesureData_measures_permissions.serializer,
        json,
      );
}

abstract class GextractMesureData_metaData
    implements
        Built<GextractMesureData_metaData, GextractMesureData_metaDataBuilder>,
        GextractMesure_metaData,
        _i3.GmetadataFields {
  GextractMesureData_metaData._();

  factory GextractMesureData_metaData(
          [void Function(GextractMesureData_metaDataBuilder b) updates]) =
      _$GextractMesureData_metaData;

  static void _initializeBuilder(GextractMesureData_metaDataBuilder b) =>
      b..G__typename = 'MeasureMetaDataModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  BuiltList<GextractMesureData_metaData_metrics>? get metrics;
  @override
  BuiltList<GextractMesureData_metaData_comments>? get comments;
  static Serializer<GextractMesureData_metaData> get serializer =>
      _$gextractMesureDataMetaDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i4.serializers.serializeWith(
        GextractMesureData_metaData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GextractMesureData_metaData? fromJson(Map<String, dynamic> json) =>
      _i4.serializers.deserializeWith(
        GextractMesureData_metaData.serializer,
        json,
      );
}

abstract class GextractMesureData_metaData_metrics
    implements
        Built<GextractMesureData_metaData_metrics,
            GextractMesureData_metaData_metricsBuilder>,
        GextractMesure_metaData_metrics,
        _i3.GmetadataFields_metrics {
  GextractMesureData_metaData_metrics._();

  factory GextractMesureData_metaData_metrics(
      [void Function(GextractMesureData_metaData_metricsBuilder b)
          updates]) = _$GextractMesureData_metaData_metrics;

  static void _initializeBuilder(
          GextractMesureData_metaData_metricsBuilder b) =>
      b..G__typename = 'MetricMetaDataModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  _i2.GMeasureCode get code;
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
  BuiltList<GextractMesureData_metaData_metrics_constraints> get constraints;
  static Serializer<GextractMesureData_metaData_metrics> get serializer =>
      _$gextractMesureDataMetaDataMetricsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i4.serializers.serializeWith(
        GextractMesureData_metaData_metrics.serializer,
        this,
      ) as Map<String, dynamic>);

  static GextractMesureData_metaData_metrics? fromJson(
          Map<String, dynamic> json) =>
      _i4.serializers.deserializeWith(
        GextractMesureData_metaData_metrics.serializer,
        json,
      );
}

abstract class GextractMesureData_metaData_metrics_constraints
    implements
        Built<GextractMesureData_metaData_metrics_constraints,
            GextractMesureData_metaData_metrics_constraintsBuilder>,
        GextractMesure_metaData_metrics_constraints,
        _i3.GmetadataFields_metrics_constraints {
  GextractMesureData_metaData_metrics_constraints._();

  factory GextractMesureData_metaData_metrics_constraints(
      [void Function(GextractMesureData_metaData_metrics_constraintsBuilder b)
          updates]) = _$GextractMesureData_metaData_metrics_constraints;

  static void _initializeBuilder(
          GextractMesureData_metaData_metrics_constraintsBuilder b) =>
      b..G__typename = 'ConstraintMetaDataModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get regexp;
  @override
  String get message;
  @override
  GextractMesureData_metaData_metrics_constraints_range? get range;
  static Serializer<GextractMesureData_metaData_metrics_constraints>
      get serializer =>
          _$gextractMesureDataMetaDataMetricsConstraintsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i4.serializers.serializeWith(
        GextractMesureData_metaData_metrics_constraints.serializer,
        this,
      ) as Map<String, dynamic>);

  static GextractMesureData_metaData_metrics_constraints? fromJson(
          Map<String, dynamic> json) =>
      _i4.serializers.deserializeWith(
        GextractMesureData_metaData_metrics_constraints.serializer,
        json,
      );
}

abstract class GextractMesureData_metaData_metrics_constraints_range
    implements
        Built<GextractMesureData_metaData_metrics_constraints_range,
            GextractMesureData_metaData_metrics_constraints_rangeBuilder>,
        GextractMesure_metaData_metrics_constraints_range,
        _i3.GmetadataFields_metrics_constraints_range {
  GextractMesureData_metaData_metrics_constraints_range._();

  factory GextractMesureData_metaData_metrics_constraints_range(
      [void Function(
              GextractMesureData_metaData_metrics_constraints_rangeBuilder b)
          updates]) = _$GextractMesureData_metaData_metrics_constraints_range;

  static void _initializeBuilder(
          GextractMesureData_metaData_metrics_constraints_rangeBuilder b) =>
      b..G__typename = 'RangeModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  double? get min;
  @override
  double? get max;
  static Serializer<GextractMesureData_metaData_metrics_constraints_range>
      get serializer =>
          _$gextractMesureDataMetaDataMetricsConstraintsRangeSerializer;

  @override
  Map<String, dynamic> toJson() => (_i4.serializers.serializeWith(
        GextractMesureData_metaData_metrics_constraints_range.serializer,
        this,
      ) as Map<String, dynamic>);

  static GextractMesureData_metaData_metrics_constraints_range? fromJson(
          Map<String, dynamic> json) =>
      _i4.serializers.deserializeWith(
        GextractMesureData_metaData_metrics_constraints_range.serializer,
        json,
      );
}

abstract class GextractMesureData_metaData_comments
    implements
        Built<GextractMesureData_metaData_comments,
            GextractMesureData_metaData_commentsBuilder>,
        GextractMesure_metaData_comments,
        _i3.GmetadataFields_comments {
  GextractMesureData_metaData_comments._();

  factory GextractMesureData_metaData_comments(
      [void Function(GextractMesureData_metaData_commentsBuilder b)
          updates]) = _$GextractMesureData_metaData_comments;

  static void _initializeBuilder(
          GextractMesureData_metaData_commentsBuilder b) =>
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
  BuiltList<GextractMesureData_metaData_comments_options>? get options;
  static Serializer<GextractMesureData_metaData_comments> get serializer =>
      _$gextractMesureDataMetaDataCommentsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i4.serializers.serializeWith(
        GextractMesureData_metaData_comments.serializer,
        this,
      ) as Map<String, dynamic>);

  static GextractMesureData_metaData_comments? fromJson(
          Map<String, dynamic> json) =>
      _i4.serializers.deserializeWith(
        GextractMesureData_metaData_comments.serializer,
        json,
      );
}

abstract class GextractMesureData_metaData_comments_options
    implements
        Built<GextractMesureData_metaData_comments_options,
            GextractMesureData_metaData_comments_optionsBuilder>,
        GextractMesure_metaData_comments_options,
        _i3.GmetadataFields_comments_options {
  GextractMesureData_metaData_comments_options._();

  factory GextractMesureData_metaData_comments_options(
      [void Function(GextractMesureData_metaData_comments_optionsBuilder b)
          updates]) = _$GextractMesureData_metaData_comments_options;

  static void _initializeBuilder(
          GextractMesureData_metaData_comments_optionsBuilder b) =>
      b..G__typename = 'OptionMetaDataModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get code;
  @override
  String get label;
  @override
  GextractMesureData_metaData_comments_options_extraValueMetadata?
      get extraValueMetadata;
  static Serializer<GextractMesureData_metaData_comments_options>
      get serializer => _$gextractMesureDataMetaDataCommentsOptionsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i4.serializers.serializeWith(
        GextractMesureData_metaData_comments_options.serializer,
        this,
      ) as Map<String, dynamic>);

  static GextractMesureData_metaData_comments_options? fromJson(
          Map<String, dynamic> json) =>
      _i4.serializers.deserializeWith(
        GextractMesureData_metaData_comments_options.serializer,
        json,
      );
}

abstract class GextractMesureData_metaData_comments_options_extraValueMetadata
    implements
        Built<GextractMesureData_metaData_comments_options_extraValueMetadata,
            GextractMesureData_metaData_comments_options_extraValueMetadataBuilder>,
        GextractMesure_metaData_comments_options_extraValueMetadata,
        _i3.GmetadataFields_comments_options_extraValueMetadata {
  GextractMesureData_metaData_comments_options_extraValueMetadata._();

  factory GextractMesureData_metaData_comments_options_extraValueMetadata(
          [void Function(
                  GextractMesureData_metaData_comments_options_extraValueMetadataBuilder
                      b)
              updates]) =
      _$GextractMesureData_metaData_comments_options_extraValueMetadata;

  static void _initializeBuilder(
          GextractMesureData_metaData_comments_options_extraValueMetadataBuilder
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
          GextractMesureData_metaData_comments_options_extraValueMetadata_constraints>
      get constraints;
  static Serializer<
          GextractMesureData_metaData_comments_options_extraValueMetadata>
      get serializer =>
          _$gextractMesureDataMetaDataCommentsOptionsExtraValueMetadataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i4.serializers.serializeWith(
        GextractMesureData_metaData_comments_options_extraValueMetadata
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GextractMesureData_metaData_comments_options_extraValueMetadata?
      fromJson(Map<String, dynamic> json) => _i4.serializers.deserializeWith(
            GextractMesureData_metaData_comments_options_extraValueMetadata
                .serializer,
            json,
          );
}

abstract class GextractMesureData_metaData_comments_options_extraValueMetadata_constraints
    implements
        Built<
            GextractMesureData_metaData_comments_options_extraValueMetadata_constraints,
            GextractMesureData_metaData_comments_options_extraValueMetadata_constraintsBuilder>,
        GextractMesure_metaData_comments_options_extraValueMetadata_constraints,
        _i3.GmetadataFields_comments_options_extraValueMetadata_constraints {
  GextractMesureData_metaData_comments_options_extraValueMetadata_constraints._();

  factory GextractMesureData_metaData_comments_options_extraValueMetadata_constraints(
          [void Function(
                  GextractMesureData_metaData_comments_options_extraValueMetadata_constraintsBuilder
                      b)
              updates]) =
      _$GextractMesureData_metaData_comments_options_extraValueMetadata_constraints;

  static void _initializeBuilder(
          GextractMesureData_metaData_comments_options_extraValueMetadata_constraintsBuilder
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
  GextractMesureData_metaData_comments_options_extraValueMetadata_constraints_range?
      get range;
  static Serializer<
          GextractMesureData_metaData_comments_options_extraValueMetadata_constraints>
      get serializer =>
          _$gextractMesureDataMetaDataCommentsOptionsExtraValueMetadataConstraintsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i4.serializers.serializeWith(
        GextractMesureData_metaData_comments_options_extraValueMetadata_constraints
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GextractMesureData_metaData_comments_options_extraValueMetadata_constraints?
      fromJson(Map<String, dynamic> json) => _i4.serializers.deserializeWith(
            GextractMesureData_metaData_comments_options_extraValueMetadata_constraints
                .serializer,
            json,
          );
}

abstract class GextractMesureData_metaData_comments_options_extraValueMetadata_constraints_range
    implements
        Built<
            GextractMesureData_metaData_comments_options_extraValueMetadata_constraints_range,
            GextractMesureData_metaData_comments_options_extraValueMetadata_constraints_rangeBuilder>,
        GextractMesure_metaData_comments_options_extraValueMetadata_constraints_range,
        _i3
        .GmetadataFields_comments_options_extraValueMetadata_constraints_range {
  GextractMesureData_metaData_comments_options_extraValueMetadata_constraints_range._();

  factory GextractMesureData_metaData_comments_options_extraValueMetadata_constraints_range(
          [void Function(
                  GextractMesureData_metaData_comments_options_extraValueMetadata_constraints_rangeBuilder
                      b)
              updates]) =
      _$GextractMesureData_metaData_comments_options_extraValueMetadata_constraints_range;

  static void _initializeBuilder(
          GextractMesureData_metaData_comments_options_extraValueMetadata_constraints_rangeBuilder
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
          GextractMesureData_metaData_comments_options_extraValueMetadata_constraints_range>
      get serializer =>
          _$gextractMesureDataMetaDataCommentsOptionsExtraValueMetadataConstraintsRangeSerializer;

  @override
  Map<String, dynamic> toJson() => (_i4.serializers.serializeWith(
        GextractMesureData_metaData_comments_options_extraValueMetadata_constraints_range
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static GextractMesureData_metaData_comments_options_extraValueMetadata_constraints_range?
      fromJson(Map<String, dynamic> json) => _i4.serializers.deserializeWith(
            GextractMesureData_metaData_comments_options_extraValueMetadata_constraints_range
                .serializer,
            json,
          );
}
