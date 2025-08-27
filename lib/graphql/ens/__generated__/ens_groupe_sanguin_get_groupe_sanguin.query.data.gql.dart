// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_groupe_sanguin_get_groupe_sanguin.query.data.gql.g.dart';

abstract class Gget_groupe_sanguinData
    implements Built<Gget_groupe_sanguinData, Gget_groupe_sanguinDataBuilder> {
  Gget_groupe_sanguinData._();

  factory Gget_groupe_sanguinData(
          [void Function(Gget_groupe_sanguinDataBuilder b) updates]) =
      _$Gget_groupe_sanguinData;

  static void _initializeBuilder(Gget_groupe_sanguinDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gget_groupe_sanguinData_fetchBloodGroup? get fetchBloodGroup;
  static Serializer<Gget_groupe_sanguinData> get serializer =>
      _$ggetGroupeSanguinDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_groupe_sanguinData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_groupe_sanguinData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_groupe_sanguinData.serializer,
        json,
      );
}

abstract class Gget_groupe_sanguinData_fetchBloodGroup
    implements
        Built<Gget_groupe_sanguinData_fetchBloodGroup,
            Gget_groupe_sanguinData_fetchBloodGroupBuilder> {
  Gget_groupe_sanguinData_fetchBloodGroup._();

  factory Gget_groupe_sanguinData_fetchBloodGroup(
      [void Function(Gget_groupe_sanguinData_fetchBloodGroupBuilder b)
          updates]) = _$Gget_groupe_sanguinData_fetchBloodGroup;

  static void _initializeBuilder(
          Gget_groupe_sanguinData_fetchBloodGroupBuilder b) =>
      b..G__typename = 'BloodGroupModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  _i2.GBloodGroupEnum get bloodGroup;
  Gget_groupe_sanguinData_fetchBloodGroup_author get author;
  static Serializer<Gget_groupe_sanguinData_fetchBloodGroup> get serializer =>
      _$ggetGroupeSanguinDataFetchBloodGroupSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_groupe_sanguinData_fetchBloodGroup.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_groupe_sanguinData_fetchBloodGroup? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_groupe_sanguinData_fetchBloodGroup.serializer,
        json,
      );
}

abstract class Gget_groupe_sanguinData_fetchBloodGroup_author
    implements
        Built<Gget_groupe_sanguinData_fetchBloodGroup_author,
            Gget_groupe_sanguinData_fetchBloodGroup_authorBuilder> {
  Gget_groupe_sanguinData_fetchBloodGroup_author._();

  factory Gget_groupe_sanguinData_fetchBloodGroup_author(
      [void Function(Gget_groupe_sanguinData_fetchBloodGroup_authorBuilder b)
          updates]) = _$Gget_groupe_sanguinData_fetchBloodGroup_author;

  static void _initializeBuilder(
          Gget_groupe_sanguinData_fetchBloodGroup_authorBuilder b) =>
      b..G__typename = 'AuthorBloodGroupModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get firstName;
  String get lastName;
  static Serializer<Gget_groupe_sanguinData_fetchBloodGroup_author>
      get serializer => _$ggetGroupeSanguinDataFetchBloodGroupAuthorSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_groupe_sanguinData_fetchBloodGroup_author.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_groupe_sanguinData_fetchBloodGroup_author? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_groupe_sanguinData_fetchBloodGroup_author.serializer,
        json,
      );
}
