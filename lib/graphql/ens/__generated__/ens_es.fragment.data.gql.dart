// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_es.fragment.data.gql.g.dart';

abstract class Gadresse_ps_es {
  String get G__typename;
  String? get adresseName;
  String? get cityZipCode;
  String? get roadNumber;
  String? get labelRoadType;
  String? get road;
  String? get commune;
  String? get numeroTelephone;
  Map<String, dynamic> toJson();
}

abstract class Gadresse_ps_esData
    implements
        Built<Gadresse_ps_esData, Gadresse_ps_esDataBuilder>,
        Gadresse_ps_es {
  Gadresse_ps_esData._();

  factory Gadresse_ps_esData(
          [void Function(Gadresse_ps_esDataBuilder b) updates]) =
      _$Gadresse_ps_esData;

  static void _initializeBuilder(Gadresse_ps_esDataBuilder b) =>
      b..G__typename = 'HealthProfessionalAddressModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get adresseName;
  @override
  String? get cityZipCode;
  @override
  String? get roadNumber;
  @override
  String? get labelRoadType;
  @override
  String? get road;
  @override
  String? get commune;
  @override
  String? get numeroTelephone;
  static Serializer<Gadresse_ps_esData> get serializer =>
      _$gadressePsEsDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gadresse_ps_esData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gadresse_ps_esData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gadresse_ps_esData.serializer,
        json,
      );
}
