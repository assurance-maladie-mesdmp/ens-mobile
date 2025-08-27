// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_groupe_sanguin_delete_groupe_sanguin.mutation.data.gql.g.dart';

abstract class Gdelete_groupe_sanguinData
    implements
        Built<Gdelete_groupe_sanguinData, Gdelete_groupe_sanguinDataBuilder> {
  Gdelete_groupe_sanguinData._();

  factory Gdelete_groupe_sanguinData(
          [void Function(Gdelete_groupe_sanguinDataBuilder b) updates]) =
      _$Gdelete_groupe_sanguinData;

  static void _initializeBuilder(Gdelete_groupe_sanguinDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gdelete_groupe_sanguinData_removeBloodGroup get removeBloodGroup;
  static Serializer<Gdelete_groupe_sanguinData> get serializer =>
      _$gdeleteGroupeSanguinDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gdelete_groupe_sanguinData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gdelete_groupe_sanguinData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gdelete_groupe_sanguinData.serializer,
        json,
      );
}

abstract class Gdelete_groupe_sanguinData_removeBloodGroup
    implements
        Built<Gdelete_groupe_sanguinData_removeBloodGroup,
            Gdelete_groupe_sanguinData_removeBloodGroupBuilder> {
  Gdelete_groupe_sanguinData_removeBloodGroup._();

  factory Gdelete_groupe_sanguinData_removeBloodGroup(
      [void Function(Gdelete_groupe_sanguinData_removeBloodGroupBuilder b)
          updates]) = _$Gdelete_groupe_sanguinData_removeBloodGroup;

  static void _initializeBuilder(
          Gdelete_groupe_sanguinData_removeBloodGroupBuilder b) =>
      b..G__typename = 'Success';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool get success;
  static Serializer<Gdelete_groupe_sanguinData_removeBloodGroup>
      get serializer => _$gdeleteGroupeSanguinDataRemoveBloodGroupSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gdelete_groupe_sanguinData_removeBloodGroup.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gdelete_groupe_sanguinData_removeBloodGroup? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gdelete_groupe_sanguinData_removeBloodGroup.serializer,
        json,
      );
}
