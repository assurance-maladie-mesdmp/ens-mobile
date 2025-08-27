// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_messagerie_delete_conversation.query.data.gql.g.dart';

abstract class Gdelete_conversationData
    implements
        Built<Gdelete_conversationData, Gdelete_conversationDataBuilder> {
  Gdelete_conversationData._();

  factory Gdelete_conversationData(
          [void Function(Gdelete_conversationDataBuilder b) updates]) =
      _$Gdelete_conversationData;

  static void _initializeBuilder(Gdelete_conversationDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gdelete_conversationData_moveToTrashConversation get moveToTrashConversation;
  static Serializer<Gdelete_conversationData> get serializer =>
      _$gdeleteConversationDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gdelete_conversationData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gdelete_conversationData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gdelete_conversationData.serializer,
        json,
      );
}

abstract class Gdelete_conversationData_moveToTrashConversation
    implements
        Built<Gdelete_conversationData_moveToTrashConversation,
            Gdelete_conversationData_moveToTrashConversationBuilder> {
  Gdelete_conversationData_moveToTrashConversation._();

  factory Gdelete_conversationData_moveToTrashConversation(
      [void Function(Gdelete_conversationData_moveToTrashConversationBuilder b)
          updates]) = _$Gdelete_conversationData_moveToTrashConversation;

  static void _initializeBuilder(
          Gdelete_conversationData_moveToTrashConversationBuilder b) =>
      b..G__typename = 'moveToTrashConversationSuccess';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool get success;
  static Serializer<Gdelete_conversationData_moveToTrashConversation>
      get serializer =>
          _$gdeleteConversationDataMoveToTrashConversationSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gdelete_conversationData_moveToTrashConversation.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gdelete_conversationData_moveToTrashConversation? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gdelete_conversationData_moveToTrashConversation.serializer,
        json,
      );
}
