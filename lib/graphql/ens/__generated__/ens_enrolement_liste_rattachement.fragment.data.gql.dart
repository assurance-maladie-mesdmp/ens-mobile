// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_enrolement_liste_rattachement.fragment.data.gql.g.dart';

abstract class GprofilRattache {
  String get G__typename;
  String get lastName;
  String get firstName;
  String get dateOfBirth;
  String? get nir;
  Map<String, dynamic> toJson();
}

abstract class GprofilRattacheData
    implements
        Built<GprofilRattacheData, GprofilRattacheDataBuilder>,
        GprofilRattache {
  GprofilRattacheData._();

  factory GprofilRattacheData(
          [void Function(GprofilRattacheDataBuilder b) updates]) =
      _$GprofilRattacheData;

  static void _initializeBuilder(GprofilRattacheDataBuilder b) =>
      b..G__typename = 'ListeRattachement';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get lastName;
  @override
  String get firstName;
  @override
  String get dateOfBirth;
  @override
  String? get nir;
  static Serializer<GprofilRattacheData> get serializer =>
      _$gprofilRattacheDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GprofilRattacheData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GprofilRattacheData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GprofilRattacheData.serializer,
        json,
      );
}
