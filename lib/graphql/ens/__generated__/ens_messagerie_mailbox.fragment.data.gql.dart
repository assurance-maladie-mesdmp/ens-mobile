// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_messagerie_mailbox.fragment.data.gql.g.dart';

abstract class GmailBox {
  String get G__typename;
  String get userMail;
  int get totalElements;
  int get totalPages;
  bool get oneOrMoreUnreadConversation;
  BuiltList<GmailBox_conversations>? get conversations;
  BuiltList<GmailBox_contacts> get contacts;
  Map<String, dynamic> toJson();
}

abstract class GmailBox_conversations {
  String get G__typename;
  String get id;
  String get date;
  bool get hasAttachment;
  String get subject;
  BuiltList<String> get healthProfessionalNames;
  bool get read;
  bool get hasDraft;
  bool get isNewMessage;
  Map<String, dynamic> toJson();
}

abstract class GmailBox_contacts {
  String get G__typename;
  String get id;
  String get fullName;
  Map<String, dynamic> toJson();
}

abstract class GmailBoxData
    implements Built<GmailBoxData, GmailBoxDataBuilder>, GmailBox {
  GmailBoxData._();

  factory GmailBoxData([void Function(GmailBoxDataBuilder b) updates]) =
      _$GmailBoxData;

  static void _initializeBuilder(GmailBoxDataBuilder b) =>
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
  BuiltList<GmailBoxData_conversations>? get conversations;
  @override
  BuiltList<GmailBoxData_contacts> get contacts;
  static Serializer<GmailBoxData> get serializer => _$gmailBoxDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GmailBoxData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GmailBoxData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GmailBoxData.serializer,
        json,
      );
}

abstract class GmailBoxData_conversations
    implements
        Built<GmailBoxData_conversations, GmailBoxData_conversationsBuilder>,
        GmailBox_conversations {
  GmailBoxData_conversations._();

  factory GmailBoxData_conversations(
          [void Function(GmailBoxData_conversationsBuilder b) updates]) =
      _$GmailBoxData_conversations;

  static void _initializeBuilder(GmailBoxData_conversationsBuilder b) =>
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
  static Serializer<GmailBoxData_conversations> get serializer =>
      _$gmailBoxDataConversationsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GmailBoxData_conversations.serializer,
        this,
      ) as Map<String, dynamic>);

  static GmailBoxData_conversations? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GmailBoxData_conversations.serializer,
        json,
      );
}

abstract class GmailBoxData_contacts
    implements
        Built<GmailBoxData_contacts, GmailBoxData_contactsBuilder>,
        GmailBox_contacts {
  GmailBoxData_contacts._();

  factory GmailBoxData_contacts(
          [void Function(GmailBoxData_contactsBuilder b) updates]) =
      _$GmailBoxData_contacts;

  static void _initializeBuilder(GmailBoxData_contactsBuilder b) =>
      b..G__typename = 'MessagingContactModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get fullName;
  static Serializer<GmailBoxData_contacts> get serializer =>
      _$gmailBoxDataContactsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        GmailBoxData_contacts.serializer,
        this,
      ) as Map<String, dynamic>);

  static GmailBoxData_contacts? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        GmailBoxData_contacts.serializer,
        json,
      );
}
