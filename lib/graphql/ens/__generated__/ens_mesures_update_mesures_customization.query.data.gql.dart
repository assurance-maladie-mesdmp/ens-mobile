// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_mesures_update_mesures_customization.query.data.gql.g.dart';

abstract class Gupdate_mesures_customizationData
    implements
        Built<Gupdate_mesures_customizationData,
            Gupdate_mesures_customizationDataBuilder> {
  Gupdate_mesures_customizationData._();

  factory Gupdate_mesures_customizationData(
          [void Function(Gupdate_mesures_customizationDataBuilder b) updates]) =
      _$Gupdate_mesures_customizationData;

  static void _initializeBuilder(Gupdate_mesures_customizationDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gupdate_mesures_customizationData_updateMeasuresTiles get updateMeasuresTiles;
  static Serializer<Gupdate_mesures_customizationData> get serializer =>
      _$gupdateMesuresCustomizationDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gupdate_mesures_customizationData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gupdate_mesures_customizationData? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gupdate_mesures_customizationData.serializer,
        json,
      );
}

abstract class Gupdate_mesures_customizationData_updateMeasuresTiles
    implements
        Built<Gupdate_mesures_customizationData_updateMeasuresTiles,
            Gupdate_mesures_customizationData_updateMeasuresTilesBuilder> {
  Gupdate_mesures_customizationData_updateMeasuresTiles._();

  factory Gupdate_mesures_customizationData_updateMeasuresTiles(
      [void Function(
              Gupdate_mesures_customizationData_updateMeasuresTilesBuilder b)
          updates]) = _$Gupdate_mesures_customizationData_updateMeasuresTiles;

  static void _initializeBuilder(
          Gupdate_mesures_customizationData_updateMeasuresTilesBuilder b) =>
      b..G__typename = 'Success';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool get success;
  static Serializer<Gupdate_mesures_customizationData_updateMeasuresTiles>
      get serializer =>
          _$gupdateMesuresCustomizationDataUpdateMeasuresTilesSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gupdate_mesures_customizationData_updateMeasuresTiles.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gupdate_mesures_customizationData_updateMeasuresTiles? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gupdate_mesures_customizationData_updateMeasuresTiles.serializer,
        json,
      );
}
