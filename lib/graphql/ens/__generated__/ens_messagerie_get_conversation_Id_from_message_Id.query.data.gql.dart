// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_messagerie_get_conversation_Id_from_message_Id.query.data.gql.g.dart';

abstract class Gget_conversation_id_from_message_idData
    implements
        Built<Gget_conversation_id_from_message_idData,
            Gget_conversation_id_from_message_idDataBuilder> {
  Gget_conversation_id_from_message_idData._();

  factory Gget_conversation_id_from_message_idData(
      [void Function(Gget_conversation_id_from_message_idDataBuilder b)
          updates]) = _$Gget_conversation_id_from_message_idData;

  static void _initializeBuilder(
          Gget_conversation_id_from_message_idDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gget_conversation_id_from_message_idData_getMessageById get getMessageById;
  static Serializer<Gget_conversation_id_from_message_idData> get serializer =>
      _$ggetConversationIdFromMessageIdDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_conversation_id_from_message_idData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_conversation_id_from_message_idData? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_conversation_id_from_message_idData.serializer,
        json,
      );
}

abstract class Gget_conversation_id_from_message_idData_getMessageById
    implements
        Built<Gget_conversation_id_from_message_idData_getMessageById,
            Gget_conversation_id_from_message_idData_getMessageByIdBuilder> {
  Gget_conversation_id_from_message_idData_getMessageById._();

  factory Gget_conversation_id_from_message_idData_getMessageById(
      [void Function(
              Gget_conversation_id_from_message_idData_getMessageByIdBuilder b)
          updates]) = _$Gget_conversation_id_from_message_idData_getMessageById;

  static void _initializeBuilder(
          Gget_conversation_id_from_message_idData_getMessageByIdBuilder b) =>
      b..G__typename = 'MessageModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get conversationId;
  static Serializer<Gget_conversation_id_from_message_idData_getMessageById>
      get serializer =>
          _$ggetConversationIdFromMessageIdDataGetMessageByIdSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_conversation_id_from_message_idData_getMessageById.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_conversation_id_from_message_idData_getMessageById? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_conversation_id_from_message_idData_getMessageById.serializer,
        json,
      );
}
