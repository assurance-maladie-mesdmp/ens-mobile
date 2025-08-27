// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_dechiffrement.query.data.gql.g.dart';

abstract class Gdecrypt_valueData
    implements Built<Gdecrypt_valueData, Gdecrypt_valueDataBuilder> {
  Gdecrypt_valueData._();

  factory Gdecrypt_valueData(
          [void Function(Gdecrypt_valueDataBuilder b) updates]) =
      _$Gdecrypt_valueData;

  static void _initializeBuilder(Gdecrypt_valueDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gdecrypt_valueData_decrypt get decrypt;
  static Serializer<Gdecrypt_valueData> get serializer =>
      _$gdecryptValueDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gdecrypt_valueData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gdecrypt_valueData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gdecrypt_valueData.serializer,
        json,
      );
}

abstract class Gdecrypt_valueData_decrypt
    implements
        Built<Gdecrypt_valueData_decrypt, Gdecrypt_valueData_decryptBuilder> {
  Gdecrypt_valueData_decrypt._();

  factory Gdecrypt_valueData_decrypt(
          [void Function(Gdecrypt_valueData_decryptBuilder b) updates]) =
      _$Gdecrypt_valueData_decrypt;

  static void _initializeBuilder(Gdecrypt_valueData_decryptBuilder b) =>
      b..G__typename = 'DecryptionModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get decryptedValue;
  static Serializer<Gdecrypt_valueData_decrypt> get serializer =>
      _$gdecryptValueDataDecryptSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gdecrypt_valueData_decrypt.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gdecrypt_valueData_decrypt? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gdecrypt_valueData_decrypt.serializer,
        json,
      );
}
