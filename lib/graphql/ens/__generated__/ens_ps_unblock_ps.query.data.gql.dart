// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_ps_unblock_ps.query.data.gql.g.dart';

abstract class Gunblock_psData
    implements Built<Gunblock_psData, Gunblock_psDataBuilder> {
  Gunblock_psData._();

  factory Gunblock_psData([void Function(Gunblock_psDataBuilder b) updates]) =
      _$Gunblock_psData;

  static void _initializeBuilder(Gunblock_psDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gunblock_psData_unblockPS get unblockPS;
  static Serializer<Gunblock_psData> get serializer =>
      _$gunblockPsDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gunblock_psData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gunblock_psData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gunblock_psData.serializer,
        json,
      );
}

abstract class Gunblock_psData_unblockPS
    implements
        Built<Gunblock_psData_unblockPS, Gunblock_psData_unblockPSBuilder> {
  Gunblock_psData_unblockPS._();

  factory Gunblock_psData_unblockPS(
          [void Function(Gunblock_psData_unblockPSBuilder b) updates]) =
      _$Gunblock_psData_unblockPS;

  static void _initializeBuilder(Gunblock_psData_unblockPSBuilder b) =>
      b..G__typename = 'Success';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool get success;
  static Serializer<Gunblock_psData_unblockPS> get serializer =>
      _$gunblockPsDataUnblockPSSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gunblock_psData_unblockPS.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gunblock_psData_unblockPS? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gunblock_psData_unblockPS.serializer,
        json,
      );
}
