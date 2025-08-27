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

part 'ens_mesures_update_mesure.query.data.gql.g.dart';

abstract class Gupdate_mesureData
    implements Built<Gupdate_mesureData, Gupdate_mesureDataBuilder> {
  Gupdate_mesureData._();

  factory Gupdate_mesureData(
          [void Function(Gupdate_mesureDataBuilder b) updates]) =
      _$Gupdate_mesureData;

  static void _initializeBuilder(Gupdate_mesureDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gupdate_mesureData_updateMeasure get updateMeasure;
  static Serializer<Gupdate_mesureData> get serializer =>
      _$gupdateMesureDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gupdate_mesureData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gupdate_mesureData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gupdate_mesureData.serializer,
        json,
      );
}

abstract class Gupdate_mesureData_updateMeasure
    implements
        Built<Gupdate_mesureData_updateMeasure,
            Gupdate_mesureData_updateMeasureBuilder>,
        _i2.GmesureFields {
  Gupdate_mesureData_updateMeasure._();

  factory Gupdate_mesureData_updateMeasure(
          [void Function(Gupdate_mesureData_updateMeasureBuilder b) updates]) =
      _$Gupdate_mesureData_updateMeasure;

  static void _initializeBuilder(Gupdate_mesureData_updateMeasureBuilder b) =>
      b..G__typename = 'MeasureModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String? get effectiveDate;
  @override
  BuiltList<Gupdate_mesureData_updateMeasure_comments>? get comments;
  @override
  BuiltList<Gupdate_mesureData_updateMeasure_metrics>? get metrics;
  @override
  Gupdate_mesureData_updateMeasure_author? get author;
  @override
  String get formattedMetricValue;
  @override
  String? get idDocument;
  @override
  String? get nameDocument;
  @override
  Gupdate_mesureData_updateMeasure_permissions get permissions;
  @override
  String? get growthMetricsIntervalText;
  static Serializer<Gupdate_mesureData_updateMeasure> get serializer =>
      _$gupdateMesureDataUpdateMeasureSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gupdate_mesureData_updateMeasure.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gupdate_mesureData_updateMeasure? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gupdate_mesureData_updateMeasure.serializer,
        json,
      );
}

abstract class Gupdate_mesureData_updateMeasure_comments
    implements
        Built<Gupdate_mesureData_updateMeasure_comments,
            Gupdate_mesureData_updateMeasure_commentsBuilder>,
        _i2.GmesureFields_comments {
  Gupdate_mesureData_updateMeasure_comments._();

  factory Gupdate_mesureData_updateMeasure_comments(
      [void Function(Gupdate_mesureData_updateMeasure_commentsBuilder b)
          updates]) = _$Gupdate_mesureData_updateMeasure_comments;

  static void _initializeBuilder(
          Gupdate_mesureData_updateMeasure_commentsBuilder b) =>
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
  static Serializer<Gupdate_mesureData_updateMeasure_comments> get serializer =>
      _$gupdateMesureDataUpdateMeasureCommentsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gupdate_mesureData_updateMeasure_comments.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gupdate_mesureData_updateMeasure_comments? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gupdate_mesureData_updateMeasure_comments.serializer,
        json,
      );
}

abstract class Gupdate_mesureData_updateMeasure_metrics
    implements
        Built<Gupdate_mesureData_updateMeasure_metrics,
            Gupdate_mesureData_updateMeasure_metricsBuilder>,
        _i2.GmesureFields_metrics {
  Gupdate_mesureData_updateMeasure_metrics._();

  factory Gupdate_mesureData_updateMeasure_metrics(
      [void Function(Gupdate_mesureData_updateMeasure_metricsBuilder b)
          updates]) = _$Gupdate_mesureData_updateMeasure_metrics;

  static void _initializeBuilder(
          Gupdate_mesureData_updateMeasure_metricsBuilder b) =>
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
  static Serializer<Gupdate_mesureData_updateMeasure_metrics> get serializer =>
      _$gupdateMesureDataUpdateMeasureMetricsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gupdate_mesureData_updateMeasure_metrics.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gupdate_mesureData_updateMeasure_metrics? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gupdate_mesureData_updateMeasure_metrics.serializer,
        json,
      );
}

abstract class Gupdate_mesureData_updateMeasure_author
    implements
        Built<Gupdate_mesureData_updateMeasure_author,
            Gupdate_mesureData_updateMeasure_authorBuilder>,
        _i2.GmesureFields_author {
  Gupdate_mesureData_updateMeasure_author._();

  factory Gupdate_mesureData_updateMeasure_author(
      [void Function(Gupdate_mesureData_updateMeasure_authorBuilder b)
          updates]) = _$Gupdate_mesureData_updateMeasure_author;

  static void _initializeBuilder(
          Gupdate_mesureData_updateMeasure_authorBuilder b) =>
      b..G__typename = 'AuthorModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get firstName;
  @override
  String? get lastName;
  static Serializer<Gupdate_mesureData_updateMeasure_author> get serializer =>
      _$gupdateMesureDataUpdateMeasureAuthorSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gupdate_mesureData_updateMeasure_author.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gupdate_mesureData_updateMeasure_author? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gupdate_mesureData_updateMeasure_author.serializer,
        json,
      );
}

abstract class Gupdate_mesureData_updateMeasure_permissions
    implements
        Built<Gupdate_mesureData_updateMeasure_permissions,
            Gupdate_mesureData_updateMeasure_permissionsBuilder>,
        _i2.GmesureFields_permissions {
  Gupdate_mesureData_updateMeasure_permissions._();

  factory Gupdate_mesureData_updateMeasure_permissions(
      [void Function(Gupdate_mesureData_updateMeasure_permissionsBuilder b)
          updates]) = _$Gupdate_mesureData_updateMeasure_permissions;

  static void _initializeBuilder(
          Gupdate_mesureData_updateMeasure_permissionsBuilder b) =>
      b..G__typename = 'PermissionsModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  bool get delete;
  @override
  @BuiltValueField(wireName: 'update')
  bool get Gupdate;
  static Serializer<Gupdate_mesureData_updateMeasure_permissions>
      get serializer => _$gupdateMesureDataUpdateMeasurePermissionsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gupdate_mesureData_updateMeasure_permissions.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gupdate_mesureData_updateMeasure_permissions? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gupdate_mesureData_updateMeasure_permissions.serializer,
        json,
      );
}
