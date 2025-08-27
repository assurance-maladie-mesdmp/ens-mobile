// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_messagerie_mailbox.fragment.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_messagerie_message_response.fragment.data.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i4;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_messagerie_send_message.query.data.gql.g.dart';

abstract class Gsend_messageData
    implements Built<Gsend_messageData, Gsend_messageDataBuilder> {
  Gsend_messageData._();

  factory Gsend_messageData(
          [void Function(Gsend_messageDataBuilder b) updates]) =
      _$Gsend_messageData;

  static void _initializeBuilder(Gsend_messageDataBuilder b) =>
      b..G__typename = 'Mutation';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gsend_messageData_sendMessage get sendMessage;
  static Serializer<Gsend_messageData> get serializer =>
      _$gsendMessageDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gsend_messageData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gsend_messageData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gsend_messageData.serializer,
        json,
      );
}

abstract class Gsend_messageData_sendMessage
    implements
        Built<Gsend_messageData_sendMessage,
            Gsend_messageData_sendMessageBuilder> {
  Gsend_messageData_sendMessage._();

  factory Gsend_messageData_sendMessage(
          [void Function(Gsend_messageData_sendMessageBuilder b) updates]) =
      _$Gsend_messageData_sendMessage;

  static void _initializeBuilder(Gsend_messageData_sendMessageBuilder b) =>
      b..G__typename = 'SendMessageResponseModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get conversationId;
  Gsend_messageData_sendMessage_mailBoxModel get mailBoxModel;
  Gsend_messageData_sendMessage_messageResponseModel get messageResponseModel;
  static Serializer<Gsend_messageData_sendMessage> get serializer =>
      _$gsendMessageDataSendMessageSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gsend_messageData_sendMessage.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gsend_messageData_sendMessage? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gsend_messageData_sendMessage.serializer,
        json,
      );
}

abstract class Gsend_messageData_sendMessage_mailBoxModel
    implements
        Built<Gsend_messageData_sendMessage_mailBoxModel,
            Gsend_messageData_sendMessage_mailBoxModelBuilder>,
        _i2.GmailBox {
  Gsend_messageData_sendMessage_mailBoxModel._();

  factory Gsend_messageData_sendMessage_mailBoxModel(
      [void Function(Gsend_messageData_sendMessage_mailBoxModelBuilder b)
          updates]) = _$Gsend_messageData_sendMessage_mailBoxModel;

  static void _initializeBuilder(
          Gsend_messageData_sendMessage_mailBoxModelBuilder b) =>
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
  BuiltList<Gsend_messageData_sendMessage_mailBoxModel_conversations>?
      get conversations;
  @override
  BuiltList<Gsend_messageData_sendMessage_mailBoxModel_contacts> get contacts;
  static Serializer<Gsend_messageData_sendMessage_mailBoxModel>
      get serializer => _$gsendMessageDataSendMessageMailBoxModelSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gsend_messageData_sendMessage_mailBoxModel.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gsend_messageData_sendMessage_mailBoxModel? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gsend_messageData_sendMessage_mailBoxModel.serializer,
        json,
      );
}

abstract class Gsend_messageData_sendMessage_mailBoxModel_conversations
    implements
        Built<Gsend_messageData_sendMessage_mailBoxModel_conversations,
            Gsend_messageData_sendMessage_mailBoxModel_conversationsBuilder>,
        _i2.GmailBox_conversations {
  Gsend_messageData_sendMessage_mailBoxModel_conversations._();

  factory Gsend_messageData_sendMessage_mailBoxModel_conversations(
      [void Function(
              Gsend_messageData_sendMessage_mailBoxModel_conversationsBuilder b)
          updates]) = _$Gsend_messageData_sendMessage_mailBoxModel_conversations;

  static void _initializeBuilder(
          Gsend_messageData_sendMessage_mailBoxModel_conversationsBuilder b) =>
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
  static Serializer<Gsend_messageData_sendMessage_mailBoxModel_conversations>
      get serializer =>
          _$gsendMessageDataSendMessageMailBoxModelConversationsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gsend_messageData_sendMessage_mailBoxModel_conversations.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gsend_messageData_sendMessage_mailBoxModel_conversations? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gsend_messageData_sendMessage_mailBoxModel_conversations.serializer,
        json,
      );
}

abstract class Gsend_messageData_sendMessage_mailBoxModel_contacts
    implements
        Built<Gsend_messageData_sendMessage_mailBoxModel_contacts,
            Gsend_messageData_sendMessage_mailBoxModel_contactsBuilder>,
        _i2.GmailBox_contacts {
  Gsend_messageData_sendMessage_mailBoxModel_contacts._();

  factory Gsend_messageData_sendMessage_mailBoxModel_contacts(
      [void Function(
              Gsend_messageData_sendMessage_mailBoxModel_contactsBuilder b)
          updates]) = _$Gsend_messageData_sendMessage_mailBoxModel_contacts;

  static void _initializeBuilder(
          Gsend_messageData_sendMessage_mailBoxModel_contactsBuilder b) =>
      b..G__typename = 'MessagingContactModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get fullName;
  static Serializer<Gsend_messageData_sendMessage_mailBoxModel_contacts>
      get serializer =>
          _$gsendMessageDataSendMessageMailBoxModelContactsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gsend_messageData_sendMessage_mailBoxModel_contacts.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gsend_messageData_sendMessage_mailBoxModel_contacts? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gsend_messageData_sendMessage_mailBoxModel_contacts.serializer,
        json,
      );
}

abstract class Gsend_messageData_sendMessage_messageResponseModel
    implements
        Built<Gsend_messageData_sendMessage_messageResponseModel,
            Gsend_messageData_sendMessage_messageResponseModelBuilder>,
        _i3.GmessageResponse {
  Gsend_messageData_sendMessage_messageResponseModel._();

  factory Gsend_messageData_sendMessage_messageResponseModel(
      [void Function(
              Gsend_messageData_sendMessage_messageResponseModelBuilder b)
          updates]) = _$Gsend_messageData_sendMessage_messageResponseModel;

  static void _initializeBuilder(
          Gsend_messageData_sendMessage_messageResponseModelBuilder b) =>
      b..G__typename = 'MessageResponseModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get subject;
  @override
  bool get acknowledge;
  @override
  BuiltList<Gsend_messageData_sendMessage_messageResponseModel_messages>?
      get messages;
  @override
  Gsend_messageData_sendMessage_messageResponseModel_draft? get draft;
  @override
  Gsend_messageData_sendMessage_messageResponseModel_responseTemplate
      get responseTemplate;
  static Serializer<Gsend_messageData_sendMessage_messageResponseModel>
      get serializer =>
          _$gsendMessageDataSendMessageMessageResponseModelSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gsend_messageData_sendMessage_messageResponseModel.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gsend_messageData_sendMessage_messageResponseModel? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gsend_messageData_sendMessage_messageResponseModel.serializer,
        json,
      );
}

abstract class Gsend_messageData_sendMessage_messageResponseModel_messages
    implements
        Built<Gsend_messageData_sendMessage_messageResponseModel_messages,
            Gsend_messageData_sendMessage_messageResponseModel_messagesBuilder>,
        _i3.GmessageResponse_messages {
  Gsend_messageData_sendMessage_messageResponseModel_messages._();

  factory Gsend_messageData_sendMessage_messageResponseModel_messages(
      [void Function(
              Gsend_messageData_sendMessage_messageResponseModel_messagesBuilder
                  b)
          updates]) = _$Gsend_messageData_sendMessage_messageResponseModel_messages;

  static void _initializeBuilder(
          Gsend_messageData_sendMessage_messageResponseModel_messagesBuilder
              b) =>
      b..G__typename = 'MessageModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  BuiltList<
          Gsend_messageData_sendMessage_messageResponseModel_messages_contactDetails>
      get contactDetails;
  @override
  String get id;
  @override
  String get date;
  @override
  String get content;
  @override
  bool get read;
  @override
  BuiltList<String> get recipients;
  @override
  BuiltList<Gsend_messageData_sendMessage_messageResponseModel_messages_files>
      get files;
  static Serializer<Gsend_messageData_sendMessage_messageResponseModel_messages>
      get serializer =>
          _$gsendMessageDataSendMessageMessageResponseModelMessagesSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gsend_messageData_sendMessage_messageResponseModel_messages.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gsend_messageData_sendMessage_messageResponseModel_messages? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gsend_messageData_sendMessage_messageResponseModel_messages.serializer,
        json,
      );
}

abstract class Gsend_messageData_sendMessage_messageResponseModel_messages_contactDetails
    implements
        Built<
            Gsend_messageData_sendMessage_messageResponseModel_messages_contactDetails,
            Gsend_messageData_sendMessage_messageResponseModel_messages_contactDetailsBuilder>,
        _i3.GmessageResponse_messages_contactDetails,
        _i3.GContactDetailFragment {
  Gsend_messageData_sendMessage_messageResponseModel_messages_contactDetails._();

  factory Gsend_messageData_sendMessage_messageResponseModel_messages_contactDetails(
          [void Function(
                  Gsend_messageData_sendMessage_messageResponseModel_messages_contactDetailsBuilder
                      b)
              updates]) =
      _$Gsend_messageData_sendMessage_messageResponseModel_messages_contactDetails;

  static void _initializeBuilder(
          Gsend_messageData_sendMessage_messageResponseModel_messages_contactDetailsBuilder
              b) =>
      b..G__typename = 'ContactDetails';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get name;
  @override
  String get type;
  @override
  String? get idNat;
  @override
  String? get typeBal;
  static Serializer<
          Gsend_messageData_sendMessage_messageResponseModel_messages_contactDetails>
      get serializer =>
          _$gsendMessageDataSendMessageMessageResponseModelMessagesContactDetailsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gsend_messageData_sendMessage_messageResponseModel_messages_contactDetails
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gsend_messageData_sendMessage_messageResponseModel_messages_contactDetails?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gsend_messageData_sendMessage_messageResponseModel_messages_contactDetails
                .serializer,
            json,
          );
}

abstract class Gsend_messageData_sendMessage_messageResponseModel_messages_files
    implements
        Built<Gsend_messageData_sendMessage_messageResponseModel_messages_files,
            Gsend_messageData_sendMessage_messageResponseModel_messages_filesBuilder>,
        _i3.GmessageResponse_messages_files {
  Gsend_messageData_sendMessage_messageResponseModel_messages_files._();

  factory Gsend_messageData_sendMessage_messageResponseModel_messages_files(
          [void Function(
                  Gsend_messageData_sendMessage_messageResponseModel_messages_filesBuilder
                      b)
              updates]) =
      _$Gsend_messageData_sendMessage_messageResponseModel_messages_files;

  static void _initializeBuilder(
          Gsend_messageData_sendMessage_messageResponseModel_messages_filesBuilder
              b) =>
      b..G__typename = 'FileSimpleModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get name;
  static Serializer<
          Gsend_messageData_sendMessage_messageResponseModel_messages_files>
      get serializer =>
          _$gsendMessageDataSendMessageMessageResponseModelMessagesFilesSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gsend_messageData_sendMessage_messageResponseModel_messages_files
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gsend_messageData_sendMessage_messageResponseModel_messages_files?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gsend_messageData_sendMessage_messageResponseModel_messages_files
                .serializer,
            json,
          );
}

abstract class Gsend_messageData_sendMessage_messageResponseModel_draft
    implements
        Built<Gsend_messageData_sendMessage_messageResponseModel_draft,
            Gsend_messageData_sendMessage_messageResponseModel_draftBuilder>,
        _i3.GmessageResponse_draft {
  Gsend_messageData_sendMessage_messageResponseModel_draft._();

  factory Gsend_messageData_sendMessage_messageResponseModel_draft(
      [void Function(
              Gsend_messageData_sendMessage_messageResponseModel_draftBuilder b)
          updates]) = _$Gsend_messageData_sendMessage_messageResponseModel_draft;

  static void _initializeBuilder(
          Gsend_messageData_sendMessage_messageResponseModel_draftBuilder b) =>
      b..G__typename = 'DraftModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String? get parentId;
  @override
  BuiltList<
          Gsend_messageData_sendMessage_messageResponseModel_draft_contactDetails>
      get contactDetails;
  @override
  Gsend_messageData_sendMessage_messageResponseModel_draft_draftRecipients
      get draftRecipients;
  @override
  String get date;
  @override
  String get content;
  @override
  String get subject;
  @override
  bool get read;
  @override
  double get remainSizeFiles;
  @override
  BuiltList<String> get recipients;
  @override
  BuiltList<Gsend_messageData_sendMessage_messageResponseModel_draft_files>
      get files;
  static Serializer<Gsend_messageData_sendMessage_messageResponseModel_draft>
      get serializer =>
          _$gsendMessageDataSendMessageMessageResponseModelDraftSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gsend_messageData_sendMessage_messageResponseModel_draft.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gsend_messageData_sendMessage_messageResponseModel_draft? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gsend_messageData_sendMessage_messageResponseModel_draft.serializer,
        json,
      );
}

abstract class Gsend_messageData_sendMessage_messageResponseModel_draft_contactDetails
    implements
        Built<
            Gsend_messageData_sendMessage_messageResponseModel_draft_contactDetails,
            Gsend_messageData_sendMessage_messageResponseModel_draft_contactDetailsBuilder>,
        _i3.GmessageResponse_draft_contactDetails,
        _i3.GContactDetailFragment {
  Gsend_messageData_sendMessage_messageResponseModel_draft_contactDetails._();

  factory Gsend_messageData_sendMessage_messageResponseModel_draft_contactDetails(
          [void Function(
                  Gsend_messageData_sendMessage_messageResponseModel_draft_contactDetailsBuilder
                      b)
              updates]) =
      _$Gsend_messageData_sendMessage_messageResponseModel_draft_contactDetails;

  static void _initializeBuilder(
          Gsend_messageData_sendMessage_messageResponseModel_draft_contactDetailsBuilder
              b) =>
      b..G__typename = 'ContactDetails';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get name;
  @override
  String get type;
  @override
  String? get idNat;
  @override
  String? get typeBal;
  static Serializer<
          Gsend_messageData_sendMessage_messageResponseModel_draft_contactDetails>
      get serializer =>
          _$gsendMessageDataSendMessageMessageResponseModelDraftContactDetailsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gsend_messageData_sendMessage_messageResponseModel_draft_contactDetails
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gsend_messageData_sendMessage_messageResponseModel_draft_contactDetails?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gsend_messageData_sendMessage_messageResponseModel_draft_contactDetails
                .serializer,
            json,
          );
}

abstract class Gsend_messageData_sendMessage_messageResponseModel_draft_draftRecipients
    implements
        Built<
            Gsend_messageData_sendMessage_messageResponseModel_draft_draftRecipients,
            Gsend_messageData_sendMessage_messageResponseModel_draft_draftRecipientsBuilder>,
        _i3.GmessageResponse_draft_draftRecipients {
  Gsend_messageData_sendMessage_messageResponseModel_draft_draftRecipients._();

  factory Gsend_messageData_sendMessage_messageResponseModel_draft_draftRecipients(
          [void Function(
                  Gsend_messageData_sendMessage_messageResponseModel_draft_draftRecipientsBuilder
                      b)
              updates]) =
      _$Gsend_messageData_sendMessage_messageResponseModel_draft_draftRecipients;

  static void _initializeBuilder(
          Gsend_messageData_sendMessage_messageResponseModel_draft_draftRecipientsBuilder
              b) =>
      b..G__typename = 'DraftRecipients';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  BuiltList<
          Gsend_messageData_sendMessage_messageResponseModel_draft_draftRecipients_to>
      get to;
  static Serializer<
          Gsend_messageData_sendMessage_messageResponseModel_draft_draftRecipients>
      get serializer =>
          _$gsendMessageDataSendMessageMessageResponseModelDraftDraftRecipientsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gsend_messageData_sendMessage_messageResponseModel_draft_draftRecipients
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gsend_messageData_sendMessage_messageResponseModel_draft_draftRecipients?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gsend_messageData_sendMessage_messageResponseModel_draft_draftRecipients
                .serializer,
            json,
          );
}

abstract class Gsend_messageData_sendMessage_messageResponseModel_draft_draftRecipients_to
    implements
        Built<
            Gsend_messageData_sendMessage_messageResponseModel_draft_draftRecipients_to,
            Gsend_messageData_sendMessage_messageResponseModel_draft_draftRecipients_toBuilder>,
        _i3.GmessageResponse_draft_draftRecipients_to {
  Gsend_messageData_sendMessage_messageResponseModel_draft_draftRecipients_to._();

  factory Gsend_messageData_sendMessage_messageResponseModel_draft_draftRecipients_to(
          [void Function(
                  Gsend_messageData_sendMessage_messageResponseModel_draft_draftRecipients_toBuilder
                      b)
              updates]) =
      _$Gsend_messageData_sendMessage_messageResponseModel_draft_draftRecipients_to;

  static void _initializeBuilder(
          Gsend_messageData_sendMessage_messageResponseModel_draft_draftRecipients_toBuilder
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
          Gsend_messageData_sendMessage_messageResponseModel_draft_draftRecipients_to>
      get serializer =>
          _$gsendMessageDataSendMessageMessageResponseModelDraftDraftRecipientsToSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gsend_messageData_sendMessage_messageResponseModel_draft_draftRecipients_to
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gsend_messageData_sendMessage_messageResponseModel_draft_draftRecipients_to?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gsend_messageData_sendMessage_messageResponseModel_draft_draftRecipients_to
                .serializer,
            json,
          );
}

abstract class Gsend_messageData_sendMessage_messageResponseModel_draft_files
    implements
        Built<Gsend_messageData_sendMessage_messageResponseModel_draft_files,
            Gsend_messageData_sendMessage_messageResponseModel_draft_filesBuilder>,
        _i3.GmessageResponse_draft_files {
  Gsend_messageData_sendMessage_messageResponseModel_draft_files._();

  factory Gsend_messageData_sendMessage_messageResponseModel_draft_files(
          [void Function(
                  Gsend_messageData_sendMessage_messageResponseModel_draft_filesBuilder
                      b)
              updates]) =
      _$Gsend_messageData_sendMessage_messageResponseModel_draft_files;

  static void _initializeBuilder(
          Gsend_messageData_sendMessage_messageResponseModel_draft_filesBuilder
              b) =>
      b..G__typename = 'FileSimpleModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get name;
  @override
  double get size;
  static Serializer<
          Gsend_messageData_sendMessage_messageResponseModel_draft_files>
      get serializer =>
          _$gsendMessageDataSendMessageMessageResponseModelDraftFilesSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gsend_messageData_sendMessage_messageResponseModel_draft_files
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gsend_messageData_sendMessage_messageResponseModel_draft_files?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gsend_messageData_sendMessage_messageResponseModel_draft_files
                .serializer,
            json,
          );
}

abstract class Gsend_messageData_sendMessage_messageResponseModel_responseTemplate
    implements
        Built<
            Gsend_messageData_sendMessage_messageResponseModel_responseTemplate,
            Gsend_messageData_sendMessage_messageResponseModel_responseTemplateBuilder>,
        _i3.GmessageResponse_responseTemplate {
  Gsend_messageData_sendMessage_messageResponseModel_responseTemplate._();

  factory Gsend_messageData_sendMessage_messageResponseModel_responseTemplate(
          [void Function(
                  Gsend_messageData_sendMessage_messageResponseModel_responseTemplateBuilder
                      b)
              updates]) =
      _$Gsend_messageData_sendMessage_messageResponseModel_responseTemplate;

  static void _initializeBuilder(
          Gsend_messageData_sendMessage_messageResponseModel_responseTemplateBuilder
              b) =>
      b..G__typename = 'ResponseTemplateModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get conversationFinalizedBy;
  @override
  String get messageId;
  @override
  BuiltList<_i4.GReplyTypeEnum> get replyOptions;
  @override
  String get conversationId;
  @override
  String get from;
  @override
  String get to;
  @override
  BuiltList<String>? get recipients;
  @override
  double get remainSizeFiles;
  static Serializer<
          Gsend_messageData_sendMessage_messageResponseModel_responseTemplate>
      get serializer =>
          _$gsendMessageDataSendMessageMessageResponseModelResponseTemplateSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gsend_messageData_sendMessage_messageResponseModel_responseTemplate
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gsend_messageData_sendMessage_messageResponseModel_responseTemplate?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gsend_messageData_sendMessage_messageResponseModel_responseTemplate
                .serializer,
            json,
          );
}
