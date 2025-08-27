// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/ens_messagerie_message_response.fragment.data.gql.dart'
    as _i2;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i3;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_messagerie_get_messages.query.data.gql.g.dart';

abstract class Gget_messagesData
    implements Built<Gget_messagesData, Gget_messagesDataBuilder> {
  Gget_messagesData._();

  factory Gget_messagesData(
          [void Function(Gget_messagesDataBuilder b) updates]) =
      _$Gget_messagesData;

  static void _initializeBuilder(Gget_messagesDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gget_messagesData_getMessages get getMessages;
  static Serializer<Gget_messagesData> get serializer =>
      _$ggetMessagesDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_messagesData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_messagesData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_messagesData.serializer,
        json,
      );
}

abstract class Gget_messagesData_getMessages
    implements
        Built<Gget_messagesData_getMessages,
            Gget_messagesData_getMessagesBuilder>,
        _i2.GmessageResponse {
  Gget_messagesData_getMessages._();

  factory Gget_messagesData_getMessages(
          [void Function(Gget_messagesData_getMessagesBuilder b) updates]) =
      _$Gget_messagesData_getMessages;

  static void _initializeBuilder(Gget_messagesData_getMessagesBuilder b) =>
      b..G__typename = 'MessageResponseModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get subject;
  @override
  bool get acknowledge;
  @override
  BuiltList<Gget_messagesData_getMessages_messages>? get messages;
  @override
  Gget_messagesData_getMessages_draft? get draft;
  @override
  Gget_messagesData_getMessages_responseTemplate get responseTemplate;
  static Serializer<Gget_messagesData_getMessages> get serializer =>
      _$ggetMessagesDataGetMessagesSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_messagesData_getMessages.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_messagesData_getMessages? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_messagesData_getMessages.serializer,
        json,
      );
}

abstract class Gget_messagesData_getMessages_messages
    implements
        Built<Gget_messagesData_getMessages_messages,
            Gget_messagesData_getMessages_messagesBuilder>,
        _i2.GmessageResponse_messages {
  Gget_messagesData_getMessages_messages._();

  factory Gget_messagesData_getMessages_messages(
      [void Function(Gget_messagesData_getMessages_messagesBuilder b)
          updates]) = _$Gget_messagesData_getMessages_messages;

  static void _initializeBuilder(
          Gget_messagesData_getMessages_messagesBuilder b) =>
      b..G__typename = 'MessageModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  BuiltList<Gget_messagesData_getMessages_messages_contactDetails>
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
  BuiltList<Gget_messagesData_getMessages_messages_files> get files;
  static Serializer<Gget_messagesData_getMessages_messages> get serializer =>
      _$ggetMessagesDataGetMessagesMessagesSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_messagesData_getMessages_messages.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_messagesData_getMessages_messages? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_messagesData_getMessages_messages.serializer,
        json,
      );
}

abstract class Gget_messagesData_getMessages_messages_contactDetails
    implements
        Built<Gget_messagesData_getMessages_messages_contactDetails,
            Gget_messagesData_getMessages_messages_contactDetailsBuilder>,
        _i2.GmessageResponse_messages_contactDetails,
        _i2.GContactDetailFragment {
  Gget_messagesData_getMessages_messages_contactDetails._();

  factory Gget_messagesData_getMessages_messages_contactDetails(
      [void Function(
              Gget_messagesData_getMessages_messages_contactDetailsBuilder b)
          updates]) = _$Gget_messagesData_getMessages_messages_contactDetails;

  static void _initializeBuilder(
          Gget_messagesData_getMessages_messages_contactDetailsBuilder b) =>
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
  static Serializer<Gget_messagesData_getMessages_messages_contactDetails>
      get serializer =>
          _$ggetMessagesDataGetMessagesMessagesContactDetailsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_messagesData_getMessages_messages_contactDetails.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_messagesData_getMessages_messages_contactDetails? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_messagesData_getMessages_messages_contactDetails.serializer,
        json,
      );
}

abstract class Gget_messagesData_getMessages_messages_files
    implements
        Built<Gget_messagesData_getMessages_messages_files,
            Gget_messagesData_getMessages_messages_filesBuilder>,
        _i2.GmessageResponse_messages_files {
  Gget_messagesData_getMessages_messages_files._();

  factory Gget_messagesData_getMessages_messages_files(
      [void Function(Gget_messagesData_getMessages_messages_filesBuilder b)
          updates]) = _$Gget_messagesData_getMessages_messages_files;

  static void _initializeBuilder(
          Gget_messagesData_getMessages_messages_filesBuilder b) =>
      b..G__typename = 'FileSimpleModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get name;
  static Serializer<Gget_messagesData_getMessages_messages_files>
      get serializer => _$ggetMessagesDataGetMessagesMessagesFilesSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_messagesData_getMessages_messages_files.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_messagesData_getMessages_messages_files? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_messagesData_getMessages_messages_files.serializer,
        json,
      );
}

abstract class Gget_messagesData_getMessages_draft
    implements
        Built<Gget_messagesData_getMessages_draft,
            Gget_messagesData_getMessages_draftBuilder>,
        _i2.GmessageResponse_draft {
  Gget_messagesData_getMessages_draft._();

  factory Gget_messagesData_getMessages_draft(
      [void Function(Gget_messagesData_getMessages_draftBuilder b)
          updates]) = _$Gget_messagesData_getMessages_draft;

  static void _initializeBuilder(
          Gget_messagesData_getMessages_draftBuilder b) =>
      b..G__typename = 'DraftModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String? get parentId;
  @override
  BuiltList<Gget_messagesData_getMessages_draft_contactDetails>
      get contactDetails;
  @override
  Gget_messagesData_getMessages_draft_draftRecipients get draftRecipients;
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
  BuiltList<Gget_messagesData_getMessages_draft_files> get files;
  static Serializer<Gget_messagesData_getMessages_draft> get serializer =>
      _$ggetMessagesDataGetMessagesDraftSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_messagesData_getMessages_draft.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_messagesData_getMessages_draft? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_messagesData_getMessages_draft.serializer,
        json,
      );
}

abstract class Gget_messagesData_getMessages_draft_contactDetails
    implements
        Built<Gget_messagesData_getMessages_draft_contactDetails,
            Gget_messagesData_getMessages_draft_contactDetailsBuilder>,
        _i2.GmessageResponse_draft_contactDetails,
        _i2.GContactDetailFragment {
  Gget_messagesData_getMessages_draft_contactDetails._();

  factory Gget_messagesData_getMessages_draft_contactDetails(
      [void Function(
              Gget_messagesData_getMessages_draft_contactDetailsBuilder b)
          updates]) = _$Gget_messagesData_getMessages_draft_contactDetails;

  static void _initializeBuilder(
          Gget_messagesData_getMessages_draft_contactDetailsBuilder b) =>
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
  static Serializer<Gget_messagesData_getMessages_draft_contactDetails>
      get serializer =>
          _$ggetMessagesDataGetMessagesDraftContactDetailsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_messagesData_getMessages_draft_contactDetails.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_messagesData_getMessages_draft_contactDetails? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_messagesData_getMessages_draft_contactDetails.serializer,
        json,
      );
}

abstract class Gget_messagesData_getMessages_draft_draftRecipients
    implements
        Built<Gget_messagesData_getMessages_draft_draftRecipients,
            Gget_messagesData_getMessages_draft_draftRecipientsBuilder>,
        _i2.GmessageResponse_draft_draftRecipients {
  Gget_messagesData_getMessages_draft_draftRecipients._();

  factory Gget_messagesData_getMessages_draft_draftRecipients(
      [void Function(
              Gget_messagesData_getMessages_draft_draftRecipientsBuilder b)
          updates]) = _$Gget_messagesData_getMessages_draft_draftRecipients;

  static void _initializeBuilder(
          Gget_messagesData_getMessages_draft_draftRecipientsBuilder b) =>
      b..G__typename = 'DraftRecipients';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  BuiltList<Gget_messagesData_getMessages_draft_draftRecipients_to> get to;
  static Serializer<Gget_messagesData_getMessages_draft_draftRecipients>
      get serializer =>
          _$ggetMessagesDataGetMessagesDraftDraftRecipientsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_messagesData_getMessages_draft_draftRecipients.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_messagesData_getMessages_draft_draftRecipients? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_messagesData_getMessages_draft_draftRecipients.serializer,
        json,
      );
}

abstract class Gget_messagesData_getMessages_draft_draftRecipients_to
    implements
        Built<Gget_messagesData_getMessages_draft_draftRecipients_to,
            Gget_messagesData_getMessages_draft_draftRecipients_toBuilder>,
        _i2.GmessageResponse_draft_draftRecipients_to {
  Gget_messagesData_getMessages_draft_draftRecipients_to._();

  factory Gget_messagesData_getMessages_draft_draftRecipients_to(
      [void Function(
              Gget_messagesData_getMessages_draft_draftRecipients_toBuilder b)
          updates]) = _$Gget_messagesData_getMessages_draft_draftRecipients_to;

  static void _initializeBuilder(
          Gget_messagesData_getMessages_draft_draftRecipients_toBuilder b) =>
      b..G__typename = 'MessagingContactModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get fullName;
  static Serializer<Gget_messagesData_getMessages_draft_draftRecipients_to>
      get serializer =>
          _$ggetMessagesDataGetMessagesDraftDraftRecipientsToSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_messagesData_getMessages_draft_draftRecipients_to.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_messagesData_getMessages_draft_draftRecipients_to? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_messagesData_getMessages_draft_draftRecipients_to.serializer,
        json,
      );
}

abstract class Gget_messagesData_getMessages_draft_files
    implements
        Built<Gget_messagesData_getMessages_draft_files,
            Gget_messagesData_getMessages_draft_filesBuilder>,
        _i2.GmessageResponse_draft_files {
  Gget_messagesData_getMessages_draft_files._();

  factory Gget_messagesData_getMessages_draft_files(
      [void Function(Gget_messagesData_getMessages_draft_filesBuilder b)
          updates]) = _$Gget_messagesData_getMessages_draft_files;

  static void _initializeBuilder(
          Gget_messagesData_getMessages_draft_filesBuilder b) =>
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
  static Serializer<Gget_messagesData_getMessages_draft_files> get serializer =>
      _$ggetMessagesDataGetMessagesDraftFilesSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_messagesData_getMessages_draft_files.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_messagesData_getMessages_draft_files? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_messagesData_getMessages_draft_files.serializer,
        json,
      );
}

abstract class Gget_messagesData_getMessages_responseTemplate
    implements
        Built<Gget_messagesData_getMessages_responseTemplate,
            Gget_messagesData_getMessages_responseTemplateBuilder>,
        _i2.GmessageResponse_responseTemplate {
  Gget_messagesData_getMessages_responseTemplate._();

  factory Gget_messagesData_getMessages_responseTemplate(
      [void Function(Gget_messagesData_getMessages_responseTemplateBuilder b)
          updates]) = _$Gget_messagesData_getMessages_responseTemplate;

  static void _initializeBuilder(
          Gget_messagesData_getMessages_responseTemplateBuilder b) =>
      b..G__typename = 'ResponseTemplateModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get conversationFinalizedBy;
  @override
  String get messageId;
  @override
  BuiltList<_i3.GReplyTypeEnum> get replyOptions;
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
  static Serializer<Gget_messagesData_getMessages_responseTemplate>
      get serializer => _$ggetMessagesDataGetMessagesResponseTemplateSerializer;

  @override
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_messagesData_getMessages_responseTemplate.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_messagesData_getMessages_responseTemplate? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_messagesData_getMessages_responseTemplate.serializer,
        json,
      );
}
