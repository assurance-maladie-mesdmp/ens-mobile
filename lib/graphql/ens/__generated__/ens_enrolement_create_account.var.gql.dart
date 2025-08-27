// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i2;

part 'ens_enrolement_create_account.var.gql.g.dart';

abstract class Gcreate_accountVars
    implements Built<Gcreate_accountVars, Gcreate_accountVarsBuilder> {
  Gcreate_accountVars._();

  factory Gcreate_accountVars(
          [void Function(Gcreate_accountVarsBuilder b) updates]) =
      _$Gcreate_accountVars;

  _i1.GCreateAccountEnsInput get input;
  static Serializer<Gcreate_accountVars> get serializer =>
      _$gcreateAccountVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        Gcreate_accountVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gcreate_accountVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        Gcreate_accountVars.serializer,
        json,
      );
}
