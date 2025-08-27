// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_accept_cgu.query.data.gql.g.dart';

abstract class Gaccept_cguData
    implements Built<Gaccept_cguData, Gaccept_cguDataBuilder> {
  Gaccept_cguData._();

  factory Gaccept_cguData([void Function(Gaccept_cguDataBuilder b) updates]) =
      _$Gaccept_cguData;

  static void _initializeBuilder(Gaccept_cguDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gaccept_cguData_setCGU get setCGU;
  static Serializer<Gaccept_cguData> get serializer =>
      _$gacceptCguDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gaccept_cguData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gaccept_cguData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gaccept_cguData.serializer,
        json,
      );
}

abstract class Gaccept_cguData_setCGU
    implements Built<Gaccept_cguData_setCGU, Gaccept_cguData_setCGUBuilder> {
  Gaccept_cguData_setCGU._();

  factory Gaccept_cguData_setCGU(
          [void Function(Gaccept_cguData_setCGUBuilder b) updates]) =
      _$Gaccept_cguData_setCGU;

  static void _initializeBuilder(Gaccept_cguData_setCGUBuilder b) =>
      b..G__typename = 'Success';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool get success;
  static Serializer<Gaccept_cguData_setCGU> get serializer =>
      _$gacceptCguDataSetCGUSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gaccept_cguData_setCGU.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gaccept_cguData_setCGU? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gaccept_cguData_setCGU.serializer,
        json,
      );
}
