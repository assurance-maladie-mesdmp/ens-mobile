// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i2;

part 'ens_messagerie_send_message.query.var.gql.g.dart';

abstract class Gsend_messageVars
    implements Built<Gsend_messageVars, Gsend_messageVarsBuilder> {
  Gsend_messageVars._();

  factory Gsend_messageVars(
          [void Function(Gsend_messageVarsBuilder b) updates]) =
      _$Gsend_messageVars;

  _i1.GSendResponseInput get input;
  static Serializer<Gsend_messageVars> get serializer =>
      _$gsendMessageVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        Gsend_messageVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gsend_messageVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        Gsend_messageVars.serializer,
        json,
      );
}
