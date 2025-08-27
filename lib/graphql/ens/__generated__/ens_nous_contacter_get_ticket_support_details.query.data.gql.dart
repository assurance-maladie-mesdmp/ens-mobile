// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fr_cnamts_ens/graphql/ens/__generated__/serializers.gql.dart'
    as _i1;

part 'ens_nous_contacter_get_ticket_support_details.query.data.gql.g.dart';

abstract class Gget_ticket_support_detailsData
    implements
        Built<Gget_ticket_support_detailsData,
            Gget_ticket_support_detailsDataBuilder> {
  Gget_ticket_support_detailsData._();

  factory Gget_ticket_support_detailsData(
          [void Function(Gget_ticket_support_detailsDataBuilder b) updates]) =
      _$Gget_ticket_support_detailsData;

  static void _initializeBuilder(Gget_ticket_support_detailsDataBuilder b) =>
      b..G__typename = 'Query';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails
      get fetchHelpdeskTicketDetails;
  static Serializer<Gget_ticket_support_detailsData> get serializer =>
      _$ggetTicketSupportDetailsDataSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_ticket_support_detailsData.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_ticket_support_detailsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_ticket_support_detailsData.serializer,
        json,
      );
}

abstract class Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails
    implements
        Built<Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails,
            Gget_ticket_support_detailsData_fetchHelpdeskTicketDetailsBuilder> {
  Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails._();

  factory Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails(
      [void Function(
              Gget_ticket_support_detailsData_fetchHelpdeskTicketDetailsBuilder
                  b)
          updates]) = _$Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails;

  static void _initializeBuilder(
          Gget_ticket_support_detailsData_fetchHelpdeskTicketDetailsBuilder
              b) =>
      b..G__typename = 'TicketDetailsViewModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get reasonLabel;
  BuiltList<Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails_comments>
      get comments;
  static Serializer<Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails>
      get serializer =>
          _$ggetTicketSupportDetailsDataFetchHelpdeskTicketDetailsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails.serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
        Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails.serializer,
        json,
      );
}

abstract class Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails_comments
    implements
        Built<
            Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails_comments,
            Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails_commentsBuilder> {
  Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails_comments._();

  factory Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails_comments(
          [void Function(
                  Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails_commentsBuilder
                      b)
              updates]) =
      _$Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails_comments;

  static void _initializeBuilder(
          Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails_commentsBuilder
              b) =>
      b..G__typename = 'CommentViewModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get from;
  String get message;
  String get createdAt;
  BuiltList<
          Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails_comments_documents>
      get documents;
  static Serializer<
          Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails_comments>
      get serializer =>
          _$ggetTicketSupportDetailsDataFetchHelpdeskTicketDetailsCommentsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails_comments
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails_comments?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails_comments
                .serializer,
            json,
          );
}

abstract class Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails_comments_documents
    implements
        Built<
            Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails_comments_documents,
            Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails_comments_documentsBuilder> {
  Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails_comments_documents._();

  factory Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails_comments_documents(
          [void Function(
                  Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails_comments_documentsBuilder
                      b)
              updates]) =
      _$Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails_comments_documents;

  static void _initializeBuilder(
          Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails_comments_documentsBuilder
              b) =>
      b..G__typename = 'CommentDocumentModel';

  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get id;
  String get name;
  static Serializer<
          Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails_comments_documents>
      get serializer =>
          _$ggetTicketSupportDetailsDataFetchHelpdeskTicketDetailsCommentsDocumentsSerializer;

  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
        Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails_comments_documents
            .serializer,
        this,
      ) as Map<String, dynamic>);

  static Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails_comments_documents?
      fromJson(Map<String, dynamic> json) => _i1.serializers.deserializeWith(
            Gget_ticket_support_detailsData_fetchHelpdeskTicketDetails_comments_documents
                .serializer,
            json,
          );
}
