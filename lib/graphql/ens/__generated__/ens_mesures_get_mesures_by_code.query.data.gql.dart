// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_mesure_extract_mesure.fragment.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_mesures_mesure_fields.fragment.data.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_mesures_metadata_fields.fragment.data.gql.dart'
    as _i5;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i4;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_mesures_get_mesures_by_code.query.data.gql.g.dart';

abstract class Gget_mesures_by_codeData
    implements
        Built<Gget_mesures_by_codeData, Gget_mesures_by_codeDataBuilder> {
  Gget_mesures_by_codeData._();

  factory Gget_mesures_by_codeData(
          [void Function(Gget_mesures_by_codeDataBuilder b) updates]) =
      _$Gget_mesures_by_codeData;

  static void _initializeBuilder(Gget_mesures_by_codeDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gget_mesures_by_codeData_measuresByCode get measuresByCode;
  static Serializer<Gget_mesures_by_codeData> get serializer =>
      _$ggetMesuresByCodeDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_mesures_by_codeData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_mesures_by_codeData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_mesures_by_codeData.serializer,
        json,
      );
}

abstract class Gget_mesures_by_codeData_measuresByCode
    implements
        Built<Gget_mesures_by_codeData_measuresByCode,
            Gget_mesures_by_codeData_measuresByCodeBuilder>,
        _i2.GextractMesure {
  Gget_mesures_by_codeData_measuresByCode._();

  factory Gget_mesures_by_codeData_measuresByCode(
      [void Function(Gget_mesures_by_codeData_measuresByCodeBuilder b)
          updates]) = _$Gget_mesures_by_codeData_measuresByCode;

  static void _initializeBuilder(
          Gget_mesures_by_codeData_measuresByCodeBuilder b) =>
      b..G__typename = 'MeasuresHistoryModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get code;
  @override
  BuiltList<Gget_mesures_by_codeData_measuresByCode_measures> get measures;
  @override
  Gget_mesures_by_codeData_measuresByCode_metaData get metaData;
  static Serializer<Gget_mesures_by_codeData_measuresByCode> get serializer =>
      _$ggetMesuresByCodeDataMeasuresByCodeSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_mesures_by_codeData_measuresByCode.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_mesures_by_codeData_measuresByCode? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_mesures_by_codeData_measuresByCode.serializer,
        json,
      );
}

abstract class Gget_mesures_by_codeData_measuresByCode_measures
    implements
        Built<Gget_mesures_by_codeData_measuresByCode_measures,
            Gget_mesures_by_codeData_measuresByCode_measuresBuilder>,
        _i2.GextractMesure_measures,
        _i3.GmesureFields {
  Gget_mesures_by_codeData_measuresByCode_measures._();

  factory Gget_mesures_by_codeData_measuresByCode_measures(
      [void Function(Gget_mesures_by_codeData_measuresByCode_measuresBuilder b)
          updates]) = _$Gget_mesures_by_codeData_measuresByCode_measures;

  static void _initializeBuilder(
          Gget_mesures_by_codeData_measuresByCode_measuresBuilder b) =>
      b..G__typename = 'MeasureModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String? get effectiveDate;
  @override
  BuiltList<Gget_mesures_by_codeData_measuresByCode_measures_comments>?
      get comments;
  @override
  BuiltList<Gget_mesures_by_codeData_measuresByCode_measures_metrics>?
      get metrics;
  @override
  Gget_mesures_by_codeData_measuresByCode_measures_author? get author;
  @override
  String get formattedMetricValue;
  @override
  String? get idDocument;
  @override
  String? get nameDocument;
  @override
  Gget_mesures_by_codeData_measuresByCode_measures_permissions get permissions;
  @override
  String? get growthMetricsIntervalText;
  static Serializer<Gget_mesures_by_codeData_measuresByCode_measures>
      get serializer => _$ggetMesuresByCodeDataMeasuresByCodeMeasuresSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_mesures_by_codeData_measuresByCode_measures.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_mesures_by_codeData_measuresByCode_measures? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_mesures_by_codeData_measuresByCode_measures.serializer,
        json,
      );
}

abstract class Gget_mesures_by_codeData_measuresByCode_measures_comments
    implements
        Built<Gget_mesures_by_codeData_measuresByCode_measures_comments,
            Gget_mesures_by_codeData_measuresByCode_measures_commentsBuilder>,
        _i2.GextractMesure_measures_comments,
        _i3.GmesureFields_comments {
  Gget_mesures_by_codeData_measuresByCode_measures_comments._();

  factory Gget_mesures_by_codeData_measuresByCode_measures_comments(
      [void Function(
              Gget_mesures_by_codeData_measuresByCode_measures_commentsBuilder
                  b)
          updates]) = _$Gget_mesures_by_codeData_measuresByCode_measures_comments;

  static void _initializeBuilder(
          Gget_mesures_by_codeData_measuresByCode_measures_commentsBuilder b) =>
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
  static Serializer<Gget_mesures_by_codeData_measuresByCode_measures_comments>
      get serializer =>
          _$ggetMesuresByCodeDataMeasuresByCodeMeasuresCommentsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_mesures_by_codeData_measuresByCode_measures_comments.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_mesures_by_codeData_measuresByCode_measures_comments? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_mesures_by_codeData_measuresByCode_measures_comments.serializer,
        json,
      );
}

abstract class Gget_mesures_by_codeData_measuresByCode_measures_metrics
    implements
        Built<Gget_mesures_by_codeData_measuresByCode_measures_metrics,
            Gget_mesures_by_codeData_measuresByCode_measures_metricsBuilder>,
        _i2.GextractMesure_measures_metrics,
        _i3.GmesureFields_metrics {
  Gget_mesures_by_codeData_measuresByCode_measures_metrics._();

  factory Gget_mesures_by_codeData_measuresByCode_measures_metrics(
      [void Function(
              Gget_mesures_by_codeData_measuresByCode_measures_metricsBuilder b)
          updates]) = _$Gget_mesures_by_codeData_measuresByCode_measures_metrics;

  static void _initializeBuilder(
          Gget_mesures_by_codeData_measuresByCode_measures_metricsBuilder b) =>
      b..G__typename = 'MetricModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  _i4.GMeasureCode? get code;
  @override
  double get value;
  @override
  String get unit;
  static Serializer<Gget_mesures_by_codeData_measuresByCode_measures_metrics>
      get serializer =>
          _$ggetMesuresByCodeDataMeasuresByCodeMeasuresMetricsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_mesures_by_codeData_measuresByCode_measures_metrics.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_mesures_by_codeData_measuresByCode_measures_metrics? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_mesures_by_codeData_measuresByCode_measures_metrics.serializer,
        json,
      );
}

abstract class Gget_mesures_by_codeData_measuresByCode_measures_author
    implements
        Built<Gget_mesures_by_codeData_measuresByCode_measures_author,
            Gget_mesures_by_codeData_measuresByCode_measures_authorBuilder>,
        _i2.GextractMesure_measures_author,
        _i3.GmesureFields_author {
  Gget_mesures_by_codeData_measuresByCode_measures_author._();

  factory Gget_mesures_by_codeData_measuresByCode_measures_author(
      [void Function(
              Gget_mesures_by_codeData_measuresByCode_measures_authorBuilder b)
          updates]) = _$Gget_mesures_by_codeData_measuresByCode_measures_author;

  static void _initializeBuilder(
          Gget_mesures_by_codeData_measuresByCode_measures_authorBuilder b) =>
      b..G__typename = 'AuthorModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get firstName;
  @override
  String? get lastName;
  static Serializer<Gget_mesures_by_codeData_measuresByCode_measures_author>
      get serializer =>
          _$ggetMesuresByCodeDataMeasuresByCodeMeasuresAuthorSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_mesures_by_codeData_measuresByCode_measures_author.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_mesures_by_codeData_measuresByCode_measures_author? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_mesures_by_codeData_measuresByCode_measures_author.serializer,
        json,
      );
}

abstract class Gget_mesures_by_codeData_measuresByCode_measures_permissions
    implements
        Built<Gget_mesures_by_codeData_measuresByCode_measures_permissions,
            Gget_mesures_by_codeData_measuresByCode_measures_permissionsBuilder>,
        _i2.GextractMesure_measures_permissions,
        _i3.GmesureFields_permissions {
  Gget_mesures_by_codeData_measuresByCode_measures_permissions._();

  factory Gget_mesures_by_codeData_measuresByCode_measures_permissions(
          [void Function(
                  Gget_mesures_by_codeData_measuresByCode_measures_permissionsBuilder
                      b)
              updates]) =
      _$Gget_mesures_by_codeData_measuresByCode_measures_permissions;

  static void _initializeBuilder(
          Gget_mesures_by_codeData_measuresByCode_measures_permissionsBuilder
              b) =>
      b..G__typename = 'PermissionsModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  bool get delete;
  @override
  @BuiltValueField(wireName: 'update')
  bool get Gupdate;
  static Serializer<
          Gget_mesures_by_codeData_measuresByCode_measures_permissions>
      get serializer =>
          _$ggetMesuresByCodeDataMeasuresByCodeMeasuresPermissionsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_mesures_by_codeData_measuresByCode_measures_permissions.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_mesures_by_codeData_measuresByCode_measures_permissions? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_mesures_by_codeData_measuresByCode_measures_permissions.serializer,
        json,
      );
}

abstract class Gget_mesures_by_codeData_measuresByCode_metaData
    implements
        Built<Gget_mesures_by_codeData_measuresByCode_metaData,
            Gget_mesures_by_codeData_measuresByCode_metaDataBuilder>,
        _i2.GextractMesure_metaData,
        _i5.GmetadataFields {
  Gget_mesures_by_codeData_measuresByCode_metaData._();

  factory Gget_mesures_by_codeData_measuresByCode_metaData(
      [void Function(Gget_mesures_by_codeData_measuresByCode_metaDataBuilder b)
          updates]) = _$Gget_mesures_by_codeData_measuresByCode_metaData;

  static void _initializeBuilder(
          Gget_mesures_by_codeData_measuresByCode_metaDataBuilder b) =>
      b..G__typename = 'MeasureMetaDataModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  BuiltList<Gget_mesures_by_codeData_measuresByCode_metaData_metrics>?
      get metrics;
  @override
  BuiltList<Gget_mesures_by_codeData_measuresByCode_metaData_comments>?
      get comments;
  static Serializer<Gget_mesures_by_codeData_measuresByCode_metaData>
      get serializer => _$ggetMesuresByCodeDataMeasuresByCodeMetaDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_mesures_by_codeData_measuresByCode_metaData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_mesures_by_codeData_measuresByCode_metaData? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_mesures_by_codeData_measuresByCode_metaData.serializer,
        json,
      );
}

abstract class Gget_mesures_by_codeData_measuresByCode_metaData_metrics
    implements
        Built<Gget_mesures_by_codeData_measuresByCode_metaData_metrics,
            Gget_mesures_by_codeData_measuresByCode_metaData_metricsBuilder>,
        _i2.GextractMesure_metaData_metrics,
        _i5.GmetadataFields_metrics {
  Gget_mesures_by_codeData_measuresByCode_metaData_metrics._();

  factory Gget_mesures_by_codeData_measuresByCode_metaData_metrics(
      [void Function(
              Gget_mesures_by_codeData_measuresByCode_metaData_metricsBuilder b)
          updates]) = _$Gget_mesures_by_codeData_measuresByCode_metaData_metrics;

  static void _initializeBuilder(
          Gget_mesures_by_codeData_measuresByCode_metaData_metricsBuilder b) =>
      b..G__typename = 'MetricMetaDataModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  _i4.GMeasureCode get code;
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
  BuiltList<
          Gget_mesures_by_codeData_measuresByCode_metaData_metrics_constraints>
      get constraints;
  static Serializer<Gget_mesures_by_codeData_measuresByCode_metaData_metrics>
      get serializer =>
          _$ggetMesuresByCodeDataMeasuresByCodeMetaDataMetricsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_mesures_by_codeData_measuresByCode_metaData_metrics.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_mesures_by_codeData_measuresByCode_metaData_metrics? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_mesures_by_codeData_measuresByCode_metaData_metrics.serializer,
        json,
      );
}

abstract class Gget_mesures_by_codeData_measuresByCode_metaData_metrics_constraints
    implements
        Built<
            Gget_mesures_by_codeData_measuresByCode_metaData_metrics_constraints,
            Gget_mesures_by_codeData_measuresByCode_metaData_metrics_constraintsBuilder>,
        _i2.GextractMesure_metaData_metrics_constraints,
        _i5.GmetadataFields_metrics_constraints {
  Gget_mesures_by_codeData_measuresByCode_metaData_metrics_constraints._();

  factory Gget_mesures_by_codeData_measuresByCode_metaData_metrics_constraints(
          [void Function(
                  Gget_mesures_by_codeData_measuresByCode_metaData_metrics_constraintsBuilder
                      b)
              updates]) =
      _$Gget_mesures_by_codeData_measuresByCode_metaData_metrics_constraints;

  static void _initializeBuilder(
          Gget_mesures_by_codeData_measuresByCode_metaData_metrics_constraintsBuilder
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
  Gget_mesures_by_codeData_measuresByCode_metaData_metrics_constraints_range?
      get range;
  static Serializer<
          Gget_mesures_by_codeData_measuresByCode_metaData_metrics_constraints>
      get serializer =>
          _$ggetMesuresByCodeDataMeasuresByCodeMetaDataMetricsConstraintsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_mesures_by_codeData_measuresByCode_metaData_metrics_constraints
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_mesures_by_codeData_measuresByCode_metaData_metrics_constraints?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_mesures_by_codeData_measuresByCode_metaData_metrics_constraints
                .serializer,
            json,
          );
}

abstract class Gget_mesures_by_codeData_measuresByCode_metaData_metrics_constraints_range
    implements
        Built<
            Gget_mesures_by_codeData_measuresByCode_metaData_metrics_constraints_range,
            Gget_mesures_by_codeData_measuresByCode_metaData_metrics_constraints_rangeBuilder>,
        _i2.GextractMesure_metaData_metrics_constraints_range,
        _i5.GmetadataFields_metrics_constraints_range {
  Gget_mesures_by_codeData_measuresByCode_metaData_metrics_constraints_range._();

  factory Gget_mesures_by_codeData_measuresByCode_metaData_metrics_constraints_range(
          [void Function(
                  Gget_mesures_by_codeData_measuresByCode_metaData_metrics_constraints_rangeBuilder
                      b)
              updates]) =
      _$Gget_mesures_by_codeData_measuresByCode_metaData_metrics_constraints_range;

  static void _initializeBuilder(
          Gget_mesures_by_codeData_measuresByCode_metaData_metrics_constraints_rangeBuilder
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
          Gget_mesures_by_codeData_measuresByCode_metaData_metrics_constraints_range>
      get serializer =>
          _$ggetMesuresByCodeDataMeasuresByCodeMetaDataMetricsConstraintsRangeSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_mesures_by_codeData_measuresByCode_metaData_metrics_constraints_range
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_mesures_by_codeData_measuresByCode_metaData_metrics_constraints_range?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_mesures_by_codeData_measuresByCode_metaData_metrics_constraints_range
                .serializer,
            json,
          );
}

abstract class Gget_mesures_by_codeData_measuresByCode_metaData_comments
    implements
        Built<Gget_mesures_by_codeData_measuresByCode_metaData_comments,
            Gget_mesures_by_codeData_measuresByCode_metaData_commentsBuilder>,
        _i2.GextractMesure_metaData_comments,
        _i5.GmetadataFields_comments {
  Gget_mesures_by_codeData_measuresByCode_metaData_comments._();

  factory Gget_mesures_by_codeData_measuresByCode_metaData_comments(
      [void Function(
              Gget_mesures_by_codeData_measuresByCode_metaData_commentsBuilder
                  b)
          updates]) = _$Gget_mesures_by_codeData_measuresByCode_metaData_comments;

  static void _initializeBuilder(
          Gget_mesures_by_codeData_measuresByCode_metaData_commentsBuilder b) =>
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
  BuiltList<Gget_mesures_by_codeData_measuresByCode_metaData_comments_options>?
      get options;
  static Serializer<Gget_mesures_by_codeData_measuresByCode_metaData_comments>
      get serializer =>
          _$ggetMesuresByCodeDataMeasuresByCodeMetaDataCommentsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_mesures_by_codeData_measuresByCode_metaData_comments.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_mesures_by_codeData_measuresByCode_metaData_comments? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_mesures_by_codeData_measuresByCode_metaData_comments.serializer,
        json,
      );
}

abstract class Gget_mesures_by_codeData_measuresByCode_metaData_comments_options
    implements
        Built<Gget_mesures_by_codeData_measuresByCode_metaData_comments_options,
            Gget_mesures_by_codeData_measuresByCode_metaData_comments_optionsBuilder>,
        _i2.GextractMesure_metaData_comments_options,
        _i5.GmetadataFields_comments_options {
  Gget_mesures_by_codeData_measuresByCode_metaData_comments_options._();

  factory Gget_mesures_by_codeData_measuresByCode_metaData_comments_options(
          [void Function(
                  Gget_mesures_by_codeData_measuresByCode_metaData_comments_optionsBuilder
                      b)
              updates]) =
      _$Gget_mesures_by_codeData_measuresByCode_metaData_comments_options;

  static void _initializeBuilder(
          Gget_mesures_by_codeData_measuresByCode_metaData_comments_optionsBuilder
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
  Gget_mesures_by_codeData_measuresByCode_metaData_comments_options_extraValueMetadata?
      get extraValueMetadata;
  static Serializer<
          Gget_mesures_by_codeData_measuresByCode_metaData_comments_options>
      get serializer =>
          _$ggetMesuresByCodeDataMeasuresByCodeMetaDataCommentsOptionsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_mesures_by_codeData_measuresByCode_metaData_comments_options
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_mesures_by_codeData_measuresByCode_metaData_comments_options?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_mesures_by_codeData_measuresByCode_metaData_comments_options
                .serializer,
            json,
          );
}

abstract class Gget_mesures_by_codeData_measuresByCode_metaData_comments_options_extraValueMetadata
    implements
        Built<
            Gget_mesures_by_codeData_measuresByCode_metaData_comments_options_extraValueMetadata,
            Gget_mesures_by_codeData_measuresByCode_metaData_comments_options_extraValueMetadataBuilder>,
        _i2.GextractMesure_metaData_comments_options_extraValueMetadata,
        _i5.GmetadataFields_comments_options_extraValueMetadata {
  Gget_mesures_by_codeData_measuresByCode_metaData_comments_options_extraValueMetadata._();

  factory Gget_mesures_by_codeData_measuresByCode_metaData_comments_options_extraValueMetadata(
          [void Function(
                  Gget_mesures_by_codeData_measuresByCode_metaData_comments_options_extraValueMetadataBuilder
                      b)
              updates]) =
      _$Gget_mesures_by_codeData_measuresByCode_metaData_comments_options_extraValueMetadata;

  static void _initializeBuilder(
          Gget_mesures_by_codeData_measuresByCode_metaData_comments_options_extraValueMetadataBuilder
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
          Gget_mesures_by_codeData_measuresByCode_metaData_comments_options_extraValueMetadata_constraints>
      get constraints;
  static Serializer<
          Gget_mesures_by_codeData_measuresByCode_metaData_comments_options_extraValueMetadata>
      get serializer =>
          _$ggetMesuresByCodeDataMeasuresByCodeMetaDataCommentsOptionsExtraValueMetadataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_mesures_by_codeData_measuresByCode_metaData_comments_options_extraValueMetadata
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_mesures_by_codeData_measuresByCode_metaData_comments_options_extraValueMetadata?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_mesures_by_codeData_measuresByCode_metaData_comments_options_extraValueMetadata
                .serializer,
            json,
          );
}

abstract class Gget_mesures_by_codeData_measuresByCode_metaData_comments_options_extraValueMetadata_constraints
    implements
        Built<
            Gget_mesures_by_codeData_measuresByCode_metaData_comments_options_extraValueMetadata_constraints,
            Gget_mesures_by_codeData_measuresByCode_metaData_comments_options_extraValueMetadata_constraintsBuilder>,
        _i2
        .GextractMesure_metaData_comments_options_extraValueMetadata_constraints,
        _i5.GmetadataFields_comments_options_extraValueMetadata_constraints {
  Gget_mesures_by_codeData_measuresByCode_metaData_comments_options_extraValueMetadata_constraints._();

  factory Gget_mesures_by_codeData_measuresByCode_metaData_comments_options_extraValueMetadata_constraints(
          [void Function(
                  Gget_mesures_by_codeData_measuresByCode_metaData_comments_options_extraValueMetadata_constraintsBuilder
                      b)
              updates]) =
      _$Gget_mesures_by_codeData_measuresByCode_metaData_comments_options_extraValueMetadata_constraints;

  static void _initializeBuilder(
          Gget_mesures_by_codeData_measuresByCode_metaData_comments_options_extraValueMetadata_constraintsBuilder
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
  Gget_mesures_by_codeData_measuresByCode_metaData_comments_options_extraValueMetadata_constraints_range?
      get range;
  static Serializer<
          Gget_mesures_by_codeData_measuresByCode_metaData_comments_options_extraValueMetadata_constraints>
      get serializer =>
          _$ggetMesuresByCodeDataMeasuresByCodeMetaDataCommentsOptionsExtraValueMetadataConstraintsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_mesures_by_codeData_measuresByCode_metaData_comments_options_extraValueMetadata_constraints
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_mesures_by_codeData_measuresByCode_metaData_comments_options_extraValueMetadata_constraints?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_mesures_by_codeData_measuresByCode_metaData_comments_options_extraValueMetadata_constraints
                .serializer,
            json,
          );
}

abstract class Gget_mesures_by_codeData_measuresByCode_metaData_comments_options_extraValueMetadata_constraints_range
    implements
        Built<
            Gget_mesures_by_codeData_measuresByCode_metaData_comments_options_extraValueMetadata_constraints_range,
            Gget_mesures_by_codeData_measuresByCode_metaData_comments_options_extraValueMetadata_constraints_rangeBuilder>,
        _i2
        .GextractMesure_metaData_comments_options_extraValueMetadata_constraints_range,
        _i5
        .GmetadataFields_comments_options_extraValueMetadata_constraints_range {
  Gget_mesures_by_codeData_measuresByCode_metaData_comments_options_extraValueMetadata_constraints_range._();

  factory Gget_mesures_by_codeData_measuresByCode_metaData_comments_options_extraValueMetadata_constraints_range(
          [void Function(
                  Gget_mesures_by_codeData_measuresByCode_metaData_comments_options_extraValueMetadata_constraints_rangeBuilder
                      b)
              updates]) =
      _$Gget_mesures_by_codeData_measuresByCode_metaData_comments_options_extraValueMetadata_constraints_range;

  static void _initializeBuilder(
          Gget_mesures_by_codeData_measuresByCode_metaData_comments_options_extraValueMetadata_constraints_rangeBuilder
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
          Gget_mesures_by_codeData_measuresByCode_metaData_comments_options_extraValueMetadata_constraints_range>
      get serializer =>
          _$ggetMesuresByCodeDataMeasuresByCodeMetaDataCommentsOptionsExtraValueMetadataConstraintsRangeSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_mesures_by_codeData_measuresByCode_metaData_comments_options_extraValueMetadata_constraints_range
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_mesures_by_codeData_measuresByCode_metaData_comments_options_extraValueMetadata_constraints_range?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_mesures_by_codeData_measuresByCode_metaData_comments_options_extraValueMetadata_constraints_range
                .serializer,
            json,
          );
}
