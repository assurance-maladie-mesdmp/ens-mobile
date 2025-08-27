// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_incentive_reco.fragment.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_incentive_reco.query.data.gql.g.dart';

abstract class Gget_recommandationsData
    implements
        Built<Gget_recommandationsData, Gget_recommandationsDataBuilder> {
  Gget_recommandationsData._();

  factory Gget_recommandationsData(
          [void Function(Gget_recommandationsDataBuilder b) updates]) =
      _$Gget_recommandationsData;

  static void _initializeBuilder(Gget_recommandationsDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<Gget_recommandationsData_getIncentiveReco>? get getIncentiveReco;
  static Serializer<Gget_recommandationsData> get serializer =>
      _$ggetRecommandationsDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_recommandationsData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_recommandationsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_recommandationsData.serializer,
        json,
      );
}

abstract class Gget_recommandationsData_getIncentiveReco
    implements
        Built<Gget_recommandationsData_getIncentiveReco,
            Gget_recommandationsData_getIncentiveRecoBuilder>,
        _i2.GincentiveReco {
  Gget_recommandationsData_getIncentiveReco._();

  factory Gget_recommandationsData_getIncentiveReco(
      [void Function(Gget_recommandationsData_getIncentiveRecoBuilder b)
          updates]) = _$Gget_recommandationsData_getIncentiveReco;

  static void _initializeBuilder(
          Gget_recommandationsData_getIncentiveRecoBuilder b) =>
      b..G__typename = 'IncentiveRecoViewModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get code;
  @override
  String get family;
  @override
  double get priority;
  @override
  Gget_recommandationsData_getIncentiveReco_data get data;
  static Serializer<Gget_recommandationsData_getIncentiveReco> get serializer =>
      _$ggetRecommandationsDataGetIncentiveRecoSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_recommandationsData_getIncentiveReco.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_recommandationsData_getIncentiveReco? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_recommandationsData_getIncentiveReco.serializer,
        json,
      );
}

abstract class Gget_recommandationsData_getIncentiveReco_data
    implements
        Built<Gget_recommandationsData_getIncentiveReco_data,
            Gget_recommandationsData_getIncentiveReco_dataBuilder>,
        _i2.GincentiveReco_data {
  Gget_recommandationsData_getIncentiveReco_data._();

  factory Gget_recommandationsData_getIncentiveReco_data(
      [void Function(Gget_recommandationsData_getIncentiveReco_dataBuilder b)
          updates]) = _$Gget_recommandationsData_getIncentiveReco_data;

  static void _initializeBuilder(
          Gget_recommandationsData_getIncentiveReco_dataBuilder b) =>
      b..G__typename = 'IncentiveRecoData';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get count;
  @override
  String? get quizCode;
  @override
  double? get quizVersion;
  @override
  double? get lastVersion;
  static Serializer<Gget_recommandationsData_getIncentiveReco_data>
      get serializer => _$ggetRecommandationsDataGetIncentiveRecoDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_recommandationsData_getIncentiveReco_data.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_recommandationsData_getIncentiveReco_data? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_recommandationsData_getIncentiveReco_data.serializer,
        json,
      );
}
