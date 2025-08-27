// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_incentive_reco.fragment.data.gql.g.dart';

abstract class GincentiveReco {
  String get G__typename;
  String get code;
  String get family;
  double get priority;
  GincentiveReco_data get data;
  Map<String, dynamic> toJson();
}

abstract class GincentiveReco_data {
  String get G__typename;
  String? get count;
  String? get quizCode;
  double? get quizVersion;
  double? get lastVersion;
  Map<String, dynamic> toJson();
}

abstract class GincentiveRecoData
    implements
        Built<GincentiveRecoData, GincentiveRecoDataBuilder>,
        GincentiveReco {
  GincentiveRecoData._();

  factory GincentiveRecoData(
          [void Function(GincentiveRecoDataBuilder b) updates]) =
      _$GincentiveRecoData;

  static void _initializeBuilder(GincentiveRecoDataBuilder b) =>
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
  GincentiveRecoData_data get data;
  static Serializer<GincentiveRecoData> get serializer =>
      _$gincentiveRecoDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GincentiveRecoData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GincentiveRecoData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GincentiveRecoData.serializer,
        json,
      );
}

abstract class GincentiveRecoData_data
    implements
        Built<GincentiveRecoData_data, GincentiveRecoData_dataBuilder>,
        GincentiveReco_data {
  GincentiveRecoData_data._();

  factory GincentiveRecoData_data(
          [void Function(GincentiveRecoData_dataBuilder b) updates]) =
      _$GincentiveRecoData_data;

  static void _initializeBuilder(GincentiveRecoData_dataBuilder b) =>
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
  static Serializer<GincentiveRecoData_data> get serializer =>
      _$gincentiveRecoDataDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GincentiveRecoData_data.serializer,
        this,
      ) as Map<String, dynamic>);

  static GincentiveRecoData_data? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GincentiveRecoData_data.serializer,
        json,
      );
}
