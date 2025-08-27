// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i2;

part 'ens_account_change_password.query.var.gql.g.dart';

abstract class Gchange_passwordVars
    implements Built<Gchange_passwordVars, Gchange_passwordVarsBuilder> {
  Gchange_passwordVars._();

  factory Gchange_passwordVars(
          [void Function(Gchange_passwordVarsBuilder b) updates]) =
      _$Gchange_passwordVars;

  _i1.GChangePasswordInput get input;
  static Serializer<Gchange_passwordVars> get serializer =>
      _$gchangePasswordVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        Gchange_passwordVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gchange_passwordVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        Gchange_passwordVars.serializer,
        json,
      );
}
