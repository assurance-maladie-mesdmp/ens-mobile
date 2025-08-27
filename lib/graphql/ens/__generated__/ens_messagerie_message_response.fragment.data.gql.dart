// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/schema-ens.schema.gql.dart'
    as _i1;
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i2;

part 'ens_messagerie_message_response.fragment.data.gql.g.dart';

abstract class GmessageResponse {
  String get G__typename;
  String get subject;
  bool get acknowledge;
  BuiltList<GmessageResponse_messages>? get messages;
  GmessageResponse_draft? get draft;
  GmessageResponse_responseTemplate get responseTemplate;
  Map<String, dynamic> toJson();
}

abstract class GmessageResponse_messages {
  String get G__typename;
  BuiltList<GmessageResponse_messages_contactDetails> get contactDetails;
  String get id;
  String get date;
  String get content;
  bool get read;
  BuiltList<String> get recipients;
  BuiltList<GmessageResponse_messages_files> get files;
  Map<String, dynamic> toJson();
}

abstract class GmessageResponse_messages_contactDetails
    implements GContactDetailFragment {
  @override
  String get G__typename;
  @override
  String get name;
  @override
  String get type;
  @override
  String? get idNat;
  @override
  String? get typeBal;
  @override
  Map<String, dynamic> toJson();
}

abstract class GmessageResponse_messages_files {
  String get G__typename;
  String get id;
  String get name;
  Map<String, dynamic> toJson();
}

abstract class GmessageResponse_draft {
  String get G__typename;
  String get id;
  String? get parentId;
  BuiltList<GmessageResponse_draft_contactDetails> get contactDetails;
  GmessageResponse_draft_draftRecipients get draftRecipients;
  String get date;
  String get content;
  String get subject;
  bool get read;
  double get remainSizeFiles;
  BuiltList<String> get recipients;
  BuiltList<GmessageResponse_draft_files> get files;
  Map<String, dynamic> toJson();
}

abstract class GmessageResponse_draft_contactDetails
    implements GContactDetailFragment {
  @override
  String get G__typename;
  @override
  String get name;
  @override
  String get type;
  @override
  String? get idNat;
  @override
  String? get typeBal;
  @override
  Map<String, dynamic> toJson();
}

abstract class GmessageResponse_draft_draftRecipients {
  String get G__typename;
  BuiltList<GmessageResponse_draft_draftRecipients_to> get to;
  Map<String, dynamic> toJson();
}

abstract class GmessageResponse_draft_draftRecipients_to {
  String get G__typename;
  String get id;
  String get fullName;
  Map<String, dynamic> toJson();
}

abstract class GmessageResponse_draft_files {
  String get G__typename;
  String get id;
  String get name;
  double get size;
  Map<String, dynamic> toJson();
}

abstract class GmessageResponse_responseTemplate {
  String get G__typename;
  String? get conversationFinalizedBy;
  String get messageId;
  BuiltList<_i1.GReplyTypeEnum> get replyOptions;
  String get conversationId;
  String get from;
  String get to;
  BuiltList<String>? get recipients;
  double get remainSizeFiles;
  Map<String, dynamic> toJson();
}

abstract class GmessageResponseData
    implements
        Built<GmessageResponseData, GmessageResponseDataBuilder>,
        GmessageResponse {
  GmessageResponseData._();

  factory GmessageResponseData(
          [void Function(GmessageResponseDataBuilder b) updates]) =
      _$GmessageResponseData;

  static void _initializeBuilder(GmessageResponseDataBuilder b) =>
      b..G__typename = 'MessageResponseModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get subject;
  @override
  bool get acknowledge;
  @override
  BuiltList<GmessageResponseData_messages>? get messages;
  @override
  GmessageResponseData_draft? get draft;
  @override
  GmessageResponseData_responseTemplate get responseTemplate;
  static Serializer<GmessageResponseData> get serializer =>
      _$gmessageResponseDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GmessageResponseData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GmessageResponseData? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GmessageResponseData.serializer,
        json,
      );
}

abstract class GmessageResponseData_messages
    implements
        Built<GmessageResponseData_messages,
            GmessageResponseData_messagesBuilder>,
        GmessageResponse_messages {
  GmessageResponseData_messages._();

  factory GmessageResponseData_messages(
          [void Function(GmessageResponseData_messagesBuilder b) updates]) =
      _$GmessageResponseData_messages;

  static void _initializeBuilder(GmessageResponseData_messagesBuilder b) =>
      b..G__typename = 'MessageModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  BuiltList<GmessageResponseData_messages_contactDetails> get contactDetails;
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
  BuiltList<GmessageResponseData_messages_files> get files;
  static Serializer<GmessageResponseData_messages> get serializer =>
      _$gmessageResponseDataMessagesSerializer;

  @override
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GmessageResponseData_messages.serializer,
        this,
      ) as Map<String, dynamic>);

  static GmessageResponseData_messages? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GmessageResponseData_messages.serializer,
        json,
      );
}

abstract class GmessageResponseData_messages_contactDetails
    implements
        Built<GmessageResponseData_messages_contactDetails,
            GmessageResponseData_messages_contactDetailsBuilder>,
        GmessageResponse_messages_contactDetails,
        GContactDetailFragment {
  GmessageResponseData_messages_contactDetails._();

  factory GmessageResponseData_messages_contactDetails(
      [void Function(GmessageResponseData_messages_contactDetailsBuilder b)
          updates]) = _$GmessageResponseData_messages_contactDetails;

  static void _initializeBuilder(
          GmessageResponseData_messages_contactDetailsBuilder b) =>
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
  static Serializer<GmessageResponseData_messages_contactDetails>
      get serializer => _$gmessageResponseDataMessagesContactDetailsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GmessageResponseData_messages_contactDetails.serializer,
        this,
      ) as Map<String, dynamic>);

  static GmessageResponseData_messages_contactDetails? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GmessageResponseData_messages_contactDetails.serializer,
        json,
      );
}

abstract class GmessageResponseData_messages_files
    implements
        Built<GmessageResponseData_messages_files,
            GmessageResponseData_messages_filesBuilder>,
        GmessageResponse_messages_files {
  GmessageResponseData_messages_files._();

  factory GmessageResponseData_messages_files(
      [void Function(GmessageResponseData_messages_filesBuilder b)
          updates]) = _$GmessageResponseData_messages_files;

  static void _initializeBuilder(
          GmessageResponseData_messages_filesBuilder b) =>
      b..G__typename = 'FileSimpleModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get name;
  static Serializer<GmessageResponseData_messages_files> get serializer =>
      _$gmessageResponseDataMessagesFilesSerializer;

  @override
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GmessageResponseData_messages_files.serializer,
        this,
      ) as Map<String, dynamic>);

  static GmessageResponseData_messages_files? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GmessageResponseData_messages_files.serializer,
        json,
      );
}

abstract class GmessageResponseData_draft
    implements
        Built<GmessageResponseData_draft, GmessageResponseData_draftBuilder>,
        GmessageResponse_draft {
  GmessageResponseData_draft._();

  factory GmessageResponseData_draft(
          [void Function(GmessageResponseData_draftBuilder b) updates]) =
      _$GmessageResponseData_draft;

  static void _initializeBuilder(GmessageResponseData_draftBuilder b) =>
      b..G__typename = 'DraftModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String? get parentId;
  @override
  BuiltList<GmessageResponseData_draft_contactDetails> get contactDetails;
  @override
  GmessageResponseData_draft_draftRecipients get draftRecipients;
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
  BuiltList<GmessageResponseData_draft_files> get files;
  static Serializer<GmessageResponseData_draft> get serializer =>
      _$gmessageResponseDataDraftSerializer;

  @override
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GmessageResponseData_draft.serializer,
        this,
      ) as Map<String, dynamic>);

  static GmessageResponseData_draft? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GmessageResponseData_draft.serializer,
        json,
      );
}

abstract class GmessageResponseData_draft_contactDetails
    implements
        Built<GmessageResponseData_draft_contactDetails,
            GmessageResponseData_draft_contactDetailsBuilder>,
        GmessageResponse_draft_contactDetails,
        GContactDetailFragment {
  GmessageResponseData_draft_contactDetails._();

  factory GmessageResponseData_draft_contactDetails(
      [void Function(GmessageResponseData_draft_contactDetailsBuilder b)
          updates]) = _$GmessageResponseData_draft_contactDetails;

  static void _initializeBuilder(
          GmessageResponseData_draft_contactDetailsBuilder b) =>
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
  static Serializer<GmessageResponseData_draft_contactDetails> get serializer =>
      _$gmessageResponseDataDraftContactDetailsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GmessageResponseData_draft_contactDetails.serializer,
        this,
      ) as Map<String, dynamic>);

  static GmessageResponseData_draft_contactDetails? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GmessageResponseData_draft_contactDetails.serializer,
        json,
      );
}

abstract class GmessageResponseData_draft_draftRecipients
    implements
        Built<GmessageResponseData_draft_draftRecipients,
            GmessageResponseData_draft_draftRecipientsBuilder>,
        GmessageResponse_draft_draftRecipients {
  GmessageResponseData_draft_draftRecipients._();

  factory GmessageResponseData_draft_draftRecipients(
      [void Function(GmessageResponseData_draft_draftRecipientsBuilder b)
          updates]) = _$GmessageResponseData_draft_draftRecipients;

  static void _initializeBuilder(
          GmessageResponseData_draft_draftRecipientsBuilder b) =>
      b..G__typename = 'DraftRecipients';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  BuiltList<GmessageResponseData_draft_draftRecipients_to> get to;
  static Serializer<GmessageResponseData_draft_draftRecipients>
      get serializer => _$gmessageResponseDataDraftDraftRecipientsSerializer;

  @override
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GmessageResponseData_draft_draftRecipients.serializer,
        this,
      ) as Map<String, dynamic>);

  static GmessageResponseData_draft_draftRecipients? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GmessageResponseData_draft_draftRecipients.serializer,
        json,
      );
}

abstract class GmessageResponseData_draft_draftRecipients_to
    implements
        Built<GmessageResponseData_draft_draftRecipients_to,
            GmessageResponseData_draft_draftRecipients_toBuilder>,
        GmessageResponse_draft_draftRecipients_to {
  GmessageResponseData_draft_draftRecipients_to._();

  factory GmessageResponseData_draft_draftRecipients_to(
      [void Function(GmessageResponseData_draft_draftRecipients_toBuilder b)
          updates]) = _$GmessageResponseData_draft_draftRecipients_to;

  static void _initializeBuilder(
          GmessageResponseData_draft_draftRecipients_toBuilder b) =>
      b..G__typename = 'MessagingContactModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String get id;
  @override
  String get fullName;
  static Serializer<GmessageResponseData_draft_draftRecipients_to>
      get serializer => _$gmessageResponseDataDraftDraftRecipientsToSerializer;

  @override
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GmessageResponseData_draft_draftRecipients_to.serializer,
        this,
      ) as Map<String, dynamic>);

  static GmessageResponseData_draft_draftRecipients_to? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GmessageResponseData_draft_draftRecipients_to.serializer,
        json,
      );
}

abstract class GmessageResponseData_draft_files
    implements
        Built<GmessageResponseData_draft_files,
            GmessageResponseData_draft_filesBuilder>,
        GmessageResponse_draft_files {
  GmessageResponseData_draft_files._();

  factory GmessageResponseData_draft_files(
          [void Function(GmessageResponseData_draft_filesBuilder b) updates]) =
      _$GmessageResponseData_draft_files;

  static void _initializeBuilder(GmessageResponseData_draft_filesBuilder b) =>
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
  static Serializer<GmessageResponseData_draft_files> get serializer =>
      _$gmessageResponseDataDraftFilesSerializer;

  @override
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GmessageResponseData_draft_files.serializer,
        this,
      ) as Map<String, dynamic>);

  static GmessageResponseData_draft_files? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GmessageResponseData_draft_files.serializer,
        json,
      );
}

abstract class GmessageResponseData_responseTemplate
    implements
        Built<GmessageResponseData_responseTemplate,
            GmessageResponseData_responseTemplateBuilder>,
        GmessageResponse_responseTemplate {
  GmessageResponseData_responseTemplate._();

  factory GmessageResponseData_responseTemplate(
      [void Function(GmessageResponseData_responseTemplateBuilder b)
          updates]) = _$GmessageResponseData_responseTemplate;

  static void _initializeBuilder(
          GmessageResponseData_responseTemplateBuilder b) =>
      b..G__typename = 'ResponseTemplateModel';

  @override
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  @override
  String? get conversationFinalizedBy;
  @override
  String get messageId;
  @override
  BuiltList<_i1.GReplyTypeEnum> get replyOptions;
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
  static Serializer<GmessageResponseData_responseTemplate> get serializer =>
      _$gmessageResponseDataResponseTemplateSerializer;

  @override
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GmessageResponseData_responseTemplate.serializer,
        this,
      ) as Map<String, dynamic>);

  static GmessageResponseData_responseTemplate? fromJson(
          Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GmessageResponseData_responseTemplate.serializer,
        json,
      );
}

abstract class GContactDetailFragment {
  String get G__typename;
  String get name;
  String get type;
  String? get idNat;
  String? get typeBal;
  Map<String, dynamic> toJson();
}

abstract class GContactDetailFragmentData
    implements
        Built<GContactDetailFragmentData, GContactDetailFragmentDataBuilder>,
        GContactDetailFragment {
  GContactDetailFragmentData._();

  factory GContactDetailFragmentData(
          [void Function(GContactDetailFragmentDataBuilder b) updates]) =
      _$GContactDetailFragmentData;

  static void _initializeBuilder(GContactDetailFragmentDataBuilder b) =>
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
  static Serializer<GContactDetailFragmentData> get serializer =>
      _$gContactDetailFragmentDataSerializer;

  @override
  Map<String, dynamic> toJson() => (_i2.serializers.serializeWith(
        GContactDetailFragmentData.serializer,
        this,
      ) as Map<String, dynamic>);

  static GContactDetailFragmentData? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(
        GContactDetailFragmentData.serializer,
        json,
      );
}
