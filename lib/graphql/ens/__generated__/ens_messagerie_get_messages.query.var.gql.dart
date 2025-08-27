// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i2;

part 'ens_messagerie_get_messages.query.var.gql.g.dart';

abstract class Gget_messagesVars
    implements Built<Gget_messagesVars, Gget_messagesVarsBuilder> {
  Gget_messagesVars._();

  factory Gget_messagesVars(
          [void Function(Gget_messagesVarsBuilder b) updates]) =
      _$Gget_messagesVars;

  _i1.GMessagingInput get input;
  static Serializer<Gget_messagesVars> get serializer =>
      _$ggetMessagesVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        Gget_messagesVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_messagesVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        Gget_messagesVars.serializer,
        json,
      );
}
