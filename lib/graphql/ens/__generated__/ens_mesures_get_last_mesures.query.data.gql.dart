// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_mesures_last_mesure.fragment.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_mesures_mesures_targets.fragment.data.gql.dart'
    as _i5;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_mesures_mesures_tiles.fragment.data.gql.dart'
    as _i4;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_mesures_get_last_mesures.query.data.gql.g.dart';

abstract class Gget_last_mesuresData
    implements Built<Gget_last_mesuresData, Gget_last_mesuresDataBuilder> {
  Gget_last_mesuresData._();

  factory Gget_last_mesuresData(
          [void Function(Gget_last_mesuresDataBuilder b) updates]) =
      _$Gget_last_mesuresData;

  static void _initializeBuilder(Gget_last_mesuresDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<Gget_last_mesuresData_lastMeasures>? get lastMeasures;
  Gget_last_mesuresData_measuresTiles get measuresTiles;
  Gget_last_mesuresData_measuresTargets get measuresTargets;
  static Serializer<Gget_last_mesuresData> get serializer =>
      _$ggetLastMesuresDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_last_mesuresData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_last_mesuresData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_last_mesuresData.serializer,
        json,
      );
}

abstract class Gget_last_mesuresData_lastMeasures
    implements
        Built<Gget_last_mesuresData_lastMeasures,
            Gget_last_mesuresData_lastMeasuresBuilder>,
        _i2.GlastMesure {
  Gget_last_mesuresData_lastMeasures._();

  factory Gget_last_mesuresData_lastMeasures(
      [void Function(Gget_last_mesuresData_lastMeasuresBuilder b)
          updates]) = _$Gget_last_mesuresData_lastMeasures;

  static void _initializeBuilder(Gget_last_mesuresData_lastMeasuresBuilder b) =>
      b..G__typename = 'MeasureModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  _i3.GMeasureCode get code;
  @override
  String? get effectiveDate;
  @override
  BuiltList<Gget_last_mesuresData_lastMeasures_metrics>? get metrics;
  @override
  String get label;
  @override
  String get formattedMetricValue;
  @override
  Gget_last_mesuresData_lastMeasures_permissions get permissions;
  static Serializer<Gget_last_mesuresData_lastMeasures> get serializer =>
      _$ggetLastMesuresDataLastMeasuresSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_last_mesuresData_lastMeasures.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_last_mesuresData_lastMeasures? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_last_mesuresData_lastMeasures.serializer,
        json,
      );
}

abstract class Gget_last_mesuresData_lastMeasures_metrics
    implements
        Built<Gget_last_mesuresData_lastMeasures_metrics,
            Gget_last_mesuresData_lastMeasures_metricsBuilder>,
        _i2.GlastMesure_metrics {
  Gget_last_mesuresData_lastMeasures_metrics._();

  factory Gget_last_mesuresData_lastMeasures_metrics(
      [void Function(Gget_last_mesuresData_lastMeasures_metricsBuilder b)
          updates]) = _$Gget_last_mesuresData_lastMeasures_metrics;

  static void _initializeBuilder(
          Gget_last_mesuresData_lastMeasures_metricsBuilder b) =>
      b..G__typename = 'MetricModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get unit;
  static Serializer<Gget_last_mesuresData_lastMeasures_metrics>
      get serializer => _$ggetLastMesuresDataLastMeasuresMetricsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_last_mesuresData_lastMeasures_metrics.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_last_mesuresData_lastMeasures_metrics? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_last_mesuresData_lastMeasures_metrics.serializer,
        json,
      );
}

abstract class Gget_last_mesuresData_lastMeasures_permissions
    implements
        Built<Gget_last_mesuresData_lastMeasures_permissions,
            Gget_last_mesuresData_lastMeasures_permissionsBuilder>,
        _i2.GlastMesure_permissions {
  Gget_last_mesuresData_lastMeasures_permissions._();

  factory Gget_last_mesuresData_lastMeasures_permissions(
      [void Function(Gget_last_mesuresData_lastMeasures_permissionsBuilder b)
          updates]) = _$Gget_last_mesuresData_lastMeasures_permissions;

  static void _initializeBuilder(
          Gget_last_mesuresData_lastMeasures_permissionsBuilder b) =>
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
  static Serializer<Gget_last_mesuresData_lastMeasures_permissions>
      get serializer => _$ggetLastMesuresDataLastMeasuresPermissionsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_last_mesuresData_lastMeasures_permissions.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_last_mesuresData_lastMeasures_permissions? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_last_mesuresData_lastMeasures_permissions.serializer,
        json,
      );
}

abstract class Gget_last_mesuresData_measuresTiles
    implements
        Built<Gget_last_mesuresData_measuresTiles,
            Gget_last_mesuresData_measuresTilesBuilder>,
        _i4.GmesuresTiles {
  Gget_last_mesuresData_measuresTiles._();

  factory Gget_last_mesuresData_measuresTiles(
      [void Function(Gget_last_mesuresData_measuresTilesBuilder b)
          updates]) = _$Gget_last_mesuresData_measuresTiles;

  static void _initializeBuilder(
          Gget_last_mesuresData_measuresTilesBuilder b) =>
      b..G__typename = 'MeasureTileListModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  BuiltList<Gget_last_mesuresData_measuresTiles_tiles> get tiles;
  static Serializer<Gget_last_mesuresData_measuresTiles> get serializer =>
      _$ggetLastMesuresDataMeasuresTilesSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_last_mesuresData_measuresTiles.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_last_mesuresData_measuresTiles? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_last_mesuresData_measuresTiles.serializer,
        json,
      );
}

abstract class Gget_last_mesuresData_measuresTiles_tiles
    implements
        Built<Gget_last_mesuresData_measuresTiles_tiles,
            Gget_last_mesuresData_measuresTiles_tilesBuilder>,
        _i4.GmesuresTiles_tiles {
  Gget_last_mesuresData_measuresTiles_tiles._();

  factory Gget_last_mesuresData_measuresTiles_tiles(
      [void Function(Gget_last_mesuresData_measuresTiles_tilesBuilder b)
          updates]) = _$Gget_last_mesuresData_measuresTiles_tiles;

  static void _initializeBuilder(
          Gget_last_mesuresData_measuresTiles_tilesBuilder b) =>
      b..G__typename = 'MeasureTileModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  _i3.GMeasureCode get type;
  @override
  bool get visible;
  static Serializer<Gget_last_mesuresData_measuresTiles_tiles> get serializer =>
      _$ggetLastMesuresDataMeasuresTilesTilesSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_last_mesuresData_measuresTiles_tiles.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_last_mesuresData_measuresTiles_tiles? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_last_mesuresData_measuresTiles_tiles.serializer,
        json,
      );
}

abstract class Gget_last_mesuresData_measuresTargets
    implements
        Built<Gget_last_mesuresData_measuresTargets,
            Gget_last_mesuresData_measuresTargetsBuilder>,
        _i5.GmesuresTargets {
  Gget_last_mesuresData_measuresTargets._();

  factory Gget_last_mesuresData_measuresTargets(
      [void Function(Gget_last_mesuresData_measuresTargetsBuilder b)
          updates]) = _$Gget_last_mesuresData_measuresTargets;

  static void _initializeBuilder(
          Gget_last_mesuresData_measuresTargetsBuilder b) =>
      b..G__typename = 'MeasureTargetsListModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  BuiltList<Gget_last_mesuresData_measuresTargets_targets> get targets;
  static Serializer<Gget_last_mesuresData_measuresTargets> get serializer =>
      _$ggetLastMesuresDataMeasuresTargetsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_last_mesuresData_measuresTargets.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_last_mesuresData_measuresTargets? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_last_mesuresData_measuresTargets.serializer,
        json,
      );
}

abstract class Gget_last_mesuresData_measuresTargets_targets
    implements
        Built<Gget_last_mesuresData_measuresTargets_targets,
            Gget_last_mesuresData_measuresTargets_targetsBuilder>,
        _i5.GmesuresTargets_targets {
  Gget_last_mesuresData_measuresTargets_targets._();

  factory Gget_last_mesuresData_measuresTargets_targets(
      [void Function(Gget_last_mesuresData_measuresTargets_targetsBuilder b)
          updates]) = _$Gget_last_mesuresData_measuresTargets_targets;

  static void _initializeBuilder(
          Gget_last_mesuresData_measuresTargets_targetsBuilder b) =>
      b..G__typename = 'MeasureTargetModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  _i3.GMeasureCode get type;
  @override
  double get value;
  static Serializer<Gget_last_mesuresData_measuresTargets_targets>
      get serializer => _$ggetLastMesuresDataMeasuresTargetsTargetsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_last_mesuresData_measuresTargets_targets.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_last_mesuresData_measuresTargets_targets? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_last_mesuresData_measuresTargets_targets.serializer,
        json,
      );
}
