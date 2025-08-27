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

part 'ens_messagerie_get_inbox.query.data.gql.g.dart';

abstract class Gget_inboxData
    implements Built<Gget_inboxData, Gget_inboxDataBuilder> {
  Gget_inboxData._();

  factory Gget_inboxData([void Function(Gget_inboxDataBuilder b) updates]) =
      _$Gget_inboxData;

  static void _initializeBuilder(Gget_inboxDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gget_inboxData_getInbox get getInbox;
  static Serializer<Gget_inboxData> get serializer => _$ggetInboxDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_inboxData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_inboxData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_inboxData.serializer,
        json,
      );
}

abstract class Gget_inboxData_getInbox
    implements
        Built<Gget_inboxData_getInbox, Gget_inboxData_getInboxBuilder>,
        _i2.GmailBox {
  Gget_inboxData_getInbox._();

  factory Gget_inboxData_getInbox(
          [void Function(Gget_inboxData_getInboxBuilder b) updates]) =
      _$Gget_inboxData_getInbox;

  static void _initializeBuilder(Gget_inboxData_getInboxBuilder b) =>
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
  BuiltList<Gget_inboxData_getInbox_conversations>? get conversations;
  @override
  BuiltList<Gget_inboxData_getInbox_contacts> get contacts;
  static Serializer<Gget_inboxData_getInbox> get serializer =>
      _$ggetInboxDataGetInboxSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_inboxData_getInbox.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_inboxData_getInbox? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_inboxData_getInbox.serializer,
        json,
      );
}

abstract class Gget_inboxData_getInbox_conversations
    implements
        Built<Gget_inboxData_getInbox_conversations,
            Gget_inboxData_getInbox_conversationsBuilder>,
        _i2.GmailBox_conversations {
  Gget_inboxData_getInbox_conversations._();

  factory Gget_inboxData_getInbox_conversations(
      [void Function(Gget_inboxData_getInbox_conversationsBuilder b)
          updates]) = _$Gget_inboxData_getInbox_conversations;

  static void _initializeBuilder(
          Gget_inboxData_getInbox_conversationsBuilder b) =>
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
  static Serializer<Gget_inboxData_getInbox_conversations> get serializer =>
      _$ggetInboxDataGetInboxConversationsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_inboxData_getInbox_conversations.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_inboxData_getInbox_conversations? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_inboxData_getInbox_conversations.serializer,
        json,
      );
}

abstract class Gget_inboxData_getInbox_contacts
    implements
        Built<Gget_inboxData_getInbox_contacts,
            Gget_inboxData_getInbox_contactsBuilder>,
        _i2.GmailBox_contacts {
  Gget_inboxData_getInbox_contacts._();

  factory Gget_inboxData_getInbox_contacts(
          [void Function(Gget_inboxData_getInbox_contactsBuilder b) updates]) =
      _$Gget_inboxData_getInbox_contacts;

  static void _initializeBuilder(Gget_inboxData_getInbox_contactsBuilder b) =>
      b..G__typename = 'MessagingContactModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get fullName;
  static Serializer<Gget_inboxData_getInbox_contacts> get serializer =>
      _$ggetInboxDataGetInboxContactsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_inboxData_getInbox_contacts.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_inboxData_getInbox_contacts? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_inboxData_getInbox_contacts.serializer,
        json,
      );
}
