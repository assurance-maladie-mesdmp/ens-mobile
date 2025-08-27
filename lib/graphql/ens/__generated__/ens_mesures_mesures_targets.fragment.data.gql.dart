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

part 'ens_mesures_mesures_targets.fragment.data.gql.g.dart';

abstract class GmesuresTargets {
  String get G__typename;
  BuiltList<GmesuresTargets_targets> get targets;
  Map<String, dynamic> toJson();
}

abstract class GmesuresTargets_targets {
  String get G__typename;
  String get id;
  _i1.GMeasureCode get type;
  double get value;
  Map<String, dynamic> toJson();
}

abstract class GmesuresTargetsData
    implements
        Built<GmesuresTargetsData, GmesuresTargetsDataBuilder>,
        GmesuresTargets {
  GmesuresTargetsData._();

  factory GmesuresTargetsData(
          [void Function(GmesuresTargetsDataBuilder b) updates]) =
      _$GmesuresTargetsData;

  static void _initializeBuilder(GmesuresTargetsDataBuilder b) =>
      b..G__typename = 'MeasureTargetsListModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  BuiltList<GmesuresTargetsData_targets> get targets;
  static Serializer<GmesuresTargetsData> get serializer =>
      _$gmesuresTargetsDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GmesuresTargetsData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GmesuresTargetsData? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GmesuresTargetsData.serializer,
        json,
      );
}

abstract class GmesuresTargetsData_targets
    implements
        Built<GmesuresTargetsData_targets, GmesuresTargetsData_targetsBuilder>,
        GmesuresTargets_targets {
  GmesuresTargetsData_targets._();

  factory GmesuresTargetsData_targets(
          [void Function(GmesuresTargetsData_targetsBuilder b) updates]) =
      _$GmesuresTargetsData_targets;

  static void _initializeBuilder(GmesuresTargetsData_targetsBuilder b) =>
      b..G__typename = 'MeasureTargetModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  _i1.GMeasureCode get type;
  @override
  double get value;
  static Serializer<GmesuresTargetsData_targets> get serializer =>
      _$gmesuresTargetsDataTargetsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GmesuresTargetsData_targets.serializer,
        this,
      ) as Map<String, dynamic>);

  static GmesuresTargetsData_targets? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GmesuresTargetsData_targets.serializer,
        json,
      );
}
