// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i2;

part 'ens_aidants_aides_acteur.fragment.data.gql.g.dart';

abstract class Gacteur {
  String get G__typename;
  String get idp;
  String get givenNames;
  String get familyName;
  String get birthDate;
  _i1.GGender get gender;
  Map<String, dynamic> toJson();
}

abstract class GacteurData
    implements Built<GacteurData, GacteurDataBuilder>, Gacteur {
  GacteurData._();

  factory GacteurData([void Function(GacteurDataBuilder b) updates]) =
      _$GacteurData;

  static void _initializeBuilder(GacteurDataBuilder b) =>
      b..G__typename = 'DelegationActor';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get idp;
  @override
  String get givenNames;
  @override
  String get familyName;
  @override
  String get birthDate;
  @override
  _i1.GGender get gender;
  static Serializer<GacteurData> get serializer => _$gacteurDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GacteurData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GacteurData? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GacteurData.serializer,
        json,
      );
}
