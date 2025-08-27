// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_discipline.fragment.data.gql.g.dart';

abstract class GdisciplineResponse {
  String get G__typename;
  String get treCode;
  String? get label;
  Map<String, dynamic> toJson();
}

abstract class GdisciplineResponseData
    implements
        Built<GdisciplineResponseData, GdisciplineResponseDataBuilder>,
        GdisciplineResponse {
  GdisciplineResponseData._();

  factory GdisciplineResponseData(
          [void Function(GdisciplineResponseDataBuilder b) updates]) =
      _$GdisciplineResponseData;

  static void _initializeBuilder(GdisciplineResponseDataBuilder b) =>
      b..G__typename = 'DisciplineModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get treCode;
  @override
  String? get label;
  static Serializer<GdisciplineResponseData> get serializer =>
      _$gdisciplineResponseDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GdisciplineResponseData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GdisciplineResponseData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GdisciplineResponseData.serializer,
        json,
      );
}
