// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i2;

part 'ens_entourage_create.query.var.gql.g.dart';

abstract class Gcreate_entourage_contactVars
    implements
        Built<Gcreate_entourage_contactVars,
            Gcreate_entourage_contactVarsBuilder> {
  Gcreate_entourage_contactVars._();

  factory Gcreate_entourage_contactVars(
          [void Function(Gcreate_entourage_contactVarsBuilder b) updates]) =
      _$Gcreate_entourage_contactVars;

  _i1.GContactPostInput get input;
  static Serializer<Gcreate_entourage_contactVars> get serializer =>
      _$gcreateEntourageContactVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        Gcreate_entourage_contactVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gcreate_entourage_contactVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        Gcreate_entourage_contactVars.serializer,
        json,
      );
}
