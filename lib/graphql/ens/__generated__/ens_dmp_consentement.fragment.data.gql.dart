// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_dmp_consentement.fragment.data.gql.g.dart';

abstract class GdmpConsentement {
  String get G__typename;
  String get identifier;
  String get purpose;
  String get type;
  Map<String, dynamic> toJson();
}

abstract class GdmpConsentementData
    implements
        Built<GdmpConsentementData, GdmpConsentementDataBuilder>,
        GdmpConsentement {
  GdmpConsentementData._();

  factory GdmpConsentementData(
          [void Function(GdmpConsentementDataBuilder b) updates]) =
      _$GdmpConsentementData;

  static void _initializeBuilder(GdmpConsentementDataBuilder b) =>
      b..G__typename = 'DmpConsentementModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get identifier;
  @override
  String get purpose;
  @override
  String get type;
  static Serializer<GdmpConsentementData> get serializer =>
      _$gdmpConsentementDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GdmpConsentementData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GdmpConsentementData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GdmpConsentementData.serializer,
        json,
      );
}
