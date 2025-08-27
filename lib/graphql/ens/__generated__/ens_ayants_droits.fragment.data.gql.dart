// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_ayants_droits.fragment.data.gql.g.dart';

abstract class GayantDroits {
  String get G__typename;
  String get patientId;
  String get firstName;
  String get lastName;
  bool get isAide;
  Map<String, dynamic> toJson();
}

abstract class GayantDroitsData
    implements Built<GayantDroitsData, GayantDroitsDataBuilder>, GayantDroits {
  GayantDroitsData._();

  factory GayantDroitsData([void Function(GayantDroitsDataBuilder b) updates]) =
      _$GayantDroitsData;

  static void _initializeBuilder(GayantDroitsDataBuilder b) =>
      b..G__typename = 'AyantsDroitsModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get patientId;
  @override
  String get firstName;
  @override
  String get lastName;
  @override
  bool get isAide;
  static Serializer<GayantDroitsData> get serializer =>
      _$gayantDroitsDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GayantDroitsData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GayantDroitsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GayantDroitsData.serializer,
        json,
      );
}
