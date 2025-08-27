// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_dechiffrement.query.var.gql.g.dart';

abstract class Gdecrypt_valueVars
    implements Built<Gdecrypt_valueVars, Gdecrypt_valueVarsBuilder> {
  Gdecrypt_valueVars._();

  factory Gdecrypt_valueVars(
          [void Function(Gdecrypt_valueVarsBuilder b) updates]) =
      _$Gdecrypt_valueVars;

  String get encryptValue;
  static Serializer<Gdecrypt_valueVars> get serializer =>
      _$gdecryptValueVarsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gdecrypt_valueVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gdecrypt_valueVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gdecrypt_valueVars.serializer,
        json,
      );
}
