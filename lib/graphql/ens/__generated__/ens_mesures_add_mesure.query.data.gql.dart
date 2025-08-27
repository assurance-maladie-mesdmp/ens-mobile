// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_mesures_mesure_fields.fragment.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_mesures_add_mesure.query.data.gql.g.dart';

abstract class Gadd_mesureData
    implements Built<Gadd_mesureData, Gadd_mesureDataBuilder> {
  Gadd_mesureData._();

  factory Gadd_mesureData([void Function(Gadd_mesureDataBuilder b) updates]) =
      _$Gadd_mesureData;

  static void _initializeBuilder(Gadd_mesureDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gadd_mesureData_addMeasure get addMeasure;
  static Serializer<Gadd_mesureData> get serializer =>
      _$gaddMesureDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gadd_mesureData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gadd_mesureData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gadd_mesureData.serializer,
        json,
      );
}

abstract class Gadd_mesureData_addMeasure
    implements
        Built<Gadd_mesureData_addMeasure, Gadd_mesureData_addMeasureBuilder>,
        _i2.GmesureFields {
  Gadd_mesureData_addMeasure._();

  factory Gadd_mesureData_addMeasure(
          [void Function(Gadd_mesureData_addMeasureBuilder b) updates]) =
      _$Gadd_mesureData_addMeasure;

  static void _initializeBuilder(Gadd_mesureData_addMeasureBuilder b) =>
      b..G__typename = 'MeasureModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String? get effectiveDate;
  @override
  BuiltList<Gadd_mesureData_addMeasure_comments>? get comments;
  @override
  BuiltList<Gadd_mesureData_addMeasure_metrics>? get metrics;
  @override
  Gadd_mesureData_addMeasure_author? get author;
  @override
  String get formattedMetricValue;
  @override
  String? get idDocument;
  @override
  String? get nameDocument;
  @override
  Gadd_mesureData_addMeasure_permissions get permissions;
  @override
  String? get growthMetricsIntervalText;
  static Serializer<Gadd_mesureData_addMeasure> get serializer =>
      _$gaddMesureDataAddMeasureSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gadd_mesureData_addMeasure.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gadd_mesureData_addMeasure? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gadd_mesureData_addMeasure.serializer,
        json,
      );
}

abstract class Gadd_mesureData_addMeasure_comments
    implements
        Built<Gadd_mesureData_addMeasure_comments,
            Gadd_mesureData_addMeasure_commentsBuilder>,
        _i2.GmesureFields_comments {
  Gadd_mesureData_addMeasure_comments._();

  factory Gadd_mesureData_addMeasure_comments(
      [void Function(Gadd_mesureData_addMeasure_commentsBuilder b)
          updates]) = _$Gadd_mesureData_addMeasure_comments;

  static void _initializeBuilder(
          Gadd_mesureData_addMeasure_commentsBuilder b) =>
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
  static Serializer<Gadd_mesureData_addMeasure_comments> get serializer =>
      _$gaddMesureDataAddMeasureCommentsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gadd_mesureData_addMeasure_comments.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gadd_mesureData_addMeasure_comments? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gadd_mesureData_addMeasure_comments.serializer,
        json,
      );
}

abstract class Gadd_mesureData_addMeasure_metrics
    implements
        Built<Gadd_mesureData_addMeasure_metrics,
            Gadd_mesureData_addMeasure_metricsBuilder>,
        _i2.GmesureFields_metrics {
  Gadd_mesureData_addMeasure_metrics._();

  factory Gadd_mesureData_addMeasure_metrics(
      [void Function(Gadd_mesureData_addMeasure_metricsBuilder b)
          updates]) = _$Gadd_mesureData_addMeasure_metrics;

  static void _initializeBuilder(Gadd_mesureData_addMeasure_metricsBuilder b) =>
      b..G__typename = 'MetricModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  _i3.GMeasureCode? get code;
  @override
  double get value;
  @override
  String get unit;
  static Serializer<Gadd_mesureData_addMeasure_metrics> get serializer =>
      _$gaddMesureDataAddMeasureMetricsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gadd_mesureData_addMeasure_metrics.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gadd_mesureData_addMeasure_metrics? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gadd_mesureData_addMeasure_metrics.serializer,
        json,
      );
}

abstract class Gadd_mesureData_addMeasure_author
    implements
        Built<Gadd_mesureData_addMeasure_author,
            Gadd_mesureData_addMeasure_authorBuilder>,
        _i2.GmesureFields_author {
  Gadd_mesureData_addMeasure_author._();

  factory Gadd_mesureData_addMeasure_author(
          [void Function(Gadd_mesureData_addMeasure_authorBuilder b) updates]) =
      _$Gadd_mesureData_addMeasure_author;

  static void _initializeBuilder(Gadd_mesureData_addMeasure_authorBuilder b) =>
      b..G__typename = 'AuthorModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get firstName;
  @override
  String? get lastName;
  static Serializer<Gadd_mesureData_addMeasure_author> get serializer =>
      _$gaddMesureDataAddMeasureAuthorSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gadd_mesureData_addMeasure_author.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gadd_mesureData_addMeasure_author? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gadd_mesureData_addMeasure_author.serializer,
        json,
      );
}

abstract class Gadd_mesureData_addMeasure_permissions
    implements
        Built<Gadd_mesureData_addMeasure_permissions,
            Gadd_mesureData_addMeasure_permissionsBuilder>,
        _i2.GmesureFields_permissions {
  Gadd_mesureData_addMeasure_permissions._();

  factory Gadd_mesureData_addMeasure_permissions(
      [void Function(Gadd_mesureData_addMeasure_permissionsBuilder b)
          updates]) = _$Gadd_mesureData_addMeasure_permissions;

  static void _initializeBuilder(
          Gadd_mesureData_addMeasure_permissionsBuilder b) =>
      b..G__typename = 'PermissionsModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  bool get delete;
  @override
  @BuiltValueField(wireName: 'update')
  bool get Gupdate;
  static Serializer<Gadd_mesureData_addMeasure_permissions> get serializer =>
      _$gaddMesureDataAddMeasurePermissionsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gadd_mesureData_addMeasure_permissions.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gadd_mesureData_addMeasure_permissions? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gadd_mesureData_addMeasure_permissions.serializer,
        json,
      );
}
