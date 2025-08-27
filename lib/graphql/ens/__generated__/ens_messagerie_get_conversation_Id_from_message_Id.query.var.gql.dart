// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i2;

part 'ens_messagerie_get_conversation_Id_from_message_Id.query.var.gql.g.dart';

abstract class Gget_conversation_id_from_message_idVars
    implements
        Built<Gget_conversation_id_from_message_idVars,
            Gget_conversation_id_from_message_idVarsBuilder> {
  Gget_conversation_id_from_message_idVars._();

  factory Gget_conversation_id_from_message_idVars(
      [void Function(Gget_conversation_id_from_message_idVarsBuilder b)
          updates]) = _$Gget_conversation_id_from_message_idVars;

  _i1.GMessageInput get input;
  static Serializer<Gget_conversation_id_from_message_idVars> get serializer =>
      _$ggetConversationIdFromMessageIdVarsSerializer;

  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        Gget_conversation_id_from_message_idVars.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_conversation_id_from_message_idVars? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        Gget_conversation_id_from_message_idVars.serializer,
        json,
      );
}
