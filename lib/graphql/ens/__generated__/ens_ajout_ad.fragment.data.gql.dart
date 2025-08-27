// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_ajout_ad.fragment.data.gql.g.dart';

abstract class GprofilMobile {
  String get G__typename;
  double get index;
  String get lastName;
  String get firstName;
  String get statutProfile;
  bool get hasDeleteRequest;
  Map<String, dynamic> toJson();
}

abstract class GprofilMobileData
    implements
        Built<GprofilMobileData, GprofilMobileDataBuilder>,
        GprofilMobile {
  GprofilMobileData._();

  factory GprofilMobileData(
          [void Function(GprofilMobileDataBuilder b) updates]) =
      _$GprofilMobileData;

  static void _initializeBuilder(GprofilMobileDataBuilder b) =>
      b..G__typename = 'AccountProfil';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  double get index;
  @override
  String get lastName;
  @override
  String get firstName;
  @override
  String get statutProfile;
  @override
  bool get hasDeleteRequest;
  static Serializer<GprofilMobileData> get serializer =>
      _$gprofilMobileDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GprofilMobileData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GprofilMobileData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GprofilMobileData.serializer,
        json,
      );
}
