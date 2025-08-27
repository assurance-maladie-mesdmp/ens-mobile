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

part 'ens_mesures_last_mesure.fragment.data.gql.g.dart';

abstract class GlastMesure {
  String get G__typename;
  String get id;
  _i1.GMeasureCode get code;
  String? get effectiveDate;
  BuiltList<GlastMesure_metrics>? get metrics;
  String get label;
  String get formattedMetricValue;
  GlastMesure_permissions get permissions;
  Map<String, dynamic> toJson();
}

abstract class GlastMesure_metrics {
  String get G__typename;
  String get unit;
  Map<String, dynamic> toJson();
}

abstract class GlastMesure_permissions {
  String get G__typename;
  bool get add;
  bool get history;
  bool get Gupdate;
  bool get delete;
  Map<String, dynamic> toJson();
}

abstract class GlastMesureData
    implements Built<GlastMesureData, GlastMesureDataBuilder>, GlastMesure {
  GlastMesureData._();

  factory GlastMesureData([void Function(GlastMesureDataBuilder b) updates]) =
      _$GlastMesureData;

  static void _initializeBuilder(GlastMesureDataBuilder b) =>
      b..G__typename = 'MeasureModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  _i1.GMeasureCode get code;
  @override
  String? get effectiveDate;
  @override
  BuiltList<GlastMesureData_metrics>? get metrics;
  @override
  String get label;
  @override
  String get formattedMetricValue;
  @override
  GlastMesureData_permissions get permissions;
  static Serializer<GlastMesureData> get serializer =>
      _$glastMesureDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GlastMesureData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GlastMesureData? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GlastMesureData.serializer,
        json,
      );
}

abstract class GlastMesureData_metrics
    implements
        Built<GlastMesureData_metrics, GlastMesureData_metricsBuilder>,
        GlastMesure_metrics {
  GlastMesureData_metrics._();

  factory GlastMesureData_metrics(
          [void Function(GlastMesureData_metricsBuilder b) updates]) =
      _$GlastMesureData_metrics;

  static void _initializeBuilder(GlastMesureData_metricsBuilder b) =>
      b..G__typename = 'MetricModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get unit;
  static Serializer<GlastMesureData_metrics> get serializer =>
      _$glastMesureDataMetricsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GlastMesureData_metrics.serializer,
        this,
      ) as Map<String, dynamic>);

  static GlastMesureData_metrics? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GlastMesureData_metrics.serializer,
        json,
      );
}

abstract class GlastMesureData_permissions
    implements
        Built<GlastMesureData_permissions, GlastMesureData_permissionsBuilder>,
        GlastMesure_permissions {
  GlastMesureData_permissions._();

  factory GlastMesureData_permissions(
          [void Function(GlastMesureData_permissionsBuilder b) updates]) =
      _$GlastMesureData_permissions;

  static void _initializeBuilder(GlastMesureData_permissionsBuilder b) =>
      b..G__typename = 'PermissionsModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  bool get add;
  @override
  bool get history;
  @override
  @BuiltValueField(wireName: 'update')
  bool get Gupdate;
  @override
  bool get delete;
  static Serializer<GlastMesureData_permissions> get serializer =>
      _$glastMesureDataPermissionsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GlastMesureData_permissions.serializer,
        this,
      ) as Map<String, dynamic>);

  static GlastMesureData_permissions? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GlastMesureData_permissions.serializer,
        json,
      );
}
