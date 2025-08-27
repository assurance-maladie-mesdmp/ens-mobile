// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i2;

part 'ens_messagerie_acknowledge.query.var.gql.g.dart';

abstract class GacknowledgeVars
    implements Built<GacknowledgeVars, GacknowledgeVarsBuilder> {
  GacknowledgeVars._();

  factory GacknowledgeVars([void Function(GacknowledgeVarsBuilder b) updates]) =
      _$GacknowledgeVars;

  _i1.GAcknowledgeInput get input;
  static Serializer<GacknowledgeVars> get serializer =>
      _$gacknowledgeVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GacknowledgeVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static GacknowledgeVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GacknowledgeVars.serializer,
        json,
      );
}
