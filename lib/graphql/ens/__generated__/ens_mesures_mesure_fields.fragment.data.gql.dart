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

part 'ens_mesures_mesure_fields.fragment.data.gql.g.dart';

abstract class GmesureFields {
  String get G__typename;
  String get id;
  String? get effectiveDate;
  BuiltList<GmesureFields_comments>? get comments;
  BuiltList<GmesureFields_metrics>? get metrics;
  GmesureFields_author? get author;
  String get formattedMetricValue;
  String? get idDocument;
  String? get nameDocument;
  GmesureFields_permissions get permissions;
  String? get growthMetricsIntervalText;
  Map<String, dynamic> toJson();
}

abstract class GmesureFields_comments {
  String get G__typename;
  String get code;
  String get value;
  String? get extra;
  Map<String, dynamic> toJson();
}

abstract class GmesureFields_metrics {
  String get G__typename;
  _i1.GMeasureCode? get code;
  double get value;
  String get unit;
  Map<String, dynamic> toJson();
}

abstract class GmesureFields_author {
  String get G__typename;
  String? get firstName;
  String? get lastName;
  Map<String, dynamic> toJson();
}

abstract class GmesureFields_permissions {
  String get G__typename;
  bool get delete;
  bool get Gupdate;
  Map<String, dynamic> toJson();
}

abstract class GmesureFieldsData
    implements
        Built<GmesureFieldsData, GmesureFieldsDataBuilder>,
        GmesureFields {
  GmesureFieldsData._();

  factory GmesureFieldsData(
          [void Function(GmesureFieldsDataBuilder b) updates]) =
      _$GmesureFieldsData;

  static void _initializeBuilder(GmesureFieldsDataBuilder b) =>
      b..G__typename = 'MeasureModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String? get effectiveDate;
  @override
  BuiltList<GmesureFieldsData_comments>? get comments;
  @override
  BuiltList<GmesureFieldsData_metrics>? get metrics;
  @override
  GmesureFieldsData_author? get author;
  @override
  String get formattedMetricValue;
  @override
  String? get idDocument;
  @override
  String? get nameDocument;
  @override
  GmesureFieldsData_permissions get permissions;
  @override
  String? get growthMetricsIntervalText;
  static Serializer<GmesureFieldsData> get serializer =>
      _$gmesureFieldsDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GmesureFieldsData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GmesureFieldsData? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GmesureFieldsData.serializer,
        json,
      );
}

abstract class GmesureFieldsData_comments
    implements
        Built<GmesureFieldsData_comments, GmesureFieldsData_commentsBuilder>,
        GmesureFields_comments {
  GmesureFieldsData_comments._();

  factory GmesureFieldsData_comments(
          [void Function(GmesureFieldsData_commentsBuilder b) updates]) =
      _$GmesureFieldsData_comments;

  static void _initializeBuilder(GmesureFieldsData_commentsBuilder b) =>
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
  static Serializer<GmesureFieldsData_comments> get serializer =>
      _$gmesureFieldsDataCommentsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GmesureFieldsData_comments.serializer,
        this,
      ) as Map<String, dynamic>);

  static GmesureFieldsData_comments? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GmesureFieldsData_comments.serializer,
        json,
      );
}

abstract class GmesureFieldsData_metrics
    implements
        Built<GmesureFieldsData_metrics, GmesureFieldsData_metricsBuilder>,
        GmesureFields_metrics {
  GmesureFieldsData_metrics._();

  factory GmesureFieldsData_metrics(
          [void Function(GmesureFieldsData_metricsBuilder b) updates]) =
      _$GmesureFieldsData_metrics;

  static void _initializeBuilder(GmesureFieldsData_metricsBuilder b) =>
      b..G__typename = 'MetricModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  _i1.GMeasureCode? get code;
  @override
  double get value;
  @override
  String get unit;
  static Serializer<GmesureFieldsData_metrics> get serializer =>
      _$gmesureFieldsDataMetricsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GmesureFieldsData_metrics.serializer,
        this,
      ) as Map<String, dynamic>);

  static GmesureFieldsData_metrics? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GmesureFieldsData_metrics.serializer,
        json,
      );
}

abstract class GmesureFieldsData_author
    implements
        Built<GmesureFieldsData_author, GmesureFieldsData_authorBuilder>,
        GmesureFields_author {
  GmesureFieldsData_author._();

  factory GmesureFieldsData_author(
          [void Function(GmesureFieldsData_authorBuilder b) updates]) =
      _$GmesureFieldsData_author;

  static void _initializeBuilder(GmesureFieldsData_authorBuilder b) =>
      b..G__typename = 'AuthorModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get firstName;
  @override
  String? get lastName;
  static Serializer<GmesureFieldsData_author> get serializer =>
      _$gmesureFieldsDataAuthorSerializer;

  @override
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GmesureFieldsData_author.serializer,
        this,
      ) as Map<String, dynamic>);

  static GmesureFieldsData_author? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GmesureFieldsData_author.serializer,
        json,
      );
}

abstract class GmesureFieldsData_permissions
    implements
        Built<GmesureFieldsData_permissions,
            GmesureFieldsData_permissionsBuilder>,
        GmesureFields_permissions {
  GmesureFieldsData_permissions._();

  factory GmesureFieldsData_permissions(
          [void Function(GmesureFieldsData_permissionsBuilder b) updates]) =
      _$GmesureFieldsData_permissions;

  static void _initializeBuilder(GmesureFieldsData_permissionsBuilder b) =>
      b..G__typename = 'PermissionsModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  bool get delete;
  @override
  @BuiltValueField(wireName: 'update')
  bool get Gupdate;
  static Serializer<GmesureFieldsData_permissions> get serializer =>
      _$gmesureFieldsDataPermissionsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GmesureFieldsData_permissions.serializer,
        this,
      ) as Map<String, dynamic>);

  static GmesureFieldsData_permissions? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GmesureFieldsData_permissions.serializer,
        json,
      );
}
