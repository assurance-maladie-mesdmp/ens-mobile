// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_mesures_add_mesure_target.query.data.gql.g.dart';

abstract class Gadd_mesure_targetData
    implements Built<Gadd_mesure_targetData, Gadd_mesure_targetDataBuilder> {
  Gadd_mesure_targetData._();

  factory Gadd_mesure_targetData(
          [void Function(Gadd_mesure_targetDataBuilder b) updates]) =
      _$Gadd_mesure_targetData;

  static void _initializeBuilder(Gadd_mesure_targetDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gadd_mesure_targetData_addMeasureTarget get addMeasureTarget;
  static Serializer<Gadd_mesure_targetData> get serializer =>
      _$gaddMesureTargetDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gadd_mesure_targetData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gadd_mesure_targetData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gadd_mesure_targetData.serializer,
        json,
      );
}

abstract class Gadd_mesure_targetData_addMeasureTarget
    implements
        Built<Gadd_mesure_targetData_addMeasureTarget,
            Gadd_mesure_targetData_addMeasureTargetBuilder> {
  Gadd_mesure_targetData_addMeasureTarget._();

  factory Gadd_mesure_targetData_addMeasureTarget(
      [void Function(Gadd_mesure_targetData_addMeasureTargetBuilder b)
          updates]) = _$Gadd_mesure_targetData_addMeasureTarget;

  static void _initializeBuilder(
          Gadd_mesure_targetData_addMeasureTargetBuilder b) =>
      b..G__typename = 'MeasureTargetModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  _i2.GMeasureCode get type;
  double get value;
  static Serializer<Gadd_mesure_targetData_addMeasureTarget> get serializer =>
      _$gaddMesureTargetDataAddMeasureTargetSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gadd_mesure_targetData_addMeasureTarget.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gadd_mesure_targetData_addMeasureTarget? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gadd_mesure_targetData_addMeasureTarget.serializer,
        json,
      );
}
