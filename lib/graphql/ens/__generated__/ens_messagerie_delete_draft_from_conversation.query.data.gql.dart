// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_messagerie_mailbox.fragment.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_messagerie_delete_draft_from_conversation.query.data.gql.g.dart';

abstract class Gdelete_draft_from_conversationData
    implements
        Built<Gdelete_draft_from_conversationData,
            Gdelete_draft_from_conversationDataBuilder> {
  Gdelete_draft_from_conversationData._();

  factory Gdelete_draft_from_conversationData(
      [void Function(Gdelete_draft_from_conversationDataBuilder b)
          updates]) = _$Gdelete_draft_from_conversationData;

  static void _initializeBuilder(
          Gdelete_draft_from_conversationDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gdelete_draft_from_conversationData_deleteDraftFromConversation
      get deleteDraftFromConversation;
  static Serializer<Gdelete_draft_from_conversationData> get serializer =>
      _$gdeleteDraftFromConversationDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gdelete_draft_from_conversationData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gdelete_draft_from_conversationData? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gdelete_draft_from_conversationData.serializer,
        json,
      );
}

abstract class Gdelete_draft_from_conversationData_deleteDraftFromConversation
    implements
        Built<Gdelete_draft_from_conversationData_deleteDraftFromConversation,
            Gdelete_draft_from_conversationData_deleteDraftFromConversationBuilder> {
  Gdelete_draft_from_conversationData_deleteDraftFromConversation._();

  factory Gdelete_draft_from_conversationData_deleteDraftFromConversation(
          [void Function(
                  Gdelete_draft_from_conversationData_deleteDraftFromConversationBuilder
                      b)
              updates]) =
      _$Gdelete_draft_from_conversationData_deleteDraftFromConversation;

  static void _initializeBuilder(
          Gdelete_draft_from_conversationData_deleteDraftFromConversationBuilder
              b) =>
      b..G__typename = 'DeleteDraftSuccess';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool get success;
  Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox
      get mailBox;
  static Serializer<
          Gdelete_draft_from_conversationData_deleteDraftFromConversation>
      get serializer =>
          _$gdeleteDraftFromConversationDataDeleteDraftFromConversationSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gdelete_draft_from_conversationData_deleteDraftFromConversation
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gdelete_draft_from_conversationData_deleteDraftFromConversation?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gdelete_draft_from_conversationData_deleteDraftFromConversation
                .serializer,
            json,
          );
}

abstract class Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox
    implements
        Built<
            Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox,
            Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBoxBuilder>,
        _i2.GmailBox {
  Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox._();

  factory Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox(
          [void Function(
                  Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBoxBuilder
                      b)
              updates]) =
      _$Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox;

  static void _initializeBuilder(
          Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBoxBuilder
              b) =>
      b..G__typename = 'MailBoxModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get userMail;
  @override
  int get totalElements;
  @override
  int get totalPages;
  @override
  bool get oneOrMoreUnreadConversation;
  @override
  BuiltList<
          Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_conversations>?
      get conversations;
  @override
  BuiltList<
          Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_contacts>
      get contacts;
  static Serializer<
          Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox>
      get serializer =>
          _$gdeleteDraftFromConversationDataDeleteDraftFromConversationMailBoxSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox
                .serializer,
            json,
          );
}

abstract class Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_conversations
    implements
        Built<
            Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_conversations,
            Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_conversationsBuilder>,
        _i2.GmailBox_conversations {
  Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_conversations._();

  factory Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_conversations(
          [void Function(
                  Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_conversationsBuilder
                      b)
              updates]) =
      _$Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_conversations;

  static void _initializeBuilder(
          Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_conversationsBuilder
              b) =>
      b..G__typename = 'ConversationModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get date;
  @override
  bool get hasAttachment;
  @override
  String get subject;
  @override
  BuiltList<String> get healthProfessionalNames;
  @override
  bool get read;
  @override
  bool get hasDraft;
  @override
  bool get isNewMessage;
  static Serializer<
          Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_conversations>
      get serializer =>
          _$gdeleteDraftFromConversationDataDeleteDraftFromConversationMailBoxConversationsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_conversations
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_conversations?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_conversations
                .serializer,
            json,
          );
}

abstract class Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_contacts
    implements
        Built<
            Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_contacts,
            Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_contactsBuilder>,
        _i2.GmailBox_contacts {
  Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_contacts._();

  factory Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_contacts(
          [void Function(
                  Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_contactsBuilder
                      b)
              updates]) =
      _$Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_contacts;

  static void _initializeBuilder(
          Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_contactsBuilder
              b) =>
      b..G__typename = 'MessagingContactModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get fullName;
  static Serializer<
          Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_contacts>
      get serializer =>
          _$gdeleteDraftFromConversationDataDeleteDraftFromConversationMailBoxContactsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_contacts
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_contacts?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gdelete_draft_from_conversationData_deleteDraftFromConversation_mailBox_contacts
                .serializer,
            json,
          );
}
