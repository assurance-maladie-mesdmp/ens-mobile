// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i2;

part 'ens_entourage_update.query.var.gql.g.dart';

abstract class Gmodify_entourage_contactVars
    implements
        Built<Gmodify_entourage_contactVars,
            Gmodify_entourage_contactVarsBuilder> {
  Gmodify_entourage_contactVars._();

  factory Gmodify_entourage_contactVars(
          [void Function(Gmodify_entourage_contactVarsBuilder b) updates]) =
      _$Gmodify_entourage_contactVars;

  _i1.GContactUpdateInput get contact;
  static Serializer<Gmodify_entourage_contactVars> get serializer =>
      _$gmodifyEntourageContactVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        Gmodify_entourage_contactVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gmodify_entourage_contactVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        Gmodify_entourage_contactVars.serializer,
        json,
      );
}
