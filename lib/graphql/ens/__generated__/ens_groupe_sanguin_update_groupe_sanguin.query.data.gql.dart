// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_groupe_sanguin_update_groupe_sanguin.query.data.gql.g.dart';

abstract class Gupdate_groupe_sanguinData
    implements
        Built<Gupdate_groupe_sanguinData, Gupdate_groupe_sanguinDataBuilder> {
  Gupdate_groupe_sanguinData._();

  factory Gupdate_groupe_sanguinData(
          [void Function(Gupdate_groupe_sanguinDataBuilder b) updates]) =
      _$Gupdate_groupe_sanguinData;

  static void _initializeBuilder(Gupdate_groupe_sanguinDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gupdate_groupe_sanguinData_updateBloodGroup get updateBloodGroup;
  static Serializer<Gupdate_groupe_sanguinData> get serializer =>
      _$gupdateGroupeSanguinDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gupdate_groupe_sanguinData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gupdate_groupe_sanguinData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gupdate_groupe_sanguinData.serializer,
        json,
      );
}

abstract class Gupdate_groupe_sanguinData_updateBloodGroup
    implements
        Built<Gupdate_groupe_sanguinData_updateBloodGroup,
            Gupdate_groupe_sanguinData_updateBloodGroupBuilder> {
  Gupdate_groupe_sanguinData_updateBloodGroup._();

  factory Gupdate_groupe_sanguinData_updateBloodGroup(
      [void Function(Gupdate_groupe_sanguinData_updateBloodGroupBuilder b)
          updates]) = _$Gupdate_groupe_sanguinData_updateBloodGroup;

  static void _initializeBuilder(
          Gupdate_groupe_sanguinData_updateBloodGroupBuilder b) =>
      b..G__typename = 'Success';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool get success;
  static Serializer<Gupdate_groupe_sanguinData_updateBloodGroup>
      get serializer => _$gupdateGroupeSanguinDataUpdateBloodGroupSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gupdate_groupe_sanguinData_updateBloodGroup.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gupdate_groupe_sanguinData_updateBloodGroup? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gupdate_groupe_sanguinData_updateBloodGroup.serializer,
        json,
      );
}
