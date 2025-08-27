// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_mesures_update_mesure_target.query.data.gql.g.dart';

abstract class Gupdate_mesure_targetData
    implements
        Built<Gupdate_mesure_targetData, Gupdate_mesure_targetDataBuilder> {
  Gupdate_mesure_targetData._();

  factory Gupdate_mesure_targetData(
          [void Function(Gupdate_mesure_targetDataBuilder b) updates]) =
      _$Gupdate_mesure_targetData;

  static void _initializeBuilder(Gupdate_mesure_targetDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gupdate_mesure_targetData_updateMeasureTarget get updateMeasureTarget;
  static Serializer<Gupdate_mesure_targetData> get serializer =>
      _$gupdateMesureTargetDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gupdate_mesure_targetData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gupdate_mesure_targetData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gupdate_mesure_targetData.serializer,
        json,
      );
}

abstract class Gupdate_mesure_targetData_updateMeasureTarget
    implements
        Built<Gupdate_mesure_targetData_updateMeasureTarget,
            Gupdate_mesure_targetData_updateMeasureTargetBuilder> {
  Gupdate_mesure_targetData_updateMeasureTarget._();

  factory Gupdate_mesure_targetData_updateMeasureTarget(
      [void Function(Gupdate_mesure_targetData_updateMeasureTargetBuilder b)
          updates]) = _$Gupdate_mesure_targetData_updateMeasureTarget;

  static void _initializeBuilder(
          Gupdate_mesure_targetData_updateMeasureTargetBuilder b) =>
      b..G__typename = 'MeasureTargetModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  _i2.GMeasureCode get type;
  double get value;
  static Serializer<Gupdate_mesure_targetData_updateMeasureTarget>
      get serializer => _$gupdateMesureTargetDataUpdateMeasureTargetSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gupdate_mesure_targetData_updateMeasureTarget.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gupdate_mesure_targetData_updateMeasureTarget? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gupdate_mesure_targetData_updateMeasureTarget.serializer,
        json,
      );
}
