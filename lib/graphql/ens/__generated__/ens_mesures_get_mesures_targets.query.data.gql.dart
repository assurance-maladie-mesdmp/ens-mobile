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

part 'ens_mesures_get_mesures_targets.query.data.gql.g.dart';

abstract class Gget_mesures_targetsData
    implements
        Built<Gget_mesures_targetsData, Gget_mesures_targetsDataBuilder> {
  Gget_mesures_targetsData._();

  factory Gget_mesures_targetsData(
          [void Function(Gget_mesures_targetsDataBuilder b) updates]) =
      _$Gget_mesures_targetsData;

  static void _initializeBuilder(Gget_mesures_targetsDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gget_mesures_targetsData_measuresTargets get measuresTargets;
  static Serializer<Gget_mesures_targetsData> get serializer =>
      _$ggetMesuresTargetsDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_mesures_targetsData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_mesures_targetsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_mesures_targetsData.serializer,
        json,
      );
}

abstract class Gget_mesures_targetsData_measuresTargets
    implements
        Built<Gget_mesures_targetsData_measuresTargets,
            Gget_mesures_targetsData_measuresTargetsBuilder> {
  Gget_mesures_targetsData_measuresTargets._();

  factory Gget_mesures_targetsData_measuresTargets(
      [void Function(Gget_mesures_targetsData_measuresTargetsBuilder b)
          updates]) = _$Gget_mesures_targetsData_measuresTargets;

  static void _initializeBuilder(
          Gget_mesures_targetsData_measuresTargetsBuilder b) =>
      b..G__typename = 'MeasureTargetsListModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<Gget_mesures_targetsData_measuresTargets_targets> get targets;
  static Serializer<Gget_mesures_targetsData_measuresTargets> get serializer =>
      _$ggetMesuresTargetsDataMeasuresTargetsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_mesures_targetsData_measuresTargets.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_mesures_targetsData_measuresTargets? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_mesures_targetsData_measuresTargets.serializer,
        json,
      );
}

abstract class Gget_mesures_targetsData_measuresTargets_targets
    implements
        Built<Gget_mesures_targetsData_measuresTargets_targets,
            Gget_mesures_targetsData_measuresTargets_targetsBuilder> {
  Gget_mesures_targetsData_measuresTargets_targets._();

  factory Gget_mesures_targetsData_measuresTargets_targets(
      [void Function(Gget_mesures_targetsData_measuresTargets_targetsBuilder b)
          updates]) = _$Gget_mesures_targetsData_measuresTargets_targets;

  static void _initializeBuilder(
          Gget_mesures_targetsData_measuresTargets_targetsBuilder b) =>
      b..G__typename = 'MeasureTargetModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  _i2.GMeasureCode get type;
  double get value;
  static Serializer<Gget_mesures_targetsData_measuresTargets_targets>
      get serializer =>
          _$ggetMesuresTargetsDataMeasuresTargetsTargetsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_mesures_targetsData_measuresTargets_targets.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_mesures_targetsData_measuresTargets_targets? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_mesures_targetsData_measuresTargets_targets.serializer,
        json,
      );
}
