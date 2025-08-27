// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_ajout_ad_result.fragment.data.gql.g.dart';

abstract class GactivationProfilResult {
  String get G__typename;
  double get index;
  double? get idEns;
  String get firstName;
  String get lastName;
  Map<String, dynamic> toJson();
}

abstract class GactivationProfilResultData
    implements
        Built<GactivationProfilResultData, GactivationProfilResultDataBuilder>,
        GactivationProfilResult {
  GactivationProfilResultData._();

  factory GactivationProfilResultData(
          [void Function(GactivationProfilResultDataBuilder b) updates]) =
      _$GactivationProfilResultData;

  static void _initializeBuilder(GactivationProfilResultDataBuilder b) =>
      b..G__typename = 'AccountProfil';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  double get index;
  @override
  double? get idEns;
  @override
  String get firstName;
  @override
  String get lastName;
  static Serializer<GactivationProfilResultData> get serializer =>
      _$gactivationProfilResultDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GactivationProfilResultData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GactivationProfilResultData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GactivationProfilResultData.serializer,
        json,
      );
}
