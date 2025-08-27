// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_mesures_delete_mesure_target.query.data.gql.g.dart';

abstract class Gdelete_mesure_targetData
    implements
        Built<Gdelete_mesure_targetData, Gdelete_mesure_targetDataBuilder> {
  Gdelete_mesure_targetData._();

  factory Gdelete_mesure_targetData(
          [void Function(Gdelete_mesure_targetDataBuilder b) updates]) =
      _$Gdelete_mesure_targetData;

  static void _initializeBuilder(Gdelete_mesure_targetDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gdelete_mesure_targetData_deleteMeasureTarget get deleteMeasureTarget;
  static Serializer<Gdelete_mesure_targetData> get serializer =>
      _$gdeleteMesureTargetDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gdelete_mesure_targetData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gdelete_mesure_targetData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gdelete_mesure_targetData.serializer,
        json,
      );
}

abstract class Gdelete_mesure_targetData_deleteMeasureTarget
    implements
        Built<Gdelete_mesure_targetData_deleteMeasureTarget,
            Gdelete_mesure_targetData_deleteMeasureTargetBuilder> {
  Gdelete_mesure_targetData_deleteMeasureTarget._();

  factory Gdelete_mesure_targetData_deleteMeasureTarget(
      [void Function(Gdelete_mesure_targetData_deleteMeasureTargetBuilder b)
          updates]) = _$Gdelete_mesure_targetData_deleteMeasureTarget;

  static void _initializeBuilder(
          Gdelete_mesure_targetData_deleteMeasureTargetBuilder b) =>
      b..G__typename = 'Success';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool get success;
  static Serializer<Gdelete_mesure_targetData_deleteMeasureTarget>
      get serializer => _$gdeleteMesureTargetDataDeleteMeasureTargetSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gdelete_mesure_targetData_deleteMeasureTarget.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gdelete_mesure_targetData_deleteMeasureTarget? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gdelete_mesure_targetData_deleteMeasureTarget.serializer,
        json,
      );
}
