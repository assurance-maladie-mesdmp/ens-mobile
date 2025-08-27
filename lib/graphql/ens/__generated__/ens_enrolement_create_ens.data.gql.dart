// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_enrolement_create_ens.data.gql.g.dart';

abstract class Gcreate_ensData
    implements Built<Gcreate_ensData, Gcreate_ensDataBuilder> {
  Gcreate_ensData._();

  factory Gcreate_ensData([void Function(Gcreate_ensDataBuilder b) updates]) =
      _$Gcreate_ensData;

  static void _initializeBuilder(Gcreate_ensDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gcreate_ensData_createEns get createEns;
  static Serializer<Gcreate_ensData> get serializer =>
      _$gcreateEnsDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gcreate_ensData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gcreate_ensData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gcreate_ensData.serializer,
        json,
      );
}

abstract class Gcreate_ensData_createEns
    implements
        Built<Gcreate_ensData_createEns, Gcreate_ensData_createEnsBuilder> {
  Gcreate_ensData_createEns._();

  factory Gcreate_ensData_createEns(
          [void Function(Gcreate_ensData_createEnsBuilder b) updates]) =
      _$Gcreate_ensData_createEns;

  static void _initializeBuilder(Gcreate_ensData_createEnsBuilder b) =>
      b..G__typename = 'Success';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool get success;
  static Serializer<Gcreate_ensData_createEns> get serializer =>
      _$gcreateEnsDataCreateEnsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gcreate_ensData_createEns.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gcreate_ensData_createEns? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gcreate_ensData_createEns.serializer,
        json,
      );
}
