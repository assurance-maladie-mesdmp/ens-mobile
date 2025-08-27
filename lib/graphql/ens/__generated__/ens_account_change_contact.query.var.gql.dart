// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i2;

part 'ens_account_change_contact.query.var.gql.g.dart';

abstract class Gchange_contactVars
    implements Built<Gchange_contactVars, Gchange_contactVarsBuilder> {
  Gchange_contactVars._();

  factory Gchange_contactVars(
          [void Function(Gchange_contactVarsBuilder b) updates]) =
      _$Gchange_contactVars;

  _i1.GChangeContactInput get input;
  static Serializer<Gchange_contactVars> get serializer =>
      _$gchangeContactVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        Gchange_contactVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gchange_contactVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        Gchange_contactVars.serializer,
        json,
      );
}
